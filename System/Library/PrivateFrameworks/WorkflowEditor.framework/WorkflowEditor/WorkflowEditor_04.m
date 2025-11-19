id sub_27445CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
    v10 = sub_27463B66C();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_27463B66C();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = sub_27463B66C();

LABEL_8:
  v13 = [swift_getObjCClassFromMetadata() slotWithLocalizedName:v10 localizedPlaceholder:v11 languageCode:v12 key:a7];

  return v13;
}

uint64_t static WFEnumerationParameter.moduleSummaryEditorClass()()
{
  sub_27463852C();
  OUTLINED_FUNCTION_21_2();
  if (swift_dynamicCastMetatype())
  {

    return type metadata accessor for WFAskLLMModelParameterSummaryEditor();
  }

  else
  {

    return type metadata accessor for EnumerationParameterSummaryEditor();
  }
}

uint64_t sub_27445CD10()
{
  swift_getObjCClassMetadata();
  static WFEnumerationParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

uint64_t WFCustomIntentDynamicEnumerationParameter.moduleSummarySlots(for:)(id a1)
{
  v2 = v1;
  v4 = &selRef_editingContext;
  v5 = [v1 codableAttribute];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    v8 = [v5 supportsSearch];

    if (!a1)
    {
      if (v8)
      {
        v63 = v6;
        goto LABEL_37;
      }

      LOBYTE(v9) = 0;
      v14 = 1;
LABEL_15:
      if ([v2 isRangedSizeArray] && (v9 & 1) == 0 && (v8 & 1) == 0)
      {
        v63 = v6;
        if (v14)
        {
          goto LABEL_37;
        }

        goto LABEL_19;
      }

LABEL_31:
      v64.receiver = v2;
      v64.super_class = MEMORY[0x277D7C2E0];
      v24 = objc_msgSendSuper2(&v64, sel_moduleSummarySlotsForState_, a1);
      if (!v24)
      {
        return 0;
      }

      v25 = v24;
      sub_274412734(0, &qword_28094BD80);
      v26 = sub_27463B81C();

      return v26;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
    if (!a1)
    {
      v14 = 1;
      LOBYTE(v9) = 0;
      goto LABEL_15;
    }
  }

  v9 = WFParameterStateIsMultipleValue(a1) ^ 1;
  v10 = [swift_unknownObjectRetain() containedVariables];
  sub_274412734(0, &qword_28094BD90);
  v11 = sub_27463B81C();

  v12 = sub_274453594(v11);
  swift_unknownObjectRelease();

  if ((v8 & 1) == 0)
  {
    v14 = 0;
    LOBYTE(v8) = v12 != 0;
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    goto LABEL_31;
  }

  v63 = v6;
LABEL_19:
  v15 = swift_unknownObjectRetain();
  if (WFParameterStateIsMultipleValue(v15))
  {
    v16 = WFMultipleParameterStateValues(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
    OUTLINED_FUNCTION_21_2();
    v17 = sub_27463B81C();

    v18 = sub_274453594(v17);
    if (v18)
    {
      v19 = v18;
      v62[0] = v6;
      sub_27463C44C();
      if ((v19 & 0x8000000000000000) == 0)
      {
        sub_274453594(v17);
        OUTLINED_FUNCTION_20_3();
        v21 = v20 & ~(v20 >> 63);
        while (v21 != v6)
        {
          if (&selRef_editingContext)
          {
            MEMORY[0x277C58B20](v6, v17);
          }

          else
          {
            if (v6 >= *(v61 + 16))
            {
              goto LABEL_66;
            }

            v22 = *(v17 + 8 * v6 + 32);
          }

          v23 = OUTLINED_FUNCTION_13_5();
          sub_27445DC4C(v23, v62, v2);

          sub_27463C41C();
          OUTLINED_FUNCTION_21_3();
          sub_27463C46C();
          OUTLINED_FUNCTION_21_3();
          sub_27463C47C();
          sub_27463C42C();
          if (v6 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_65;
          }

          if (v19 == ++v6)
          {

            swift_unknownObjectRelease();
            v6 = v62[0];
            v4 = &selRef_editingContext;
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    swift_unknownObjectRelease();

LABEL_36:
    v63 = v6;
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_37:
  if (![v2 isRangedSizeArray])
  {
    goto LABEL_60;
  }

  v27 = sub_27463BBAC();
  if (v29)
  {
    goto LABEL_60;
  }

  v30 = v27;
  v31 = v28;
  a1 = [v2 stringLocalizer];
  if (!a1)
  {
    sub_274412734(0, &qword_28094BD98);
    a1 = sub_27445D410(0, 0);
  }

  v32 = [v2 v4[47]];
  if (v32)
  {
    v33 = v32;
    objc_opt_self();
    OUTLINED_FUNCTION_21_2();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = [v34 codableDescription];

      if (v35)
      {
        v36 = [v35 wf:a1 outputDisplayNameWithLocalizer:?];

        if (v36)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
    }
  }

  v37 = [v2 v4[47]];
  if (!v37)
  {
    v40 = 0;
    goto LABEL_52;
  }

  v38 = OUTLINED_FUNCTION_17_3();
  v36 = [v38 v39];

  if (!v36)
  {
    v40 = 0;
    v37 = 0;
    goto LABEL_52;
  }

LABEL_49:
  v40 = sub_27463B6AC();
  v37 = v41;

LABEL_52:
  v42 = sub_274453594(v6);
  v43 = sub_274453594(v6);
  if (v42 < v30)
  {
    if (v30 >= v43)
    {
      sub_27445B8E8(v43, v30, v40, v37, v2, &v63);
      OUTLINED_FUNCTION_6_4();
      sub_27445C5B4(v44, v45, sub_274547EA4, sub_27453B244);
LABEL_58:

      goto LABEL_60;
    }

    goto LABEL_69;
  }

  if (v43 < v31)
  {
    v46 = sub_274412734(0, &qword_28094BD80);
    v47 = sub_27444C12C(v2);
    v49 = v48;
    v50 = OUTLINED_FUNCTION_9_6();
    v51 = v37;
    v52 = v46;
    v53 = sub_27444AEE4(v40, v51, v47, v49, v50);
    v54 = [v53 identifier];
    v55 = OUTLINED_FUNCTION_13_5();
    v56 = [v52 identifierBySettingArrayIndex_];

    [v53 setIdentifier_];
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_4_9();
    if (!v57)
    {
LABEL_57:
      OUTLINED_FUNCTION_19_3();
      sub_27463B8AC();
      goto LABEL_58;
    }

LABEL_70:
    OUTLINED_FUNCTION_5_10();
    goto LABEL_57;
  }

LABEL_60:
  v26 = v63;
  if (!sub_274453594(v63))
  {
    sub_274412734(0, &qword_28094BD80);
    v58 = [v2 localizedLabel];
    sub_27463B6AC();

    sub_27444C12C(v2);
    v59 = OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_18_4(v59);
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_4_9();
    if (!v57)
    {
LABEL_62:
      OUTLINED_FUNCTION_19_3();
      sub_27463B8AC();
      return v63;
    }

LABEL_67:
    OUTLINED_FUNCTION_5_10();
    goto LABEL_62;
  }

  return v26;
}

id sub_27445D410(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_27463B66C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() localizerForLanguage_];

  return v3;
}

id sub_27445D498(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  OUTLINED_FUNCTION_13_5();
  v7 = swift_unknownObjectRetain();
  v8 = a4(v7);
  swift_unknownObjectRelease();

  if (v8)
  {
    sub_274412734(0, &qword_28094BD80);
    v9 = sub_27463B7FC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL WFCustomIntentDynamicEnumerationParameter.moduleSummaryShowsAddButton(for:)(void *a1)
{
  v3 = [v1 codableAttribute];
  if (v3)
  {
    v4 = v3;
    if ([v3 isFixedSizeArray])
    {

      return 1;
    }

    v5 = [v1 isRangedSizeArray];

    if (v5)
    {
      return 1;
    }
  }

  if (a1)
  {
    v7 = swift_unknownObjectRetain();
    if (WFParameterStateIsMultipleValue(v7))
    {
      v8 = [v1 codableAttribute];
      if (v8)
      {
        v9 = v8;
        v10 = WFMultipleParameterStateValues(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
        v11 = sub_27463B81C();

        v12 = sub_274453594(v11);

        if (v12 && [v1 allowsMultipleValues])
        {
          v13 = [v9 supportsSearch];

          swift_unknownObjectRelease();
          return (v13 & 1) != 0;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t WFLinkDynamicOptionsEnumerationParameter.moduleSummarySlots(for:)(void *a1)
{
  v3 = v1;
  v5 = [v1 parameterMetadata];
  v6 = [v5 dynamicOptionsSupport];

  v7 = MEMORY[0x277D84F90];
  v8 = &selRef_dropTargetUpdated;
  if (!a1)
  {
    if (v6 == 2)
    {
LABEL_31:
      v57 = v7;
      goto LABEL_32;
    }

    v13 = 0;
    LOBYTE(v9) = 0;
LABEL_10:
    if ([v3 isRangedSizeArray] && (v9 & 1) == 0 && !v13)
    {
      v57 = v7;
      if (!a1)
      {
        goto LABEL_32;
      }

      goto LABEL_14;
    }

LABEL_26:
    v58.receiver = v3;
    v58.super_class = MEMORY[0x277D7C5B8];
    v24 = objc_msgSendSuper2(&v58, sel_moduleSummarySlotsForState_, a1);
    if (!v24)
    {
      return 0;
    }

    v25 = v24;
    sub_274412734(0, &qword_28094BD80);
    v26 = sub_27463B81C();

    return v26;
  }

  v9 = WFParameterStateIsMultipleValue(a1) ^ 1;
  v10 = [swift_unknownObjectRetain() containedVariables];
  sub_274412734(0, &qword_28094BD90);
  v11 = sub_27463B81C();

  v12 = sub_274453594(v11);
  swift_unknownObjectRelease();

  v13 = v12 != 0;
  if (v6 != 2)
  {
    goto LABEL_10;
  }

  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9;
  }

  if (v14)
  {
    goto LABEL_26;
  }

  v57 = v7;
LABEL_14:
  v15 = swift_unknownObjectRetain();
  if (WFParameterStateIsMultipleValue(v15))
  {
    v16 = WFMultipleParameterStateValues(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
    OUTLINED_FUNCTION_21_2();
    v17 = sub_27463B81C();

    v18 = sub_274453594(v17);
    if (v18)
    {
      v19 = v18;
      v56[0] = v7;
      sub_27463C44C();
      if ((v19 & 0x8000000000000000) == 0)
      {
        sub_274453594(v17);
        OUTLINED_FUNCTION_20_3();
        v21 = v20 & ~(v20 >> 63);
        while (v21 != v7)
        {
          if (v3)
          {
            MEMORY[0x277C58B20](v7, v17);
          }

          else
          {
            if (v7 >= *(v55 + 16))
            {
              goto LABEL_50;
            }

            v22 = *(v17 + 8 * v7 + 32);
          }

          v23 = OUTLINED_FUNCTION_13_5();
          sub_27445DC4C(v23, v56, v3);

          sub_27463C41C();
          OUTLINED_FUNCTION_21_3();
          sub_27463C46C();
          OUTLINED_FUNCTION_21_3();
          sub_27463C47C();
          sub_27463C42C();
          if (v7 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_49;
          }

          if (v19 == ++v7)
          {

            swift_unknownObjectRelease();
            v7 = v56[0];
            v8 = &selRef_dropTargetUpdated;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    swift_unknownObjectRelease();

    goto LABEL_31;
  }

  swift_unknownObjectRelease();
LABEL_32:
  v2 = &selRef_dropTargetUpdated;
  if ([v3 v8[242]])
  {
    v27 = sub_27463BBAC();
    if ((v29 & 1) == 0)
    {
      v30 = v27;
      v31 = v28;
      v32 = sub_27445E948([v3 parameterMetadata]);
      if (v33)
      {
        v34 = v32;
        v35 = v33;
      }

      else
      {
        v36 = [v3 localizedLabel];
        v34 = sub_27463B6AC();
        v35 = v37;
      }

      v38 = sub_274453594(v7);
      v39 = sub_274453594(v7);
      if (v38 < v30)
      {
        if (v30 >= v39)
        {
          sub_27445B8E8(v39, v30, v34, v35, v3, &v57);
          OUTLINED_FUNCTION_6_4();
          sub_27445C5B4(v40, v41, sub_274547EA4, sub_27453B244);
          goto LABEL_44;
        }

        goto LABEL_53;
      }

      if (v39 < v31)
      {
        v42 = sub_274412734(0, &qword_28094BD80);
        v43 = sub_27444C12C(v3);
        v45 = v44;
        v46 = OUTLINED_FUNCTION_9_6();
        v47 = sub_27444AEE4(v34, v35, v43, v45, v46);
        v48 = [v47 identifier];
        v49 = OUTLINED_FUNCTION_13_5();
        v50 = [v42 identifierBySettingArrayIndex_];

        [v47 setIdentifier_];
        MEMORY[0x277C57F30]();
        OUTLINED_FUNCTION_4_9();
        if (!v51)
        {
LABEL_42:
          OUTLINED_FUNCTION_19_3();
          sub_27463B8AC();
          goto LABEL_44;
        }

LABEL_54:
        OUTLINED_FUNCTION_5_10();
        goto LABEL_42;
      }
    }
  }

LABEL_44:
  v26 = v57;
  if (!sub_274453594(v57))
  {
    sub_274412734(0, &qword_28094BD80);
    v52 = [v3 v2[286]];
    sub_27463B6AC();

    sub_27444C12C(v3);
    v53 = OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_18_4(v53);
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_4_9();
    if (!v51)
    {
LABEL_46:
      OUTLINED_FUNCTION_19_3();
      sub_27463B8AC();
      return v57;
    }

LABEL_51:
    OUTLINED_FUNCTION_5_10();
    goto LABEL_46;
  }

  return v26;
}

id sub_27445DC4C(uint64_t a1, void *a2, void *a3)
{
  sub_274412734(0, &qword_28094BD80);
  v6 = [a3 localizedLabel];
  v7 = sub_27463B6AC();
  v9 = v8;

  v10 = sub_27444C12C(a3);
  v12 = v11;
  v13 = OUTLINED_FUNCTION_9_6();
  v14 = sub_27444AEE4(v7, v9, v10, v12, v13);
  v15 = [v14 identifier];
  v16 = [v15 identifierBySettingArrayIndex_];

  v17 = OUTLINED_FUNCTION_17_3();
  [v17 v18];

  v19 = [a2 variable];
  if (v19)
  {
    v20 = v19;
    v21 = OUTLINED_FUNCTION_17_3();
    [v21 v22];
  }

  else
  {
    if ([a3 hidesAccessoryIconInEditor])
    {
      v23 = 0;
    }

    else
    {
      v23 = [a3 accessoryImageForPossibleState_];
    }

    v20 = [a3 localizedTitleForButtonWithState_];
    [v14 populateWithIcon:v23 string:v20];
  }

  return v14;
}

uint64_t WFLinkDynamicOptionsEnumerationParameter.moduleSummaryShowsAddButton(for:)(void *a1)
{
  if (a1)
  {
    v3 = swift_unknownObjectRetain();
    if (WFParameterStateIsMultipleValue(v3) && (v4 = WFMultipleParameterStateValues(a1), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0), v5 = sub_27463B81C(), v4, v6 = sub_274453594(v5), , v6) && [v1 allowsMultipleValues])
    {
      v7 = [v1 parameterMetadata];
      v8 = [v7 dynamicOptionsSupport];

      swift_unknownObjectRelease();
      if (v8 == 2)
      {
        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_27445DF28(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  v7 = OUTLINED_FUNCTION_13_5();
  LOBYTE(a4) = a4(v7);
  swift_unknownObjectRelease();

  return a4 & 1;
}

void *sub_27445DF84@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  result = sub_2746385AC();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = [result containedVariables];
  swift_unknownObjectRelease();
  sub_274412734(0, &qword_28094BD90);
  v4 = sub_27463B81C();

  if (!sub_274453594(v4))
  {

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  sub_2744535A4(0, (v4 & 0xC000000000000001) == 0);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277C58B20](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

LABEL_8:
  *a1 = v6;
  return result;
}

uint64_t sub_27445E070(uint64_t *a1, int a2, int a3, int a4, id a5)
{
  v5 = *a1;
  if (*a1)
  {
    [a5 stateClass];
    swift_getObjCClassMetadata();
    if (swift_dynamicCastTypeToObjCProtocolConditional())
    {
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];
    }
  }

  swift_getObjectType();
  return sub_2746385BC();
}

uint64_t sub_27445E11C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = (&v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v85 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDB0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v93 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDB8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = (&v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v85 - v18;
  v20 = *(v1 + 8);
  v21 = qword_28094A100;
  v22 = [*(v20 + qword_28094A100) preferContextMenu];
  v92 = v12;
  v89 = v21;
  v90 = v20;
  if (!v22)
  {
LABEL_4:
    v24 = *(v20 + v21);
    objc_opt_self();
    OUTLINED_FUNCTION_21_2();
    v88 = swift_dynamicCastObjCClass() == 0;
    v25 = v2[4];
    v26 = v2[5];
    v86 = v2[6];
    v87 = v25;
    v98 = v86;
    v99 = v25;
    v27 = (v6 + v3[15]);
    v28 = v24;

    sub_27445E9E4(&v99, &v95);
    sub_27445EAD4(&v98, &v95, &unk_28094BDC0);
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27445EA40(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    *v27 = sub_27463979C();
    v27[1] = v29;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_16_4(KeyPath);
    v31 = swift_getKeyPath();
    OUTLINED_FUNCTION_16_4(v31);
    v32 = swift_getKeyPath();
    OUTLINED_FUNCTION_16_4(v32);
    v33 = v6 + v3[19];
    *v33 = swift_getKeyPath();
    v33[40] = 0;
    v34 = swift_getKeyPath();
    OUTLINED_FUNCTION_16_4(v34);
    LOBYTE(v97[0]) = 0;
    sub_27463ACDC();
    OUTLINED_FUNCTION_23_3();
    LOBYTE(v97[0]) = 0;
    sub_27463ACDC();
    OUTLINED_FUNCTION_23_3();
    v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
    v36 = v28;
    sub_27444A564(v36);
    OUTLINED_FUNCTION_10_6();
    sub_274458A14(v37, &unk_28094B440);
    *v6 = sub_27463950C();
    v6[1] = v38;
    v39 = [v36 localizedLabel];
    v40 = sub_27463B6AC();
    v42 = v41;

    v6[2] = v40;
    v6[3] = v42;
    v43 = [v36 localizedDescription];
    if (v43)
    {
      v44 = v43;
      v45 = sub_27463B6AC();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v6[4] = v45;
    v6[5] = v47;
    v48 = v87;
    v6[6] = v88;
    v6[7] = v48;
    v49 = v86;
    v6[8] = v26;
    v6[9] = v49;
    v50 = v3[13];
    OUTLINED_FUNCTION_22_3();
    v52 = v51;
    sub_27445EAD4(&v95, v97, &qword_28094BDD0);
    OUTLINED_FUNCTION_25_4(v52, v6 + v50);

    *(v6 + v3[14]) = 0;
    sub_27445EA84(v6, v9, &qword_28094BDA8);
    sub_27445EAD4(v9, v93, &qword_28094BDA8);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_6();
    sub_274458A14(v53, v54);
    OUTLINED_FUNCTION_7_8();
    sub_274458A14(v55, &qword_28094BDA8);
    sub_274639DDC();
    v56 = v9;
    v57 = &qword_28094BDA8;
    return sub_27440CB1C(v56, v57);
  }

  v95 = *(v1 + 32);
  v96 = *(v1 + 48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0);
  MEMORY[0x277C575F0](v97, v23);
  if (v97[0])
  {

    goto LABEL_4;
  }

  v59 = *(v20 + v21);
  v60 = v12[14];
  *(v15 + v60) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v61 = v15 + v12[15];
  *v61 = swift_getKeyPath();
  *(v61 + 4) = 0;
  v62 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v62);
  v63 = v15 + v12[17];
  *v63 = swift_getKeyPath();
  v63[40] = 0;
  v64 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v65 = v59;
  sub_27444A564(v65);
  OUTLINED_FUNCTION_10_6();
  sub_274458A14(v66, &unk_28094B440);
  *v15 = sub_27463950C();
  v15[1] = v67;
  v68 = [v65 localizedLabel];
  v69 = sub_27463B6AC();
  v71 = v70;

  v72 = [v65 localizedDescription];
  if (v72)
  {
    v73 = v72;
    v74 = sub_27463B6AC();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0xE000000000000000;
  }

  v15[2] = v69;
  v15[3] = v71;
  v15[4] = v74;
  v15[5] = v76;
  v77 = v92;
  v78 = v15 + v92[12];
  *v78 = 0;
  *(v78 + 1) = 0;
  v78[16] = 0;
  v79 = v77[11];
  OUTLINED_FUNCTION_22_3();
  v81 = v80;
  sub_27445EAD4(&v95, v97, &qword_28094BDD0);
  OUTLINED_FUNCTION_25_4(v81, v15 + v79);

  *(v15 + v77[13]) = 0;
  sub_27445EA84(v15, v19, &qword_28094BDB8);
  sub_27445EAD4(v19, v93, &qword_28094BDB8);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_6();
  sub_274458A14(v82, &qword_28094BDB8);
  OUTLINED_FUNCTION_7_8();
  sub_274458A14(v83, v84);
  sub_274639DDC();
  v56 = v19;
  v57 = &qword_28094BDB8;
  return sub_27440CB1C(v56, v57);
}

uint64_t sub_27445E8E4(void *a1)
{
  v1 = [a1 languageCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

uint64_t sub_27445E948(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_27463B6AC();

  return v3;
}

uint64_t sub_27445EA40(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27445EA84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_27445EAD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_27445EB24(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_27463C23C();
    type metadata accessor for WFEditorItem();
    sub_27445EA40(&qword_28094BDF8, type metadata accessor for WFEditorItem);
    result = sub_27463BA7C();
    v4 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
    v11 = v26;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v16 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v16;
  v17 = -v16;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v11 = v18 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v19 = v9;
    v20 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_27463C2BC())
        {
          goto LABEL_25;
        }

        type metadata accessor for WFEditorItem();
        swift_dynamicCast();
        result = v21;
        if (!v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v11 &= v11 - 1;

        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v19;
        v7 = v20;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_27445ED2C(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_18;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            v13 = v16;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v13 << 6);
      sub_274434ED4(*(a4 + 48) + 48 * v18, __src);
      v19 = (*(a4 + 56) + 32 * v18);
      v20 = v19[1];
      __src[3] = *v19;
      __src[4] = v20;
      memcpy(__dst, __src, sizeof(__dst));
      result = memcpy(v11, __dst, 0x50uLL);
      v11 += 80;
      v12 = v15;
      if (v15 == v10)
      {
LABEL_18:
        v7 = v21;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_27445EEA8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_27463C23C();
    sub_274412734(0, &qword_28094E040);
    sub_27445F098();
    result = sub_27463BA7C();
    v4 = v34;
    v8 = v35;
    v9 = v36;
    v10 = v37;
    v11 = v38;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v26 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v26;
  v27 = -v26;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v11 = v28 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = v9;
    v31 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        v17 = sub_27463C2BC();
        if (!v17)
        {
          goto LABEL_25;
        }

        v32 = v17;
        v18 = sub_274412734(0, &qword_28094E040);
        OUTLINED_FUNCTION_15_3(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v33);
        swift_dynamicCast();
        result = v33;
        if (!v33)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v30;
        v7 = v31;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_27445F098()
{
  result = qword_28094BE10;
  if (!qword_28094BE10)
  {
    sub_274412734(255, &qword_28094E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094BE10);
  }

  return result;
}

unint64_t sub_27445F118()
{
  result = qword_28094BE78;
  if (!qword_28094BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094BE80);
    sub_274458A14(&qword_28094BDD8, &qword_28094BDB8);
    sub_274458A14(&unk_28094BDE0, &qword_28094BDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094BE78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_10()
{

  return sub_27463B85C();
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return sub_27463B66C();
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

id OUTLINED_FUNCTION_18_4(void *a1)
{

  return sub_27444AEE4(v3, v4, v1, v2, a1);
}

__n128 OUTLINED_FUNCTION_22_3()
{
  result = v0[1];
  *(v1 - 144) = result;
  return result;
}

void OUTLINED_FUNCTION_23_3()
{
  v2 = *(v1 - 136);
  *v0 = *(v1 - 144);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_25_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_27444AA9C(a1, 0, 4, 0, 0, a2);
}

void *sub_27445F3C4(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = sub_27463B36C();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = v5(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      MEMORY[0x277C57F30](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      result = sub_27463B8AC();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_27445F530()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  if (*(v0 + 104) == 1)
  {
    OUTLINED_FUNCTION_4_10();
    sub_27440CBD8(v8);
  }

  else
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    OUTLINED_FUNCTION_4_10();
    sub_2744627C0(v10, v11, v12, v13, 0);
    (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_23();
}

void sub_27445F680()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_5_11();
  v13 = type metadata accessor for PhotoItemCollectionPickerView(v12);
  sub_2744626F0(v0 + *(v13 + 40), v1, &qword_28094C000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274462750(v1, v3);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_23();
}

void sub_27445F820()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v70 = v3;
  v69 = v4;
  v67 = v5;
  v68 = v6;
  v65 = v7;
  v66 = v8;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BF28);
  OUTLINED_FUNCTION_53_0(v13);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  sub_274637B7C();
  OUTLINED_FUNCTION_1();
  v73 = v18;
  v74 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0();
  v71 = v19;
  MEMORY[0x28223BE20](v20);
  v72 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BF30);
  OUTLINED_FUNCTION_53_0(v22);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_11();
  v24 = sub_274637B5C();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_0();
  v30 = v29 - v28;
  *(v12 + 72) = swift_getKeyPath();
  v31 = type metadata accessor for PhotoItemCollectionPickerView(0);
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  *(v12 + 80) = 0;
  *(v12 + 104) = 0;
  v75 = v31;
  v32 = *(v31 + 40);
  *(v12 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  swift_storeEnumTagMultiPayload();
  v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B578));
  v34 = v10;
  sub_27444A5A0(v34);
  sub_27446251C();
  *v12 = sub_27463950C();
  *(v12 + 8) = v35;
  v36 = v66;
  *(v12 + 16) = v65;
  *(v12 + 24) = v36;
  v37 = v68;
  *(v12 + 32) = v67;
  *(v12 + 40) = v37;
  *(v12 + 48) = v69;
  *(v12 + 56) = v70;
  *(v12 + 64) = v2;
  v38 = [v34 pickerMode];
  sub_27463B6AC();

  sub_274637B4C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v24) == 1)
  {
    (*(v26 + 104))(v30, *MEMORY[0x277CBA420], v24);
    if (__swift_getEnumTagSinglePayload(v0, 1, v24) != 1)
    {
      sub_27440CB1C(v0, &qword_28094BF30);
    }
  }

  else
  {
    (*(v26 + 32))(v30, v0, v24);
  }

  v39 = v75;
  (*(v26 + 32))(v12 + *(v75 + 44), v30, v24);
  *(v12 + *(v39 + 48)) = [v34 selectionLimit];
  v40 = [v34 pickerFilter];
  sub_27463B6AC();

  sub_274637B6C();
  v41 = v74;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v74);
  v43 = v72;
  if (EnumTagSinglePayload == 1)
  {
    v44 = *MEMORY[0x277CBA440];
    v45 = v73;
    (*(v73 + 104))(v72, v44, v41);
    v46 = __swift_getEnumTagSinglePayload(v16, 1, v41);
    v47 = v71;
    if (v46 != 1)
    {
      sub_27440CB1C(v16, &qword_28094BF28);
    }
  }

  else
  {
    v45 = v73;
    (*(v73 + 32))(v72, v16, v41);
    v44 = *MEMORY[0x277CBA440];
    v47 = v71;
  }

  (*(v45 + 16))(v47, v43, v41);
  v48 = (*(v45 + 88))(v47, v41);
  if (v48 == v44)
  {
    v49 = OUTLINED_FUNCTION_3_11();
    v50(v49);

    v51 = *(v75 + 52);
    v52 = sub_27463B34C();
    v53 = v12 + v51;
    v54 = 1;
  }

  else if (v48 == *MEMORY[0x277CBA448])
  {
    v55 = *(v75 + 52);
    sub_27463B32C();

    v56 = OUTLINED_FUNCTION_3_11();
    v57(v56);
    v52 = sub_27463B34C();
    v53 = v12 + v55;
    v54 = 0;
  }

  else
  {
    if (v48 == *MEMORY[0x277CBA450])
    {
      v58 = *(v75 + 52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BF40);
      sub_27463B34C();
      OUTLINED_FUNCTION_7_9();
      *(OUTLINED_FUNCTION_6_5() + 16) = xmmword_2746486A0;
      sub_27463B30C();
      sub_27463B33C();
    }

    else
    {
      if (v48 != *MEMORY[0x277CBA438])
      {
        v61 = *(v45 + 8);
        v61(v43, v41);

        v62 = *(v75 + 52);
        v63 = sub_27463B34C();
        __swift_storeEnumTagSinglePayload(v12 + v62, 1, 1, v63);
        v61(v47, v41);
        goto LABEL_14;
      }

      v58 = *(v75 + 52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BF40);
      sub_27463B34C();
      OUTLINED_FUNCTION_7_9();
      *(OUTLINED_FUNCTION_6_5() + 16) = xmmword_2746486A0;
      sub_27463B2FC();
      sub_27463B32C();
    }

    sub_27463B31C();

    v59 = OUTLINED_FUNCTION_3_11();
    v60(v59);
    v53 = v12 + v58;
    v54 = 0;
    v52 = v44;
  }

  __swift_storeEnumTagSinglePayload(v53, v54, 1, v52);
LABEL_14:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_27445FF40(uint64_t a1)
{
  sub_274638DAC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  return sub_274460118(a1);
}

uint64_t sub_274460118(uint64_t a1)
{
  v3 = v1;
  v92 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BEF8);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v67 - v6;
  v7 = sub_27463B4AC();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_27463B44C();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274637B5C();
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BEA0);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v67 - v14;
  v85 = sub_27463B47C();
  v15 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  v21 = [objc_opt_self() sharedLibrary];
  *&v90 = 0;
  v22 = [v21 systemPhotoLibraryWithError_];

  v23 = v90;
  if (!v22)
  {
    v45 = v90;
    sub_274637D6C();

    swift_willThrow();
    return v23;
  }

  v24 = v22;
  v25 = v23;
  v88 = v24;
  sub_27463B41C();
  v26 = *(v3 + 32);
  v90 = *(v3 + 16);
  v91 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BF00);
  MEMORY[0x277C575F0](&v89, v27);
  v28 = v89;
  v86 = v20;
  v80 = a1;
  v81 = v2;
  v78 = v3;
  v79 = v15;
  v77 = v12;
  if (v89)
  {
    v29 = [v89 value];
    if (v29)
    {
      v68 = v28;
      v69 = v17;
      v67 = v29;
      v30 = [v29 items];
      sub_274412734(0, &unk_2809504D0);
      v31 = sub_27463B81C();

      v32 = sub_274453594(v31);
      v33 = 0;
      v87 = MEMORY[0x277D84F90];
      while (v32 != v33)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x277C58B20](v33, v31);
        }

        else
        {
          if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v34 = *(v31 + 8 * v33 + 32);
        }

        v35 = v34;
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
        }

        v37 = sub_2745CBF64(v34, v88);
        v39 = v38;

        ++v33;
        if (v39)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_27444FD7C();
            v87 = v43;
          }

          v40 = *(v87 + 16);
          if (v40 >= *(v87 + 24) >> 1)
          {
            sub_27444FD7C();
            v87 = v44;
          }

          v41 = v87;
          *(v87 + 16) = v40 + 1;
          v42 = v41 + 16 * v40;
          *(v42 + 32) = v37;
          *(v42 + 40) = v39;
          v33 = v36;
        }
      }

      v17 = v69;
      goto LABEL_21;
    }
  }

  v87 = 0;
LABEL_21:
  v46 = type metadata accessor for PhotoItemCollectionPickerView(0);
  v47 = v78;
  v48 = *(v78 + v46[12]);
  v49 = v86;
  sub_27463B3BC();
  v50 = v46[13];
  v51 = v84;
  sub_2744626F0(v47 + v50, v84, &qword_28094BEA0);
  sub_27463B42C();
  v52 = v46[11];
  v54 = v82;
  v53 = v83;
  v55 = v77;
  (*(v82 + 16))(v77, v47 + v52, v83);
  v56 = (*(v54 + 88))(v55, v53);
  if (v56 == *MEMORY[0x277CBA420])
  {
    sub_27463B39C();
    MEMORY[0x277C57B20](1);
    sub_27463B40C();
    sub_2744626F0(v47 + v50, v51, &qword_28094BEA0);
    sub_27463B42C();
    if (v87)
    {
      sub_27463B3FC();
    }

    v57 = *(v47 + 48) != 1 || v48 < 2;
    v58 = v49;
    v59 = v85;
    v60 = v79;
    if (!v57)
    {
      (*(v71 + 104))(v70, *MEMORY[0x277CD9D50], v72);
      sub_27463B46C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BF10);
      sub_27463A2EC();
      v61 = v90;
      *&v61[OBJC_IVAR____TtCV14WorkflowEditor29PhotoItemCollectionPickerView11Coordinator_previousSelection] = sub_27463B3EC();

      v58 = v86;
    }
  }

  else
  {
    if (v56 == *MEMORY[0x277CBA418])
    {
      v58 = v86;
      sub_27463B39C();
      sub_27463B40C();
      v62 = v73;
      sub_27463B49C();
      v60 = v79;
      if (v87)
      {
        sub_27463B48C();
      }

      v64 = v74;
      v63 = v75;
      v65 = v76;
      (*(v74 + 16))(v76, v62, v75);
      __swift_storeEnumTagSinglePayload(v65, 0, 1, v63);
      sub_27463B37C();
      (*(v64 + 8))(v62, v63);
    }

    else
    {
      v58 = v86;
      v60 = v79;
      if (v56 != *MEMORY[0x277CBA410])
      {
        result = sub_27463C56C();
        __break(1u);
        return result;
      }

      sub_27463B39C();
      sub_27463B40C();
      sub_27463B3CC();
    }

    v59 = v85;
  }

  sub_274412734(0, &qword_28094BF08);
  (*(v60 + 16))(v17, v58, v59);
  v23 = sub_27463BE1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BF10);
  sub_27463A2EC();
  sub_2744624D4(&qword_28094BF18, type metadata accessor for PhotoItemCollectionPickerView.Coordinator);
  sub_27463BE2C();

  (*(v60 + 8))(v58, v59);
  return v23;
}

uint64_t sub_274460A8C(char a1)
{
  v3 = sub_2746396DC();
  v4 = OUTLINED_FUNCTION_53_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(v1 + 56);
  if (v9)
  {

    v9(v10);

    return sub_274406A94(v9);
  }

  else
  {
    sub_27445F530();
    if (v12)
    {
      if (a1)
      {
        v13();
      }

      else
      {
        v12();
      }
    }

    else
    {
      sub_27445F680();
      MEMORY[0x277C575F0](v5);
      sub_2746396CC();
      sub_27463AEBC();
      return sub_27440CB1C(v8, &unk_28094A210);
    }
  }
}

id sub_274460C48()
{
  v1 = type metadata accessor for PhotoItemCollectionPickerView(0);
  v2 = OUTLINED_FUNCTION_53_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  sub_27446238C(v0, v4 - v3);
  v6 = objc_allocWithZone(type metadata accessor for PhotoItemCollectionPickerView.Coordinator(0));
  return sub_274460CC4(v5);
}

id sub_274460CC4(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCV14WorkflowEditor29PhotoItemCollectionPickerView11Coordinator_previousSelection] = MEMORY[0x277D84F90];
  sub_27446238C(a1, &v1[OBJC_IVAR____TtCV14WorkflowEditor29PhotoItemCollectionPickerView11Coordinator_parent]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotoItemCollectionPickerView.Coordinator(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2744623F0(a1);
  return v3;
}

void sub_274460D3C()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BF48);
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v81 = &v74 - v6;
  sub_27463B44C();
  OUTLINED_FUNCTION_1();
  v79 = v8;
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0();
  v78 = v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v74 - v11;
  sub_27463B36C();
  OUTLINED_FUNCTION_1();
  v88 = v13;
  v89 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  v17 = sub_274637A1C();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_11();
  v21 = sub_27463B47C();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_0();
  v27 = v26 - v25;
  sub_27463BE0C();
  v28 = sub_27463B38C();
  v85 = v21;
  v86 = v0;
  v84 = v23;
  v82 = v27;
  switch(v28)
  {
    case 5:
      v76 = 0xEA00000000006E6FLL;
      v29 = 0x697463656C6C6F63;
      goto LABEL_5;
    case 2:
      v76 = 0xE500000000000000;
      v29 = 0x6D75626C61;
LABEL_5:
      v75 = v29;
      goto LABEL_8;
    case 0:
      sub_2746379FC();
      v75 = sub_274637A0C();
      v76 = v30;
      (*(v19 + 8))(v1, v17);
LABEL_8:
      v31 = *(v3 + 16);
      v83 = v3;
      if (v31)
      {
        v32 = v88 + 16;
        v33 = *(v88 + 16);
        v34 = v3 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
        v87 = *(v88 + 72);
        v88 = v33;
        v35 = (v32 - 8);
        v36 = MEMORY[0x277D84F90];
        do
        {
          v37 = v89;
          (v88)(v16, v34, v89);
          v38 = sub_27463B35C();
          v40 = v39;
          (*v35)(v16, v37);
          if (v40)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_27444FD7C();
              v36 = v43;
            }

            v41 = *(v36 + 16);
            if (v41 >= *(v36 + 24) >> 1)
            {
              sub_27444FD7C();
              v36 = v44;
            }

            *(v36 + 16) = v41 + 1;
            v42 = v36 + 16 * v41;
            *(v42 + 32) = v38;
            *(v42 + 40) = v40;
          }

          v34 += v87;
          --v31;
        }

        while (v31);
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

      v45 = v77;
      v46 = v82;
      sub_27463B45C();
      v47 = v78;
      v48 = v79;
      v49 = *(v79 + 104);
      v50 = v80;
      v49(v78, *MEMORY[0x277CD9D48], v80);
      v51 = sub_27463B43C();
      v52 = *(v48 + 8);
      v52(v47, v50);
      v52(v45, v50);
      if (v51 & 1) != 0 || (v53 = v46, v54 = v45, v55 = v47, sub_27463B45C(), v49(v47, *MEMORY[0x277CD9D50], v50), v56 = sub_27463B43C(), v52(v55, v50), v57 = v54, v46 = v53, v52(v57, v50), (v56))
      {
        v58 = v86;
        v59 = v83;
        if (*(v86 + OBJC_IVAR____TtCV14WorkflowEditor29PhotoItemCollectionPickerView11Coordinator_parent + 48) == 1)
        {
          v60 = *(v86 + OBJC_IVAR____TtCV14WorkflowEditor29PhotoItemCollectionPickerView11Coordinator_previousSelection);
          *(v86 + OBJC_IVAR____TtCV14WorkflowEditor29PhotoItemCollectionPickerView11Coordinator_previousSelection) = v36;
          v61 = sub_2744F5E5C(v60, v36);
        }

        else
        {
          v61 = 1;
        }
      }

      else
      {
        v61 = 1;
        v58 = v86;
        v59 = v83;
      }

      v62 = v81;

      sub_274442D04(v59, v62);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v89);
      if (EnumTagSinglePayload == 1)
      {

        sub_27440CB1C(v62, &qword_28094BF48);
        if ((v61 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v64 = sub_27440CB1C(v62, &qword_28094BF48);
        MEMORY[0x28223BE20](v64);
        *(&v74 - 4) = v58;
        *(&v74 - 3) = v46;
        v72 = v75;
        v73 = v76;
        v65 = sub_27445F3C4(sub_27446258C, (&v74 - 6), v59);

        sub_274412734(0, &unk_28094BF50);
        if ((v61 & 1) == 0)
        {
          sub_2744615A0(1, v65);
        }

        v66 = sub_274461518();
        v67 = v58 + OBJC_IVAR____TtCV14WorkflowEditor29PhotoItemCollectionPickerView11Coordinator_parent;
        v68 = [objc_allocWithZone(MEMORY[0x277D7C728]) initWithValue_];
        v69 = *(v67 + 32);
        v91 = *(v67 + 16);
        v92 = v69;
        v90 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BF00);
        sub_27463AEBC();

        if ((v61 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      sub_274460A8C(EnumTagSinglePayload == 1);
LABEL_32:
      v70 = OUTLINED_FUNCTION_3_11();
      v71(v70);
      OUTLINED_FUNCTION_23();
      return;
  }

  sub_27463C56C();
  __break(1u);
}

uint64_t sub_274461458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27463B3AC();
  if (result)
  {
    v3 = result;
    sub_2744617D4();
    v5 = v4;

    if (v5)
    {
      objc_allocWithZone(MEMORY[0x277D238A8]);

      result = sub_27446244C();
    }

    else
    {
      result = 0;
    }

    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_274461518()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_274412734(0, &unk_2809504D0);
  v1 = sub_27463B7FC();

  v2 = [v0 initWithItems_];

  return v2;
}

uint64_t sub_2744615A0(uint64_t result, uint64_t a2)
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

    v16 = MEMORY[0x277D84F90];
    sub_274453594(a2);
    sub_27463C44C();
    result = sub_274453594(a2);
    v4 = result;
    v5 = 0;
    v6 = 0;
    while (v4 != v6)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x277C58B20](v6, a2);
      }

      else
      {
        if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        result = *(a2 + 8 * v6 + 32);
      }

      v7 = result;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v8 = v16;
      if (*(v16 + 16) >= v3)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_274547E98();
          v8 = result;
          v16 = result;
        }

        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v5 >= *(v8 + 16))
        {
          goto LABEL_35;
        }

        v9 = v8 + 8 * v5;
        v10 = *(v9 + 32);
        *(v9 + 32) = v7;

        result = sub_27463C42C();
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
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        result = sub_27463C42C();
        ++v6;
      }
    }

    if (!v5)
    {
      return v16;
    }

    v15 = MEMORY[0x277D84F90];
    v11 = *(v16 + 16);
    result = sub_27463C44C();
    if (v11 < v5)
    {
      goto LABEL_36;
    }

    v12 = *(v16 + 16);
    if (v12 >= v5 && v12 >= v11)
    {

      sub_2744625AC(v14, v16 + 32, v5, (2 * v11) | 1);
      sub_2744625AC(v16, v16 + 32, 0, (2 * v5) | 1);
      return v15;
    }
  }

  __break(1u);
  return result;
}

void sub_2744617D4()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v43 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  v9 = sub_274637B5C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = sub_27463B35C();
  v18 = v17;
  if (v17)
  {
    v19 = v0 + OBJC_IVAR____TtCV14WorkflowEditor29PhotoItemCollectionPickerView11Coordinator_parent;
    v20 = *(type metadata accessor for PhotoItemCollectionPickerView(0) + 44);
    (*(v11 + 104))(v15, *MEMORY[0x277CBA418], v9);
    LOBYTE(v19) = sub_2745E14B4(v19 + v20, v15);
    (*(v11 + 8))(v15, v9);
    if ((v19 & 1) != 0 && (v21 = objc_opt_self(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0), v22 = swift_allocObject(), *(v22 + 16) = xmmword_274648570, *(v22 + 32) = v16, *(v22 + 40) = v18, , v23 = sub_27463B7FC(), , v24 = [v2 librarySpecificFetchOptions], v25 = objc_msgSend(v21, sel_fetchAssetCollectionsWithLocalIdentifiers_options_, v23, v24), v23, v24, v26 = objc_msgSend(v25, sel_firstObject), v25, v26) && (v27 = objc_msgSend(v26, sel_assetCollectionSubtype), v26, v27 == 203))
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_274648570;
      *(v28 + 32) = v16;
      *(v28 + 40) = v18;

      v29 = sub_27463BC4C();

      sub_274442D1C(v29);
      v31 = v30;
      v33 = v32;
      v35 = v34;

      if (v31)
      {

        if (v35)
        {
          sub_274638C2C();

          sub_2744438AC(v33);
          v36 = sub_274638D9C();
          v37 = sub_27463BBFC();

          sub_274462580(v33);
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v38 = 136315394;
            *(v38 + 4) = sub_2745E7980(v16, v18, &v44);
            *(v38 + 12) = 2080;
            swift_getErrorValue();
            v39 = sub_27463C72C();
            v41 = sub_2745E7980(v39, v40, &v44);

            *(v38 + 14) = v41;
            _os_log_impl(&dword_2743F0000, v36, v37, "could not get cloud identifier for photo item %s with error %s", v38, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_14_6();
            OUTLINED_FUNCTION_14_6();
          }

          sub_274462580(v33);
          (*(v43 + 8))(v8, v3);
        }

        else
        {

          v42 = [v33 stringValue];
          sub_27463B6AC();

          sub_274462580(v33);
          sub_274462580(v33);
        }
      }
    }
  }

  OUTLINED_FUNCTION_23();
}

id sub_274461CB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoItemCollectionPickerView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274461D60()
{
  result = type metadata accessor for PhotoItemCollectionPickerView(319);
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

void sub_274461E44()
{
  sub_274462070(319, &qword_28094BEB8, &qword_28094BEC0, 0x277D7C720, type metadata accessor for Parameter);
  if (v0 <= 0x3F)
  {
    sub_2744620D8(319, &qword_28094BEC8, &qword_28094BED0, &unk_27464C570, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_274462070(319, &qword_28094BED8, &unk_2809540E0, 0x277D7D7A0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2744620D8(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2744620D8(319, &qword_28094BEE0, &unk_280954100, &unk_27464C580, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2744620D8(319, &qword_28094BBC8, &unk_28094A210, &unk_27464FBA0, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_274637B5C();
              if (v6 <= 0x3F)
              {
                sub_27446213C();
                if (v7 <= 0x3F)
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
}

void sub_274462070(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_274412734(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2744620D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_27446213C()
{
  if (!qword_28094BEE8)
  {
    sub_27463B34C();
    v0 = sub_27463C0AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28094BEE8);
    }
  }
}

id sub_27446219C@<X0>(void *a1@<X8>)
{
  result = sub_274460C48();
  *a1 = result;
  return result;
}

uint64_t sub_2744621C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2744624D4(&qword_28094BF20, type metadata accessor for PhotoItemCollectionPickerView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274462258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2744624D4(&qword_28094BF20, type metadata accessor for PhotoItemCollectionPickerView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2744622EC()
{
  sub_2744624D4(&qword_28094BF20, type metadata accessor for PhotoItemCollectionPickerView);
  sub_27463A26C();
  __break(1u);
}

uint64_t sub_27446238C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoItemCollectionPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744623F0(uint64_t a1)
{
  v2 = type metadata accessor for PhotoItemCollectionPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_27446244C()
{
  v1 = sub_27463B66C();

  v2 = sub_27463B66C();

  v3 = [v0 initWithIdentifier:v1 type:v2];

  return v3;
}

uint64_t sub_2744624D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27446251C()
{
  result = qword_28094BF38;
  if (!qword_28094BF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094BF38);
  }

  return result;
}

void sub_2744625AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
    sub_27463C45C();
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

  sub_274412734(0, &unk_2809504D0);
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

  sub_27463C42C();
}

uint64_t sub_2744626F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274462750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744627C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return sub_2744627CC(result);
  }

  else
  {
  }
}

uint64_t sub_2744627CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_14_6()
{

  JUMPOUT(0x277C5A270);
}

uint64_t WFFontPickerParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_274464A08(&qword_28094B550, type metadata accessor for ParameterStateStore);

  sub_27463950C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_274464108;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_27446427C;
  *(v4 + 24) = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B620));
  swift_retain_n();
  sub_27444A5B4(v1);
  sub_27440CA78(&qword_28094BF60, &unk_28094B620);
  sub_27463950C();
  sub_274464298();
  return sub_27463AE9C();
}

void sub_274462A6C(uint64_t *a1@<X8>)
{
  v34 = *(v1 + 40);
  v35 = *(v1 + 24);
  v32 = *(v1 + 56);
  v33 = *(v1 + 16);
  v3 = qword_28094A100;
  v31 = *(v1 + 8);
  v4 = *(v31 + qword_28094A100);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BFF0);
  v6 = v5[14];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[15];
  *v7 = swift_getKeyPath();
  *(v7 + 4) = 0;
  v8 = a1 + v5[16];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a1 + v5[17];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v11 = v4;
  sub_27444A564(v11);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *a1 = sub_27463950C();
  a1[1] = v12;
  v13 = [v11 localizedLabel];
  v14 = sub_27463B6AC();
  v16 = v15;

  v17 = [v11 localizedDescription];
  if (v17)
  {
    v18 = v17;
    v19 = sub_27463B6AC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v19;
  a1[5] = v21;
  v22 = a1 + v5[12];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = a1 + v5[11];
  v24 = *(v31 + v3);
  KeyPath = swift_getKeyPath();
  *&v23[*(type metadata accessor for FontParameterView() + 28)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  swift_storeEnumTagMultiPayload();
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B620));
  v27 = v24;

  sub_27444A5B4(v27);
  sub_27440CA78(&qword_28094BF60, &unk_28094B620);
  v28 = sub_27463950C();
  v30 = v29;

  *v23 = v28;
  *(v23 + 1) = v30;
  *(v23 + 2) = v33;
  *(v23 + 24) = v35;
  *(v23 + 40) = v34;
  *(v23 + 7) = v32;
  sub_27463ACDC();

  v23[64] = v36;
  *(v23 + 9) = v37;
  *(a1 + v5[13]) = 0;
}

uint64_t sub_274462DC8@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_27463A0AC();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FontParameterView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0);
  v22 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - v8;
  sub_274464684(v1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_2744646E8(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v24 = v1;
  sub_27463AD5C();
  v12 = *(v1 + 72);
  v25 = *(v1 + 64);
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0);
  sub_27463AD0C();
  sub_274464684(v1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_2744646E8(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10);
  *v4 = sub_27463AD3C();
  v15 = v20;
  v14 = v21;
  (*(v20 + 104))(v4, *MEMORY[0x277CDE248], v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C060);
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0);
  sub_27440AA3C();
  v16 = v19;
  sub_27463A6DC();

  (*(v15 + 8))(v4, v14);
  return (*(v22 + 8))(v9, v16);
}

uint64_t sub_274463190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(a1 + 32))(v24);
  v3 = v24[0];
  if (v24[0] && (v4 = [v24[0] value], v3, v4))
  {
    v5 = [v4 displayName];
  }

  else
  {
    sub_27463B70C();
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v6 = qword_28094BB00;
    v7 = sub_27463B66C();

    v4 = sub_27463B66C();

    v5 = [v6 localizedStringForKey:v7 value:v4 table:0];
  }

  v8 = sub_27463B6AC();
  v10 = v9;

  v24[0] = v8;
  v24[1] = v10;
  sub_274412BBC();
  v11 = sub_27463A53C();
  v13 = v12;
  v15 = v14;
  sub_2744633A4();
  sub_27463A47C();
  v16 = sub_27463A50C();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_274412C10(v11, v13, v15 & 1);

  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v22;
  return result;
}

id sub_2744633A4()
{
  (*(v0 + 32))(&v7);
  v1 = v7;
  if (v7)
  {
    v2 = [v7 value];

    if (v2)
    {
      [objc_opt_self() labelFontSize];
      v3 = [v2 fontWithSize_];

      if (v3)
      {
        return v3;
      }
    }
  }

  v5 = objc_opt_self();
  [v5 labelFontSize];
  v6 = [v5 systemFontOfSize_];

  return v6;
}

void *sub_274463498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FontParameterView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9 - 8];
  sub_274464684(a1, &v17[-v9 - 8]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_2744646E8(v10, v12 + v11);
  sub_274464684(a1, v7);
  v13 = swift_allocObject();
  sub_2744646E8(v7, v13 + v11);
  LOBYTE(v7) = sub_27463A34C();
  v14 = sub_27463A36C();
  sub_27463A36C();
  if (sub_27463A36C() != v7)
  {
    v14 = sub_27463A36C();
  }

  sub_27463B0CC();
  sub_27463973C();
  memcpy(&v17[7], __src, 0x70uLL);
  *a2 = sub_2744647CC;
  *(a2 + 8) = v12;
  *(a2 + 16) = sub_27446499C;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  return memcpy((a2 + 33), v17, 0x77uLL);
}

void sub_2744636BC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  LOBYTE(v11[0]) = *(a2 + 64);
  v11[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0);
  sub_27463ACFC();
  if (a1)
  {
    sub_274412734(0, &qword_28094C088);
    v5 = a1;
    v6 = [v5 fontAttributes];
    type metadata accessor for AttributeName(0);
    sub_274464A08(&qword_28094C090, type metadata accessor for AttributeName);
    v7 = sub_27463B4CC();

    sub_274463890(v7);

    v8 = sub_274463B54();
    v9 = [objc_allocWithZone(MEMORY[0x277D7C448]) initWithValue_];

    v10 = *(a2 + 48);
    v11[0] = v9;
    v10(v11);
  }
}

uint64_t sub_274463890(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C098);
    v2 = sub_27463C61C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    sub_27444C44C(*(a1 + 56) + 32 * v11, v34 + 8);
    *&v34[0] = v12;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v12;
    type metadata accessor for AttributeName(0);
    v13 = v12;
    swift_dynamicCast();
    sub_274464A50((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_274464A50(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_274464A50(v30, v31);
    result = sub_27463C2EC();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v22 = *(v2 + 48) + 40 * v17;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    result = sub_274464A50(v31, (*(v2 + 56) + 32 * v17));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_274463B54()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_27463B4BC();

  v2 = [v0 initWithFontAttributes_];

  return v2;
}

id sub_274463BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FontPicker.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV14WorkflowEditorP33_EAA722A494E602EA7844B636B7E142B110FontPicker11Coordinator_parent];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_274463C70()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75538]) init];
  [v0 setIncludeFaces_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75530]) initWithConfiguration_];
  v2 = sub_27463B66C();
  v3 = NSSelectorFromString(v2);

  if ([v1 respondsToSelector_])
  {
    [v1 performSelector_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C008);
  sub_27463A2EC();
  [v1 setDelegate_];

  return v1;
}

void sub_274463D90(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV14WorkflowEditorP33_EAA722A494E602EA7844B636B7E142B110FontPicker11Coordinator_parent);
  v3 = [a1 selectedFontDescriptor];
  v2();
}

id sub_274463F20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FontPicker.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_274463FB8@<X0>(void *a1@<X8>)
{
  result = sub_274463BE0(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  return result;
}

uint64_t sub_274463FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2744643E0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27446404C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2744643E0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2744640B0()
{
  sub_2744643E0();
  sub_27463A26C();
  __break(1u);
}

uint64_t sub_2744641C8()
{
  swift_getObjectType();
  result = sub_2746385AC();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_274464230(void *a1)
{
  swift_getObjectType();
  v2 = a1;
  return sub_2746385BC();
}

unint64_t sub_274464298()
{
  result = qword_28094BF68;
  if (!qword_28094BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094BF68);
  }

  return result;
}

uint64_t sub_274464310(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_274464350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2744643E0()
{
  result = qword_28094BFE8;
  if (!qword_28094BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094BFE8);
  }

  return result;
}

uint64_t type metadata accessor for FontParameterView()
{
  result = qword_28094C020;
  if (!qword_28094C020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2744644A8()
{
  sub_274457F78(319, &qword_28094C030, &qword_28094C038, 0x277D7C450, type metadata accessor for Parameter);
  if (v0 <= 0x3F)
  {
    sub_274457F78(319, &qword_28094C040, &unk_28094C048, 0x277D7C448, type metadata accessor for StoredParameterState);
    if (v1 <= 0x3F)
    {
      sub_2744645B4();
      if (v2 <= 0x3F)
      {
        sub_274464604();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2744645B4()
{
  if (!qword_28094BBF0)
  {
    v0 = sub_27463AD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094BBF0);
    }
  }
}

void sub_274464604()
{
  if (!qword_28094BBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A210);
    v0 = sub_27463919C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094BBC8);
    }
  }
}

uint64_t sub_274464684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontParameterView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744646E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontParameterView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_27446475C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FontParameterView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_274463498(v4, a1);
}

void sub_2744647CC(void *a1)
{
  v3 = *(type metadata accessor for FontParameterView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_2744636BC(a1, v4);
}

uint64_t objectdestroy_34Tm()
{
  v1 = (type metadata accessor for FontParameterView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();

  if (v2 == 1)
  {

    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210) + 32);
    v5 = sub_2746396DC();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_274464A08(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_274464A50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t WFSliderParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_3_12();
  sub_274466E38(v3, v4);

  sub_27463950C();
  OUTLINED_FUNCTION_39();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_274466BEC;
  *(v5 + 24) = a1;
  OUTLINED_FUNCTION_39();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_274458A90;
  *(v6 + 24) = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B618));
  swift_retain_n();
  sub_27444A5C8(v1);
  OUTLINED_FUNCTION_10_6();
  sub_27440CA78(v7, &qword_28094B618);
  sub_27463950C();
  sub_274466D50();
  return sub_27463AE9C();
}

id WFSliderParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274466DA4();
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (!a1)
  {
    v13 = 0;
LABEL_6:
    v16 = [v2 localizedLabelWithState_];
    [v12 populateWithString_];

    return v12;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v14 = [v13 variable];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = v14;
  [v12 populateWith_];

  swift_unknownObjectRelease();
  return v12;
}

id sub_274464D6C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFSliderParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_274464DDC()
{
  static WFSliderParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_274464E04(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for SummaryModal());
  v5 = v2;
  sub_2744071D8();
  v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_43BA2E4FFF91A585BB3837D4F314AD5928SliderParameterSummaryEditor_modal];
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_43BA2E4FFF91A585BB3837D4F314AD5928SliderParameterSummaryEditor_modal] = v7;
  v8 = v7;

  sub_27440A42C(a2);
}

double sub_274464EA4@<D0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v5 = [a1 parameter];
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_3_12();
  sub_274466E38(v6, v7);

  v8 = sub_27463950C();
  v33 = v9;
  v34 = v8;
  OUTLINED_FUNCTION_39();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274467390;
  *(v10 + 24) = a2;
  OUTLINED_FUNCTION_39();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_274467398;
  *(v11 + 24) = a2;
  KeyPath = swift_getKeyPath();
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B618));
  swift_retain_n();
  v13 = v5;
  sub_27444A5C8(v13);
  OUTLINED_FUNCTION_10_6();
  sub_27440CA78(v14, &qword_28094B618);
  v15 = sub_27463950C();
  v30 = v16;
  v31 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C0D0);
  sub_27463ACDC();
  v17 = __src[0];
  v18 = __src[1];
  v19 = __src[2];
  sub_27463B0CC();
  sub_27463973C();
  v20 = sub_27463A31C();
  LOBYTE(v13) = sub_27463A38C();
  sub_2746390AC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  *a3 = v31;
  *(a3 + 8) = v30;
  *(a3 + 16) = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = sub_274467394;
  *(a3 + 40) = v10;
  *(a3 + 48) = sub_27446739C;
  *(a3 + 56) = v11;
  *(a3 + 64) = 1;
  *(a3 + 72) = KeyPath;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = v17;
  *(a3 + 104) = v18;
  *(a3 + 112) = v19;
  memcpy((a3 + 120), __src, 0x70uLL);
  *(a3 + 232) = v20;
  result = 0.0;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 1;
  *(a3 + 280) = v13;
  *(a3 + 288) = v22;
  *(a3 + 296) = v24;
  *(a3 + 304) = v26;
  *(a3 + 312) = v28;
  *(a3 + 320) = 0;
  return result;
}

uint64_t sub_2744651FC()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_274465294, v3, v2);
}

uint64_t sub_274465294()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2744653B0;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_4;
  v0[7].receiver = v2;
  v3 = type metadata accessor for SliderParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2744653B0()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2744654B4, v2, v1);
}

uint64_t sub_2744654B4()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_43BA2E4FFF91A585BB3837D4F314AD5928SliderParameterSummaryEditor_modal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2744655AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274465644, v4, v3);
}

uint64_t sub_274465644()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2744651FC();
}

id sub_274465728(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_43BA2E4FFF91A585BB3837D4F314AD5928SliderParameterSummaryEditor_modal] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for SliderParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2744657E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SliderParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_27446582C(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v30[0] = *v1;
  v30[1] = v3;
  v4 = v1[3];
  v31 = v1[2];
  v32 = v4;
  v5 = *(*(&v30[0] + 1) + qword_28094A100);
  v36[1] = v31;
  v36[2] = v4;
  v35 = v4;
  v36[0] = v3;
  v33 = v3;
  v34 = v31;
  v6 = v5;
  v7 = sub_274439BF0(v36, v28, &unk_28094C0C0);
  v8 = sub_274465B00(v7);
  v10 = v9;
  v12 = v11;
  sub_274415174(v36, &unk_28094C0C0);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274466E38(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  *(a1 + 320) = sub_27463979C();
  *(a1 + 328) = v13;
  *(a1 + 336) = swift_getKeyPath();
  *(a1 + 344) = 0;
  *(a1 + 352) = swift_getKeyPath();
  *(a1 + 360) = 0;
  *(a1 + 368) = swift_getKeyPath();
  *(a1 + 376) = 0;
  *(a1 + 384) = swift_getKeyPath();
  *(a1 + 424) = 0;
  *(a1 + 432) = swift_getKeyPath();
  *(a1 + 440) = 0;
  sub_27463ACDC();
  v14 = v29;
  *(a1 + 448) = v28[0];
  *(a1 + 456) = v14;
  sub_27463ACDC();
  v15 = v29;
  *(a1 + 464) = v28[0];
  *(a1 + 472) = v15;
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v17 = v6;
  sub_27444A564(v17);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *a1 = sub_27463950C();
  *(a1 + 8) = v18;
  v19 = [v17 localizedLabel];
  v20 = sub_27463B6AC();
  v22 = v21;

  *(a1 + 16) = v20;
  *(a1 + 24) = v22;
  v23 = [v17 localizedDescription];
  if (v23)
  {
    v24 = v23;
    v25 = sub_27463B6AC();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = 1;
  *(a1 + 56) = v8;
  *(a1 + 64) = v10;
  *(a1 + 72) = v12;
  sub_274465F74(v30, a1 + 80);

  *(a1 + 312) = 0;
}

void *sub_274465F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 8) + qword_28094A100);
  v4 = *(a1 + 32);
  v23 = *(a1 + 16);
  v24 = v4;
  v25 = *(a1 + 48);
  KeyPath = swift_getKeyPath();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B618));
  v7 = v3;
  sub_274439BF0(&v23, __src, &unk_28094C0C0);
  sub_27444A5C8(v7);
  sub_27440CA78(&qword_28094C0A0, &qword_28094B618);
  v8 = sub_27463950C();
  v10 = v9;

  v17 = v23;
  v18 = v24;
  v19 = v25;
  v22 = 0;
  v20 = 0;
  v21 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C0D0);
  sub_27463ACDC();
  v11 = __src[0];
  LOBYTE(v7) = __src[1];
  v12 = __src[2];
  LOBYTE(v20) = __src[1];
  v13 = v22;
  sub_27463B0CC();
  sub_27463973C();
  *a2 = v8;
  *(a2 + 8) = v10;
  v14 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v14;
  *(a2 + 48) = v19;
  *(a2 + 64) = 0;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = 0;
  *(a2 + 88) = v13;
  *(a2 + 96) = v11;
  *(a2 + 104) = v7;
  *(a2 + 112) = v12;
  return memcpy((a2 + 120), __src, 0x70uLL);
}

void sub_274466168()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v20, v0, sizeof(v20));
  v1 = sub_274466398();
  v19[17] = v2;
  v19[18] = v3;
  *&v19[19] = v1;
  v4 = __dst[1];
  v5 = qword_28094A100;
  v6 = [*(__dst[1] + qword_28094A100) minimumValue];
  [v6 doubleValue];
  v8 = v7;

  v9 = [*(v4 + v5) maximumValue];
  [v9 doubleValue];
  v11 = v10;

  if (v8 > v11)
  {
    __break(1u);
  }

  else
  {
    *&v19[15] = v8;
    *&v19[16] = v11;
    v12 = swift_allocObject();
    memcpy((v12 + 16), __dst, 0x78uLL);
    v13 = *(v4 + v5);
    sub_2744671B8(__dst, v19);
    v14 = [v13 minimumIcon];
    if (v14)
    {
      v15 = v14;
      v16 = sub_27463BF5C();
    }

    else
    {
      v16 = 0;
    }

    v19[0] = v16;
    v17 = [*(v4 + v5) maximumIcon];
    if (v17)
    {
      v18 = v17;
      sub_27463BF5C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C118);
    sub_2744671F0();
    sub_27446726C();
    sub_27463AE1C();
  }
}

double sub_274466398()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_27463B9CC();
  sub_2744671B8(__dst, v7);
  v1 = sub_27463B9BC();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  v2[2] = v1;
  v2[3] = v3;
  memcpy(v2 + 4, __dst, 0x78uLL);
  sub_2744671B8(__dst, v7);
  v4 = sub_27463B9BC();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  memcpy(v5 + 4, __dst, 0x78uLL);
  sub_27463AF0C();
  return *&v7[2];
}

uint64_t sub_274466584(char a1, uint64_t a2)
{
  v4 = sub_274639ABC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 64))
  {
    (*(a2 + 32))(&v20, v6);
    v9 = v20;
    v10 = 0;
    if (v20 && (v11 = [v20 number], v9, v11))
    {
      [v11 doubleValue];
      v10 = v12;

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v20 = *(a2 + 96);
    v21 = *(a2 + 112);
    v22 = v10;
    LOBYTE(v23) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130);
    sub_27463ACFC();
  }

  else
  {
    v20 = *(a2 + 96);
    v21 = *(a2 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130);
    sub_27463ACEC();
    if ((v23 & 1) == 0 && (a1 & 1) == 0)
    {
      sub_2744671B8(a2, &v20);
      v14 = sub_2746386DC();
      v15 = [objc_allocWithZone(MEMORY[0x277D7C6B0]) initWithNumber_];

      v16 = *(a2 + 48);
      *&v20 = v15;
      v16(&v20);

      sub_2744672C0(a2);
    }
  }

  v20 = *(a2 + 72);
  LOBYTE(v21) = *(a2 + 88);
  v17 = v20;
  if (v21 != 1)
  {

    sub_27463BC0C();
    v19 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274415174(&v20, &qword_28094C138);
    result = (*(v5 + 8))(v8, v4);
    v17 = v22;
    if (!v22)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = sub_2744069F0(v20);
  if (v17)
  {
LABEL_14:
    v17(result);
    return sub_274406A94(v17);
  }

  return result;
}

void sub_27446686C(uint64_t a1@<X2>, void *a2@<X8>)
{
  (*(a1 + 32))(&v8);
  v4 = v8;
  if (v8 && (v5 = [v8 number], v4, v5))
  {
    [v5 doubleValue];
  }

  else
  {
    v5 = [*(*(a1 + 8) + qword_28094A100) minimumValue];
    [v5 doubleValue];
  }

  v7 = v6;

  *a2 = v7;
}

uint64_t sub_274466934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2744671B8(a4, v13);
  v5 = sub_2746386DC();
  v6 = [objc_allocWithZone(MEMORY[0x277D7C6B0]) initWithNumber_];

  v7 = *(a4 + 32);
  v8 = *(a4 + 48);
  v13[0] = v6;
  v8(v13);

  v9 = sub_2744672C0(a4);
  v7(v13, v9);
  v10 = v13[0];
  if (v13[0])
  {
    v11 = [v13[0] number];

    if (v11)
    {
      [v11 doubleValue];
    }
  }

  *v13 = *(a4 + 96);
  v14 = *(a4 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130);
  return sub_27463ACFC();
}

void sub_274466A78(uint64_t a1@<X2>, void *a2@<X8>)
{
  *v11 = *(a1 + 96);
  v12 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130);
  v4 = sub_27463ACEC();
  if (v10 == 1)
  {
    (*(a1 + 32))(v11, v4);
    v5 = v11[0];
    if (v11[0] && (v6 = [v11[0] number], v5, v6))
    {
      [v6 doubleValue];
    }

    else
    {
      v6 = [*(*(a1 + 8) + qword_28094A100) minimumValue];
      [v6 doubleValue];
    }

    v8 = v7;
  }

  else
  {
    v8 = v9;
  }

  *a2 = v8;
}

id sub_274466BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(&v6);
  v3 = v6;
  if (!v6)
  {
    return 0;
  }

  v4 = [v6 variable];

  return v4;
}

void sub_274466C5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5)
{
  if (a1)
  {
    v7 = objc_allocWithZone(*a5);
    v8 = a1;
    v9 = [v7 initWithVariable_];
    v10 = v9;
    (*(a4 + 32))(&v10);
  }

  else
  {
    v10 = 0;
    (*(a4 + 32))(&v10);
  }
}

uint64_t sub_274466CF4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_274466D50()
{
  result = qword_28094C0A8;
  if (!qword_28094C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C0A8);
  }

  return result;
}

unint64_t sub_274466DA4()
{
  result = qword_28094BD80;
  if (!qword_28094BD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094BD80);
  }

  return result;
}

uint64_t sub_274466E38(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_274466F34@<X0>(void *a1@<X8>)
{
  result = sub_274466BF4(*(v1 + 16), *(v1 + 24), v1 + 32);
  *a1 = result;
  return result;
}

uint64_t sub_274466F94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_2744655AC(v2, v3);
}

uint64_t objectdestroy_27Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_11();

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyytIsegr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2744670DC(uint64_t a1, int a2)
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

uint64_t sub_27446711C(uint64_t result, int a2, int a3)
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

uint64_t sub_2744671A4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_274406A94(result);
  }

  else
  {
  }
}

unint64_t sub_2744671F0()
{
  result = qword_28094C120;
  if (!qword_28094C120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C120);
  }

  return result;
}

unint64_t sub_27446726C()
{
  result = qword_28094C128;
  if (!qword_28094C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C128);
  }

  return result;
}

uint64_t objectdestroy_81Tm()
{
  swift_unknownObjectRelease();

  sub_2744671A4(*(v0 + 104), *(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

__n128 OUTLINED_FUNCTION_0_16(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 32) = *v1;
  *(a1 + 48) = v2;
  result = *(v1 + 32);
  *(a1 + 64) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_274439BF0(v9, &a9, v10);
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return sub_27463AF0C();
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return sub_27463B9CC();
}

id sub_274467468()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
  v1 = sub_27463B7FC();

  v2 = [v0 initWithParameterStates_];

  return v2;
}

uint64_t sub_2744674EC(uint64_t a1)
{
  v3 = &selRef_dropTargetUpdated;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v5 = [objc_allocWithZone(WFContactField) init];
  v6 = *(v1 + 3);
  v63 = *(v1 + 4);
  v64 = *(v1 + 2);
  aBlock = v64;
  v74 = v6;
  v75 = v63;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C1D0);
  MEMORY[0x277C575F0](&v79, v7);
  if (v79)
  {
    v8 = sub_2745DDBAC(v79);
    if (v8)
    {
      v9 = sub_2745DBE3C(v8);

      if (v9)
      {
        sub_274468298(v9, v5);
      }
    }
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C1D8);
  sub_27463A2EC();
  [v5 setDelegate_];

  v65 = v1;
  v79 = *v1;
  v11 = *(&v79 + 1);
  v12 = qword_28094A100;
  [v5 setAllowsTextEntry_];
  v67 = v12;
  v68 = v11;
  v13 = *(v11 + v12);
  sub_274414140();
  v15 = v14;

  v16 = v15;
  v17 = *(v15 + 16);
  v66 = v4;
  if (v17)
  {
    v59 = v6;
    v60 = v10;
    v61 = a1;
    v62 = v5;
    aBlock = MEMORY[0x277D84F90];
    v69 = v16;
    sub_27463C44C();
    result = sub_2745DDDF0(v69);
    v19 = result;
    v20 = v69;
    v22 = v21;
    v24 = v23;
    v25 = 0;
    v26 = v69 + 56;
    v70 = v17;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v19 < 1 << *(v20 + 32))
      {
        v27 = v19 >> 6;
        if ((*(v26 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
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
          return result;
        }

        if (*(v20 + 36) != v22)
        {
          goto LABEL_31;
        }

        v71 = v25;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        result = sub_27463C42C();
        if (v24)
        {
          goto LABEL_35;
        }

        v28 = 1 << *(v20 + 32);
        if (v19 >= v28)
        {
          goto LABEL_32;
        }

        v29 = *(v26 + 8 * v27);
        if ((v29 & (1 << v19)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v20 + 36) != v22)
        {
          goto LABEL_34;
        }

        v30 = v29 & (-2 << (v19 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v27 << 6;
          v32 = v27 + 1;
          v33 = (v69 + 64 + 8 * v27);
          while (v32 < (v28 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_274468390(v19, v22, 0);
              v20 = v69;
              v28 = __clz(__rbit64(v34)) + v31;
              goto LABEL_21;
            }
          }

          result = sub_274468390(v19, v22, 0);
          v20 = v69;
        }

LABEL_21:
        v25 = v71 + 1;
        if (v71 + 1 == v70)
        {
          goto LABEL_24;
        }

        v24 = 0;
        v22 = *(v20 + 36);
        v19 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:

    v36 = aBlock;
    v5 = v62;
    v3 = &selRef_dropTargetUpdated;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  sub_2745E1BB4(v36);
  sub_274468200(v37, v5);
  [v5 setEditable_];
  sub_2745D36C8(*(v68 + v67));
  if (v38)
  {
    v39 = sub_27463B66C();
  }

  else
  {
    v39 = 0;
  }

  [v5 setPlaceholder_];

  v40 = [*(v68 + v67) keyboardType];
  WFKeyboardTypeFromString();

  OUTLINED_FUNCTION_1_10(v41, sel_setKeyboardType_);
  v42 = [*(v68 + v67) autocorrectionType];
  WFAutocorrectionTypeFromString();

  OUTLINED_FUNCTION_1_10(v43, sel_setAutocorrectionType_);
  v44 = [*(v68 + v67) autocapitalizationType];
  WFAutocapitalizationTypeFromString();

  OUTLINED_FUNCTION_1_10(v45, sel_setAutocapitalizationType_);
  v46 = [*(v68 + v67) textAlignment];
  WFTextAlignmentFromString();

  OUTLINED_FUNCTION_1_10(v47, sel_setTextAlignment_);
  v80 = v64;
  v81[0] = v63;
  v48 = swift_allocObject();
  v49 = v65[1];
  *(v48 + 16) = *v65;
  *(v48 + 32) = v49;
  *(v48 + 48) = *(v65 + 4);
  v77 = sub_27446831C;
  v78 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_274467CDC;
  v76 = &block_descriptor_5;
  v50 = _Block_copy(&aBlock);
  sub_274439BF0(&v79, v72, &unk_28094C1E0);

  sub_27445E9E4(&v80, v72);
  sub_274439BF0(v81, v72, &unk_2809540D0);

  [v5 setUpdateBlock_];
  _Block_release(v50);
  v51 = [objc_allocWithZone(sub_274638A6C()) v3[112]];
  v52 = [v5 textInputView];
  sub_274638A5C();
  OUTLINED_FUNCTION_0_17();
  sub_27446833C();
  sub_274638A4C();
  OUTLINED_FUNCTION_0_17();
  v53 = aBlock;
  v54 = *&aBlock[OBJC_IVAR____TtCV14WorkflowEditor16ContactFieldView11Coordinator_controller];
  *&aBlock[OBJC_IVAR____TtCV14WorkflowEditor16ContactFieldView11Coordinator_controller] = v66;
  v55 = v66;

  OUTLINED_FUNCTION_0_17();
  v56 = aBlock;
  v57 = *&aBlock[OBJC_IVAR____TtCV14WorkflowEditor16ContactFieldView11Coordinator_autocompleteCoordinator];
  *&aBlock[OBJC_IVAR____TtCV14WorkflowEditor16ContactFieldView11Coordinator_autocompleteCoordinator] = v51;
  v58 = v51;

  [v55 setView_];
  return v55;
}

uint64_t sub_274467B9C(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    [*(*(a2 + 8) + qword_28094A100) multipleStateClass];
    swift_getObjCClassMetadata();
    sub_274412734(0, &unk_28094A220);
    if (swift_dynamicCastMetatype())
    {

      if (a1 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
        sub_27463C57C();
      }

      else
      {
        sub_27463C6CC();
      }

      sub_274467468();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C1D0);
  return sub_27463AEBC();
}

uint64_t sub_274467CDC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_274412734(0, &qword_280950570);
    v2 = sub_27463B81C();
  }

  v3(v2);
}

id sub_274467D64()
{
  v0 = objc_allocWithZone(type metadata accessor for ContactFieldView.Coordinator());

  return [v0 init];
}

void *sub_274467D98()
{
  v1 = *(v0 + OBJC_IVAR____TtCV14WorkflowEditor16ContactFieldView11Coordinator_controller);
  v2 = v1;
  return v1;
}

void sub_274467DFC()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV14WorkflowEditor16ContactFieldView11Coordinator_controller) view];
  if (v1)
  {
    v5 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 textInputView];
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = v3;
      [v3 resignFirstResponder];
    }
  }
}

id sub_274467EB8()
{
  *&v0[OBJC_IVAR____TtCV14WorkflowEditor16ContactFieldView11Coordinator_autocompleteCoordinator] = 0;
  v1 = OBJC_IVAR____TtCV14WorkflowEditor16ContactFieldView11Coordinator_controller;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ContactFieldView.Coordinator();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_274467F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactFieldView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274467FF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_274468030(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_274468090@<X0>(void *a1@<X8>)
{
  result = sub_274467D64();
  *a1 = result;
  return result;
}

uint64_t sub_2744680B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274468404();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27446811C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274468404();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274468180()
{
  sub_274468404();
  sub_27463A26C();
  __break(1u);
}

unint64_t sub_2744681AC()
{
  result = qword_280954180;
  if (!qword_280954180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954180);
  }

  return result;
}

void sub_274468200(uint64_t a1, void *a2)
{
  sub_274412734(0, &unk_28094C200);
  sub_27446839C();
  v3 = sub_27463BA3C();

  [a2 setSupportedPersonProperties_];
}

void sub_274468298(uint64_t a1, void *a2)
{
  sub_274412734(0, &qword_280950570);
  v3 = sub_27463B7FC();

  [a2 setEntries_];
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27446833C()
{
  result = qword_28094C1F0;
  if (!qword_28094C1F0)
  {
    type metadata accessor for ContactFieldView.Coordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C1F0);
  }

  return result;
}

uint64_t sub_274468390(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_27446839C()
{
  result = qword_280954120;
  if (!qword_280954120)
  {
    sub_274412734(255, &unk_28094C200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954120);
  }

  return result;
}

unint64_t sub_274468404()
{
  result = qword_28094C210;
  if (!qword_28094C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C210);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return sub_27463A2EC();
}

id OUTLINED_FUNCTION_1_10(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id sub_27446848C(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [a1 icon];
  }

  v2 = sub_27463B6AC();
  v4 = v3;
  if (v2 == sub_27463B6AC() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_27463C6BC();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = [objc_opt_self() clearBackground];
  v10 = objc_allocWithZone(MEMORY[0x277D7A158]);
  return sub_27446D8F0(0x646E612E646E6177, 0xEE0073726174732ELL, v9);
}

uint64_t sub_2744685A8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_27463B6AC();
  }

  return sub_27463C31C();
}

uint64_t sub_27446861C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t sub_274468628(uint64_t a1, char a2)
{
  if (a2 < 0 && (a2 & 1) != 0)
  {
    sub_27463B6AC();
  }

  return sub_27463C31C();
}

uint64_t sub_2744686A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_11();

  return v1;
}

uint64_t sub_274468704()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return OUTLINED_FUNCTION_27_2();
}

uint64_t sub_274468770()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_11();

  return v1;
}

uint64_t sub_2744687D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return OUTLINED_FUNCTION_27_2();
}

void sub_274468838(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState) = a1;
  v7 = a1;

  if (*(v1 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_allowsMultipleSelection) == 1 && *(v1 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_requiresAtLeastOneSelection) == 1 && (!a1 || (v4 = WFMultipleParameterStateValues(v7), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0), v5 = sub_27463B81C(), v4, v6 = sub_274453594(v5), , v6 < 1)))
  {
    sub_27446894C();
    sub_2744689C0();
  }

  else
  {

    sub_2744689C0();
  }
}

uint64_t sub_27446894C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  return v1;
}

uint64_t sub_2744689C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_274638FBC();
}

uint64_t sub_274468A2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_11();

  return v1;
}

id sub_274468A8C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a2;
  v5 = v2;
  sub_274638FBC();
  return [*&v5[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_reloadDebouncer] poke];
}

uint64_t sub_274468B20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  return v1;
}

uint64_t sub_274468B94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_274638FBC();
}

BOOL sub_274468C00()
{
  v0 = sub_2744686A0();
  if (v1 == -1)
  {
    return 0;
  }

  if ((v1 & 1) != 0 || (v2 = v0[2]) == 0)
  {
    v5 = 0;
  }

  else
  {
    v3 = v0 + 6;
    v4 = v2 + 1;
    do
    {
      v5 = --v4 != 0;
      if (!v4)
      {
        break;
      }

      v6 = *v3;
      v3 += 5;
    }

    while (!*(v6 + 16));
  }

  sub_27446E848(v0, v1);
  return v5;
}

uint64_t sub_274468C70()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter) wf_displayLocalizedPrompt];
  v2 = sub_27463B6AC();

  return v2;
}

void *sub_274468CD0()
{
  result = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState);
  if (result)
  {
    return WFParameterStateIsMultipleValue(result);
  }

  return result;
}

char *sub_274468CF8(void *a1, void *a2, void *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v89 = a6;
  v90 = a8;
  v87 = a4;
  v88 = a5;
  v85 = a2;
  v86 = a3;
  v84 = a1;
  v92 = a13;
  v93 = a14;
  v91 = a12;
  v96 = a11;
  v97 = a7;
  v94 = a9;
  v95 = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0);
  OUTLINED_FUNCTION_1();
  v82 = v17;
  v83 = v16;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  v81 = &v76 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF50);
  OUTLINED_FUNCTION_1();
  v79 = v20;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - v22;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2E0);
  OUTLINED_FUNCTION_1();
  v76 = v24;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C2D8);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v76 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C2D0);
  OUTLINED_FUNCTION_1();
  v36 = v35;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v76 - v38;
  v40 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__results;
  v100 = 0;
  LOBYTE(v101) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C288);
  sub_274638F6C();
  (*(v36 + 32))(&v15[v40], v39, v34);
  v41 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__prompt;
  v100 = 0;
  v101 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C298);
  sub_274638F6C();
  (*(v30 + 32))(&v15[v41], v33, v28);
  v42 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState;
  *&v15[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState] = 0;
  v43 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__selectedState;
  v100 = 0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C2A8);
  sub_274638F6C();
  v44 = v76;
  v45 = v27;
  v46 = v77;
  (*(v76 + 32))(&v15[v43], v45, v77);
  v47 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__userInput;
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_274638F6C();
  (*(v79 + 32))(&v15[v47], v23, v80);
  v48 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__isSearching;
  LOBYTE(v100) = 0;
  v49 = v81;
  sub_274638F6C();
  (*(v82 + 32))(&v15[v48], v49, v83);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v50 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_cachedValues;
  *&v15[v50] = sub_27463B4DC();
  v51 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_reloadDebouncer;
  sub_274412734(0, &qword_28094AF90);
  v52 = sub_27463BCEC();
  v53 = [objc_allocWithZone(MEMORY[0x277D79F00]) initWithDelay:v52 queue:0.2];

  *&v15[v51] = v53;
  v54 = v84;
  *&v15[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter] = v84;
  OUTLINED_FUNCTION_30_1();
  v55 = *(v44 + 8);
  v84 = v54;
  v56 = v85;
  v57 = v85;
  v55(&v15[v43], v46);
  v99 = v56;
  sub_274638F6C();
  swift_endAccess();
  v58 = *&v15[v42];
  *&v15[v42] = v56;
  v85 = v57;

  v59 = v86;
  *&v15[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_defaultCollection] = v86;
  v60 = v88;
  v15[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_allowsMultipleSelection] = v87;
  v15[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_requiresAtLeastOneSelection] = v60;
  *&v15[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_allowedVariableTypes] = v89;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v61 = &v15[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_onSelectedStateChange];
  v63 = v94;
  v62 = v95;
  *v61 = v94;
  v61[1] = v62;
  v64 = &v15[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_onSelectMagicVariable];
  v65 = v96;
  v66 = v91;
  v67 = v92;
  *v64 = v96;
  v64[1] = v66;
  v68 = &v15[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_onCancel];
  v69 = v93;
  *v68 = v67;
  v68[1] = v69;
  v70 = v59;
  sub_2744069F0(v63);
  sub_2744069F0(v65);
  sub_2744069F0(v67);
  v71 = type metadata accessor for ParameterValuePickerModel();
  v98.receiver = v15;
  v98.super_class = v71;
  v72 = objc_msgSendSuper2(&v98, sel_init);
  sub_274468C70();
  sub_27463B6DC();

  sub_2744687D0();
  [*&v72[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_reloadDebouncer] addTarget:v72 action:sel__reload];
  v73 = *&v72[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter];
  [v73 addEventObserver_];

  sub_274469440();
  v74 = OUTLINED_FUNCTION_24_3();
  sub_274406A94(v74);
  sub_274406A94(v96);
  sub_274406A94(v94);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v72;
}

uint64_t sub_274469440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  v4 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_27463B9CC();
  v5 = v0;
  v6 = sub_27463B9BC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_274512004();
}

uint64_t sub_27446953C()
{
  v0[2] = sub_27463B9CC();
  v0[3] = sub_27463B9BC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2744695E8;

  return sub_2744697B4();
}

uint64_t sub_2744695E8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;

  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274469714, v4, v3);
}

uint64_t sub_274469714()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_92();

  return v0();
}

uint64_t sub_2744697B4()
{
  OUTLINED_FUNCTION_79();
  v1[29] = v0;
  sub_27463B9CC();
  v1[30] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[31] = v3;
  v1[32] = v2;

  return MEMORY[0x2822009F8](sub_274469848, v3, v2);
}

uint64_t sub_274469848()
{
  sub_274468A2C();
  v2 = sub_27463B72C();

  if (v2 <= 0)
  {
    v10 = v0[29];
    v7 = *(v10 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_defaultCollection);
    if (v7)
    {
      v11 = v7;

      v12 = v11;
      v1 = sub_274468C70();
      v4 = v13;

      v9 = v12;

      goto LABEL_6;
    }

    v4 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_cachedValues;
    OUTLINED_FUNCTION_29_3();
    v21 = *(v10 + v4);

    sub_27452F340(0, 0xE000000000000000, v21);
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
    v3 = v0[29];
    v4 = sub_274468A2C();
    v6 = v5;
    v7 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_cachedValues;
    OUTLINED_FUNCTION_29_3();
    v8 = *&v7[v3];

    sub_27452F340(v4, v6, v8);
    OUTLINED_FUNCTION_28_4();

    if (v7)
    {

      v9 = v7;

LABEL_6:
      sub_274468A2C();
      sub_27446C21C(v9, v1, v4, v14, v15, 1);
      sub_27446E6D4(v7);

LABEL_7:
      OUTLINED_FUNCTION_92();

      return v16();
    }

    if (![*(v0[29] + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter) wf_supportsSearch])
    {
      v18 = v0[29];

      v19 = *(v18 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_defaultCollection);
      if (v19)
      {
        v20 = *(v18 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_defaultCollection);
      }

      else
      {
        v24 = v0[29];
        v25 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_cachedValues;
        OUTLINED_FUNCTION_29_3();
        v26 = *(v24 + v25);

        v27 = sub_27452F340(0, 0xE000000000000000, v26);

        if (!v27)
        {
          sub_274468704();
          goto LABEL_7;
        }

        v20 = v27;
        v28 = OUTLINED_FUNCTION_21_4();
        sub_27446E6D4(v28);
        v19 = 0;
      }

      OUTLINED_FUNCTION_5();
      v29 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v30 = swift_allocObject();
      *(v30 + 16) = sub_27446E714;
      *(v30 + 24) = v29;
      v0[6] = sub_27446E71C;
      v0[7] = v30;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_27446A574;
      v0[5] = &block_descriptor_66;
      v31 = _Block_copy(v0 + 2);
      v32 = v19;

      v33 = [v20 wf:v31 filteredCollectionUsingBlock:?];
      _Block_release(v31);
      LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

      if (v31)
      {
        __break(1u);
        return result;
      }

      v34 = v33;
      sub_274468A2C();
      sub_27446C21C(v34, 0, 0, v35, v36, 0);

      goto LABEL_7;
    }
  }

  v0[33] = v4;
  v0[34] = v1;
  v0[35] = sub_274468A2C();
  v0[36] = v22;
  sub_274468B94();

  v23 = swift_task_alloc();
  v0[37] = v23;
  *v23 = v0;
  v23[1] = sub_274469CE0;
  OUTLINED_FUNCTION_24_3();

  return sub_27446A5B8();
}

uint64_t sub_274469CE0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v2 = v1;
  v1[38] = v3;
  v1[39] = v4;
  v1[40] = v5;
  v1[41] = v0;

  if (v0)
  {
    swift_bridgeObjectRelease_n();
    v6 = v2[31];
    v7 = v2[32];
    v8 = sub_27446A370;
  }

  else
  {
    v6 = v2[31];
    v7 = v2[32];
    v8 = sub_274469DFC;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

void sub_274469DFC()
{
  v65 = v0;
  v1 = v0[35];
  v2 = v0[36];

  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v4 = v0[29];
    if (!*(v4 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_defaultCollection))
    {
      v5 = v0[38];
      v6 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_cachedValues;
      OUTLINED_FUNCTION_30_1();

      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v4 + v6);
      sub_2745FC3B0();
      *(v4 + v6) = v64;
      swift_endAccess();
    }
  }

  v9 = v0[35];
  v8 = v0[36];
  if (v9 == sub_274468A2C() && v8 == v10)
  {
  }

  else
  {
    v12 = sub_27463C6BC();

    if ((v12 & 1) == 0)
    {
      v13 = v0[38];
      swift_bridgeObjectRelease_n();
LABEL_39:

      goto LABEL_40;
    }
  }

  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[38];
  sub_274468B94();
  sub_27446C21C(v16, v15, v14, v17, v18, 1);

  if (v3)
  {
    v19 = v0[38];
    v20 = v0[29];
    v21 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_cachedValues;
    OUTLINED_FUNCTION_30_1();

    v22 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v20 + v21);
    sub_2745FC3B0();
    *(v20 + v21) = v64;
    swift_endAccess();
  }

  v23 = v0[29];
  v24 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_cachedValues;
  OUTLINED_FUNCTION_29_3();
  v25 = *(v23 + v24);
  if (*(v25 + 16) < 6uLL)
  {
    v13 = v0[38];

    goto LABEL_39;
  }

  v63 = v23;
  v26 = v25 + 64;
  v27 = -1;
  v28 = -1 << *(v25 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v25 + 64);
  v30 = (63 - v28) >> 6;

  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  while (v29)
  {
LABEL_25:
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v35 = (*(v25 + 48) + ((v31 << 10) | (16 * v34)));
    v36 = *v35;
    v37 = v35[1];
    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v39 = v37 == v0[36] && v36 == v0[35];
      if (!v39 && (sub_27463C6BC() & 1) == 0)
      {

        v64 = v32;
        v62 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27445128C();
          v32 = v64;
        }

        v41 = *(v32 + 16);
        v40 = *(v32 + 24);
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_0_8(v40);
          v61 = v44;
          sub_27445128C();
          v42 = v61;
          v32 = v64;
        }

        *(v32 + 16) = v42;
        v43 = v32 + 16 * v41;
        *(v43 + 32) = v36;
        *(v43 + 40) = v37;
        v25 = v62;
      }
    }
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

    if (v33 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v33);
    ++v31;
    if (v29)
    {
      v31 = v33;
      goto LABEL_25;
    }
  }

  v46 = v0[41];

  v64 = v32;

  sub_27446DA0C(&v64);
  if (v46)
  {

    return;
  }

  v47 = v63;
  sub_27446A3E4(*(*(v63 + v24) + 16) - 5, v64);
  v49 = v48;
  v51 = v50 >> 1;
  v53 = (v52 + 16 * v48 + 8);
  while (v51 != v49)
  {
    if (v49 >= v51)
    {
      goto LABEL_55;
    }

    v54 = *(v53 - 1);
    v55 = *v53;
    OUTLINED_FUNCTION_30_1();

    v56 = sub_274534C48(v54, v55);
    if (v57)
    {
      v58 = v56;
      swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v47 + v24);
      *(v47 + v24) = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2C0);
      v47 = v63;
      sub_27463C4CC();
      v59 = v64;

      OUTLINED_FUNCTION_5_0();
      sub_27463C4EC();
      *(v63 + v24) = v59;
    }

    swift_endAccess();

    v53 += 2;
    ++v49;
  }

  v60 = v0[38];
  sub_27446E6D4(0);

  swift_unknownObjectRelease();
LABEL_40:

  OUTLINED_FUNCTION_92();

  v45();
}

uint64_t sub_27446A370()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 328);

  sub_27446C9D4(v1);
  sub_274468704();

  OUTLINED_FUNCTION_92();

  return v2();
}

uint64_t sub_27446A3E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_27446E748(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_2745DDE24(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27446A478(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter];

  v4 = [v3 wf:a1 pickerLocalizedTitleForState:?];
  if (v4)
  {
    sub_27463B6AC();

    v5 = swift_unknownObjectUnownedLoadStrong();
    sub_274468A2C();

    sub_274412BBC();
    v6 = sub_27463C11C();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_27446A574(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_27446A5B8()
{
  OUTLINED_FUNCTION_79();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  sub_27463B9CC();
  v1[10] = sub_27463B9BC();
  v5 = sub_27463B96C();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_27446A650, v5, v4);
}

uint64_t sub_27446A650()
{
  v1 = OUTLINED_FUNCTION_5_0();
  sub_27446A940(v1, v2);
  swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_27446A728;
  v4 = OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2821E4960](v4);
}

uint64_t sub_27446A728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_2();
  v8 = v7;
  v7[2] = v4;
  v7[3] = v9;
  v7[4] = v10;
  v7[5] = v11;
  v7[6] = v3;
  v12 = *v4;
  OUTLINED_FUNCTION_13_4();
  *v13 = v12;
  v8[14] = v3;

  if (v3)
  {
    v14 = v8[11];
    v15 = v8[12];
    v16 = sub_27446A8E4;
  }

  else
  {
    v8[15] = a3;
    v8[16] = a2;
    v14 = v8[11];
    v15 = v8[12];
    v16 = sub_27446A85C;
  }

  return MEMORY[0x2822009F8](v16, v14, v15);
}

uint64_t sub_27446A85C()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[15];

  if (v1)
  {
    v2 = v0[15];
    v3 = v0[16];
  }

  else
  {
    v3 = sub_274468C70();
    v2 = v4;
  }

  v5 = v0[3];
  v6 = v0[1];

  return v6(v5, v3, v2);
}

uint64_t sub_27446A8E4()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_92();

  return v0();
}

uint64_t sub_27446A940(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

void sub_27446A968(void *a1, char a2)
{
  v3 = a1;
  if (a2 < 0)
  {
    if (a2)
    {
      v13 = sub_27463B6AC();
      v15 = v14;
      if (v13 == sub_27463B6AC() && v15 == v16)
      {
        v41 = v3;
      }

      else
      {
        v18 = sub_27463C6BC();
        v19 = v3;

        if ((v18 & 1) == 0)
        {
LABEL_43:

LABEL_45:

          return;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_43;
      }

      v43 = Strong;
      v44 = swift_unknownObjectWeakLoadStrong();
      if (v44)
      {
        v45 = v44;
        v46 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_allowedVariableTypes];
        if (v46)
        {
          v47 = sub_2744896FC(*MEMORY[0x277D7D068], v46);
        }

        else
        {
          v47 = 0;
        }

        OUTLINED_FUNCTION_5();
        v58 = swift_allocObject();
        *(v58 + 16) = v2;
        aBlock[4] = sub_27446E6CC;
        aBlock[5] = v58;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_274486F8C;
        aBlock[3] = &block_descriptor_56;
        v59 = _Block_copy(aBlock);
        v60 = v2;

        [v45 showActionOutputPickerAllowingShortcutInput:v47 & 1 variableProvider:v43 completionHandler:v59];
        swift_unknownObjectRelease();
        _Block_release(v59);
      }

      v61 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_onSelectMagicVariable];
      if (v61)
      {
        v61();
      }
    }

    else
    {
      v4 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter];
      [v4 stateClass];
      swift_getObjCClassMetadata();
      aBlock[11] = &unk_2883EEDD8;
      if (!swift_dynamicCastTypeToObjCProtocolConditional())
      {
        return;
      }

      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];
      objc_opt_self();
      OUTLINED_FUNCTION_0_10();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        goto LABEL_3;
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  v4 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter];
  v5 = a1;
LABEL_3:
  v3 = v5;
  v6 = sub_274468CD0();
  [v4 multipleStateClass];
  swift_getObjCClassMetadata();
  v7 = [v3 isKindOfClass_];
  v8 = OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState;
  v9 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState];
  if (v9)
  {
    v10 = [v9 variable];
    if (v10)
    {

      if (!(v7 & 1 | ((v2[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_allowsMultipleSelection] & 1) == 0)))
      {
        goto LABEL_30;
      }

LABEL_8:
      v11 = v3;
      v12 = v3;
LABEL_31:
      sub_274468838(v12);
      goto LABEL_32;
    }
  }

  if (v7 & 1 | ((v2[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_allowsMultipleSelection] & 1) == 0))
  {
    goto LABEL_8;
  }

  if ((v6 & 1) == 0)
  {
LABEL_30:
    [v4 multipleStateClass];
    swift_getObjCClassMetadata();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_274648560;
    *(v35 + 32) = v3;
    v36 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
    OUTLINED_FUNCTION_19_4();
    v37 = sub_27463B7FC();

    v38 = WFMultipleParameterStateMake(ObjCClassFromMetadata, v37);

    v12 = v38;
    goto LABEL_31;
  }

  v20 = *&v2[v8];
  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = v20;
  v22 = OUTLINED_FUNCTION_24_3();
  sub_27446B2B0(v22, v23);
  v25 = v24;
  v26 = v2;
  v27 = WFMultipleParameterStateValues(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
  v28 = sub_27463B81C();

  if ((v25 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274648560;
    *(inited + 32) = v3;
    aBlock[0] = v28;
    v49 = v3;
    sub_27445C124(inited);
    [v4 multipleStateClass];
    swift_getObjCClassMetadata();
    v50 = swift_getObjCClassFromMetadata();
    v51 = sub_27463B7FC();

    v52 = WFMultipleParameterStateMake(v50, v51);

    v53 = v52;
    v2 = v26;
    sub_274468838(v53);

LABEL_32:
    v39 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_onSelectedStateChange];
    if (v39)
    {
      v40 = sub_27446894C();
      v39();

      return;
    }

    goto LABEL_45;
  }

  v62 = v2;
  v63 = v21;
  aBlock[0] = MEMORY[0x277D84F90];
  v29 = sub_274453594(v28);
  v30 = 0;
  v31 = v28 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v29 == v30)
    {

      [v4 multipleStateClass];
      swift_getObjCClassMetadata();
      v54 = swift_getObjCClassFromMetadata();
      v55 = sub_27463B7FC();

      v56 = WFMultipleParameterStateMake(v54, v55);

      v57 = v56;
      v2 = v62;
      sub_274468838(v57);

      goto LABEL_32;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x277C58B20](v30, v28);
    }

    else
    {
      if (v30 >= *(v31 + 16))
      {
        goto LABEL_56;
      }

      v32 = *(v28 + 8 * v30 + 32);
    }

    v33 = v32;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if ([v32 stateIsEquivalent_])
    {
    }

    else
    {
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v31 = v28 & 0xFFFFFFFFFFFFFF8;
    }

    ++v30;
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_27446B048(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_27446A968(a1, 128);
  }

  else
  {
    sub_27446B414();
  }
}

BOOL sub_27446B0B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState);
  if (v1)
  {
    v2 = v1;
    v3 = WFMultipleParameterStateValues(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
    OUTLINED_FUNCTION_19_4();
    v4 = sub_27463B81C();

    v5 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter);
    objc_opt_self();
    OUTLINED_FUNCTION_19_4();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && (v7 = v6, v8 = v5, (v9 = sub_27446E568(v7)) != 0))
    {
      v10 = sub_274453594(v9);
    }

    else
    {
      v10 = 0;
    }

    if (sub_274468CD0())
    {
      v11 = sub_274453594(v4);

      return v11 == v10;
    }
  }

  return 0;
}

uint64_t sub_27446B1BC(void *a1, char a2)
{
  if (a2 < 0)
  {
    if ((a2 & 1) == 0)
    {
      [*(v2 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter) stateClass];
      swift_getObjCClassMetadata();
      if (swift_dynamicCastTypeToObjCProtocolConditional())
      {
        [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (v4)
        {
          goto LABEL_3;
        }

        swift_unknownObjectRelease();
      }
    }

    v8 = 0;
    return v8 & 1;
  }

  v4 = a1;
LABEL_3:
  v5 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState);
  v6 = v5;
  sub_27446B2B0(v5, v4);
  v8 = v7;

  return v8 & 1;
}

void sub_27446B2B0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    if ((sub_274468CD0() & 1) != 0 && (WFParameterStateIsMultipleValue(a2) & 1) == 0)
    {
      v4 = WFMultipleParameterStateValues(v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
      OUTLINED_FUNCTION_19_4();
      v5 = sub_27463B81C();

      v6 = sub_274453594(v5);
      for (i = 0; ; ++i)
      {
        if (v6 == i)
        {

          return;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v11 = OUTLINED_FUNCTION_21_4();
          v8 = MEMORY[0x277C58B20](v11);
        }

        else
        {
          if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = [v8 stateIsEquivalent_];

        if (v10)
        {

          return;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    else
    {
      [v3 stateIsEquivalent_];
    }
  }
}

void sub_27446B414()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_onCancel);
  if (v1)
  {

    v1(v2);
    v3 = OUTLINED_FUNCTION_5_0();

    sub_274406A94(v3);
  }
}

void sub_27446B478()
{
  v1 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v34 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter);
  if ([v14 allowsMultipleValues])
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15 && (v16 = v15, v17 = v14, sub_27446E568(v16)))
    {
      [v17 multipleStateClass];
      swift_getObjCClassMetadata();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
      v19 = sub_27463B7FC();

      v20 = WFMultipleParameterStateMake(ObjCClassFromMetadata, v19);

      if (v20)
      {
        v35 = v20;
        sub_274468838(v20);
        v21 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_onSelectedStateChange);
        if (v21)
        {
          v34 = sub_27446894C();
          v21();

          v22 = v34;
        }

        else
        {
          v22 = v35;
        }
      }

      else
      {
        sub_274638C2C();
        v30 = sub_274638D9C();
        v31 = sub_27463BC0C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_20_4(v32);
          OUTLINED_FUNCTION_12_5(&dword_2743F0000, v33, v31, "Failed to make new parameter states with all possible states.");
          OUTLINED_FUNCTION_10_9();
        }

        (*(v3 + 8))(v13, v1);
      }
    }

    else
    {
      sub_274638C2C();
      v26 = sub_274638D9C();
      v27 = sub_27463BC0C();
      if (OUTLINED_FUNCTION_16_5(v27))
      {
        v28 = OUTLINED_FUNCTION_18_5();
        OUTLINED_FUNCTION_20_4(v28);
        OUTLINED_FUNCTION_12_5(&dword_2743F0000, v29, v13, "Parameter was not an enumeration parameter, couldn't get possibleStates.");
        OUTLINED_FUNCTION_10_9();
      }

      (*(v3 + 8))(v9, v1);
    }
  }

  else
  {
    sub_274638C2C();
    v23 = sub_274638D9C();
    v24 = sub_27463BC0C();
    if (OUTLINED_FUNCTION_16_5(v24))
    {
      v25 = OUTLINED_FUNCTION_18_5();
      *v25 = 0;
      _os_log_impl(&dword_2743F0000, v23, v13, "Attempted to call select-all on a parameter that doesn't allow multiple values.", v25, 2u);
      MEMORY[0x277C5A270](v25, -1, -1);
    }

    (*(v3 + 8))(v6, v1);
  }
}

void sub_27446B7F0()
{
  v1 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v25 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter);
  if ([v11 allowsMultipleValues])
  {
    [v11 multipleStateClass];
    swift_getObjCClassMetadata();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
    v13 = sub_27463B7FC();
    v14 = WFMultipleParameterStateMake(ObjCClassFromMetadata, v13);

    if (v14)
    {
      v26 = v14;
      sub_274468838(v14);
      v15 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_onSelectedStateChange);
      if (v15)
      {
        v25 = sub_27446894C();
        v15();

        v16 = v25;
      }

      else
      {
        v16 = v26;
      }
    }

    else
    {
      sub_274638C2C();
      v21 = sub_274638D9C();
      v22 = sub_27463BC0C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_18_5();
        OUTLINED_FUNCTION_20_4(v23);
        OUTLINED_FUNCTION_12_5(&dword_2743F0000, v24, v22, "Failed to make new parameter states with no selected states.");
        OUTLINED_FUNCTION_10_9();
      }

      (*(v3 + 8))(v10, v1);
    }
  }

  else
  {
    sub_274638C2C();
    v17 = sub_274638D9C();
    v18 = sub_27463BC0C();
    if (OUTLINED_FUNCTION_16_5(v18))
    {
      v19 = OUTLINED_FUNCTION_18_5();
      OUTLINED_FUNCTION_20_4(v19);
      OUTLINED_FUNCTION_12_5(&dword_2743F0000, v20, v10, "Attempted to call deselect-all on a parameter that doesn't allow multiple values.");
      OUTLINED_FUNCTION_10_9();
    }

    (*(v3 + 8))(v6, v1);
  }
}

void sub_27446BA84()
{
  sub_274468838(0);
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_onSelectedStateChange);
  if (v1)
  {
    v2 = sub_27446894C();
    v1();
  }
}

void sub_27446BB0C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_allowedVariableTypes);
    if (v6 && v6[2])
    {
      i = MEMORY[0x277D84F90];
      v53 = MEMORY[0x277D84F90];
      v51 = *MEMORY[0x277D7D038];
      if ((sub_2744896FC(*MEMORY[0x277D7D038], v6) & 1) != 0 && [v5 hasAvailableActionOutputVariables] && swift_unknownObjectWeakLoadStrong())
      {
        v8 = a2;
        swift_unknownObjectRelease();
        v9 = v51;
        sub_2744503C0();
        v11 = v10;
        v13 = *(v10 + 16);
        v12 = *(v10 + 24);
        if (v13 >= v12 >> 1)
        {
          OUTLINED_FUNCTION_0_8(v12);
          sub_2744503C0();
          v11 = v49;
        }

        *(v11 + 16) = v13 + 1;
        v14 = v11 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = 1;
        v53 = v11;
        a2 = v8;
      }

      v15 = &selRef_dropTargetUpdated;
      if ((sub_2744896FC(*MEMORY[0x277D7D040], v6) & 1) == 0)
      {
        goto LABEL_16;
      }

      [objc_allocWithZone(MEMORY[0x277D7C158]) init];
      if ((OUTLINED_FUNCTION_17_4() & 1) == 0)
      {
        goto LABEL_80;
      }

      while (1)
      {
        OUTLINED_FUNCTION_5_13();
        if (v16)
        {
          OUTLINED_FUNCTION_4_12();
        }

        OUTLINED_FUNCTION_1_11();
LABEL_16:
        if (sub_2744896FC(*MEMORY[0x277D7D048], v6))
        {
          [objc_allocWithZone(MEMORY[0x277D7C1E0]) v15[112]];
          if ((OUTLINED_FUNCTION_17_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_13();
          }

          OUTLINED_FUNCTION_5_13();
          if (v16)
          {
            OUTLINED_FUNCTION_4_12();
          }

          OUTLINED_FUNCTION_1_11();
        }

        if (sub_2744896FC(*MEMORY[0x277D7D050], v6))
        {
          [objc_allocWithZone(MEMORY[0x277D7C2D0]) v15[112]];
          if ((OUTLINED_FUNCTION_17_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_13();
          }

          OUTLINED_FUNCTION_5_13();
          if (v16)
          {
            OUTLINED_FUNCTION_4_12();
          }

          OUTLINED_FUNCTION_1_11();
        }

        if (sub_2744896FC(*MEMORY[0x277D7D058], v6))
        {
          [objc_allocWithZone(MEMORY[0x277D7C2D8]) v15[112]];
          if ((OUTLINED_FUNCTION_17_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_13();
          }

          OUTLINED_FUNCTION_5_13();
          if (v16)
          {
            OUTLINED_FUNCTION_4_12();
          }

          OUTLINED_FUNCTION_1_11();
        }

        if (sub_2744896FC(*MEMORY[0x277D7D060], v6))
        {
          [objc_allocWithZone(MEMORY[0x277D7C350]) v15[112]];
          if ((OUTLINED_FUNCTION_17_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_13();
          }

          OUTLINED_FUNCTION_5_13();
          if (v16)
          {
            OUTLINED_FUNCTION_4_12();
          }

          OUTLINED_FUNCTION_1_11();
        }

        if (sub_2744896FC(*MEMORY[0x277D7D070], v6))
        {
          v17 = [v5 availableVariableNames];
          v18 = sub_27463B81C();

          v19 = *(v18 + 16);
          if (v19)
          {
            sub_2744513C4();
            v6 = i;
            v20 = (v18 + 40);
            do
            {
              v21 = *(v20 - 1);
              v22 = *v20;
              v23 = objc_allocWithZone(MEMORY[0x277D7C9E8]);

              swift_unknownObjectRetain();
              v15 = sub_2745C24C4(v21, v22, v5, 0);
              v25 = i[2];
              v24 = i[3];
              if (v25 >= v24 >> 1)
              {
                OUTLINED_FUNCTION_0_8(v24);
                sub_2744513C4();
              }

              i[2] = v25 + 1;
              v26 = &i[2 * v25];
              v26[4] = v15;
              *(v26 + 40) = 0;
              v20 += 2;
              --v19;
            }

            while (v19);
          }

          else
          {

            v6 = MEMORY[0x277D84F90];
          }

          sub_27445C164(v6);
        }

        if (!a2 || sub_27463B72C() <= 0)
        {
          break;
        }

        v27 = 0;
        v52 = *(v53 + 16);
        v28 = v53 + 40;
        v50 = MEMORY[0x277D84F90];
LABEL_52:
        for (i = (v28 + 16 * v27); ; i += 2)
        {
          if (v52 == v27)
          {

            swift_unknownObjectRelease();
            v53 = v50;
            goto LABEL_76;
          }

          if (v27 >= *(v53 + 16))
          {
            break;
          }

          v6 = *(i - 1);
          v29 = *i;
          if (*i)
          {
            v30 = sub_27463B6AC();
            v32 = v31;
            if (v30 == sub_27463B6AC() && v32 == v33)
            {
              v38 = v6;
            }

            else
            {
              v35 = sub_27463C6BC();
              v36 = v6;

              if ((v35 & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            v39 = a2;
            v40 = v5;
            sub_27463B70C();
            if (qword_2809492C0 != -1)
            {
              swift_once();
            }

            v41 = qword_28094BB00;
            OUTLINED_FUNCTION_21_4();
            v42 = sub_27463B66C();
            OUTLINED_FUNCTION_21_4();
            v43 = sub_27463B66C();

            v37 = [v41 localizedStringForKey:v42 value:v43 table:0];

            v5 = v40;
            a2 = v39;
          }

          else
          {
            v37 = [v6 name];
          }

          v15 = sub_27463B6AC();

          sub_274412BBC();
          v44 = sub_27463C11C();

          if (v44)
          {
LABEL_69:
            v45 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2744513C4();
              v45 = v50;
            }

            v47 = *(v45 + 16);
            v46 = *(v45 + 24);
            v15 = (v47 + 1);
            if (v47 >= v46 >> 1)
            {
              OUTLINED_FUNCTION_0_8(v46);
              sub_2744513C4();
              v45 = v50;
            }

            ++v27;
            *(v45 + 16) = v15;
            v50 = v45;
            v48 = v45 + 16 * v47;
            *(v48 + 32) = v6;
            *(v48 + 40) = v29;
            v28 = v53 + 40;
            goto LABEL_52;
          }

          ++v27;
        }

        __break(1u);
LABEL_80:
        OUTLINED_FUNCTION_3_13();
      }

      swift_unknownObjectRelease();
LABEL_76:
      if (!*(v53 + 16))
      {
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_26_3();
}

void sub_27446C21C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {

    sub_2744687D0();
  }

  v45 = v6;
  v7 = [a1 sections];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954330);
  OUTLINED_FUNCTION_0_10();
  v8 = sub_27463B81C();

  v9 = sub_274453594(v8);
  if (v9)
  {
    v10 = v9;
    v55 = MEMORY[0x277D84F90];
    sub_27445136C(0, v9 & ~(v9 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v50 = v8 & 0xC000000000000001;
      v12 = v55;
      v47 = v8 + 32;
      v48 = v8 & 0xFFFFFFFFFFFFFF8;
      v49 = v10;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v50)
        {
          v14 = MEMORY[0x277C58B20]();
        }

        else
        {
          if (v11 >= *(v48 + 16))
          {
            goto LABEL_42;
          }

          v14 = *(v47 + 8 * v11);
        }

        v15 = v14;
        v16 = [v14 items];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
        OUTLINED_FUNCTION_0_10();
        v17 = sub_27463B81C();

        if (v17 >> 62)
        {
          v18 = sub_27463C27C();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v51 = v13;
        v52 = v12;
        if (v18)
        {
          v54 = MEMORY[0x277D84F90];
          sub_27445138C();
          if (v18 < 0)
          {
            goto LABEL_41;
          }

          v19 = 0;
          v20 = v54;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x277C58B20](v19, v17);
            }

            else
            {
              v21 = *(v17 + 8 * v19 + 32);
            }

            v22 = v21;
            v24 = *(v54 + 16);
            v23 = *(v54 + 24);
            if (v24 >= v23 >> 1)
            {
              OUTLINED_FUNCTION_0_8(v23);
              sub_27445138C();
            }

            ++v19;
            *(v54 + 16) = v24 + 1;
            v25 = v54 + 16 * v24;
            *(v25 + 32) = v22;
            *(v25 + 40) = 0;
          }

          while (v18 != v19);
        }

        else
        {

          v20 = MEMORY[0x277D84F90];
        }

        v26 = [v15 title];
        if (v26)
        {
          v27 = v26;
          v28 = sub_27463B6AC();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0;
        }

        v31 = [v15 _identifier];
        v32 = sub_27463B6AC();
        v34 = v33;

        v12 = v52;
        v36 = *(v52 + 16);
        v35 = *(v52 + 24);
        if (v36 >= v35 >> 1)
        {
          v38 = OUTLINED_FUNCTION_0_8(v35);
          sub_27445136C(v38, v36 + 1, 1);
          v12 = v52;
        }

        *(v12 + 16) = v36 + 1;
        v37 = (v12 + 40 * v36);
        v37[4] = v28;
        v37[5] = v30;
        v37[6] = v20;
        v37[7] = v32;
        v37[8] = v34;
        v11 = v51;
        if (v51 == v49)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_32:

    sub_274468704();
    v39 = *(v45 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel__draftSelectedState);
    if (v39 && (a6 & 1) != 0)
    {
      v40 = *(v45 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter);
      v53 = v39;
      if ([v40 wf_shouldValidateCurrentStateOnCollectionChanged])
      {
        sub_27446C600(v53, a1);
        sub_274468838(v41);
      }

      OUTLINED_FUNCTION_26_3();
    }

    else
    {
      OUTLINED_FUNCTION_26_3();
    }
  }
}

void sub_27446C600(void *a1, void *a2)
{
  v4 = a1;
  v5 = [a1 variable];
  if (v5)
  {

LABEL_3:
    v6 = v4;
    return;
  }

  if (WFParameterStateIsMultipleValue(v4))
  {
    v32 = v2;
    v33 = v4;
    v7 = WFMultipleParameterStateValues(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
    v8 = sub_27463B81C();

    v39 = MEMORY[0x277D84F90];
    v37 = sub_274453594(v8);
    v38 = v8;
    v9 = 0;
    v35 = v8 + 32;
    v36 = v8 & 0xC000000000000001;
    v34 = a2;
LABEL_6:
    if (v9 == v37)
    {
      sub_2744F5EE8();
      v28 = v27;

      if (v28)
      {

        v4 = v33;
        goto LABEL_3;
      }

      if (sub_274453594(v39))
      {
        [*(v32 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter) multipleStateClass];
        swift_getObjCClassMetadata();
        swift_getObjCClassFromMetadata();
        v29 = sub_27463B7FC();

        v30 = OUTLINED_FUNCTION_24_3();
        WFMultipleParameterStateMake(v30, v31);

        return;
      }

      goto LABEL_37;
    }

    sub_2744535A4(v9, v36 == 0);
    if (v36)
    {
      v10 = MEMORY[0x277C58B20](v9, v38);
    }

    else
    {
      v10 = *(v35 + 8 * v9);
    }

    v11 = v10;
    if (!__OFADD__(v9++, 1))
    {
      v13 = [a2 allItems];
      v14 = sub_27463B81C();

      v15 = sub_274453594(v14);
      v16 = 0;
      while (1)
      {
        if (v15 == v16)
        {

          a2 = v34;
          goto LABEL_6;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x277C58B20](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v19 = [v11 stateIsEquivalent_];

        ++v16;
        if (v19)
        {

          sub_27463C41C();
          sub_27463C46C();
          sub_27463C47C();
          sub_27463C42C();
          a2 = v34;
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:

      return;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    v20 = [a2 allItems];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
    OUTLINED_FUNCTION_0_10();
    v21 = sub_27463B81C();

    v22 = sub_274453594(v21);
    v23 = 0;
    while (v22 != v23)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x277C58B20](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_39;
      }

      v26 = [v4 stateIsEquivalent_];

      ++v23;
      if (v26)
      {

        goto LABEL_3;
      }
    }
  }
}

void *sub_27446C9D4(void *a1)
{
  v2 = sub_274637D5C();
  v3 = [v2 userInfo];
  v4 = sub_27463B4CC();

  v5 = sub_27463B6AC();
  sub_27452F288(v5, v6, v4, &v25);

  if (v26)
  {
    sub_274412734(0, &unk_28094C2B0);
    if (swift_dynamicCast())
    {
      v7 = [v2 domain];
      v8 = sub_27463B6AC();
      v10 = v9;

      if (v8 == sub_27463B6AC() && v10 == v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = sub_27463C6BC();
      }

      v14 = [v2 domain];
      v15 = sub_27463B6AC();
      v17 = v16;

      if (v15 == sub_27463B6AC() && v17 == v18)
      {

        goto LABEL_19;
      }

      v20 = sub_27463C6BC();

      if ((v13 & 1) == 0 && (v20 & 1) == 0)
      {
        v23 = v24;
        a1 = sub_27446C9D4();

        return a1;
      }
    }
  }

  else
  {

    sub_27446E660(&v25);
  }

LABEL_19:
  v21 = a1;
  return a1;
}

void sub_27446CC28(void *a1)
{
  if ([a1 conformsToProtocol_])
  {
    aBlock[6] = &unk_2883D82C8;
    v1 = swift_dynamicCastObjCProtocolUnconditional();
    OUTLINED_FUNCTION_5();
    v2 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    aBlock[4] = sub_27446E5D8;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27446D1BC;
    aBlock[3] = &block_descriptor_6;
    v3 = _Block_copy(aBlock);

    [v1 wf:v3 reloadFromAttributesDidChangeWithCompletionHandler:?];
    _Block_release(v3);
  }
}

uint64_t sub_27446CD40(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v22 = a1;
  v9 = sub_27463B1EC();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_27463B21C();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274412734(0, &qword_28094AF90);
  v23 = sub_27463BCEC();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a2;
  v15[5] = a3;
  v16 = v22;
  v15[6] = v22;
  aBlock[4] = sub_27446E5F8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27443E0E8;
  aBlock[3] = &block_descriptor_50;
  v17 = _Block_copy(aBlock);
  v18 = a4;
  v19 = v16;

  sub_27463B20C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27446E608();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
  sub_274454390();
  sub_27463C1EC();
  v20 = v23;
  MEMORY[0x277C58440](0, v14, v11, v17);
  _Block_release(v17);

  (*(v25 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v24);
}

void sub_27446D010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = swift_unknownObjectUnownedLoadStrong();
    v8 = a1;
    sub_27446C9D4(a1);

    sub_274468704();
    v9 = a1;

    goto LABEL_4;
  }

  if (a4)
  {
    v12 = a4;
    if (a5)
    {
LABEL_7:

      v13 = a5;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = swift_unknownObjectUnownedLoadStrong();
    a3 = sub_274468C70();
    v12 = v15;

    if (a5)
    {
      goto LABEL_7;
    }
  }

  v16 = objc_allocWithZone(MEMORY[0x277CD3E28]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
  v17 = sub_27463B7FC();
  v13 = [v16 initWithItems_];

LABEL_10:
  v21 = swift_unknownObjectUnownedLoadStrong();
  v18 = a5;
  sub_27446C21C(v13, a3, v12, v19, v20, 1);

  v9 = v21;

LABEL_4:
}

uint64_t sub_27446D1BC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_27463B6AC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a2;
  v11 = a4;
  v6(a2, v7, v9, a4);
}

id sub_27446D318()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterValuePickerModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParameterValuePickerModel()
{
  result = qword_28094C270;
  if (!qword_28094C270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27446D5CC()
{
  sub_274441FA0(319, &qword_28094C280, &qword_28094C288);
  if (v0 <= 0x3F)
  {
    sub_274441FA0(319, &qword_28094C290, &qword_28094C298);
    if (v1 <= 0x3F)
    {
      sub_274441FA0(319, &qword_28094C2A0, &qword_28094C2A8);
      if (v2 <= 0x3F)
      {
        sub_274441FF4(319, &qword_28094B0D0);
        if (v3 <= 0x3F)
        {
          sub_274441FF4(319, &qword_28094B080);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_27446D818(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_27446D858(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_27446D8B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ParameterValuePickerModel();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

id sub_27446D8F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_27463B66C();

  v6 = [v3 initWithSymbolName:v5 background:a3];

  return v6;
}

uint64_t sub_27446DA0C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274545C94();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_27446DA78(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_27446DA78(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27463C65C();
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
        v6 = sub_27463B88C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_27446DC70(v7, v8, a1, v4);
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
    return sub_27446DB6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27446DB6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
    while (2)
    {
      v14 = v7;
      v15 = v6;
      do
      {

        v8 = sub_27463B72C();
        v9 = sub_27463B72C();

        if (v8 >= v9)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v10 = *v6;
        v11 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v11;
        *(v6 - 2) = v10;
        v6 -= 2;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v15 + 2;
      v7 = v14 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_27446DC70(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v85 = v8 + 16;
      v86 = *(v8 + 2);
      while (v86 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v87 = v8;
        v88 = &v8[16 * v86];
        v89 = *v88;
        v90 = &v85[2 * v86];
        v91 = *(v90 + 1);
        sub_27446E314((*a3 + 16 * *v88), (*a3 + 16 * *v90), (*a3 + 16 * v91), v103);
        if (v5)
        {
          break;
        }

        if (v91 < v89)
        {
          goto LABEL_117;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_118;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_119;
        }

        v86 = *v85 - 1;
        sub_274546A38(v90 + 16, v92, v90);
        *v85 = v86;
        v8 = v87;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v8 = sub_274546A20();
    goto LABEL_93;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v94 = v5;
      v11 = *a3 + 16 * v7;
      v98 = 16 * v7;
      v5 = *(v11 + 8);

      v103 = sub_27463B72C();
      v100 = sub_27463B72C();

      v12 = v11 + 24;
      v13 = v9 + 2;
      while (1)
      {
        v14 = v13;
        if (++v10 >= v6)
        {
          break;
        }

        v15 = v12 + 16;

        v16 = sub_27463B72C();
        v5 = sub_27463B72C();

        v13 = v14 + 1;
        v12 = v15;
        if (v103 < v100 == v16 >= v5)
        {
          goto LABEL_9;
        }
      }

      v10 = v6;
LABEL_9:
      if (v103 >= v100)
      {
        v5 = v94;
      }

      else
      {
        v17 = v9;
        if (v10 < v9)
        {
          goto LABEL_123;
        }

        if (v9 >= v10)
        {
          v5 = v94;
        }

        else
        {
          if (v6 >= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v6;
          }

          v19 = 16 * v18;
          v20 = v10;
          v5 = v94;
          v21 = v98;
          do
          {
            if (v17 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v23 = (v22 + v21);
              v24 = v22 + v19;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v17;
            v19 -= 16;
            v21 += 16;
          }

          while (v17 < v20);
        }
      }
    }

    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_122;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2744503AC();
      v8 = v83;
    }

    v39 = *(v8 + 2);
    v40 = v39 + 1;
    if (v39 >= *(v8 + 3) >> 1)
    {
      sub_2744503AC();
      v8 = v84;
    }

    *(v8 + 2) = v40;
    v41 = v8 + 32;
    v42 = &v8[16 * v39 + 32];
    *v42 = v9;
    *(v42 + 1) = v10;
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    v103 = v10;
    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        v44 = &v41[16 * v40 - 16];
        v45 = &v8[16 * v40];
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_59:
          if (v49)
          {
            goto LABEL_108;
          }

          v61 = *v45;
          v60 = *(v45 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_111;
          }

          v65 = *(v44 + 1);
          v66 = v65 - *v44;
          if (__OFSUB__(v65, *v44))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v63, v66))
          {
            goto LABEL_116;
          }

          if (v63 + v66 >= v48)
          {
            if (v48 < v66)
            {
              v43 = v40 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v40 < 2)
        {
          goto LABEL_110;
        }

        v68 = *v45;
        v67 = *(v45 + 1);
        v56 = __OFSUB__(v67, v68);
        v63 = v67 - v68;
        v64 = v56;
LABEL_74:
        if (v64)
        {
          goto LABEL_113;
        }

        v70 = *v44;
        v69 = *(v44 + 1);
        v56 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v56)
        {
          goto LABEL_115;
        }

        if (v71 < v63)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v43 - 1 >= v40)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v75 = v8;
        v76 = &v41[16 * v43 - 16];
        v77 = *v76;
        v78 = v43;
        v79 = &v41[16 * v43];
        v80 = *(v79 + 1);
        sub_27446E314((*a3 + 16 * *v76), (*a3 + 16 * *v79), (*a3 + 16 * v80), v102);
        if (v5)
        {
          goto LABEL_101;
        }

        if (v80 < v77)
        {
          goto LABEL_103;
        }

        v5 = *(v75 + 2);
        if (v78 > v5)
        {
          goto LABEL_104;
        }

        *v76 = v77;
        *(v76 + 1) = v80;
        if (v78 >= v5)
        {
          goto LABEL_105;
        }

        v81 = v78;
        v40 = v5 - 1;
        sub_274546A38(v79 + 16, v5 - 1 - v81, v79);
        v8 = v75;
        *(v75 + 2) = v5 - 1;
        v82 = v5 > 2;
        v5 = 0;
        if (!v82)
        {
          goto LABEL_88;
        }
      }

      v50 = &v41[16 * v40];
      v51 = *(v50 - 8);
      v52 = *(v50 - 7);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_106;
      }

      v55 = *(v50 - 6);
      v54 = *(v50 - 5);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_107;
      }

      v57 = *(v45 + 1);
      v58 = v57 - *v45;
      if (__OFSUB__(v57, *v45))
      {
        goto LABEL_109;
      }

      v56 = __OFADD__(v48, v58);
      v59 = v48 + v58;
      if (v56)
      {
        goto LABEL_112;
      }

      if (v59 >= v53)
      {
        v73 = *v44;
        v72 = *(v44 + 1);
        v56 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v74)
        {
          v43 = v40 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    v7 = v10;
    if (v10 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_124;
  }

  if (v28 >= v27)
  {
    v28 = a3[1];
  }

  if (v28 < v9)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v10 == v28)
  {
    goto LABEL_39;
  }

  v95 = v5;
  v29 = *a3;
  v30 = *a3 + 16 * v10;
  v96 = v9;
  v31 = v9 - v10;
  v99 = v28;
LABEL_32:
  v101 = v30;
  v103 = v10;
  v32 = v31;
  v33 = v30;
  while (1)
  {

    v34 = sub_27463B72C();
    v35 = sub_27463B72C();

    if (v34 >= v35)
    {
LABEL_37:
      ++v10;
      v30 = v101 + 16;
      --v31;
      if (v103 + 1 == v99)
      {
        v10 = v99;
        v5 = v95;
        v9 = v96;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v29)
    {
      break;
    }

    v36 = *v33;
    v37 = v33[1];
    *v33 = *(v33 - 1);
    *(v33 - 1) = v37;
    *(v33 - 2) = v36;
    v33 -= 2;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_27446E314(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_274451080(a1, (a2 - a1) / 16, a4);
    for (i = &v4[16 * v8]; ; i = v12)
    {
      if (v4 >= i || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_27;
      }

      v12 = i;

      v13 = v6;
      v14 = sub_27463B72C();
      v15 = sub_27463B72C();

      if (v14 >= v15)
      {
        break;
      }

      v16 = v13;
      v6 = v13 + 16;
      if (v7 != v13)
      {
        goto LABEL_11;
      }

LABEL_12:
      v7 += 16;
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 16;
    v6 = v13;
    if (v17)
    {
      goto LABEL_12;
    }

LABEL_11:
    *v7 = *v16;
    goto LABEL_12;
  }

  sub_274451080(a2, (a3 - a2) / 16, a4);
  i = &v4[16 * v9];
  v30 = v4;
  v29 = v7;
LABEL_14:
  v18 = v6 - 16;
  v5 -= 16;
  while (i > v4 && v6 > v7)
  {
    v20 = i - 16;
    v21 = v6;
    v22 = i;

    v23 = sub_27463B72C();
    v24 = sub_27463B72C();

    v25 = v5 + 16;
    if (v23 < v24)
    {
      v17 = v25 == v21;
      v6 = v18;
      v7 = v29;
      i = v22;
      v4 = v30;
      if (!v17)
      {
        *v5 = *v18;
        v6 = v18;
      }

      goto LABEL_14;
    }

    if (v22 != v25)
    {
      *v5 = *v20;
    }

    v5 -= 16;
    i = v20;
    v7 = v29;
    v4 = v30;
    v6 = v21;
  }

LABEL_27:
  v26 = (i - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v26])
  {
    memmove(v6, v4, 16 * v26);
  }

  return 1;
}

uint64_t sub_27446E568(void *a1)
{
  v2 = [a1 possibleStates];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
  OUTLINED_FUNCTION_0_10();
  v3 = sub_27463B81C();

  return v3;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27446E608()
{
  result = qword_28094E100;
  if (!qword_28094E100)
  {
    sub_27463B1EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E100);
  }

  return result;
}

uint64_t sub_27446E660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_27446E6D4(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_27446E748(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_27446E794()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27444E7E4;

  return sub_27446953C();
}

void sub_27446E848(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_27446E860(a1, a2 & 1);
  }
}

void sub_27446E860(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_27446E86C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_27446E884(result, a2 & 1);
  }

  return result;
}

id sub_27446E884(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_27446E89C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t sub_27446E8DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_27446E948(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_27446E990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_11()
{
  *(v2 + 16) = v1;
  v4 = v2 + 16 * v0;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
}

void OUTLINED_FUNCTION_3_13()
{

  sub_2744503C0();
}

void OUTLINED_FUNCTION_4_12()
{

  sub_2744503C0();
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return sub_274638FAC();
}

void OUTLINED_FUNCTION_10_9()
{

  JUMPOUT(0x277C5A270);
}

void OUTLINED_FUNCTION_12_5(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

BOOL OUTLINED_FUNCTION_16_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return sub_274638FBC();
}

uint64_t OUTLINED_FUNCTION_28_4()
{
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return swift_beginAccess();
}

BOOL sub_27446EC04()
{
  OUTLINED_FUNCTION_16_6();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v11 = *v4;
    v7 = v11;
    v8 = v1(&v11);
    if (v0)
    {

      return v5 != 0;
    }

    v9 = v8;

    ++v4;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

void sub_27446ECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_52_1(a1, a2, a3);
  sub_274453594(v8);
  OUTLINED_FUNCTION_51_1();
  while (1)
  {
    v10 = v9;
    if (v4 == v9)
    {
      break;
    }

    if (v7)
    {
      MEMORY[0x277C58B20](v9, v5);
    }

    else
    {
      if (v9 >= *(v6 + 16))
      {
        goto LABEL_13;
      }
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_50_1();
    v12 = v11();

    if (!v3)
    {
      v9 = v10 + 1;
      if ((v12 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_27446EDAC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 48;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

void sub_27446EE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_52_1(a1, a2, a3);
  v9(v8);
  OUTLINED_FUNCTION_51_1();
  while (1)
  {
    v11 = v10;
    if (v4 == v10)
    {
      break;
    }

    if (v7)
    {
      v12 = MEMORY[0x277C58B20](v10, v5);
    }

    else
    {
      if (v10 >= *(v6 + 16))
      {
        goto LABEL_13;
      }

      v12 = *(v5 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_50_1();
    v15 = v14();

    if (!v3)
    {
      v10 = v11 + 1;
      if ((v15 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_27446EEE0()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);

  if ((v6 & 1) == 0)
  {
    sub_27463BC0C();
    v7 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_27446F024()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 208);
  if (*(v0 + 216) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v6 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_27446F174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ActionView(0);
  sub_274412C20(v1 + *(v10 + 80), v9, &qword_28094BC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_27441277C(v9, a1, &qword_28094A610);
  }

  sub_27463BC0C();
  v12 = sub_27463A2FC();
  sub_274638CEC();

  sub_274639AAC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_27446F35C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_7_12();
  sub_27447FCA0(v2, v3);
  OUTLINED_FUNCTION_54_1();
  *(a1 + 88) = sub_27463979C();
  *(a1 + 96) = v4;
  type metadata accessor for WorkflowEditorResults(0);
  OUTLINED_FUNCTION_22_4();
  sub_27447FCA0(v5, v6);
  OUTLINED_FUNCTION_54_1();
  *(a1 + 104) = sub_27463979C();
  *(a1 + 112) = v7;
  sub_27463ACDC();
  *(a1 + 120) = v14;
  *(a1 + 128) = *(&v14 + 1);
  sub_27463ACDC();
  *(a1 + 136) = v14;
  *(a1 + 144) = *(&v14 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DF60);
  sub_27463ACDC();
  *(a1 + 152) = v14;
  *(a1 + 168) = v15;
  *(a1 + 176) = swift_getKeyPath();
  *(a1 + 184) = 0;
  *(a1 + 192) = swift_getKeyPath();
  *(a1 + 200) = 0;
  *(a1 + 208) = swift_getKeyPath();
  *(a1 + 216) = 0;
  v8 = type metadata accessor for ActionView(0);
  v9 = v8[20];
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  swift_storeEnumTagMultiPayload();
  *(a1 + v8[21]) = xmmword_27464D540;
  *(a1 + v8[22]) = 0x4018000000000000;
  type metadata accessor for ActionViewModel();
  OUTLINED_FUNCTION_21_5();
  sub_27447FCA0(v10, v11);
  *a1 = sub_27463950C();
  *(a1 + 8) = v12;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0x10000;
  return result;
}

uint64_t ActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v216[0] = a1;
  v3 = sub_2746378EC();
  v4 = OUTLINED_FUNCTION_0_18(v3, &v238);
  v216[1] = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_4(v7 - v6);
  v8 = sub_27463A0AC();
  v9 = OUTLINED_FUNCTION_0_18(v8, &v237);
  v213 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v13 = OUTLINED_FUNCTION_15_4(v12 - v11);
  v14 = type metadata accessor for ActionView(v13);
  v15 = OUTLINED_FUNCTION_19_0(v14);
  v219 = v16;
  MEMORY[0x28223BE20](v15);
  v223[0] = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223[1] = v17;
  v218 = sub_274639C2C();
  OUTLINED_FUNCTION_1();
  v204 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_4(v21 - v20);
  v22 = sub_27463A19C();
  v23 = OUTLINED_FUNCTION_0_18(v22, v225);
  v195 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_0();
  v27 = OUTLINED_FUNCTION_15_4(v26 - v25);
  v28 = type metadata accessor for RectangleGroupBoxStyle(v27);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_0();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C300);
  OUTLINED_FUNCTION_0_18(v33, v216);
  v183 = v34;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_75();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C308);
  OUTLINED_FUNCTION_0_18(v36, &v217);
  v187 = v37;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v39);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C310);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v40);
  v42 = &v181 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C318);
  OUTLINED_FUNCTION_0_18(v43, v223);
  v191 = v44;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v46);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C320);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v50);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949418);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v52);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C330);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v54);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809493E8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_40_1();
  v220 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C340);
  OUTLINED_FUNCTION_0_18(v57, v235);
  v206 = v58;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_40_1();
  v222 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C348);
  OUTLINED_FUNCTION_0_18(v61, &v236);
  v207 = v62;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C350);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v67);
  v226 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C358);
  sub_274470B24();
  v182 = v2;
  sub_27463B07C();
  v68 = sub_274474BB4();
  v224 = v1;
  v69 = *(v1 + 82);
  v210 = v65;
  if (v69 == 2)
  {
    if (qword_280949280 != -1)
    {
      OUTLINED_FUNCTION_5_14();
    }

    v70 = qword_280965DC8;
    v71 = sub_27463ABDC();
  }

  else
  {
    v71 = 1;
  }

  v72 = *(v28 + 28);
  *(v32 + v72) = swift_getKeyPath();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  swift_storeEnumTagMultiPayload();
  *v32 = 0x403B800000000000;
  *(v32 + 8) = v68;
  *(v32 + 16) = v71;
  sub_27440CA78(&qword_28094C390, &qword_28094C300);
  sub_27447FCA0(&qword_28094C398, type metadata accessor for RectangleGroupBoxStyle);
  v74 = v185;
  v75 = v184;
  v76 = v182;
  sub_27463A73C();
  sub_27447FAAC(v32);
  OUTLINED_FUNCTION_34_2();
  v77(v76, v75);
  v78 = v190;
  v79 = &v42[*(v190 + 36)];
  *v79 = v69;
  *(v79 + 1) = swift_getKeyPath();
  v79[16] = 0;
  v80 = *(type metadata accessor for ActionShadowView(0) + 24);
  *&v79[v80] = swift_getKeyPath();
  v184 = v73;
  swift_storeEnumTagMultiPayload();
  v81 = sub_27463B0CC();
  v83 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C3A0);
  OUTLINED_FUNCTION_14_1();
  *v84 = v81;
  v84[1] = v83;
  (*(v187 + 32))(v42, v74, v186);
  v85 = v194;
  sub_27463A18C();
  v86 = sub_27447FB28();
  v87 = v189;
  sub_27463A82C();
  OUTLINED_FUNCTION_34_2();
  v88(v85, v196);
  sub_27440CB1C(v42, &qword_28094C310);
  if (*(v224 + 81) == 1)
  {
    v89 = v202;
    sub_274639C0C();
    v90 = v218;
  }

  else
  {
    v227[0] = MEMORY[0x277D84F90];
    sub_27447FCA0(&qword_28094C3B8, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C3C0);
    OUTLINED_FUNCTION_19_5();
    sub_27440CA78(v91, v92);
    v89 = v202;
    v90 = v218;
    sub_27463C1EC();
  }

  v227[0] = v78;
  v227[1] = v86;
  swift_getOpaqueTypeConformance2();
  v93 = v193;
  v94 = v192;
  sub_27463A85C();
  OUTLINED_FUNCTION_34_2();
  v95(v89, v90);
  OUTLINED_FUNCTION_34_2();
  v96(v87, v94);
  v97 = *(v224 + 8);
  v98 = sub_2745E2510();
  if (v99)
  {
    v100 = v98;
  }

  else
  {
    v100 = 0;
  }

  if (v99)
  {
    v101 = v99;
  }

  else
  {
    v101 = 0xE000000000000000;
  }

  v227[0] = v100;
  v227[1] = v101;
  sub_274412BBC();
  v102 = v197;
  sub_2746395FC();

  sub_27440CB1C(v93, &unk_28094C320);
  v227[0] = 0;
  v227[1] = 0xE000000000000000;
  sub_27463C38C();

  strcpy(v227, "editor.action.");
  HIBYTE(v227[1]) = -18;
  v103 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  v104 = [*(v97 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) identifier];
  v105 = sub_27463B6AC();
  v107 = v106;

  MEMORY[0x277C57EA0](v105, v107);

  v108 = v203;
  sub_27463963C();

  sub_27440CB1C(v102, &unk_28094C320);
  v109 = *(v97 + v103);
  v110 = v201;
  v111 = v188;
  sub_274412C20(v108, v188 + *(v201 + 44), &unk_28094C320);
  *(v111 + *(v110 + 36)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_7_12();
  sub_27447FCA0(v112, v113);
  v114 = v109;
  v115 = sub_27463979C();
  v117 = v116;
  sub_27440CB1C(v108, &unk_28094C320);
  *v111 = v115;
  v111[1] = v117;
  *(v111 + *(v110 + 40)) = v114;
  v202 = v97;
  v204 = v103;
  v118 = *(v97 + v103);
  KeyPath = swift_getKeyPath();
  v120 = v200;
  sub_27441277C(v111, v200, &qword_280949418);
  v121 = (v120 + *(v199 + 36));
  *v121 = KeyPath;
  v121[1] = v118;
  v122 = *(v97 + v103);
  v123 = swift_getKeyPath();
  v124 = v120;
  v125 = v220;
  sub_27441277C(v124, v220, &unk_28094C330);
  v126 = v125 + *(v221 + 36);
  *v126 = v122;
  *(v126 + 8) = v123;
  *(v126 + 16) = 0;
  *(v126 + 24) = 0;
  *(v126 + 31) = 0;
  v127 = v224;
  v128 = v223[0];
  v218 = type metadata accessor for ActionView;
  sub_274483F70(v224, v223[0], type metadata accessor for ActionView);
  sub_27463B9CC();
  v129 = v118;
  v130 = v122;
  v131 = sub_27463B9BC();
  v132 = *(v219 + 80);
  v133 = (v132 + 32) & ~v132;
  v134 = swift_allocObject();
  v135 = MEMORY[0x277D85700];
  *(v134 + 16) = v131;
  *(v134 + 24) = v135;
  sub_274480BE8(v128, v134 + v133, type metadata accessor for ActionView);
  sub_274483F70(v127, v128, type metadata accessor for ActionView);
  v136 = sub_27463B9BC();
  v137 = swift_allocObject();
  *(v137 + 16) = v136;
  *(v137 + 24) = MEMORY[0x277D85700];
  v219 = type metadata accessor for ActionView;
  sub_274480BE8(v128, v137 + v133, type metadata accessor for ActionView);
  sub_27463AF0C();
  v138 = v218;
  sub_274483F70(v127, v128, v218);
  v139 = v132;
  v140 = (v132 + 16) & ~v132;
  v199 = v139;
  v141 = swift_allocObject();
  sub_274480BE8(v128, v141 + v140, type metadata accessor for ActionView);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493F0);
  v201 = sub_27440ABA8();
  v203 = sub_27440AD6C();
  v142 = v221;
  v143 = v220;
  sub_27463A91C();

  sub_27440CB1C(v143, &qword_2809493E8);
  v144 = v224;
  v145 = *(v224 + 128);
  LOBYTE(v233) = *(v224 + 120);
  v234 = v145;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0);
  sub_27463AD0C();
  LODWORD(v220) = v228;
  sub_274483F70(v144, v128, v138);
  v146 = swift_allocObject();
  sub_274480BE8(v128, v146 + v140, v219);
  v147 = sub_27463AD3C();
  v148 = v212;
  *v212 = v147;
  v149 = v213;
  v150 = v214;
  (*(v213 + 104))(v148, *MEMORY[0x277CDE248], v214);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809493E0);
  v227[0] = v142;
  v227[1] = v200;
  v228 = v201;
  v229 = v203;
  swift_getOpaqueTypeConformance2();
  sub_27440ADE8();
  v151 = v208;
  v152 = v205;
  v153 = v222;
  sub_27463A6DC();

  (*(v149 + 8))(v148, v150);
  OUTLINED_FUNCTION_34_2();
  v154(v153, v151);
  v155 = v223[0];
  sub_274483F70(v224, v223[0], v218);
  v156 = v140;
  v157 = swift_allocObject();
  sub_274480BE8(v155, v157 + v156, v219);
  v158 = v211;
  (*(v207 + 32))(v211, v152, v209);
  v159 = (v158 + *(v210 + 36));
  *v159 = sub_27448015C;
  v159[1] = v157;
  v160 = *(v202 + v204);
  v161 = [v160 identifier];
  v162 = sub_27463B6AC();
  v164 = v163;

  v165 = [v160 localizedName];
  v166 = sub_27463B6AC();
  v168 = v167;

  objc_opt_self();
  v169 = 0;
  v170 = 0;
  if (!swift_dynamicCastObjCClass())
  {
    v171 = sub_274452900(v160);
    v170 = v172;
    if (v172)
    {
      v169 = v171;
    }

    else
    {
      v169 = 0;
    }
  }

  v173 = [v160 icon];

  v227[0] = v162;
  v227[1] = v164;
  v228 = v166;
  v229 = v168;
  v230 = v169;
  v231 = v170;
  v232 = v173;
  v233 = MEMORY[0x277D84F90];
  sub_27447FCA0(&qword_28094C408, MEMORY[0x277CB9BD0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C410);
  OUTLINED_FUNCTION_19_5();
  sub_27440CA78(v174, v175);
  v176 = v215;
  v177 = v217;
  sub_27463C1EC();
  sub_274480A38();
  sub_274452C2C();
  sub_27463A54C();
  OUTLINED_FUNCTION_34_2();
  v178(v176, v177);
  v179 = v232;

  return sub_27440CB1C(v158, &qword_28094C350);
}

uint64_t sub_274470A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274639C5C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C840);
  sub_274470C08(a1, (a2 + *(v4 + 44)));
  v5 = *(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  KeyPath = swift_getKeyPath();
  v7 = v5;
  v8 = sub_27463B0CC();
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C358);
  v12 = a2 + *(result + 36);
  *v12 = v7;
  *(v12 + 8) = KeyPath;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 34) = 0;
  *(v12 + 40) = v8;
  *(v12 + 48) = v10;
  return result;
}

unint64_t sub_274470B24()
{
  result = qword_28094C360;
  if (!qword_28094C360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C358);
    sub_27440CA78(&qword_28094C368, &qword_28094C370);
    sub_27440CA78(&qword_28094C378, &unk_28094C380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C360);
  }

  return result;
}

uint64_t sub_274470C08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v310 = a2;
  v3 = sub_274638C1C();
  v308 = *(v3 - 8);
  v309 = v3;
  MEMORY[0x28223BE20](v3);
  v307 = &v268 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C848);
  MEMORY[0x28223BE20](v5);
  v273 = &v268 - v6;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C850);
  MEMORY[0x28223BE20](v271);
  v269 = (&v268 - v7);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C858);
  MEMORY[0x28223BE20](v279);
  v280 = &v268 - v8;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C860);
  MEMORY[0x28223BE20](v305);
  v282 = &v268 - v9;
  v329 = type metadata accessor for ActionView(0);
  v276 = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v277 = v10;
  v278 = &v268 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C868);
  MEMORY[0x28223BE20](v11 - 8);
  v272 = &v268 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v283 = &v268 - v14;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C870);
  MEMORY[0x28223BE20](v299);
  v301 = &v268 - v15;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C878);
  MEMORY[0x28223BE20](v294);
  v17 = &v268 - v16;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C880);
  MEMORY[0x28223BE20](v289);
  v291 = &v268 - v18;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C888);
  MEMORY[0x28223BE20](v295);
  v292 = &v268 - v19;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C890);
  MEMORY[0x28223BE20](v300);
  v297 = &v268 - v20;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C898);
  MEMORY[0x28223BE20](v290);
  v288 = &v268 - v21;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D0);
  MEMORY[0x28223BE20](v285);
  v286 = &v268 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v287 = &v268 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8A0);
  MEMORY[0x28223BE20](v25 - 8);
  v306 = &v268 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v331 = &v268 - v28;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8A8);
  MEMORY[0x28223BE20](v324);
  v30 = &v268 - v29;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8B0);
  MEMORY[0x28223BE20](v326);
  v328 = &v268 - v31;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8B8);
  MEMORY[0x28223BE20](v327);
  v330 = &v268 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  *&v325 = &v268 - v34;
  MEMORY[0x28223BE20](v35);
  v332 = &v268 - v36;
  v37 = *(a1 + 104);
  if (!v37)
  {
    type metadata accessor for WorkflowEditorResults(0);
    sub_27447FCA0(&unk_28094C450, type metadata accessor for WorkflowEditorResults);
    goto LABEL_84;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v37;
  sub_274638FAC();
  v284 = v38;

  v39 = *&v346[0];
  v293 = a1;
  if (!*&v346[0])
  {
    goto LABEL_5;
  }

  v40 = *(a1 + 8);
  if (*&v40[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] != *&v346[0])
  {
    sub_27446E6D4(*&v346[0]);
    a1 = v293;
LABEL_5:
    v40 = *(a1 + 8);
    v41 = sub_2745E2614();
    if (v42)
    {
      *&v345[0] = v41;
      *(&v345[0] + 1) = v42;
      LOBYTE(v345[1]) = 1;
      sub_274483044();
      sub_274639DDC();
      v303 = *(&v346[0] + 1);
      v304 = *&v346[0];
      v43 = LOBYTE(v346[1]);
    }

    else
    {
      v303 = 0;
      v304 = 0;
      v43 = 255;
    }

    v302 = v43;
    goto LABEL_10;
  }

  v345[0] = *(v346 + 8);
  LOBYTE(v345[1]) = 0;
  sub_274483044();

  sub_274639DDC();
  sub_27446E6D4(v39);
  v303 = *(&v346[0] + 1);
  v304 = *&v346[0];
  v302 = LOBYTE(v346[1]);
  a1 = v293;
LABEL_10:
  v44 = v40;
  sub_2744754F4();
  if ((v45 & 1) != 0 && (v46 = sub_2745E2510(), v47))
  {
    v322 = v47;
    v323 = v46;
    v321 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummaryCoordinator];
    v48 = v321;
    v319 = 0;
    v320 = 0;
    v318 = MEMORY[0x277D84F90];
  }

  else
  {
    v49 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary];
    v50 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 16];
    v51 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 24];
    v52 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 32];
    v53 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 40];
    v319 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 8];
    v320 = v49;
    v322 = v51;
    v323 = v50;
    v318 = v52;
    v321 = v53;
    sub_27448287C(v49, v319, v50, v51, v52, v53);
  }

  v54 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters;
  if (!sub_274453594(*&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters]) || [*&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] parameterCollapsingBehavior] == 2 || *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError])
  {
    v316 = 0;
    v317 = 0;
    v315 = 0;
  }

  else
  {
    type metadata accessor for ActionViewModel();
    sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel);
    v194 = sub_27463951C();
    swift_getKeyPath();
    sub_27463952C();

    v316 = *(&v346[0] + 1);
    v317 = *&v346[0];
    v315 = LOBYTE(v346[1]);
  }

  v270 = v54;
  v296 = v17;
  v55 = sub_2745E29C8();
  v281 = v5;
  if (v55)
  {
    type metadata accessor for ActionViewModel();
    sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel);
    v56 = sub_27463951C();
    swift_getKeyPath();
    sub_27463952C();

    v313 = *(&v346[0] + 1);
    v314 = *&v346[0];
    v57 = v44;
    v312 = LOBYTE(v346[1]);
  }

  else
  {
    v313 = 0;
    v314 = 0;
    v57 = v44;
    v312 = 0;
  }

  v58 = v324;
  sub_274473224(&v30[*(v324 + 60)]);
  v60 = *(a1 + 16);
  v59 = *(a1 + 24);
  v61 = *(a1 + 144);
  LOBYTE(v346[0]) = *(a1 + 136);
  *(&v346[0] + 1) = v61;
  sub_2744069F0(v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0);
  sub_27463ACEC();
  v62 = v345[0];
  v311 = *(a1 + 83);
  v63 = *(a1 + 82);
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  *(v30 + 2) = swift_getKeyPath();
  v30[24] = 0;
  type metadata accessor for ActionViewModel();
  sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel);
  *(v30 + 4) = sub_27463950C();
  *(v30 + 5) = v64;
  v65 = type metadata accessor for WorkflowEditorOptions(0);
  v274 = sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v275 = v65;
  *(v30 + 6) = sub_27463979C();
  *(v30 + 7) = v66;
  v67 = v319;
  *(v30 + 8) = v320;
  *(v30 + 9) = v67;
  v68 = v322;
  *(v30 + 10) = v323;
  *(v30 + 11) = v68;
  v69 = v321;
  *(v30 + 12) = v318;
  *(v30 + 13) = v69;
  v70 = v316;
  *(v30 + 14) = v317;
  *(v30 + 15) = v70;
  v30[128] = v315;
  v71 = v313;
  *(v30 + 17) = v314;
  *(v30 + 18) = v71;
  v30[152] = v312;
  v72 = &v30[v58[16]];
  *v72 = v60;
  v72[1] = v59;
  v30[v58[17]] = v62;
  v30[v58[18]] = v311;
  v73 = v63;
  v30[v58[19]] = v63;
  *&v30[v58[20]] = xmmword_27464D540;
  *&v30[v58[21]] = 0x4028000000000000;
  *&v30[v58[22]] = 0x401C000000000000;
  LOBYTE(v58) = sub_27463A33C();
  v74 = a1 + *(v329 + 84);
  sub_2746390AC();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v328;
  sub_27441277C(v30, v328, &qword_28094C8A8);
  v84 = v83 + *(v326 + 36);
  *v84 = v58;
  *(v84 + 8) = v76;
  *(v84 + 16) = v78;
  *(v84 + 24) = v80;
  *(v84 + 32) = v82;
  *(v84 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v86 = sub_27446EEE0();
  v87 = v325;
  sub_27441277C(v83, v325, &qword_28094C8B0);
  v88 = (v87 + *(v327 + 36));
  *v88 = KeyPath;
  v88[1] = v86;
  sub_27441277C(v87, v332, &qword_28094C8B8);
  v328 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  v89 = [*&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] isMissing];
  i = v57;
  v298 = v57;
  if (!v89)
  {
    v121 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError;
    v122 = *&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError];
    if (!v122)
    {
      goto LABEL_35;
    }

    v123 = v122;
    v124 = [v123 domain];
    v125 = sub_27463B6AC();
    v127 = v126;

    if (v125 == sub_27463B6AC() && v127 == v128)
    {
    }

    else
    {
      v130 = sub_27463C6BC();

      if ((v130 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if ([v123 code] == 12)
    {
      v131 = swift_getKeyPath();
      v132 = v123;
      v133 = sub_27463A38C();
      sub_2746390AC();
      LOBYTE(v345[0]) = 0;
      LOBYTE(v344[0]) = 0;
      *&v346[0] = v132;
      *(&v346[0] + 1) = v131;
      LOBYTE(v346[1]) = 0;
      BYTE8(v346[1]) = v133;
      *&v346[2] = v134;
      *(&v346[2] + 1) = v135;
      *&v346[3] = v136;
      *(&v346[3] + 1) = v137;
      LOBYTE(v346[4]) = 0;
      memcpy(v291, v346, 0x41uLL);
      swift_storeEnumTagMultiPayload();
      sub_274412C20(v346, v345, &unk_280954810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954810);
      sub_27440CA78(&qword_28094C928, &qword_28094C898);
      sub_274482C24();
      v138 = v292;
      sub_274639DDC();
      sub_274412C20(v138, v296, &qword_28094C888);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C950);
      sub_274482B6C();
      sub_274482D04();
      v139 = v297;
      sub_274639DDC();
      sub_27440CB1C(v138, &qword_28094C888);
      sub_274412C20(v139, v301, &qword_28094C890);
      swift_storeEnumTagMultiPayload();
      sub_274482AE0();
      sub_274482EF4();
      sub_274639DDC();
      v140 = v346;
      v141 = &unk_280954810;
LABEL_38:
      sub_27440CB1C(v140, v141);

      v119 = v139;
      v120 = &qword_28094C890;
      goto LABEL_39;
    }

LABEL_33:

    v142 = *&v57[v121];
    if (v142)
    {
      v132 = v142;
      v143 = sub_27463A31C();
      sub_2746390AC();
      v145 = v144;
      v147 = v146;
      v149 = v148;
      v151 = v150;
      v152 = sub_27463A38C();
      sub_2746390AC();
      LOBYTE(v346[0]) = 0;
      *&v344[0] = v132;
      BYTE8(v344[0]) = v143;
      *&v344[1] = v145;
      *(&v344[1] + 1) = v147;
      *&v344[2] = v149;
      *(&v344[2] + 1) = v151;
      LOBYTE(v344[3]) = 0;
      BYTE8(v344[3]) = v152;
      *&v344[4] = v153;
      *(&v344[4] + 1) = v154;
      *&v344[5] = v155;
      *(&v344[5] + 1) = v156;
      LOBYTE(v344[6]) = 0;
      memcpy(v345, v344, 0x61uLL);
      LOBYTE(v343[0]) = 0;
      BYTE1(v345[6]) = 0;
LABEL_37:
      sub_274412C20(v344, v346, &qword_28094C960);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C960);
      sub_274482D88();
      sub_274639DDC();
      memcpy(v296, v346, 0x62uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C950);
      sub_274482B6C();
      sub_274482D04();
      v139 = v297;
      sub_274639DDC();
      sub_274412C20(v139, v301, &qword_28094C890);
      swift_storeEnumTagMultiPayload();
      sub_274482AE0();
      sub_274482EF4();
      sub_274639DDC();
      v140 = v344;
      v141 = &qword_28094C960;
      goto LABEL_38;
    }

LABEL_35:
    sub_2745E27D4();
    if (v157)
    {
      v132 = v157;
      v158 = sub_27463A31C();
      sub_2746390AC();
      v160 = v159;
      v162 = v161;
      v164 = v163;
      v166 = v165;
      v167 = sub_27463A38C();
      sub_2746390AC();
      LOBYTE(v346[0]) = 0;
      *&v344[0] = v132;
      BYTE8(v344[0]) = v158;
      *&v344[1] = v160;
      *(&v344[1] + 1) = v162;
      *&v344[2] = v164;
      *(&v344[2] + 1) = v166;
      LOBYTE(v344[3]) = 0;
      BYTE8(v344[3]) = v167;
      *&v344[4] = v168;
      *(&v344[4] + 1) = v169;
      *&v344[5] = v170;
      *(&v344[5] + 1) = v171;
      LOBYTE(v344[6]) = 0;
      memcpy(v345, v344, 0x61uLL);
      LOBYTE(v343[0]) = 1;
      BYTE1(v345[6]) = 1;
      goto LABEL_37;
    }

    v195 = *(v293 + 88);
    if (v195)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v196 = v195;
      sub_274638FAC();

      if (*&v346[0])
      {
        v326 = *&v346[0];
        v327 = *&v346[1];
        *&v325 = *(&v346[0] + 1);
        v197 = *&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_visibleParameters];
        *&v344[0] = MEMORY[0x277D84F90];
        v198 = sub_274453594(v197);
        v329 = v197 & 0xC000000000000001;
        v199 = *MEMORY[0x277D7CE48];

        for (i = 0; ; ++i)
        {
          if (v198 == i)
          {

            v210 = *&v344[0];
            v211 = v278;
            sub_274483F70(v293, v278, type metadata accessor for ActionView);
            v212 = (*(v276 + 80) + 32) & ~*(v276 + 80);
            v213 = swift_allocObject();
            v214 = v327;
            *(v213 + 16) = v325;
            *(v213 + 24) = v214;
            sub_274480BE8(v211, v213 + v212, type metadata accessor for ActionView);

            v215 = sub_27463979C();
            v217 = v216;
            v218 = sub_27463A33C();
            sub_2746390AC();
            LOBYTE(v336) = 0;
            *&v346[0] = v210;
            *(&v346[0] + 1) = v326;
            *&v346[1] = sub_274482FEC;
            *(&v346[1] + 1) = v213;
            *&v346[2] = v215;
            *(&v346[2] + 1) = v217;
            LOBYTE(v346[3]) = v218;
            *(&v346[3] + 1) = v343[0];
            DWORD1(v346[3]) = *(v343 + 3);
            *(&v346[3] + 1) = v219;
            *&v346[4] = v220;
            *(&v346[4] + 1) = v221;
            *&v346[5] = v222;
            BYTE8(v346[5]) = 0;
            memcpy(v280, v346, 0x59uLL);
            swift_storeEnumTagMultiPayload();
            sub_274412C20(v346, v345, &qword_28094C8F8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8F8);
            sub_274482A00();
            sub_27440CA78(&qword_28094C910, &qword_28094C848);
            v223 = v282;
            sub_274639DDC();
            sub_274412C20(v223, v301, &qword_28094C860);
            swift_storeEnumTagMultiPayload();
            sub_274482AE0();
            sub_274482EF4();
            sub_274639DDC();
            sub_27440CB1C(v346, &qword_28094C8F8);

            sub_27440CB1C(v223, &qword_28094C860);
            goto LABEL_40;
          }

          if (v329)
          {
            v200 = MEMORY[0x277C58B20](i, v197);
          }

          else
          {
            if (i >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_81;
            }

            v200 = *(v197 + 8 * i + 32);
          }

          v201 = v200;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v202 = [v200 importQuestionBehavior];
          v203 = sub_27463B6AC();
          v205 = v204;

          v206 = sub_27463B6AC();
          v74 = v207;
          if (v203 == v206 && v205 == v207)
          {
          }

          else
          {
            v209 = sub_27463C6BC();

            if (v209)
            {
            }

            else
            {
              sub_27463C41C();
              sub_27463C46C();
              sub_27463C47C();
              sub_27463C42C();
            }
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
      }

      else
      {
        v224 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_additionalParameterSummaries;
        if (*(*&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_additionalParameterSummaries] + 16))
        {
          v225 = sub_274639C6C();
          v226 = v269;
          *v269 = v225;
          *(v226 + 8) = 0;
          *(v226 + 16) = 0;
          v327 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8C0) + 44);
          *&v346[0] = *&v57[v224];
          swift_getKeyPath();
          v227 = v278;
          sub_274483F70(v293, v278, type metadata accessor for ActionView);
          v228 = (*(v276 + 80) + 16) & ~*(v276 + 80);
          v229 = swift_allocObject();
          sub_274480BE8(v227, v229 + v228, type metadata accessor for ActionView);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8C8);
          sub_27440CA78(&unk_28094C8D0, &qword_28094C8C8);
          sub_274482950();
          sub_2744829A4();
          sub_27463AF7C();
          v230 = sub_27463A33C();
          sub_2746390AC();
          v231 = v271;
          v232 = v226 + *(v271 + 36);
          *v232 = v230;
          *(v232 + 8) = v233;
          *(v232 + 16) = v234;
          *(v232 + 24) = v235;
          *(v232 + 32) = v236;
          *(v232 + 40) = 0;
          v237 = v283;
          sub_27441277C(v226, v283, &qword_28094C850);
          v238 = 0;
        }

        else
        {
          v238 = 1;
          v237 = v283;
          v231 = v271;
        }

        v197 = v270;
        __swift_storeEnumTagSinglePayload(v237, v238, 1, v231);
        sub_27463B0CC();
        sub_2746392FC();
        v74 = v350;
        v239 = v352;
        v240 = v354;
        v327 = v355;
        v349 = 1;
        v348 = v351;
        v347 = v353;
        v241 = sub_274474A0C();
        v329 = v239;
        v326 = v240;
        if ((v241 & 1) == 0 && (!sub_274453594(*(i + v197)) || [*(i + v328) parameterCollapsingBehavior] != 2))
        {
          sub_2744829F8(v346);
LABEL_79:
          v257 = v280;
          v258 = v272;
          sub_274412C20(v283, v272, &qword_28094C868);
          v259 = v349;
          v260 = v348;
          v261 = v347;
          memcpy(v343, v346, 0xC9uLL);
          v262 = v273;
          sub_274412C20(v258, v273, &qword_28094C868);
          v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8E8);
          v264 = v262 + *(v263 + 48);
          *v264 = 0;
          *(v264 + 8) = v259;
          *(v264 + 16) = v74;
          *(v264 + 24) = v260;
          *(v264 + 32) = v329;
          *(v264 + 40) = v261;
          v265 = v327;
          *(v264 + 48) = v326;
          *(v264 + 56) = v265;
          v266 = *(v263 + 64);
          memcpy(v344, v343, 0xC9uLL);
          memcpy((v262 + v266), v343, 0xC9uLL);
          memcpy(v345, v343, 0xC9uLL);
          sub_274412C20(v346, &v336, &qword_28094C8F0);
          sub_274412C20(v344, &v336, &qword_28094C8F0);
          sub_27440CB1C(v345, &qword_28094C8F0);
          sub_27440CB1C(v258, &qword_28094C868);
          sub_274412C20(v262, v257, &qword_28094C848);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8F8);
          sub_274482A00();
          sub_27440CA78(&qword_28094C910, &qword_28094C848);
          v267 = v282;
          sub_274639DDC();
          sub_274412C20(v267, v301, &qword_28094C860);
          swift_storeEnumTagMultiPayload();
          sub_274482AE0();
          sub_274482EF4();
          sub_274639DDC();
          sub_27440CB1C(v346, &qword_28094C8F0);
          sub_27440CB1C(v267, &qword_28094C860);
          sub_27440CB1C(v262, &qword_28094C848);
          v119 = v283;
          v120 = &qword_28094C868;
          goto LABEL_39;
        }

        v199 = v335;
        if (v73 != 2)
        {
          v244 = [objc_opt_self() tertiarySystemFillColor];
          v243 = sub_27463AB0C();
          goto LABEL_78;
        }

        if (qword_280949280 == -1)
        {
LABEL_75:
          v242 = qword_280965DC8;
          v243 = sub_27463ABDC();
LABEL_78:
          v245 = v243;
          sub_27463B0CC();
          sub_2746392FC();
          v246 = v357;
          *(v199 + 11) = v356;
          *(v199 + 13) = v246;
          *(v199 + 15) = v358;
          v247 = *(i + v197);
          v248 = i;

          sub_274474AB8(v248, v247, v334);
          LOBYTE(v247) = sub_27463A34C();
          sub_2746390AC();
          v250 = v249;
          v252 = v251;
          v254 = v253;
          v256 = v255;
          LOBYTE(v346[0]) = 0;
          v335[0] = v245;
          LOWORD(v335[1]) = 256;
          *(v199 + 10) = *(v199 + 82);
          *(v199 + 26) = *(v199 + 98);
          *(v199 + 42) = *(v199 + 114);
          v335[7] = v199[16];
          v325 = xmmword_27464D550;
          *(v199 + 4) = xmmword_27464D550;
          memcpy(v333, v335, 0x50uLL);
          memcpy(v343, v334, 0x50uLL);
          LOBYTE(v343[5]) = v247;
          *(&v343[5] + 1) = v250;
          *&v343[6] = v252;
          *(&v343[6] + 1) = v254;
          *&v343[7] = v256;
          BYTE8(v343[7]) = 0;
          memcpy(&v333[80], v343, 0x79uLL);
          memcpy(v344, v334, 0x50uLL);
          LOBYTE(v344[5]) = v247;
          *(&v344[5] + 1) = v250;
          *&v344[6] = v252;
          *(&v344[6] + 1) = v254;
          *&v344[7] = v256;
          BYTE8(v344[7]) = 0;
          sub_274412C20(v335, v346, &qword_28094C998);
          sub_274412C20(v343, v346, &qword_28094C9A0);
          sub_27440CB1C(v344, &qword_28094C9A0);
          v336 = v245;
          v337 = 256;
          *(v199 + 146) = *(v199 + 82);
          *(v199 + 162) = *(v199 + 98);
          *(v199 + 178) = *(v199 + 114);
          v341 = v199[16];
          v342 = v325;
          sub_27440CB1C(&v336, &qword_28094C998);
          memcpy(v345, v333, 0xC9uLL);
          CGSizeMake(v345);
          memcpy(v346, v345, 0xC9uLL);
          goto LABEL_79;
        }
      }

      swift_once();
      goto LABEL_75;
    }

    while (1)
    {
LABEL_84:
      sub_27463978C();
      __break(1u);
    }
  }

  v91 = v287;
  sub_27463AF5C();
  v92 = sub_27463A33C();
  sub_2746390AC();
  v93 = v91 + *(v285 + 36);
  *v93 = v92;
  *(v93 + 8) = v94;
  *(v93 + 16) = v95;
  *(v93 + 24) = v96;
  *(v93 + 32) = v97;
  *(v93 + 40) = 0;
  v98 = *&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError];
  v99 = v98;
  v100 = sub_27463A31C();
  sub_2746390AC();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = sub_27463A38C();
  sub_2746390AC();
  LOBYTE(v346[0]) = 0;
  *&v344[0] = v98;
  BYTE8(v344[0]) = v100;
  *&v344[1] = v102;
  *(&v344[1] + 1) = v104;
  *&v344[2] = v106;
  *(&v344[2] + 1) = v108;
  LOBYTE(v344[3]) = 0;
  BYTE8(v344[3]) = v109;
  *&v344[4] = v110;
  *(&v344[4] + 1) = v111;
  *&v344[5] = v112;
  *(&v344[5] + 1) = v113;
  LOBYTE(v344[6]) = 0;
  v114 = v286;
  sub_274412C20(v91, v286, &qword_28094A8D0);
  memcpy(v343, v344, 0x61uLL);
  v115 = v288;
  sub_274412C20(v114, v288, &qword_28094A8D0);
  v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9A8) + 48);
  memcpy(v345, v343, 0x61uLL);
  memcpy((v115 + v116), v343, 0x61uLL);
  memcpy(v346, v343, 0x61uLL);
  sub_274412C20(v344, &v336, &unk_28094C9B0);
  sub_274412C20(v345, &v336, &unk_28094C9B0);
  sub_27440CB1C(v346, &unk_28094C9B0);
  sub_27440CB1C(v114, &qword_28094A8D0);
  sub_274412C20(v115, v291, &qword_28094C898);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954810);
  sub_27440CA78(&qword_28094C928, &qword_28094C898);
  sub_274482C24();
  v117 = v292;
  sub_274639DDC();
  sub_274412C20(v117, v296, &qword_28094C888);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C950);
  sub_274482B6C();
  sub_274482D04();
  v118 = v297;
  sub_274639DDC();
  sub_27440CB1C(v117, &qword_28094C888);
  sub_274412C20(v118, v301, &qword_28094C890);
  swift_storeEnumTagMultiPayload();
  sub_274482AE0();
  sub_274482EF4();
  sub_274639DDC();
  sub_27440CB1C(v344, &unk_28094C9B0);
  sub_27440CB1C(v118, &qword_28094C890);
  sub_27440CB1C(v115, &qword_28094C898);
  v119 = v91;
  v120 = &qword_28094A8D0;
LABEL_39:
  sub_27440CB1C(v119, v120);
LABEL_40:
  v173 = v307;
  v172 = v308;
  v174 = v309;
  (*(v308 + 104))(v307, *MEMORY[0x277D79BE8], v309);
  v175 = sub_274638C0C();
  (*(v172 + 8))(v173, v174);
  v176 = v298;
  if ((v175 & 1) != 0 && (v177 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showOutput, swift_beginAccess(), v176[v177] == 1))
  {
    v178 = [*&v176[v328] output];
    v179 = v284;
    v180 = sub_27443A0F0();

    if (v180)
    {
    }

    sub_27463B0CC();
    sub_2746392FC();
    LOBYTE(v345[0]) = v337;
    LOBYTE(v344[0]) = v339;
    *&v346[0] = v178;
    BYTE8(v346[0]) = v180 != 0;
    *&v346[1] = v336;
    BYTE8(v346[1]) = v337;
    *&v346[2] = v338;
    BYTE8(v346[2]) = v339;
    v346[3] = v340;
    v181 = v178;
  }

  else
  {
    *(v346 + 8) = 0u;
    *(&v346[1] + 8) = 0u;
    *(&v346[2] + 8) = 0u;
    *&v346[0] = 1;
    *(&v346[3] + 1) = 0;
  }

  v182 = v330;
  sub_274412C20(v332, v330, &qword_28094C8B8);
  v183 = v331;
  v184 = v306;
  sub_274412C20(v331, v306, &qword_28094C8A0);
  v343[0] = v346[0];
  v343[1] = v346[1];
  v343[2] = v346[2];
  v343[3] = v346[3];
  v185 = v310;
  v187 = v303;
  v186 = v304;
  *v310 = v304;
  v185[1] = v187;
  v188 = v302;
  *(v185 + 16) = v302;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C988);
  sub_274412C20(v182, v185 + v189[12], &qword_28094C8B8);
  sub_274412C20(v184, v185 + v189[16], &qword_28094C8A0);
  v190 = (v185 + v189[20]);
  v344[0] = v343[0];
  v344[1] = v343[1];
  v344[2] = v343[2];
  v344[3] = v343[3];
  sub_274482FAC(v186, v187, v188);
  sub_274412C20(v344, v345, &qword_28094C990);
  sub_27440CB1C(v346, &qword_28094C990);
  v191 = v344[1];
  *v190 = v344[0];
  v190[1] = v191;
  v192 = v344[3];
  v190[2] = v344[2];
  v190[3] = v192;
  sub_27440CB1C(v183, &qword_28094C8A0);
  sub_27440CB1C(v332, &qword_28094C8B8);
  v345[0] = v343[0];
  v345[1] = v343[1];
  v345[2] = v343[2];
  v345[3] = v343[3];
  sub_27440CB1C(v345, &qword_28094C990);
  sub_27440CB1C(v184, &qword_28094C8A0);
  sub_27440CB1C(v330, &qword_28094C8B8);
  return sub_274482FCC(v186, v187, v188);
}