uint64_t UsoTask_read_common_Person.isGetAttributeIntent.getter()
{
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v2)
  {
    Attribute = UsoEntity_common_Person.isGetAttributeIntent.getter();
  }

  else
  {
    Attribute = 0;
  }

  return Attribute & 1;
}

uint64_t UsoTask_update_common_Person.isChangeContactPoster.getter()
{
  v1 = type metadata accessor for UsoEntity_commonContact_ContactAttribute.DefinedValues();
  v2 = OUTLINED_FUNCTION_1_39(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSg_AFtMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v29 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  if (!v30)
  {
    goto LABEL_19;
  }

  v23 = dispatch thunk of UsoEntity_common_Person.attributes.getter();

  if (!v23)
  {
    return v23 & 1;
  }

  if (!specialized Array._getCount()(v23))
  {

LABEL_9:
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v0);
    goto LABEL_10;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v23 & 0xC000000000000001) == 0, v23);
  if ((v23 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5E29D0](0, v23);
  }

  else
  {
    v24 = *(v23 + 32);
  }

  dispatch thunk of CodeGenListEntry.entry.getter();

  if (!v30)
  {
    goto LABEL_9;
  }

  dispatch thunk of UsoEntity_commonContact_ContactAttribute.definedValue.getter();

LABEL_10:
  (*(v4 + 104))(v20, *MEMORY[0x277D5E398], v0);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v0);
  v25 = *(v9 + 48);
  outlined init with copy of UsoEntity_commonContact_ContactAttribute.DefinedValues?(v22, v12);
  outlined init with copy of UsoEntity_commonContact_ContactAttribute.DefinedValues?(v20, &v12[v25]);
  OUTLINED_FUNCTION_2_0(v12);
  if (!v26)
  {
    outlined init with copy of UsoEntity_commonContact_ContactAttribute.DefinedValues?(v12, v17);
    OUTLINED_FUNCTION_2_0(&v12[v25]);
    if (!v26)
    {
      (*(v4 + 32))(v8, &v12[v25], v0);
      lazy protocol witness table accessor for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues();
      LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v4 + 8);
      v28(v8, v0);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v20, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v22, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
      v28(v17, v0);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
      return v23 & 1;
    }

    OUTLINED_FUNCTION_25(v20);
    OUTLINED_FUNCTION_25(v22);
    (*(v4 + 8))(v17, v0);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_25(v20);
  OUTLINED_FUNCTION_25(v22);
  OUTLINED_FUNCTION_2_0(&v12[v25]);
  if (!v26)
  {
LABEL_18:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSg_AFtMR);
LABEL_19:
    LOBYTE(v23) = 0;
    return v23 & 1;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
  LOBYTE(v23) = 1;
  return v23 & 1;
}

uint64_t UsoTask_update_common_Person.isUpdateNicknameTask.getter()
{
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  if (!v2)
  {
    return 0;
  }

  v0 = dispatch thunk of UsoEntity_common_Person.structuredName.getter();

  if (!v0)
  {
    return 0;
  }

  return 1;
}

uint64_t UsoTask_update_common_Person.isUpdateRelationshipTask.getter()
{
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
  if (!v3 || (v0 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), , !v0))
  {
    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (!v3)
    {
      return 0;
    }

    v1 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();

    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t outlined init with copy of UsoEntity_commonContact_ContactAttribute.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues)
  {
    type metadata accessor for UsoEntity_commonContact_ContactAttribute.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_26()
{
}

id SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setTitle_];
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a2, v14, &lazy cache variable for type metadata for SFRichText, 0x277D4C598, &selRef_setDescriptions_);
  [v14 setFootnote_];

  if (a4)
  {
    [v14 setThumbnail_];
  }

  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a3, v14, &lazy cache variable for type metadata for SFAbstractCommand, 0x277D4C1A0, &selRef_setCommands_);
  if (a6)
  {
    [v14 setAction_];
  }

  if (a7)
  {
    v15 = a7;
    [v14 setTrailingMiddleText_];
  }

  return v14;
}

id @nonobjc SFFormattedText.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];

  return v3;
}

id SFRowCardSection.init(blueTitle:subtitle:commands:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0);
  v11 = @nonobjc SFFormattedText.__allocating_init(string:)(a1, a2);
  if (v11)
  {
    v12 = v11;
    [v11 setTextColor_];
    v13 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_266966A40;
    *(v14 + 32) = v12;
    v15 = v12;
    outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(v14, v13, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0, &selRef_setFormattedTextPieces_);
    [v10 setLeadingText_];
  }

  [v10 setLeadingSubtitle_];
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a4, v10, &lazy cache variable for type metadata for SFAbstractCommand, 0x277D4C1A0, &selRef_setCommands_);

  return v10;
}

id SFRowCardSection.init(leadingText:image:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setLeadingText_];
  v5 = a2;
  [v4 setImage_];

  return v4;
}

id SFContactImage.init(contactId:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_266966D90;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  outlined bridged method (mbnn) of @objc SFContactImage.contactIdentifiers.setter(v11, v10);
  if ((a5 & 1) == 0)
  {
    [v10 setSize_];
  }

  return v10;
}

id SFActionItem.init(phoneNumber:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = v6;
  if (a2)
  {
    v8 = MEMORY[0x26D5E2470](a1, a2);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a3];

  return v6;
}

id SFRichText.init(string:bold:color:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0);
  v9 = @nonobjc SFFormattedText.__allocating_init(string:)(a1, a2);
  if (v9)
  {
    v10 = v9;
    [v9 setIsBold_];
    [v10 setTextColor_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_266966A40;
    *(v11 + 32) = v10;
    outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(v11, v8, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0, &selRef_setFormattedTextPieces_);
  }

  return v8;
}

void outlined bridged method (mbnn) of @objc SFContactImage.contactIdentifiers.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setContactIdentifiers_];
}

id AgeDateTime.__allocating_init(dateComponents:qualifier:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_45();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v2);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v7 + 8))(v12, v5);
  v17 = static String.EMPTY.getter();
  v18 = MEMORY[0x26D5E2470](v17);

  v19 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(v14, v16, v18, v13);

  v20 = v19;
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  [v20 setDateComponents_];

  [v20 setQualifier_];
  v22 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_7(v22);
  (*(v23 + 8))(a1);
  return v20;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_45();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v2);
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v14 + 8))(v19, v12);
  v24 = static String.EMPTY.getter();
  v25 = MEMORY[0x26D5E2470](v24);

  v26 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(v21, v23, v25, v20);

  v27 = v26;
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  [v27 setDateComponents_];

  outlined init with copy of TerminalElement.Qualifier?(a2, v11);
  v29 = type metadata accessor for TerminalElement.Qualifier();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v29);
  v31 = 0;
  if (EnumTagSinglePayload != 1)
  {
    outlined init with copy of TerminalElement.Qualifier?(v11, v9);
    OUTLINED_FUNCTION_0_45();
    v33 = v32;
    v35 = (*(v34 + 88))(v9, v29);
    if (v35 == *MEMORY[0x277D5E640])
    {
      v31 = 1;
    }

    else if (v35 == *MEMORY[0x277D5E648])
    {
      v31 = 2;
    }

    else
    {
      (*(v33 + 8))(v9, v29);
      v31 = 0;
    }
  }

  [v27 setQualifier_];
  outlined destroy of TerminalElement.Qualifier?(a2);
  v36 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_7(v36);
  (*(v37 + 8))(a1);
  outlined destroy of TerminalElement.Qualifier?(v11);
  return v27;
}

id outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x26D5E2470]();

  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

uint64_t outlined destroy of TerminalElement.Qualifier?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ModifyContactAttributeCATsModern()
{
  result = type metadata singleton initialization cache for ModifyContactAttributeCATsModern;
  if (!type metadata singleton initialization cache for ModifyContactAttributeCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModifyContactAttributeCATsModern.confirmModifyNickname(requestedNickname:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_266966D90;
  OUTLINED_FUNCTION_14_6();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_27_0(v4, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_10_6();
  v8 = v0[4];
  if (v7 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_12_3();
    v11();
  }

  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_36_0();
  v0[6] = v12;
  *v12 = v13;
  v12[1] = ModifyContactAttributeCATsModern.confirmModifyNickname(requestedNickname:);
  v14 = v0[3];
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_32_1();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_2_41();

    return v15(v14);
  }
}

{
  OUTLINED_FUNCTION_4();
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t ModifyContactAttributeCATsModern.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[10];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = xmmword_266967350;
  OUTLINED_FUNCTION_14_6();
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_27_0(v4, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_12_3();
    v10();
  }

  v11 = v0[9];
  v12 = v0[3];
  OUTLINED_FUNCTION_14_6();
  *(v3 + 80) = 0xD000000000000014;
  *(v3 + 88) = v13;
  outlined init with copy of URL?(v14, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = OUTLINED_FUNCTION_10_6();
  v16 = v0[9];
  if (v15 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_0_5();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_12_3();
    v19();
  }

  v20 = OUTLINED_FUNCTION_7_18();
  outlined init with copy of URL?(v20, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v7;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_0_5();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_12_3();
    v23();
  }

  v24 = v0[7];
  v25 = v0[5];
  OUTLINED_FUNCTION_5_7();
  *(v3 + 176) = v26;
  *(v3 + 184) = v27;
  outlined init with copy of URL?(v28, v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v29 = OUTLINED_FUNCTION_10_6();
  v30 = v0[7];
  if (v29 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v7;
    __swift_allocate_boxed_opaque_existential_1((v3 + 192));
    OUTLINED_FUNCTION_0_5();
    v32 = *(v31 + 32);
    OUTLINED_FUNCTION_12_3();
    v33();
  }

  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_36_0();
  v0[12] = v34;
  *v34 = v35;
  v34[1] = ModifyContactAttributeCATsModern.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:);
  v36 = v0[6];
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_32_1();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_32_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v14 = v3[10];
    v13 = v3[11];
    v16 = v3[8];
    v15 = v3[9];
    v17 = v3[7];

    OUTLINED_FUNCTION_2_41();
    OUTLINED_FUNCTION_32_1();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t ModifyContactAttributeCATsModern.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[10];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = xmmword_266967350;
  *(v3 + 32) = 0x4E64657461647075;
  *(v3 + 40) = 0xEF656D616E6B6369;
  OUTLINED_FUNCTION_27_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_12_3();
    v8();
  }

  v9 = v0[9];
  v10 = v0[3];
  OUTLINED_FUNCTION_14_6();
  *(v3 + 80) = 0xD000000000000010;
  *(v3 + 88) = v11;
  outlined init with copy of URL?(v12, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = OUTLINED_FUNCTION_10_6();
  v14 = v0[9];
  if (v13 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v5;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_0_5();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_12_3();
    v17();
  }

  v18 = OUTLINED_FUNCTION_7_18();
  outlined init with copy of URL?(v18, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v5;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_0_5();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_12_3();
    v21();
  }

  v22 = v0[7];
  v23 = v0[5];
  OUTLINED_FUNCTION_5_7();
  *(v3 + 176) = v24;
  *(v3 + 184) = v25;
  outlined init with copy of URL?(v26, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v27 = OUTLINED_FUNCTION_10_6();
  v28 = v0[7];
  if (v27 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v5;
    __swift_allocate_boxed_opaque_existential_1((v3 + 192));
    OUTLINED_FUNCTION_0_5();
    v30 = *(v29 + 32);
    OUTLINED_FUNCTION_12_3();
    v31();
  }

  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_36_0();
  v0[12] = v32;
  *v32 = v33;
  v32[1] = ModifyContactAttributeCATsModern.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:);
  v34 = v0[6];
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_32_1();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_32_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v14 = v3[10];
    v13 = v3[11];
    v16 = v3[8];
    v15 = v3[9];
    v17 = v3[7];

    OUTLINED_FUNCTION_2_41();
    OUTLINED_FUNCTION_32_1();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

{
  OUTLINED_FUNCTION_41();
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];
  v7 = v0[13];

  return v6();
}

uint64_t ModifyContactAttributeCATsModern.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 96) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = xmmword_266967350;
  OUTLINED_FUNCTION_14_6();
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_27_0(v4, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 64), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_12_3();
    v10();
  }

  v11 = *(v0 + 56);
  v12 = *(v0 + 24);
  *(v3 + 80) = 0x4E746361746E6F63;
  *(v3 + 88) = 0xEB00000000656D61;
  outlined init with copy of URL?(v12, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_0_5();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_12_3();
    v15();
  }

  v16 = *(v0 + 48);
  v17 = *(v0 + 32);
  OUTLINED_FUNCTION_5_7();
  *(v3 + 128) = v18;
  *(v3 + 136) = v19;
  outlined init with copy of URL?(v20, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = OUTLINED_FUNCTION_10_6();
  v22 = *(v0 + 48);
  if (v21 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v7;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_0_5();
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_12_3();
    v25();
  }

  v26 = *(v0 + 96);
  *(v3 + 176) = 0x4D6563696F567369;
  *(v3 + 184) = 0xEB0000000065646FLL;
  *(v3 + 216) = MEMORY[0x277D839B0];
  *(v3 + 192) = v26;
  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_36_0();
  *(v0 + 80) = v27;
  *v27 = v28;
  v27[1] = ModifyContactAttributeCATsModern.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:);
  v29 = *(v0 + 40);
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_32_1();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v16 = v3 + 6;
    v14 = v3[6];
    v15 = v16[1];

    v17 = OUTLINED_FUNCTION_2_41();

    return v18(v17);
  }
}

{
  OUTLINED_FUNCTION_41();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

uint64_t ModifyContactAttributeCATsModern.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_12_3();
  return ModifyContactAttributeCATsModern.init(templateDir:options:globals:)(v3, v4);
}

uint64_t ModifyContactAttributeCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_10_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = OUTLINED_FUNCTION_18_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  outlined init with copy of URL?(a1, &v20 - v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v12, a2, v2);
  v18 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v18;
}

uint64_t ModifyContactAttributeCATsModern.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_10_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  v2 = *(v0 + 64);
  result = *(v0 + 32);
  *(v1 + 128) = 0x4E746361746E6F63;
  *(v1 + 136) = 0xEB00000000656D61;
  return result;
}

uint64_t RRReferenceResolverProtocol.resolveCommonPerson()@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UsoEntityBuilder_common_Person();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  v9 = MEMORY[0x26D5E0C50]();

  if (v9)
  {
    RRReferenceResolverProtocol.resolveEntity(referenceEntity:)(v9, a1, a2, a3);
  }

  else
  {
    v11 = type metadata accessor for RREntity();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v11);
  }
}

uint64_t RRReferenceResolverProtocol.resolveAttributeDisambiguationReference(from:)(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for RREntity();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRReferenceResolverProtocol.resolvePositionEntity(from:)(a2, a3, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v8, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v16, v8, v9);
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_ContactAddress();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v17 = v28;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v18, static Logger.siriContacts);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_24();
      v22 = OUTLINED_FUNCTION_23();
      v27 = v17;
      v28 = v22;
      *v21 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_ContactAddressCSgMd, &_s12SiriOntology31UsoEntity_common_ContactAddressCSgMR);
      v23 = Optional.debugDescription.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_26686A000, v19, v20, "#ReferenceResolution Converted positional reference entity to UsoEntity_common_ContactAddress: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v12 + 8))(v16, v9);
  }

  return v17;
}

uint64_t RRReferenceResolverProtocol.resolveEntity(referenceEntity:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v205 = a3;
  v202 = a1;
  v203 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_2_16();
  v188 = v7;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  v193 = &v187 - v9;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  v191 = &v187 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_2_16();
  v189 = v14;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  v192 = &v187 - v16;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  v190 = &v187 - v18;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  v195 = &v187 - v20;
  v201 = type metadata accessor for RRCandidate();
  v21 = OUTLINED_FUNCTION_1_0(v201);
  v196 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_16();
  v194 = v25;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  v197 = &v187 - v27;
  v28 = type metadata accessor for RRResult();
  v29 = OUTLINED_FUNCTION_1_0(v28);
  v200 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_16();
  v187 = v33;
  OUTLINED_FUNCTION_16();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = (&v187 - v36);
  MEMORY[0x28223BE20](v35);
  v39 = &v187 - v38;
  v40 = type metadata accessor for RRQuery();
  v41 = OUTLINED_FUNCTION_1_0(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v47 = (&v187 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v49 = OUTLINED_FUNCTION_10_1(v48);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v187 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v52);
  v56 = &v187 - v55;
  v198 = type metadata accessor for RREntity();
  v199 = a4;
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v198);
  *v47 = v202;
  (*(v43 + 104))(v47, *MEMORY[0x277D5FEA8], v40);

  dispatch thunk of RRReferenceResolverProtocol.resolve(reference:)();
  (*(v43 + 8))(v47, v40);
  v205 = v56;
  outlined init with copy of Result<RRResult, Error>(v56, v54, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = *v54;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v58 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v58, static Logger.siriContacts);
    v59 = v57;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_24();
      v63 = OUTLINED_FUNCTION_23();
      v206 = v57;
      v207[0] = v63;
      *v62 = 136315138;
      v64 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v65 = String.init<A>(describing:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v207);

      *(v62 + 4) = v67;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_19();
    }

    else
    {
    }

    return outlined destroy of Result<TemplatingResult, Error>(v205, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  }

  v73 = v200;
  (*(v200 + 32))(v39, v54, v28);
  v74 = *(v73 + 16);
  v74(v37, v39, v28);
  v75 = (*(v73 + 88))(v37, v28);
  v76 = v37;
  if (v75 == *MEMORY[0x277D5FEC0])
  {
    v77 = OUTLINED_FUNCTION_5_34();
    v204 = v28;
    v78(v77, v28);
    v79 = v196;
    v80 = v197;
    v81 = v37;
    v82 = v201;
    (*(v196 + 32))(v197, v81, v201);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v83 = v39;
    v84 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v84, static Logger.siriContacts);
    v85 = v194;
    (*(v79 + 16))(v194, v80, v82);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = OUTLINED_FUNCTION_24();
      v89 = v79;
      v90 = OUTLINED_FUNCTION_23();
      v207[0] = v90;
      *v88 = 136315138;
      lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x277D5FE08]);
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v94 = v85;
      v95 = *(v89 + 8);
      v95(v94, v201);
      v80 = v197;
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v207);
      v82 = v201;

      *(v88 + 4) = v96;
      _os_log_impl(&dword_26686A000, v86, v87, "#ReferenceResolution Found a candidate %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      OUTLINED_FUNCTION_6();
      v73 = v200;
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v121 = v85;
      v95 = *(v79 + 8);
      v95(v121, v82);
    }

    v122 = v195;
    RRCandidate.entity.getter();
    v95(v80, v82);
    (*(v73 + 8))(v83, v204);
    outlined destroy of Result<TemplatingResult, Error>(v205, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v123 = OUTLINED_FUNCTION_12_16();
    outlined destroy of Result<TemplatingResult, Error>(v123, v124, v125);
    __swift_storeEnumTagSinglePayload(v122, 0, 1, v198);
    v126 = v122;
    return outlined init with take of RREntity?(v126, v86);
  }

  if (v75 == *MEMORY[0x277D5FED0])
  {
    v98 = OUTLINED_FUNCTION_5_34();
    v99(v98, v28);
    v86 = *v37;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v100 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v100, static Logger.siriContacts);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_13_16(v102))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v103, v104, v105, v106, v107, 2u);
      OUTLINED_FUNCTION_7_19();
    }

    v108 = v193;
    specialized Collection.first.getter(v86, v193);

    v109 = v201;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v108, 1, v201);
    v111 = v192;
    if (EnumTagSinglePayload == 1)
    {
LABEL_19:
      v112 = OUTLINED_FUNCTION_1_40();
      v113(v112);
      outlined destroy of Result<TemplatingResult, Error>(v205, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v114 = OUTLINED_FUNCTION_12_16();
      outlined destroy of Result<TemplatingResult, Error>(v114, v115, v116);
      v117 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
      v118 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
      v119 = v108;
LABEL_20:
      outlined destroy of Result<TemplatingResult, Error>(v119, v117, v118);
      v120 = 1;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v111, v120, 1, v198);
      v126 = v111;
      return outlined init with take of RREntity?(v126, v86);
    }

    goto LABEL_38;
  }

  if (v75 == *MEMORY[0x277D5FEC8])
  {
    v127 = OUTLINED_FUNCTION_5_34();
    v128(v127, v28);
    v86 = *v37;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v129 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v129, static Logger.siriContacts);

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_13_16(v131))
    {
      v132 = OUTLINED_FUNCTION_24();
      *v132 = 134217984;
      *(v132 + 4) = v86[2];

      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v133, v134, v135, v136, v137, 0xCu);
      OUTLINED_FUNCTION_7_19();
    }

    else
    {
    }

    v109 = v201;
    v111 = v190;
    v108 = v191;
    specialized Collection.first.getter(v86, v191);

    if (__swift_getEnumTagSinglePayload(v108, 1, v109) == 1)
    {
      goto LABEL_19;
    }

LABEL_38:
    RRCandidate.entity.getter();
    v157 = OUTLINED_FUNCTION_1_40();
    v158(v157);
    outlined destroy of Result<TemplatingResult, Error>(v205, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v159 = OUTLINED_FUNCTION_12_16();
    outlined destroy of Result<TemplatingResult, Error>(v159, v160, v161);
    (*(v196 + 8))(v108, v109);
    goto LABEL_39;
  }

  if (v75 == *MEMORY[0x277D5FED8])
  {
    v138 = OUTLINED_FUNCTION_5_34();
    v139(v138, v28);
    v86 = *v37;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v140 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v140, static Logger.siriContacts);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.debug.getter();
    v143 = OUTLINED_FUNCTION_13_16(v142);
    v144 = v188;
    if (v143)
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v145, v146, v147, v148, v149, 2u);
      OUTLINED_FUNCTION_7_19();
    }

    v150 = v201;
    v111 = v189;
    if (!v86[2].isa)
    {

      v179 = OUTLINED_FUNCTION_1_40();
      v180(v179);
      outlined destroy of Result<TemplatingResult, Error>(v205, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v119 = OUTLINED_FUNCTION_12_16();
      goto LABEL_20;
    }

    isa = v86[4].isa;

    specialized Collection.first.getter(isa, v144);

    if (__swift_getEnumTagSinglePayload(v144, 1, v150) == 1)
    {
      v152 = OUTLINED_FUNCTION_1_40();
      v153(v152);
      outlined destroy of Result<TemplatingResult, Error>(v205, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v154 = OUTLINED_FUNCTION_12_16();
      outlined destroy of Result<TemplatingResult, Error>(v154, v155, v156);
      v117 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
      v118 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
      v119 = v144;
      goto LABEL_20;
    }

    RRCandidate.entity.getter();
    v181 = OUTLINED_FUNCTION_1_40();
    v182(v181);
    outlined destroy of Result<TemplatingResult, Error>(v205, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v183 = OUTLINED_FUNCTION_12_16();
    outlined destroy of Result<TemplatingResult, Error>(v183, v184, v185);
    (*(v196 + 8))(v144, v150);
LABEL_39:
    v120 = 0;
    goto LABEL_40;
  }

  if (v75 == *MEMORY[0x277D5FEE0])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v162 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v162, static Logger.siriContacts);
    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v164))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v165, v166, "#ReferenceResolution No matches found");
      OUTLINED_FUNCTION_6();
    }

    v167 = OUTLINED_FUNCTION_1_40();
    v168(v167);
    return outlined destroy of Result<TemplatingResult, Error>(v205, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v169 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v169, static Logger.siriContacts);
  v74(v187, v39, v28);
  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v170, v171))
  {
    v74 = OUTLINED_FUNCTION_24();
    v202 = v74;
    v204 = OUTLINED_FUNCTION_23();
    v207[0] = v204;
    *v74 = 136315138;
    lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, MEMORY[0x277D5FEE8]);
    v172 = dispatch thunk of CustomStringConvertible.description.getter();
    v203 = v39;
    v174 = v173;
    v175 = OUTLINED_FUNCTION_13_17();
    v48(v175);
    v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v174, v207);

    v177 = v202;
    *(v202 + 4) = v176;
    _os_log_impl(&dword_26686A000, v170, v171, "#ReferenceResolution Received unknown result type %s", v177, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v204);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_19();

    v178 = v203;
  }

  else
  {

    v186 = OUTLINED_FUNCTION_13_17();
    v48(v186);
    v178 = v39;
  }

  (v48)(v178, v74);
  outlined destroy of Result<TemplatingResult, Error>(v205, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  return (v48)(v76, v74);
}

uint64_t RRReferenceResolverProtocol.resolvePositionEntity(from:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - v12;
  USOParse.preferredUserDialogAct.getter(&v29 - v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v15 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
    v16 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
    v17 = v13;
  }

  else
  {
    v18 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
    if (!v18)
    {
      goto LABEL_9;
    }

    v19 = static RRReferenceResolverProtocol.extractPositionEntity(task:)();
    if (!v19)
    {

      goto LABEL_9;
    }

    RRReferenceResolverProtocol.resolveEntity(referenceEntity:)(v19, a1, a2, v9);

    v20 = type metadata accessor for RREntity();
    if (__swift_getEnumTagSinglePayload(v9, 1, v20) != 1)
    {
      (*(*(v20 - 8) + 32))(a3, v9, v20);
      v26 = a3;
      v27 = 0;
      v25 = v20;
      return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
    }

    v15 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMd;
    v16 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMR;
    v17 = v9;
  }

  outlined destroy of Result<TemplatingResult, Error>(v17, v15, v16);
LABEL_9:
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriContacts);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26686A000, v22, v23, "#ReferenceResolution Did not resolve RREntity from UsoParse, returning nil", v24, 2u);
    MEMORY[0x26D5E3300](v24, -1, -1);
  }

  v25 = type metadata accessor for RREntity();
  v26 = a3;
  v27 = 1;
  return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
}

uint64_t static RRReferenceResolverProtocol.extractPositionEntity(task:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v20)
  {
    goto LABEL_20;
  }

  outlined init with copy of Result<RRResult, Error>(v19, v18, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if (OUTLINED_FUNCTION_4_29())
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v17)
    {

      v0 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

      if (v0)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v1 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v1, static Logger.siriContacts);

        v2 = Logger.logObject.getter();
        v3 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v2, v3))
        {
          v4 = OUTLINED_FUNCTION_24();
          v5 = OUTLINED_FUNCTION_23();
          v17 = v5;
          *v4 = 136315138;
          CodeGenBase.entity.getter();
          v6 = UsoEntity.debugString.getter();
          v8 = v7;

          v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v17);

          *(v4 + 4) = v9;
          _os_log_impl(&dword_26686A000, v2, v3, "#ReferenceResolution Found positional reference, returning: %s", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v5);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        v10 = CodeGenBase.entity.getter();

        goto LABEL_16;
      }
    }

    goto LABEL_19;
  }

  type metadata accessor for UsoTask_request_common_Person();
  if (OUTLINED_FUNCTION_4_29())
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
LABEL_15:

    v10 = static RRReferenceResolverProtocol.helper(person:)(v17);

LABEL_16:
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    outlined destroy of Result<TemplatingResult, Error>(v19, &_sypSgMd, &_sypSgMR);
    return v10;
  }

  type metadata accessor for UsoTask_summarise_common_Person();
  if (OUTLINED_FUNCTION_4_29() || (type metadata accessor for UsoTask_read_common_Person(), OUTLINED_FUNCTION_4_29()))
  {

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    goto LABEL_15;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
LABEL_20:
  outlined destroy of Result<TemplatingResult, Error>(v19, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v11, static Logger.siriContacts);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v13))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v14, v15, "#ReferenceResolution Found no positional reference, returning nil");
    OUTLINED_FUNCTION_6();
  }

  return 0;
}

uint64_t static RRReferenceResolverProtocol.helper(person:)(uint64_t a1)
{
  if (a1)
  {

    if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
    {

      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v1 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v1, static Logger.siriContacts);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = OUTLINED_FUNCTION_24();
        v5 = OUTLINED_FUNCTION_23();
        v17 = v5;
        *v4 = 136315138;
        CodeGenBase.entity.getter();
        v6 = UsoEntity.debugString.getter();
        v8 = v7;

        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v17);

        *(v4 + 4) = v9;
        _os_log_impl(&dword_26686A000, v2, v3, "#ReferenceResolution Found positional reference, returning: %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v5);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v10 = CodeGenBase.entity.getter();

      return v10;
    }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v11, static Logger.siriContacts);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v13))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v14, v15, "#ReferenceResolution Found no positional reference, returning nil");
    OUTLINED_FUNCTION_6();
  }

  return 0;
}

uint64_t outlined init with take of RREntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RRResult and conformance RRResult(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of Result<RRResult, Error>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_7_19()
{

  JUMPOUT(0x26D5E3300);
}

uint64_t UsoEntity_common_Person.contactId.getter()
{
  v35 = type metadata accessor for IdentifierAppBundle();
  v0 = OUTLINED_FUNCTION_1_0(v35);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = type metadata accessor for UsoIdentifier();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v34[0] = v34 - v17;
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v19 = result;
  v20 = 0;
  v36 = *(result + 16);
  v34[1] = v11 + 16;
  v21 = (v2 + 8);
  while (1)
  {
    if (v36 == v20)
    {

      return 0;
    }

    if (v20 >= *(v19 + 16))
    {
      break;
    }

    (*(v11 + 16))(v16, v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v8);
    UsoIdentifier.appBundleSemantic.getter();
    v22 = IdentifierAppBundle.rawValue.getter();
    v24 = v23;
    (*v21)(v7, v35);
    OUTLINED_FUNCTION_2_42();
    v26 = v22 == v25 && v24 == 0xE800000000000000;
    if (v26)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    UsoIdentifier.namespace.getter();
    if (v28)
    {
      OUTLINED_FUNCTION_6_30();
      if (v26 && v29 == 0xE700000000000000)
      {

LABEL_20:

        v33 = v34[0];
        (*(v11 + 32))(v34[0], v16, v8);
        v32 = UsoIdentifier.value.getter();
        (*(v11 + 8))(v33, v8);
        return v32;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_20;
      }
    }

LABEL_17:
    result = (*(v11 + 8))(v16, v8);
    ++v20;
  }

  __break(1u);
  return result;
}

uint64_t UsoEntity_common_PostalAddress.requestedAddressField.getter()
{
  v0 = 0;
  while (1)
  {
    v1 = outlined read-only object #0 of static ContactNLIntent.ContactPostalAddressField.allCases.getter[v0++ + 32];
    CodeGenBase.entity.getter();
    v2 = UsoEntity.attributes.getter();

    if (!*(v2 + 16))
    {

      goto LABEL_12;
    }

    v3 = specialized __RawDictionaryStorage.find<A>(_:)();
    v5 = v4;

    if (v5)
    {
      break;
    }

LABEL_12:

    if (v0 == 5)
    {
      return 5;
    }
  }

  v6 = *(*(v2 + 56) + 8 * v3);

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (v6 < 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x26D5E2AA0](v11);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5E29D0](0, v6);
LABEL_9:

    dispatch thunk of UsoValue.getAsPrimitiveValueString()();
    v10 = v9;

    if (!v10)
    {
      return v1;
    }

    goto LABEL_12;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t UsoEntity_common_Person.contactIds.getter()
{
  v61 = type metadata accessor for IdentifierAppBundle();
  v0 = OUTLINED_FUNCTION_1_0(v61);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v64 = type metadata accessor for UsoIdentifier();
  v8 = OUTLINED_FUNCTION_1_0(v64);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v20 = 0;
  if (result)
  {
    v21 = result;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v62 = *(v21 + 16);
  v63 = v10 + 16;
  v60 = (v2 + 8);
  v56 = (v10 + 32);
  v22 = (v10 + 8);
  v58 = MEMORY[0x277D84F90];
  while (v62 != v20)
  {
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = *(v10 + 72);
    (*(v10 + 16))(v18, v21 + v23 + v24 * v20, v64);
    UsoIdentifier.appBundleSemantic.getter();
    v25 = IdentifierAppBundle.rawValue.getter();
    v27 = v26;
    (*v60)(v7, v61);
    OUTLINED_FUNCTION_2_42();
    v29 = v25 == v28 && v27 == 0xE800000000000000;
    if (v29)
    {

LABEL_14:
      UsoIdentifier.namespace.getter();
      if (!v31)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_6_30();
      if (v29 && v32 == 0xE700000000000000)
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v35 = *v56;
      (*v56)(v57, v18, v64);
      v36 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v36;
      v55 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = *(v36 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v65;
      }

      v39 = *(v36 + 16);
      v40 = v39 + 1;
      if (v39 >= *(v36 + 24) >> 1)
      {
        v58 = v39 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v40 = v58;
        v36 = v65;
      }

      ++v20;
      *(v36 + 16) = v40;
      v58 = v36;
      result = (v55)(v36 + v23 + v39 * v24, v57, v64);
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_14;
      }

LABEL_20:
      result = (*v22)(v18, v64);
      ++v20;
    }
  }

  v41 = *(v58 + 16);
  if (v41)
  {
    v65 = MEMORY[0x277D84F90];
    v42 = v58;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
    v43 = v65;
    v44 = v42 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v62 = *(v10 + 72);
    v45 = *(v10 + 16);
    do
    {
      v46 = v59;
      v47 = v64;
      v45(v59, v44, v64);
      v48 = UsoIdentifier.value.getter();
      v50 = v49;
      (*v22)(v46, v47);
      v65 = v43;
      v52 = *(v43 + 16);
      v51 = *(v43 + 24);
      if (v52 >= v51 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1);
        v43 = v65;
      }

      *(v43 + 16) = v52 + 1;
      v53 = v43 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v44 += v62;
      --v41;
    }

    while (v41);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v43;
}

uint64_t UsoEntity_common_Person.isGetAttributeIntent.getter()
{
  if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter() || dispatch thunk of UsoEntity_common_Person.structuredName.getter() || dispatch thunk of UsoEntity_common_Person.age.getter() || (result = dispatch thunk of UsoEntity_common_Person.associatedDate.getter()) != 0)
  {

    return 1;
  }

  return result;
}

uint64_t static UsoEntity.from(_:)(uint64_t a1)
{
  return static UsoEntity.from(_:)(a1, MEMORY[0x277D5F300], static UsoEntityBuilder_common_PostalAddress.from(_:));
}

{
  return static UsoEntity.from(_:)(a1, MEMORY[0x277D5F228], static UsoEntityBuilder_common_PhoneNumber.from(_:));
}

{
  return static UsoEntity.from(_:)(a1, MEMORY[0x277D5F280], static UsoEntityBuilder_common_EmailAddress.from(_:));
}

uint64_t static UsoEntity.from(_:)(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  a2(0);
  v4 = OUTLINED_FUNCTION_73();
  a3(v4);
  v5 = MEMORY[0x26D5E0C50]();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = type metadata accessor for ContactsError();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type ContactsError and conformance ContactsError, type metadata accessor for ContactsError);
    OUTLINED_FUNCTION_73();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v7 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_3_28(v7, v8);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v6;
}

uint64_t ContactAttribute.asUsoBuilder.getter()
{
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMd, &_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMR);
  __swift_project_value_buffer(v1, static Transformer<>.transformer);
  OUTLINED_FUNCTION_73();
  v2 = Transformer.transform.getter();
  v5 = v0;
  v2(&v4, &v5);

  return v4;
}

uint64_t static UsoEntity.from(_:_:)(void *a1, void *a2)
{
  v42 = type metadata accessor for ContactsError();
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v43 = type metadata accessor for UsoIdentifier();
  v7 = OUTLINED_FUNCTION_1_0(v43);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = type metadata accessor for UsoEntityBuilder_common_Person();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = UsoEntityBuilder_common_Person.init()();
  v19 = type metadata accessor for UsoEntityBuilder_common_PersonName();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_PersonName.init()();
  v22 = [a1 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  dispatch thunk of UsoEntityBuilder_common_PersonName.setNickName(value:)();

  v25 = [a1 givenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setGivenName(value:)();

  v26 = [a1 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setFamilyName(value:)();

  v27 = [a1 middleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setMiddleName(value:)();

  v28 = [a1 namePrefix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setNamePrefix(value:)();

  v29 = [a1 nameSuffix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setNamePostfix(value:)();

  dispatch thunk of UsoEntityBuilder_common_Person.setStructuredName(value:)();

  CNContact.formattedFullName.getter();
  dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

  if (dispatch thunk of UsoEntityBuilder_common_Person.name.getter())
  {
    v30 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v31;

    OUTLINED_FUNCTION_2_42();
    UsoIdentifier.init(value:appBundleId:namespace:)();
    dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();

    (*(v9 + 8))(v14, v43);
  }

  if (a2)
  {
    v32 = a2;
    v33 = ContactAttribute.asUsoBuilder.getter();
    if (v33)
    {
      v24 = v33;
      dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();
    }

    else
    {
    }
  }

  v34 = MEMORY[0x26D5E0C50](v18);
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v36 = type metadata accessor for TransformationError();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, MEMORY[0x277D61E08]);
    swift_allocError();
    v38 = v37;
    type metadata accessor for CNContact();
    v39 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_3_28(v39, v40);
    swift_storeEnumTagMultiPayload();
    v35 = v6;
    ContactsError.errorDescription.getter();
    OUTLINED_FUNCTION_5_35();
    outlined destroy of ContactsError(v6);
    *v38 = v6;
    v38[1] = v24;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D61E00], v36);
    swift_willThrow();
  }

  return v35;
}

uint64_t _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_28(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;
  v2[2] = 0x7469746E456F7355;
  v2[3] = 0xE900000000000079;
  return v2;
}

uint64_t specialized SiriKitContactIntent.me.getter()
{
  v1 = [v0 isMe];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSNumber();
  v3 = 1;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  return v3;
}

{
  type metadata accessor for NSNumber();
  isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  v1 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v2 = static NSObject.== infix(_:_:)();

  return v2 & 1;
}

id ModifyContactAttributeIntentHandler.__allocating_init(contactService:contactResolver:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v8 = a1[3];
  v7 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a2[3];
  v15 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  v17 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = specialized ModifyContactAttributeIntentHandler.init(contactService:contactResolver:)(v12, v19, v6, v8, v14, v7, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v21;
}

void *specialized BaseIntentHandler.meCard.getter()
{
  v1 = v0;
  v2 = direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard;
  v3 = *(v0 + direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard);
  v4 = v3;
  if (v3 == 1)
  {
    outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v7 = *(v1 + v2);
    *(v1 + v2) = v4;
    v8 = v4;
    outlined consume of CNContact??(v7);
  }

  outlined copy of CNContact??(v3);
  return v4;
}

id _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA010GetContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5(char a1)
{
  v2 = v1;
  type metadata accessor for GetContactSiriMatchesResolutionResult();
  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v20);
  v4 = v21;
  v5 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v6)
  {
    if ((a1 & 1) == 0)
    {
LABEL_5:
      result = 0;
      *(v2 + direct field offset for BaseIntentHandler.passedPrereqs) = 1;
      return result;
    }

    v7 = specialized BaseIntentHandler.meCard.getter();
    if (v7)
    {

      goto LABEL_5;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, v20);
      _os_log_impl(&dword_26686A000, v16, v17, "[%s] MeCard was not found and user requested info about their MeCard or relationships. Returning unsupported due to missingMeCard.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x26D5E3300](v19, -1, -1);
      MEMORY[0x26D5E3300](v18, -1, -1);
    }

    v14 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriContacts);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, v20);
      _os_log_impl(&dword_26686A000, v10, v11, "[%s] Siri isn't authorized to access Contacts app data, need to prompt the user.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26D5E3300](v13, -1, -1);
      MEMORY[0x26D5E3300](v12, -1, -1);
    }

    v14 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  return v14;
}

id _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA019GetContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5(char a1)
{
  v2 = v1;
  type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v20);
  v4 = v21;
  v5 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v6)
  {
    if ((a1 & 1) == 0)
    {
LABEL_5:
      result = 0;
      *(v2 + direct field offset for BaseIntentHandler.passedPrereqs) = 1;
      return result;
    }

    v7 = specialized BaseIntentHandler.meCard.getter();
    if (v7)
    {

      goto LABEL_5;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, v20);
      _os_log_impl(&dword_26686A000, v16, v17, "[%s] MeCard was not found and user requested info about their MeCard or relationships. Returning unsupported due to missingMeCard.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x26D5E3300](v19, -1, -1);
      MEMORY[0x26D5E3300](v18, -1, -1);
    }

    v14 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriContacts);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, v20);
      _os_log_impl(&dword_26686A000, v10, v11, "[%s] Siri isn't authorized to access Contacts app data, need to prompt the user.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26D5E3300](v13, -1, -1);
      MEMORY[0x26D5E3300](v12, -1, -1);
    }

    v14 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  return v14;
}

id _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA022ModifyContactAttributeE0C_AA0qrsE8ResponseCAA0qrs7Relateda7MatchesoP0CAOTtg5Tm(char a1, void (*a2)(void))
{
  v3 = v2;
  a2(0);
  outlined init with copy of DeviceState(v2 + direct field offset for BaseIntentHandler.contactService, v29);
  v5 = v30;
  v6 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v7 = (*(v6 + 16))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  if (v7)
  {
    if ((a1 & 1) == 0)
    {
LABEL_5:
      result = 0;
      *(v3 + direct field offset for BaseIntentHandler.passedPrereqs) = 1;
      return result;
    }

    v8 = specialized BaseIntentHandler.meCard.getter();
    if (v8)
    {

      goto LABEL_5;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v20, static Logger.siriContacts);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_16(v22))
    {
      v23 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_4();
      *v23 = 136315138;
      OUTLINED_FUNCTION_7_20();
      *(v23 + 4) = OUTLINED_FUNCTION_36_8(v24, v25, v26);
      OUTLINED_FUNCTION_24_11(&dword_26686A000, v27, v28, "[%s] MeCard was not found and user requested info about their MeCard or relationships. Returning unsupported due to missingMeCard.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_6();
    }

    v19 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v10, static Logger.siriContacts);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_16(v12))
    {
      v13 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_4();
      *v13 = 136315138;
      OUTLINED_FUNCTION_7_20();
      *(v13 + 4) = OUTLINED_FUNCTION_36_8(v14, v15, v16);
      OUTLINED_FUNCTION_24_11(&dword_26686A000, v17, v18, "[%s] Siri isn't authorized to access Contacts app data, need to prompt the user.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_6();
    }

    v19 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  return v19;
}

void specialized BaseIntentHandler.resolveContacts(intent:)(void (**a1)(char *, uint64_t))
{
  v221 = type metadata accessor for PersonNameComponents();
  v200 = *(v221 - 8);
  v2 = *(v200 + 64);
  MEMORY[0x28223BE20](v221);
  v220 = &v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactSiriMatchesResolutionResult = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  v198 = *(ContactSiriMatchesResolutionResult - 8);
  v4 = *(v198 + 64);
  MEMORY[0x28223BE20](ContactSiriMatchesResolutionResult);
  v227 = &v193 - v5;
  v6 = type metadata accessor for ContactQuery();
  v216 = *(v6 - 8);
  v7 = *(v216 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v225 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v217 = &v193 - v10;
  v213 = type metadata accessor for RecommenderType();
  v212 = *(v213 - 1);
  v11 = *(v212 + 64);
  MEMORY[0x28223BE20](v213);
  v211 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for SearchSuggestedContacts();
  v208 = *(v209 - 8);
  v13 = *(v208 + 64);
  MEMORY[0x28223BE20](v209);
  v210 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContactResolverDomain();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v207 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v206 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v205 = &v193 - v23;
  v24 = type metadata accessor for ContactResolverConfig();
  v25 = *(v24 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v218 = &v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for Contact();
  v28 = *(v230 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v230);
  v219 = &v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v197 = &v193 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v196 = &v193 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v195 = &v193 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v193 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v193 - v41;
  v214 = a1;
  GetContactIntent.siriInferenceContact.getter();
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v43 = type metadata accessor for Logger();
    v44 = __swift_project_value_buffer(v43, static Logger.siriContacts);
    v222 = v28[2];
    v223 = v28 + 2;
    v222(v40, v42, v230);
    v224 = v44;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    v47 = os_log_type_enabled(v45, v46);
    v229 = v28;
    v204 = v24;
    v203 = v25;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v231 = v49;
      *v48 = 136315394;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, &v231);
      *(v48 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type Contact and conformance Contact, MEMORY[0x277D56178]);
      v50 = v6;
      v51 = v230;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v42;
      v55 = v54;
      v226 = v229[1];
      v226(v40, v51);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, &v231);
      v6 = v50;
      v42 = v53;

      *(v48 + 14) = v56;
      _os_log_impl(&dword_26686A000, v45, v46, "[%s] Built skeleton contact for resolution: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v49, -1, -1);
      MEMORY[0x26D5E3300](v48, -1, -1);
    }

    else
    {

      v226 = v28[1];
      v226(v40, v230);
    }

    v57 = Contact.isEmpty.getter();
    v58 = v216;
    v59 = v217;
    if (v57)
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v231 = v63;
        *v62 = 136315138;
        *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, &v231);
        _os_log_impl(&dword_26686A000, v60, v61, "[%s] No search terms provided to resolve contact with, returning needsValue.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        MEMORY[0x26D5E3300](v63, -1, -1);
        MEMORY[0x26D5E3300](v62, -1, -1);
      }

      type metadata accessor for GetContactSiriMatchesResolutionResult();
      [swift_getObjCClassFromMetadata() needsValue];
LABEL_9:
      v226(v42, v230);
      return;
    }

    v64 = [v214 intentId];
    v201 = v6;
    if (v64)
    {
      v65 = v64;
      v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v194 = static String.EMPTY.getter();
    }

    v66 = type metadata accessor for ContactHandleTypePreference();
    __swift_storeEnumTagSinglePayload(v205, 1, 1, v66);
    static Locale.current.getter();
    static ContactResolverDomain.all.getter();
    (*(v208 + 104))(v210, *MEMORY[0x277D56148], v209);
    (*(v212 + 104))(v211, *MEMORY[0x277D560D0], v213);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    Contact.asContactQuery.getter(v59);
    v67 = v225;
    v68 = v201;
    v213 = *(v58 + 16);
    v213(v225, v59, v201);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    v71 = os_log_type_enabled(v69, v70);
    v202 = v42;
    v199 = "ResolveModifyRelationship";
    if (v71)
    {
      v72 = v67;
      v73 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v231 = v211;
      *v73 = 136315394;
      *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, &v231);
      *(v73 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, MEMORY[0x277D55FF8]);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v212 = *(v58 + 8);
      (v212)(v72, v68);
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v231);

      *(v73 + 14) = v77;
      _os_log_impl(&dword_26686A000, v69, v70, "[%s] Converted skeleton contact to ContactQuery: %s", v73, 0x16u);
      v78 = v211;
      swift_arrayDestroy();
      v59 = v217;
      MEMORY[0x26D5E3300](v78, -1, -1);
      MEMORY[0x26D5E3300](v73, -1, -1);
    }

    else
    {

      v212 = *(v58 + 8);
      (v212)(v67, v68);
    }

    outlined init with copy of DeviceState(v215 + direct field offset for BaseIntentHandler.contactResolver, &v231);
    v79 = v232;
    v80 = v233;
    __swift_project_boxed_opaque_existential_1(&v231, v232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v81 = *(v58 + 72);
    v82 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_266966D90;
    v213((v83 + v82), v59, v68);
    v84 = (*(v80 + 8))(v83, v218, v79, v80);

    __swift_destroy_boxed_opaque_existential_0Tm(&v231);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v231 = v88;
      *v87 = 136315394;
      *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v199 | 0x8000000000000000, &v231);
      *(v87 + 12) = 2080;
      v89 = MEMORY[0x26D5E2610](v84, ContactSiriMatchesResolutionResult);
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v231);

      *(v87 + 14) = v91;
      _os_log_impl(&dword_26686A000, v85, v86, "[%s] ContactResolver recommendations: %s", v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v88, -1, -1);
      MEMORY[0x26D5E3300](v87, -1, -1);
    }

    v42 = v202;
    v28 = *(v84 + 16);
    if (!v28)
    {
      break;
    }

    v225 = *(v198 + 16);
    v92 = (*(v198 + 80) + 32) & ~*(v198 + 80);
    v213 = v84;
    v25 = v84 + v92;
    v6 = *(v198 + 72);
    v42 = (v198 + 16);
    v93 = (v198 + 8);
    v94 = MEMORY[0x277D84F90];
    while (1)
    {
      v96 = v227;
      v95 = ContactSiriMatchesResolutionResult;
      (v225)(v227, v25, ContactSiriMatchesResolutionResult);
      v40 = Recommendation<A>.assignConfidence()();
      (*v93)(v96, v95);
      v97 = *(v40 + 2);
      v24 = *(v94 + 16);
      if (__OFADD__(v24, v97))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v97 > *(v94 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v94 = v98;
      }

      if (*(v40 + 2))
      {
        if ((*(v94 + 24) >> 1) - *(v94 + 16) < v97)
        {
          goto LABEL_85;
        }

        v99 = (*(v229 + 80) + 32) & ~*(v229 + 80);
        v100 = v229[9];
        swift_arrayInitWithCopy();

        if (v97)
        {
          v101 = *(v94 + 16);
          v102 = __OFADD__(v101, v97);
          v103 = v101 + v97;
          if (v102)
          {
            goto LABEL_87;
          }

          *(v94 + 16) = v103;
        }
      }

      else
      {

        if (v97)
        {
          goto LABEL_84;
        }
      }

      v25 += v6;
      v28 = (v28 - 1);
      if (!v28)
      {

        v42 = v202;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v94 = MEMORY[0x277D84F90];
LABEL_33:

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();
  v106 = os_log_type_enabled(v104, v105);
  v107 = v199;
  if (v106)
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v231 = v109;
    *v108 = 136315394;
    *(v108 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v107 | 0x8000000000000000, &v231);
    *(v108 + 12) = 2048;
    *(v108 + 14) = *(v94 + 16);

    _os_log_impl(&dword_26686A000, v104, v105, "[%s] ContactResolver weighted recommendations count: %ld", v108, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v109);
    MEMORY[0x26D5E3300](v109, -1, -1);
    MEMORY[0x26D5E3300](v108, -1, -1);
  }

  else
  {
  }

  v28 = *(v94 + 16);
  if (v28 == 1)
  {
    v116 = specialized BaseIntentHandler.meCard.getter();
    if (!v116)
    {
LABEL_75:
      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.debug.getter();
      v171 = os_log_type_enabled(v169, v170);
      v172 = v229;
      if (v171)
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v231 = v174;
        *v173 = 136315138;
        *(v173 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v107 | 0x8000000000000000, &v231);
        _os_log_impl(&dword_26686A000, v169, v170, "[%s] 1 recommendation returned. Returning success.", v173, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v174);
        MEMORY[0x26D5E3300](v174, -1, -1);
        MEMORY[0x26D5E3300](v173, -1, -1);
      }

      ContactSiriMatchesResolutionResult = type metadata accessor for GetContactSiriMatchesResolutionResult();
      v227 = type metadata accessor for SiriMatch();
      if (*(v94 + 16))
      {
        v175 = (*(v172 + 80) + 32) & ~*(v172 + 80);
        v176 = v196;
        v177 = v230;
        v178 = v222;
        v222(v196, (v94 + v175), v230);
        v225 = Contact.id.getter();
        v180 = v179;
        v181 = v226;
        v226(v176, v177);
        v182 = v197;
        v178(v197, v94 + v175, v177);

        v183 = v220;
        PersonNameComponents.init()();
        Contact.namePrefix.getter();
        PersonNameComponents.namePrefix.setter();
        Contact.givenName.getter();
        PersonNameComponents.givenName.setter();
        Contact.middleName.getter();
        PersonNameComponents.middleName.setter();
        Contact.familyName.getter();
        PersonNameComponents.familyName.setter();
        Contact.nameSuffix.getter();
        PersonNameComponents.nameSuffix.setter();
        v184 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v186 = [v184 localizedStringFromPersonNameComponents:isa style:2 options:0];

        v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v189 = v188;

        (*(v200 + 8))(v183, v221);
        v181(v182, v177);
        v190 = SiriMatch.__allocating_init(identifier:fullName:)(v225, v180, v187, v189);
        static SiriMatchResolutionResult.success(with:)(v190);

        (v212)(v217, v201);
        (*(v203 + 8))(v218, v204);
        v181(v202, v177);
        return;
      }

      __break(1u);
      goto LABEL_90;
    }

    v117 = v116;
    v118 = [v116 identifier];
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    if (!*(v94 + 16))
    {
LABEL_90:
      __break(1u);
      return;
    }

    v122 = v230;
    v123 = v195;
    v222(v195, (v94 + ((*(v229 + 80) + 32) & ~*(v229 + 80))), v230);
    v124 = Contact.id.getter();
    v126 = v125;
    v226(v123, v122);
    if (v119 == v124 && v121 == v126)
    {

      v129 = v214;
    }

    else
    {
      v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v129 = v214;
      if ((v128 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v167 = Int._bridgeToObjectiveC()().super.super.isa;
    v168 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
    [v129 setValue:v167 forProperty:v168];

    v117 = v168;
LABEL_74:

    goto LABEL_75;
  }

  if (!v28)
  {

    v110 = *(Contact.contactRelations.getter() + 16);

    if (v110)
    {
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v231 = v114;
        *v113 = 136315138;
        *(v113 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v107 | 0x8000000000000000, &v231);
        _os_log_impl(&dword_26686A000, v111, v112, "[%s] No recommendations returned for requested relationship. Returning unsupported.", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v114);
        MEMORY[0x26D5E3300](v114, -1, -1);
        MEMORY[0x26D5E3300](v113, -1, -1);
      }

      type metadata accessor for GetContactSiriMatchesResolutionResult();
      v115 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      v158 = Contact.organizationName.getter();
      v160 = v159;

      if ((v160 & 0x2000000000000000) != 0)
      {
        v161 = HIBYTE(v160) & 0xF;
      }

      else
      {
        v161 = v158 & 0xFFFFFFFFFFFFLL;
      }

      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.debug.getter();
      v164 = os_log_type_enabled(v162, v163);
      if (v161)
      {
        if (v164)
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v231 = v166;
          *v165 = 136315138;
          *(v165 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v107 | 0x8000000000000000, &v231);
          _os_log_impl(&dword_26686A000, v162, v163, "[%s] No recommendations returned for requested company. Returning unsupported.", v165, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v166);
          MEMORY[0x26D5E3300](v166, -1, -1);
          MEMORY[0x26D5E3300](v165, -1, -1);
        }

        type metadata accessor for GetContactSiriMatchesResolutionResult();
        v115 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }

      else
      {
        if (v164)
        {
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v231 = v192;
          *v191 = 136315138;
          *(v191 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v107 | 0x8000000000000000, &v231);
          _os_log_impl(&dword_26686A000, v162, v163, "[%s] No recommendations returned. Returning unsupported.", v191, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v192);
          MEMORY[0x26D5E3300](v192, -1, -1);
          MEMORY[0x26D5E3300](v191, -1, -1);
        }

        type metadata accessor for GetContactSiriMatchesResolutionResult();
        v115 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }
    }

    v115;
    (v212)(v217, v201);
    (*(v203 + 8))(v218, v204);
    goto LABEL_9;
  }

  v225 = objc_opt_self();
  v130 = (v94 + ((*(v229 + 80) + 32) & ~*(v229 + 80)));
  v215 = v229[9];
  v214 = (v200 + 8);
  v227 = (v229 + 1);
  v24 = MEMORY[0x277D84F90];
  v131 = v219;
  v132 = v230;
  do
  {
    v222(v131, v130, v132);
    v133 = Contact.id.getter();
    ContactSiriMatchesResolutionResult = v134;
    v229 = v133;
    v135 = v220;
    PersonNameComponents.init()();
    Contact.namePrefix.getter();
    PersonNameComponents.namePrefix.setter();
    Contact.givenName.getter();
    PersonNameComponents.givenName.setter();
    Contact.middleName.getter();
    PersonNameComponents.middleName.setter();
    Contact.familyName.getter();
    PersonNameComponents.familyName.setter();
    Contact.nameSuffix.getter();
    PersonNameComponents.nameSuffix.setter();
    v136 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v137 = [v225 localizedStringFromPersonNameComponents:v136 style:2 options:0];

    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v139;

    (*v214)(v135, v221);
    v226(v131, v132);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
      v24 = v144;
    }

    v141 = v24[2];
    v140 = v24[3];
    if (v141 >= v140 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v140 > 1, v141 + 1, 1, v24);
      v24 = v145;
    }

    v24[2] = v141 + 1;
    v142 = &v24[4 * v141];
    v143 = ContactSiriMatchesResolutionResult;
    v142[4] = v229;
    v142[5] = v143;
    v142[6] = v138;
    v142[7] = v25;
    v130 += v215;
    v28 = (v28 - 1);
  }

  while (v28);

  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v231 = v25;
    *v148 = 136315394;
    *(v148 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v199 | 0x8000000000000000, &v231);
    *(v148 + 12) = 2080;
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    v150 = MEMORY[0x26D5E2610](v24, v149);
    v28 = v151;
    v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, &v231);

    *(v148 + 14) = v152;
    _os_log_impl(&dword_26686A000, v146, v147, "[%s] Multiple recommendations returned. Returning disambiguation of %s.", v148, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5E3300](v25, -1, -1);
    MEMORY[0x26D5E3300](v148, -1, -1);
  }

  v153 = MEMORY[0x277D84F90];
  v42 = 0;
  v231 = MEMORY[0x277D84F90];
  v40 = v24[2];
  v6 = (v24 + 7);
  while (v40 != v42)
  {
    if (v42 >= v24[2])
    {
      goto LABEL_86;
    }

    v155 = *(v6 - 8);
    v154 = *v6;
    v157 = *(v6 - 24);
    v156 = *(v6 - 16);
    v28 = type metadata accessor for SiriMatch();

    SiriMatch.__allocating_init(identifier:fullName:)(v157, v156, v155, v154);
    MEMORY[0x26D5E25E0]();
    v25 = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 >= *((v231 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v153 = v231;
    v6 += 32;
    ++v42;
  }

  type metadata accessor for GetContactSiriMatchesResolutionResult();
  static SiriMatchResolutionResult.disambiguation(with:)(v153);

  (v212)(v217, v201);
  (*(v203 + 8))(v218, v204);
  v226(v202, v230);
}

{
  v222 = type metadata accessor for PersonNameComponents();
  v201 = *(v222 - 8);
  v2 = *(v201 + 64);
  MEMORY[0x28223BE20](v222);
  v221 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  v199 = *(v229 - 8);
  v4 = *(v199 + 64);
  MEMORY[0x28223BE20](v229);
  v228 = &v194 - v5;
  v6 = type metadata accessor for ContactQuery();
  v217 = *(v6 - 8);
  v7 = *(v217 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v226 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v218 = &v194 - v10;
  v214 = type metadata accessor for RecommenderType();
  v213 = *(v214 - 1);
  v11 = *(v213 + 64);
  MEMORY[0x28223BE20](v214);
  v212 = &v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for SearchSuggestedContacts();
  v209 = *(v210 - 8);
  v13 = *(v209 + 64);
  MEMORY[0x28223BE20](v210);
  v211 = &v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContactResolverDomain();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v208 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v207 = &v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v206 = &v194 - v23;
  v24 = type metadata accessor for ContactResolverConfig();
  v25 = *(v24 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v219 = &v194 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for Contact();
  v28 = *(v231 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v231);
  v220 = &v194 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v198 = &v194 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v197 = &v194 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v196 = &v194 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v194 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v194 - v41;
  v215 = a1;
  ModifyContactAttributeIntent.siriInferenceContact.getter();
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v43 = type metadata accessor for Logger();
    v44 = __swift_project_value_buffer(v43, static Logger.siriContacts);
    v223 = v28[2];
    v224 = v28 + 2;
    v223(v40, v42, v231);
    v225 = v44;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    v47 = os_log_type_enabled(v45, v46);
    v230 = v28;
    v205 = v24;
    v204 = v25;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v232 = v49;
      *v48 = 136315394;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, &v232);
      *(v48 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type Contact and conformance Contact, MEMORY[0x277D56178]);
      v50 = v6;
      v51 = v231;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v42;
      v55 = v54;
      v227 = v230[1];
      v227(v40, v51);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, &v232);
      v6 = v50;
      v42 = v53;

      *(v48 + 14) = v56;
      _os_log_impl(&dword_26686A000, v45, v46, "[%s] Built skeleton contact for resolution: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v49, -1, -1);
      MEMORY[0x26D5E3300](v48, -1, -1);
    }

    else
    {

      v227 = v28[1];
      v227(v40, v231);
    }

    v57 = Contact.isEmpty.getter();
    v58 = v217;
    v59 = v218;
    if (v57)
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v232 = v63;
        *v62 = 136315138;
        *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, &v232);
        _os_log_impl(&dword_26686A000, v60, v61, "[%s] No search terms provided to resolve contact with, returning needsValue.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        MEMORY[0x26D5E3300](v63, -1, -1);
        MEMORY[0x26D5E3300](v62, -1, -1);
      }

      type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
      [swift_getObjCClassFromMetadata() needsValue];
LABEL_9:
      v227(v42, v231);
      return;
    }

    v64 = [v215 intentId];
    v202 = v6;
    if (v64)
    {
      v65 = v64;
      v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v195 = static String.EMPTY.getter();
    }

    v66 = v206;
    static ContactHandleTypePreference.preferPhone.getter();
    v67 = type metadata accessor for ContactHandleTypePreference();
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
    static Locale.current.getter();
    static ContactResolverDomain.all.getter();
    (*(v209 + 104))(v211, *MEMORY[0x277D56148], v210);
    (*(v213 + 104))(v212, *MEMORY[0x277D560D0], v214);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    Contact.asContactQuery.getter(v59);
    v68 = v226;
    v69 = v202;
    v214 = *(v58 + 16);
    v214(v226, v59, v202);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    v72 = os_log_type_enabled(v70, v71);
    v203 = v42;
    v200 = "ortedValueOutput";
    if (v72)
    {
      v73 = v68;
      v74 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v232 = v212;
      *v74 = 136315394;
      *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, &v232);
      *(v74 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, MEMORY[0x277D55FF8]);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v213 = *(v58 + 8);
      (v213)(v73, v69);
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v232);

      *(v74 + 14) = v78;
      _os_log_impl(&dword_26686A000, v70, v71, "[%s] Converted skeleton contact to ContactQuery: %s", v74, 0x16u);
      v79 = v212;
      swift_arrayDestroy();
      v59 = v218;
      MEMORY[0x26D5E3300](v79, -1, -1);
      MEMORY[0x26D5E3300](v74, -1, -1);
    }

    else
    {

      v213 = *(v58 + 8);
      (v213)(v68, v69);
    }

    outlined init with copy of DeviceState(v216 + direct field offset for BaseIntentHandler.contactResolver, &v232);
    v80 = v233;
    v81 = v234;
    __swift_project_boxed_opaque_existential_1(&v232, v233);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v82 = *(v58 + 72);
    v83 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_266966D90;
    v214((v84 + v83), v59, v69);
    v85 = (*(v81 + 8))(v84, v219, v80, v81);

    __swift_destroy_boxed_opaque_existential_0Tm(&v232);

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v232 = v89;
      *v88 = 136315394;
      *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v200 | 0x8000000000000000, &v232);
      *(v88 + 12) = 2080;
      v90 = MEMORY[0x26D5E2610](v85, v229);
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v232);

      *(v88 + 14) = v92;
      _os_log_impl(&dword_26686A000, v86, v87, "[%s] ContactResolver recommendations: %s", v88, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v89, -1, -1);
      MEMORY[0x26D5E3300](v88, -1, -1);
    }

    v42 = v203;
    v28 = *(v85 + 16);
    if (!v28)
    {
      break;
    }

    v226 = *(v199 + 16);
    v93 = (*(v199 + 80) + 32) & ~*(v199 + 80);
    v214 = v85;
    v25 = v85 + v93;
    v6 = *(v199 + 72);
    v42 = (v199 + 16);
    v94 = (v199 + 8);
    v95 = MEMORY[0x277D84F90];
    while (1)
    {
      v97 = v228;
      v96 = v229;
      (v226)(v228, v25, v229);
      v40 = Recommendation<A>.assignConfidence()();
      (*v94)(v97, v96);
      v98 = *(v40 + 2);
      v24 = *(v95 + 16);
      if (__OFADD__(v24, v98))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v98 > *(v95 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v95 = v99;
      }

      if (*(v40 + 2))
      {
        if ((*(v95 + 24) >> 1) - *(v95 + 16) < v98)
        {
          goto LABEL_85;
        }

        v100 = (*(v230 + 80) + 32) & ~*(v230 + 80);
        v101 = v230[9];
        swift_arrayInitWithCopy();

        if (v98)
        {
          v102 = *(v95 + 16);
          v103 = __OFADD__(v102, v98);
          v104 = v102 + v98;
          if (v103)
          {
            goto LABEL_87;
          }

          *(v95 + 16) = v104;
        }
      }

      else
      {

        if (v98)
        {
          goto LABEL_84;
        }
      }

      v25 += v6;
      v28 = (v28 - 1);
      if (!v28)
      {

        v42 = v203;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v95 = MEMORY[0x277D84F90];
LABEL_33:

  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();
  v107 = os_log_type_enabled(v105, v106);
  v108 = v200;
  if (v107)
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v232 = v110;
    *v109 = 136315394;
    *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v108 | 0x8000000000000000, &v232);
    *(v109 + 12) = 2048;
    *(v109 + 14) = *(v95 + 16);

    _os_log_impl(&dword_26686A000, v105, v106, "[%s] ContactResolver weighted recommendations count: %ld", v109, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v110);
    MEMORY[0x26D5E3300](v110, -1, -1);
    MEMORY[0x26D5E3300](v109, -1, -1);
  }

  else
  {
  }

  v28 = *(v95 + 16);
  if (v28 == 1)
  {
    v117 = specialized BaseIntentHandler.meCard.getter();
    if (!v117)
    {
LABEL_75:
      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.debug.getter();
      v172 = os_log_type_enabled(v170, v171);
      v173 = v230;
      if (v172)
      {
        v174 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v232 = v175;
        *v174 = 136315138;
        *(v174 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v108 | 0x8000000000000000, &v232);
        _os_log_impl(&dword_26686A000, v170, v171, "[%s] 1 recommendation returned. Returning success.", v174, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v175);
        MEMORY[0x26D5E3300](v175, -1, -1);
        MEMORY[0x26D5E3300](v174, -1, -1);
      }

      v229 = type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
      v228 = type metadata accessor for SiriMatch();
      if (*(v95 + 16))
      {
        v176 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v177 = v197;
        v178 = v231;
        v179 = v223;
        v223(v197, (v95 + v176), v231);
        v226 = Contact.id.getter();
        v181 = v180;
        v182 = v227;
        v227(v177, v178);
        v183 = v198;
        v179(v198, v95 + v176, v178);

        v184 = v221;
        PersonNameComponents.init()();
        Contact.namePrefix.getter();
        PersonNameComponents.namePrefix.setter();
        Contact.givenName.getter();
        PersonNameComponents.givenName.setter();
        Contact.middleName.getter();
        PersonNameComponents.middleName.setter();
        Contact.familyName.getter();
        PersonNameComponents.familyName.setter();
        Contact.nameSuffix.getter();
        PersonNameComponents.nameSuffix.setter();
        v185 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v187 = [v185 localizedStringFromPersonNameComponents:isa style:2 options:0];

        v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v190 = v189;

        (*(v201 + 8))(v184, v222);
        v182(v183, v178);
        v191 = SiriMatch.__allocating_init(identifier:fullName:)(v226, v181, v188, v190);
        static SiriMatchResolutionResult.success(with:)(v191);

        (v213)(v218, v202);
        (*(v204 + 8))(v219, v205);
        v182(v203, v178);
        return;
      }

      __break(1u);
      goto LABEL_90;
    }

    v118 = v117;
    v119 = [v117 identifier];
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    if (!*(v95 + 16))
    {
LABEL_90:
      __break(1u);
      return;
    }

    v123 = v231;
    v124 = v196;
    v223(v196, (v95 + ((*(v230 + 80) + 32) & ~*(v230 + 80))), v231);
    v125 = Contact.id.getter();
    v127 = v126;
    v227(v124, v123);
    if (v120 == v125 && v122 == v127)
    {

      v130 = v215;
    }

    else
    {
      v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v130 = v215;
      if ((v129 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v168 = Int._bridgeToObjectiveC()().super.super.isa;
    v169 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
    [v130 setValue:v168 forProperty:v169];

    v118 = v169;
LABEL_74:

    goto LABEL_75;
  }

  if (!v28)
  {

    v111 = *(Contact.contactRelations.getter() + 16);

    if (v111)
    {
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v232 = v115;
        *v114 = 136315138;
        *(v114 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v108 | 0x8000000000000000, &v232);
        _os_log_impl(&dword_26686A000, v112, v113, "[%s] No recommendations returned for requested relationship. Returning unsupported.", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v115);
        MEMORY[0x26D5E3300](v115, -1, -1);
        MEMORY[0x26D5E3300](v114, -1, -1);
      }

      type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
      v116 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      v159 = Contact.organizationName.getter();
      v161 = v160;

      if ((v161 & 0x2000000000000000) != 0)
      {
        v162 = HIBYTE(v161) & 0xF;
      }

      else
      {
        v162 = v159 & 0xFFFFFFFFFFFFLL;
      }

      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.debug.getter();
      v165 = os_log_type_enabled(v163, v164);
      if (v162)
      {
        if (v165)
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v232 = v167;
          *v166 = 136315138;
          *(v166 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v108 | 0x8000000000000000, &v232);
          _os_log_impl(&dword_26686A000, v163, v164, "[%s] No recommendations returned for requested company. Returning unsupported.", v166, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v167);
          MEMORY[0x26D5E3300](v167, -1, -1);
          MEMORY[0x26D5E3300](v166, -1, -1);
        }

        type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
        v116 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }

      else
      {
        if (v165)
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v232 = v193;
          *v192 = 136315138;
          *(v192 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v108 | 0x8000000000000000, &v232);
          _os_log_impl(&dword_26686A000, v163, v164, "[%s] No recommendations returned. Returning unsupported.", v192, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v193);
          MEMORY[0x26D5E3300](v193, -1, -1);
          MEMORY[0x26D5E3300](v192, -1, -1);
        }

        type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
        v116 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }
    }

    v116;
    (v213)(v218, v202);
    (*(v204 + 8))(v219, v205);
    goto LABEL_9;
  }

  v226 = objc_opt_self();
  v131 = (v95 + ((*(v230 + 80) + 32) & ~*(v230 + 80)));
  v216 = v230[9];
  v215 = (v201 + 8);
  v228 = (v230 + 1);
  v24 = MEMORY[0x277D84F90];
  v132 = v220;
  v133 = v231;
  do
  {
    v223(v132, v131, v133);
    v134 = Contact.id.getter();
    v229 = v135;
    v230 = v134;
    v136 = v221;
    PersonNameComponents.init()();
    Contact.namePrefix.getter();
    PersonNameComponents.namePrefix.setter();
    Contact.givenName.getter();
    PersonNameComponents.givenName.setter();
    Contact.middleName.getter();
    PersonNameComponents.middleName.setter();
    Contact.familyName.getter();
    PersonNameComponents.familyName.setter();
    Contact.nameSuffix.getter();
    PersonNameComponents.nameSuffix.setter();
    v137 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v138 = [v226 localizedStringFromPersonNameComponents:v137 style:2 options:0];

    v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v140;

    (*v215)(v136, v222);
    v227(v132, v133);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
      v24 = v145;
    }

    v142 = v24[2];
    v141 = v24[3];
    if (v142 >= v141 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v141 > 1, v142 + 1, 1, v24);
      v24 = v146;
    }

    v24[2] = v142 + 1;
    v143 = &v24[4 * v142];
    v144 = v229;
    v143[4] = v230;
    v143[5] = v144;
    v143[6] = v139;
    v143[7] = v25;
    v131 += v216;
    v28 = (v28 - 1);
  }

  while (v28);

  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v232 = v25;
    *v149 = 136315394;
    *(v149 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v200 | 0x8000000000000000, &v232);
    *(v149 + 12) = 2080;
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    v151 = MEMORY[0x26D5E2610](v24, v150);
    v28 = v152;
    v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v152, &v232);

    *(v149 + 14) = v153;
    _os_log_impl(&dword_26686A000, v147, v148, "[%s] Multiple recommendations returned. Returning disambiguation of %s.", v149, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5E3300](v25, -1, -1);
    MEMORY[0x26D5E3300](v149, -1, -1);
  }

  v154 = MEMORY[0x277D84F90];
  v42 = 0;
  v232 = MEMORY[0x277D84F90];
  v40 = v24[2];
  v6 = (v24 + 7);
  while (v40 != v42)
  {
    if (v42 >= v24[2])
    {
      goto LABEL_86;
    }

    v156 = *(v6 - 8);
    v155 = *v6;
    v158 = *(v6 - 24);
    v157 = *(v6 - 16);
    v28 = type metadata accessor for SiriMatch();

    SiriMatch.__allocating_init(identifier:fullName:)(v158, v157, v156, v155);
    MEMORY[0x26D5E25E0]();
    v25 = *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 >= *((v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v154 = v232;
    v6 += 32;
    ++v42;
  }

  type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
  static SiriMatchResolutionResult.disambiguation(with:)(v154);

  (v213)(v218, v202);
  (*(v204 + 8))(v219, v205);
  v227(v203, v231);
}

void specialized BaseIntentHandler.resolveContacts(intent:)(char *a1)
{
  v225 = type metadata accessor for PersonNameComponents();
  v205 = *(v225 - 8);
  v2 = *(v205 + 64);
  MEMORY[0x28223BE20](v225);
  v224 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactAttributeSiriMatchesResolutionResult = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  v203 = *(ContactAttributeSiriMatchesResolutionResult - 8);
  v4 = *(v203 + 64);
  MEMORY[0x28223BE20](ContactAttributeSiriMatchesResolutionResult);
  v232 = &v199 - v5;
  v216 = type metadata accessor for ContactQuery();
  v215 = *(v216 - 8);
  v6 = *(v215 + 64);
  v7 = MEMORY[0x28223BE20](v216);
  v230 = (&v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v222 = &v199 - v9;
  v209 = type metadata accessor for RecommenderType();
  v217 = *(v209 - 8);
  v10 = *(v217 + 64);
  MEMORY[0x28223BE20](v209);
  v218 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for SearchSuggestedContacts();
  v212 = *(v213 - 8);
  v12 = *(v212 + 64);
  MEMORY[0x28223BE20](v213);
  v214 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContactResolverDomain();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v211 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v210 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v208 = &v199 - v22;
  v207 = type metadata accessor for ContactResolverConfig();
  v206 = *(v207 - 8);
  v23 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v220 = &v199 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for Contact();
  v25 = *(v234 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v234);
  v223 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v202 = &v199 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v201 = &v199 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v200 = &v199 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v199 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = (&v199 - v38);
  GetContactAttributeIntent.siriInferenceContact.getter();
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v40 = type metadata accessor for Logger();
    v41 = __swift_project_value_buffer(v40, static Logger.siriContacts);
    v42 = v25[2];
    v221 = v39;
    v226 = v42;
    v227 = v25 + 2;
    v42(v37, v39, v234);
    v228 = v41;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v235 = v46;
      *v45 = 136315394;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, &v235);
      *(v45 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type Contact and conformance Contact, MEMORY[0x277D56178]);
      v47 = v25;
      v48 = v234;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = v48;
      v25 = v47;
      v231 = v47[1];
      v231(v37, v52);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v235);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_26686A000, v43, v44, "[%s] Built skeleton contact for resolution: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v46, -1, -1);
      MEMORY[0x26D5E3300](v45, -1, -1);
    }

    else
    {

      v231 = v25[1];
      v231(v37, v234);
    }

    v54 = v221;
    v55 = Contact.isEmpty.getter();
    v56 = v222;
    if (v55)
    {
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v235 = v60;
        *v59 = 136315138;
        *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, &v235);
        _os_log_impl(&dword_26686A000, v57, v58, "[%s] No search terms provided to resolve contact with, returning needsValue.", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x26D5E3300](v60, -1, -1);
        MEMORY[0x26D5E3300](v59, -1, -1);
      }

      type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
      [swift_getObjCClassFromMetadata() needsValue];
      v107 = v54;
LABEL_31:
      v231(v107, v234);
      return;
    }

    v61 = [a1 intentId];
    v229 = v25;
    if (v61)
    {
      v62 = v61;
      v63 = a1;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v63 = a1;
      static String.EMPTY.getter();
    }

    v199 = v63;
    GetContactAttributeIntent.handleTypePreference.getter(v208);
    static Locale.current.getter();
    static ContactResolverDomain.all.getter();
    (*(v212 + 104))(v214, *MEMORY[0x277D56148], v213);
    (*(v217 + 104))(v218, *MEMORY[0x277D560D0], v209);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    Contact.asContactQuery.getter(v56);
    v64 = v215;
    v65 = v230;
    v66 = v216;
    v218 = *(v215 + 16);
    (v218)(v230, v56, v216);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    v69 = os_log_type_enabled(v67, v68);
    v204 = "edsValueStrategy";
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v235 = v71;
      *v70 = 136315394;
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, &v235);
      *(v70 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, MEMORY[0x277D55FF8]);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v65;
      v75 = v74;
      v214 = *(v64 + 8);
      (v214)(v73, v66);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v75, &v235);

      *(v70 + 14) = v76;
      _os_log_impl(&dword_26686A000, v67, v68, "[%s] Converted skeleton contact to ContactQuery: %s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v71, -1, -1);
      MEMORY[0x26D5E3300](v70, -1, -1);
    }

    else
    {

      v214 = *(v64 + 8);
      (v214)(v65, v66);
    }

    outlined init with copy of DeviceState(v219 + direct field offset for BaseIntentHandler.contactResolver, &v235);
    v77 = v236;
    v78 = v237;
    __swift_project_boxed_opaque_existential_1(&v235, v236);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v79 = *(v64 + 72);
    v80 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_266966D90;
    (v218)(v81 + v80, v222, v66);
    v82 = (*(v78 + 8))(v81, v220, v77, v78);

    __swift_destroy_boxed_opaque_existential_0Tm(&v235);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v235 = v86;
      *v85 = 136315394;
      *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v204 | 0x8000000000000000, &v235);
      *(v85 + 12) = 2080;
      v87 = MEMORY[0x26D5E2610](v82, ContactAttributeSiriMatchesResolutionResult);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v235);

      *(v85 + 14) = v89;
      _os_log_impl(&dword_26686A000, v83, v84, "[%s] ContactResolver recommendations: %s", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v86, -1, -1);
      MEMORY[0x26D5E3300](v85, -1, -1);
    }

    v91 = v221;
    v90 = v222;
    v92 = v216;
    v93 = *(v82 + 16);
    if (!v93)
    {
      break;
    }

    v230 = *(v203 + 16);
    v94 = (*(v203 + 80) + 32) & ~*(v203 + 80);
    v218 = v82;
    v95 = v82 + v94;
    v25 = *(v203 + 72);
    a1 = (v203 + 16);
    v96 = (v203 + 8);
    v97 = MEMORY[0x277D84F90];
    while (1)
    {
      v99 = v232;
      v98 = ContactAttributeSiriMatchesResolutionResult;
      (v230)(v232, v95, ContactAttributeSiriMatchesResolutionResult);
      v37 = Recommendation<A>.assignConfidence()();
      (*v96)(v99, v98);
      v100 = *(v37 + 2);
      v39 = *(v97 + 16);
      if (__OFADD__(v39, v100))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v39 + v100 > *(v97 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v97 = v101;
      }

      if (*(v37 + 2))
      {
        if ((*(v97 + 24) >> 1) - *(v97 + 16) < v100)
        {
          goto LABEL_85;
        }

        v102 = (*(v229 + 80) + 32) & ~*(v229 + 80);
        v103 = v229[9];
        swift_arrayInitWithCopy();

        if (v100)
        {
          v104 = *(v97 + 16);
          v105 = __OFADD__(v104, v100);
          v106 = v104 + v100;
          if (v105)
          {
            goto LABEL_87;
          }

          *(v97 + 16) = v106;
        }
      }

      else
      {

        if (v100)
        {
          goto LABEL_84;
        }
      }

      v95 += v25;
      if (!--v93)
      {

        v91 = v221;
        v90 = v222;
        v92 = v216;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v97 = MEMORY[0x277D84F90];
LABEL_33:

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.debug.getter();
  v110 = os_log_type_enabled(v108, v109);
  v111 = v204;
  if (v110)
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v235 = v113;
    *v112 = 136315394;
    *(v112 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v111 | 0x8000000000000000, &v235);
    *(v112 + 12) = 2048;
    *(v112 + 14) = *(v97 + 16);

    _os_log_impl(&dword_26686A000, v108, v109, "[%s] ContactResolver weighted recommendations count: %ld", v112, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v113);
    MEMORY[0x26D5E3300](v113, -1, -1);
    MEMORY[0x26D5E3300](v112, -1, -1);
  }

  else
  {
  }

  a1 = *(v97 + 16);
  if (a1 == 1)
  {
    v120 = specialized BaseIntentHandler.meCard.getter();
    v121 = v229;
    if (!v120)
    {
LABEL_75:
      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v235 = v180;
        *v179 = 136315138;
        *(v179 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v111 | 0x8000000000000000, &v235);
        _os_log_impl(&dword_26686A000, v177, v178, "[%s] 1 recommendation returned. Returning success.", v179, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v180);
        MEMORY[0x26D5E3300](v180, -1, -1);
        MEMORY[0x26D5E3300](v179, -1, -1);
      }

      ContactAttributeSiriMatchesResolutionResult = type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
      v232 = type metadata accessor for SiriMatch();
      if (*(v97 + 16))
      {
        v181 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v182 = v201;
        v183 = v234;
        v184 = v226;
        v226(v201, v97 + v181, v234);
        v230 = Contact.id.getter();
        v186 = v185;
        v187 = v231;
        v231(v182, v183);
        v188 = v202;
        v184(v202, v97 + v181, v183);

        v189 = v224;
        PersonNameComponents.init()();
        Contact.namePrefix.getter();
        PersonNameComponents.namePrefix.setter();
        Contact.givenName.getter();
        PersonNameComponents.givenName.setter();
        Contact.middleName.getter();
        PersonNameComponents.middleName.setter();
        Contact.familyName.getter();
        PersonNameComponents.familyName.setter();
        Contact.nameSuffix.getter();
        PersonNameComponents.nameSuffix.setter();
        v190 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v192 = [v190 localizedStringFromPersonNameComponents:isa style:2 options:0];

        v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v195 = v194;

        (*(v205 + 8))(v189, v225);
        v187(v188, v183);
        v196 = SiriMatch.__allocating_init(identifier:fullName:)(v230, v186, v193, v195);
        static SiriMatchResolutionResult.success(with:)(v196);

        (v214)(v222, v216);
        (*(v206 + 8))(v220, v207);
        v187(v221, v183);
        return;
      }

      __break(1u);
      goto LABEL_90;
    }

    v122 = v120;
    v123 = [v120 identifier];
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;

    if (!*(v97 + 16))
    {
LABEL_90:
      __break(1u);
      return;
    }

    v127 = v200;
    v128 = v234;
    v226(v200, v97 + ((*(v121 + 80) + 32) & ~*(v121 + 80)), v234);
    v129 = Contact.id.getter();
    v131 = v130;
    v231(v127, v128);
    if (v124 == v129 && v126 == v131)
    {
    }

    else
    {
      v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v133 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v175 = Int._bridgeToObjectiveC()().super.super.isa;
    v176 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
    [v199 setValue:v175 forProperty:v176];

    v122 = v176;
LABEL_74:

    goto LABEL_75;
  }

  if (!a1)
  {

    v114 = *(Contact.contactRelations.getter() + 16);

    if (v114)
    {
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v235 = v118;
        *v117 = 136315138;
        *(v117 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v111 | 0x8000000000000000, &v235);
        _os_log_impl(&dword_26686A000, v115, v116, "[%s] No recommendations returned for requested relationship. Returning unsupported.", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v118);
        MEMORY[0x26D5E3300](v118, -1, -1);
        MEMORY[0x26D5E3300](v117, -1, -1);
      }

      type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
      v119 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      v166 = Contact.organizationName.getter();
      v168 = v167;

      if ((v168 & 0x2000000000000000) != 0)
      {
        v169 = HIBYTE(v168) & 0xF;
      }

      else
      {
        v169 = v166 & 0xFFFFFFFFFFFFLL;
      }

      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.debug.getter();
      v172 = os_log_type_enabled(v170, v171);
      if (v169)
      {
        if (v172)
        {
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          v235 = v174;
          *v173 = 136315138;
          *(v173 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v111 | 0x8000000000000000, &v235);
          _os_log_impl(&dword_26686A000, v170, v171, "[%s] No recommendations returned for requested company. Returning unsupported.", v173, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v174);
          MEMORY[0x26D5E3300](v174, -1, -1);
          MEMORY[0x26D5E3300](v173, -1, -1);
        }

        type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
        v119 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }

      else
      {
        if (v172)
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v235 = v198;
          *v197 = 136315138;
          *(v197 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v111 | 0x8000000000000000, &v235);
          _os_log_impl(&dword_26686A000, v170, v171, "[%s] No recommendations returned. Returning unsupported.", v197, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v198);
          MEMORY[0x26D5E3300](v198, -1, -1);
          MEMORY[0x26D5E3300](v197, -1, -1);
        }

        type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
        v119 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }
    }

    v119;
    (v214)(v90, v92);
    (*(v206 + 8))(v220, v207);
    v107 = v91;
    goto LABEL_31;
  }

  v219 = objc_opt_self();
  v134 = v97 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
  v218 = v229[9];
  v217 = v205 + 8;
  v230 = (v229 + 1);
  v39 = MEMORY[0x277D84F90];
  v135 = v223;
  v136 = v234;
  do
  {
    v226(v135, v134, v136);
    v137 = Contact.id.getter();
    v232 = v138;
    ContactAttributeSiriMatchesResolutionResult = v137;
    v139 = v224;
    PersonNameComponents.init()();
    Contact.namePrefix.getter();
    PersonNameComponents.namePrefix.setter();
    Contact.givenName.getter();
    PersonNameComponents.givenName.setter();
    Contact.middleName.getter();
    PersonNameComponents.middleName.setter();
    Contact.familyName.getter();
    PersonNameComponents.familyName.setter();
    Contact.nameSuffix.getter();
    PersonNameComponents.nameSuffix.setter();
    v140 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v141 = [v219 localizedStringFromPersonNameComponents:v140 style:2 options:0];

    v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v144 = v143;

    (*v217)(v139, v225);
    v231(v135, v136);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      v39 = v149;
    }

    v146 = v39[2];
    v145 = v39[3];
    if (v146 >= v145 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v145 > 1, v146 + 1, 1, v39);
      v39 = v150;
    }

    v39[2] = v146 + 1;
    v147 = &v39[4 * v146];
    v148 = v232;
    v147[4] = ContactAttributeSiriMatchesResolutionResult;
    v147[5] = v148;
    v147[6] = v142;
    v147[7] = v144;
    v134 += v218;
    --a1;
  }

  while (a1);

  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v235 = v154;
    *v153 = 136315394;
    *(v153 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v204 | 0x8000000000000000, &v235);
    *(v153 + 12) = 2080;
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    v156 = MEMORY[0x26D5E2610](v39, v155);
    a1 = v157;
    v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v157, &v235);

    *(v153 + 14) = v158;
    _os_log_impl(&dword_26686A000, v151, v152, "[%s] Multiple recommendations returned. Returning disambiguation of %s.", v153, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5E3300](v154, -1, -1);
    MEMORY[0x26D5E3300](v153, -1, -1);
  }

  v159 = MEMORY[0x277D84F90];
  v160 = 0;
  v235 = MEMORY[0x277D84F90];
  v37 = v39[2];
  v25 = v39 + 7;
  v161 = v221;
  while (v37 != v160)
  {
    if (v160 >= v39[2])
    {
      goto LABEL_86;
    }

    v163 = *(v25 - 1);
    v162 = *v25;
    v165 = *(v25 - 3);
    v164 = *(v25 - 2);
    a1 = type metadata accessor for SiriMatch();

    SiriMatch.__allocating_init(identifier:fullName:)(v165, v164, v163, v162);
    MEMORY[0x26D5E25E0]();
    if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v159 = v235;
    v25 += 4;
    ++v160;
  }

  type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
  static SiriMatchResolutionResult.disambiguation(with:)(v159);

  (v214)(v222, v216);
  (*(v206 + 8))(v220, v207);
  v231(v161, v234);
}

uint64_t specialized BaseIntentHandler.resolveSiriMatches(for:)(void *a1)
{
  v5 = specialized BaseIntentHandler.needsMeCard(_:)(a1);
  ContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5 = _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA010GetContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5(v5 & 1);
  if (ContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5)
  {
    v7 = ContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    *(v8 + 32) = v7;
    return v8;
  }

  type metadata accessor for GetContactSiriMatchesResolutionResult();
  if (specialized SiriKitContactIntent.me.getter())
  {
    v9 = specialized BaseIntentHandler.meCard.getter();
    if (v9)
    {
      v10 = v9;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v11, static Logger.siriContacts);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_31(v13))
      {
        OUTLINED_FUNCTION_24();
        v50[0] = OUTLINED_FUNCTION_1_33();
        *v3 = 136315138;
        OUTLINED_FUNCTION_7_20();
        *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v14, v15);
        OUTLINED_FUNCTION_10_23(&dword_26686A000, v16, v17, "[%s] Returning MeCard as siriMatch. Contact resolution not needed.");
        OUTLINED_FUNCTION_10_27();
        OUTLINED_FUNCTION_3_22();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      OUTLINED_FUNCTION_6_27();
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_64_2(v8, xmmword_266966A40);
      type metadata accessor for SiriMatch();
      v18 = [v10 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = CNContact.formattedFullName.getter();
      v21 = OUTLINED_FUNCTION_55_5(v19, v20);
      v22 = static SiriMatchResolutionResult.success(with:)(v21);

      *(v8 + 32) = v22;
      return v8;
    }
  }

  outlined bridged method (pb) of @objc GetContactIntent.contactIdentifier.getter(a1);
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    specialized BaseIntentHandler.resolveContacts(intent:)(a1);
LABEL_19:
    *(v8 + 32) = v36;
    return v8;
  }

  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v50);
  v24 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v25 = OUTLINED_FUNCTION_33_7();
  v27 = v26(v25);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v50);
LABEL_13:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v28, static Logger.siriContacts);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_16(v30))
    {
      v31 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_4();
      *v31 = 136315138;
      OUTLINED_FUNCTION_7_20();
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v32, v33);
      OUTLINED_FUNCTION_24_11(&dword_26686A000, v34, v35, "[%s] Received raw contact identifier but could not map it to a contact on the device. Entering needsValue state to prompt for contact.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    v36 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_19;
  }

  v38 = v27;
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  if (!v38)
  {

    goto LABEL_13;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v39 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v39, static Logger.siriContacts);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_13_16(v41))
  {
    OUTLINED_FUNCTION_24();
    v50[0] = OUTLINED_FUNCTION_23_13();
    *v24 = 136315138;
    OUTLINED_FUNCTION_7_20();
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v42, v43);
    OUTLINED_FUNCTION_72_1(&dword_26686A000, v44, v45, "[%s] Received raw contact identifier, returning this as siriMatch. Contact resolution not needed.");
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_17_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_6_27();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266966A40;
  v46 = [v38 fullName];
  if (v46)
  {
    v47 = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_30_3();
  }

  type metadata accessor for SiriMatch();
  v48 = OUTLINED_FUNCTION_49_5();
  v49 = static SiriMatchResolutionResult.success(with:)(v48);

  *(v8 + 32) = v49;
  return v8;
}

{
  v5 = specialized BaseIntentHandler.needsMeCard(_:)(a1);
  ContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5 = _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA019GetContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5(v5 & 1);
  if (ContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5)
  {
    v7 = ContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    *(v8 + 32) = v7;
    return v8;
  }

  type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
  if (specialized SiriKitContactIntent.me.getter())
  {
    v9 = specialized BaseIntentHandler.meCard.getter();
    if (v9)
    {
      v10 = v9;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v11, static Logger.siriContacts);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_31(v13))
      {
        OUTLINED_FUNCTION_24();
        v50[0] = OUTLINED_FUNCTION_1_33();
        *v3 = 136315138;
        OUTLINED_FUNCTION_7_20();
        *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v14, v15);
        OUTLINED_FUNCTION_10_23(&dword_26686A000, v16, v17, "[%s] Returning MeCard as siriMatch. Contact resolution not needed.");
        OUTLINED_FUNCTION_10_27();
        OUTLINED_FUNCTION_3_22();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      OUTLINED_FUNCTION_6_27();
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_64_2(v8, xmmword_266966A40);
      type metadata accessor for SiriMatch();
      v18 = [v10 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = CNContact.formattedFullName.getter();
      v21 = OUTLINED_FUNCTION_55_5(v19, v20);
      v22 = static SiriMatchResolutionResult.success(with:)(v21);

      *(v8 + 32) = v22;
      return v8;
    }
  }

  outlined bridged method (pb) of @objc GetContactIntent.contactIdentifier.getter(a1);
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    specialized BaseIntentHandler.resolveContacts(intent:)(a1);
LABEL_19:
    *(v8 + 32) = v36;
    return v8;
  }

  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v50);
  v24 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v25 = OUTLINED_FUNCTION_33_7();
  v27 = v26(v25);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v50);
LABEL_13:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v28, static Logger.siriContacts);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_16(v30))
    {
      v31 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_4();
      *v31 = 136315138;
      OUTLINED_FUNCTION_7_20();
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v32, v33);
      OUTLINED_FUNCTION_24_11(&dword_26686A000, v34, v35, "[%s] Received raw contact identifier but could not map it to a contact on the device. Entering needsValue state to prompt for contact.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    v36 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_19;
  }

  v38 = v27;
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  if (!v38)
  {

    goto LABEL_13;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v39 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v39, static Logger.siriContacts);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_13_16(v41))
  {
    OUTLINED_FUNCTION_24();
    v50[0] = OUTLINED_FUNCTION_23_13();
    *v24 = 136315138;
    OUTLINED_FUNCTION_7_20();
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v42, v43);
    OUTLINED_FUNCTION_72_1(&dword_26686A000, v44, v45, "[%s] Received raw contact identifier, returning this as siriMatch. Contact resolution not needed.");
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_17_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_6_27();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266966A40;
  v46 = [v38 fullName];
  if (v46)
  {
    v47 = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_30_3();
  }

  type metadata accessor for SiriMatch();
  v48 = OUTLINED_FUNCTION_49_5();
  v49 = static SiriMatchResolutionResult.success(with:)(v48);

  *(v8 + 32) = v49;
  return v8;
}

{
  v3 = specialized BaseIntentHandler.needsMeCard(_:)(a1);
  v4 = _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA022ModifyContactAttributeE0C_AA0qrsE8ResponseCAA0qrs7Relateda7MatchesoP0CAOTtg5Tm(v3 & 1, type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult);
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_266966A40;
    *(v6 + 32) = v5;
    return v6;
  }

  type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
  if (specialized SiriKitContactIntent.me.getter())
  {
    v7 = specialized BaseIntentHandler.meCard.getter();
    if (v7)
    {
      v8 = v7;
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.siriContacts);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v49[0] = v13;
        *v12 = 136315138;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, v49);
        _os_log_impl(&dword_26686A000, v10, v11, "[%s] Returning MeCard as siriMatch. Contact resolution not needed.", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x26D5E3300](v13, -1, -1);
        MEMORY[0x26D5E3300](v12, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_266966A40;
      type metadata accessor for SiriMatch();
      v14 = [v8 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = CNContact.formattedFullName.getter();
      v20 = SiriMatch.__allocating_init(identifier:fullName:)(v15, v17, v18, v19);
      v21 = static SiriMatchResolutionResult.success(with:)(v20);

      *(v6 + 32) = v21;
      return v6;
    }
  }

  v22 = ModifyContactAttributeIntent.contactIdentifier.getter();
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_266966A40;
    specialized BaseIntentHandler.resolveContacts(intent:)(a1);
LABEL_18:
    *(v6 + 32) = v33;
    return v6;
  }

  v24 = v22;
  v25 = v23;
  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v49);
  v26 = v50;
  v27 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v35 = (*(v27 + 8))(v24, v25, v26, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  if (!v35)
  {

    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriContacts);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, v49);
      _os_log_impl(&dword_26686A000, v29, v30, "[%s] Received raw contact identifier but could not map it to a contact on the device. Entering needsValue state to prompt for contact.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x26D5E3300](v32, -1, -1);
      MEMORY[0x26D5E3300](v31, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_266966A40;
    v33 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_18;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.siriContacts);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v49[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, v49);
    _os_log_impl(&dword_26686A000, v37, v38, "[%s] Received raw contact identifier, returning this as siriMatch. Contact resolution not needed.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x26D5E3300](v40, -1, -1);
    MEMORY[0x26D5E3300](v39, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266966A40;
  v41 = [v35 fullName];
  if (v41)
  {
    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = static String.EMPTY.getter();
    v45 = v46;
  }

  type metadata accessor for SiriMatch();
  v47 = SiriMatch.__allocating_init(identifier:fullName:)(v24, v25, v43, v45);
  v48 = static SiriMatchResolutionResult.success(with:)(v47);

  *(v6 + 32) = v48;
  return v6;
}

uint64_t specialized BaseIntentHandler.needsMeCard(_:)(uint64_t a1)
{
  swift_getObjectType();
  dynamic_cast_existential_1_unconditional(a1);
  v3 = v2;
  if (specialized SiriKitContactIntent.me.getter())
  {
    return 1;
  }

  ObjectType = swift_getObjectType();
  (*(v3 + 16))(ObjectType, v3);
  if (v5)
  {

    return 1;
  }

  return 0;
}

uint64_t specialized BaseIntentHandler.needsMeCard(_:)(void *a1)
{
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(a1))
  {
    return 1;
  }

  v3 = v2;
  v4 = a1;
  if (specialized SiriKitContactIntent.me.getter())
  {

    return 1;
  }

  ObjectType = swift_getObjectType();
  (*(v3 + 16))(ObjectType, v3);
  v7 = v6;

  if (v7)
  {

    return 1;
  }

  return 0;
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

uint64_t ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)()
{
  OUTLINED_FUNCTION_4();
  if ([*(v0 + 16) contactAttributeToModify] == 10)
  {
    v1 = [*(v0 + 16) relatedContact];
    if (v1)
    {
      v2 = *(v0 + 16);
      v3 = *(v0 + 24);

      specialized BaseIntentHandler.resolveSiriMatches(for:)(v2);
      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_64_2(v4, xmmword_266966A40);
    type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
    v5 = [swift_getObjCClassFromMetadata() needsValue];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_64_2(v4, xmmword_266966A40);
    type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
    v5 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v4[2].n128_u64[0] = v5;
LABEL_7:
  v6 = OUTLINED_FUNCTION_30_9();

  return v7(v6);
}

uint64_t @objc ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)(void *a1, int a2, void *a3, void *aBlock)
{
  return @objc ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)(a1, a2, a3, aBlock);
}

{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_27();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_26_3();

  return _runTaskForBridgedAsyncMethod(_:)(v10, v11);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:);

  return ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)(v6);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v3)[2](v3, isa);

  _Block_release(v3);
  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Signpost.OpenSignpost();
  v1[4] = v3;
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v242 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_118:
    OUTLINED_FUNCTION_30_2();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_61_3();
  if ([v3 contactAttributeToModify] != 10)
  {
    OUTLINED_FUNCTION_70_2();
    if (!v99)
    {
      goto LABEL_121;
    }

    goto LABEL_8;
  }

  if ((*(*(v0 + 24) + direct field offset for BaseIntentHandler.passedPrereqs) & 1) == 0 && _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA022ModifyContactAttributeE0C_AA0qrsE8ResponseCAA0qrs7Relateda7MatchesoP0CAOTtg5Tm(1, type metadata accessor for ModifyContactAttributeModifyRelationshipResolutionResult))
  {
    v5 = *(v0 + 40);
    goto LABEL_102;
  }

  v232 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(*(v0 + 16));
  v235 = v21;
  if (!v21)
  {
    OUTLINED_FUNCTION_70_2();
    if (!v99)
    {
      OUTLINED_FUNCTION_2();
    }

    v76 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v76, static Logger.siriContacts);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_31(v78))
    {
      v79 = OUTLINED_FUNCTION_24();
      v80 = OUTLINED_FUNCTION_23();
      v241 = v80;
      *v79 = 136315138;
      *(v79 + 4) = OUTLINED_FUNCTION_8_22(v80, v81, v82, v83, v84, v85, v86, v87, v218, v222);
      OUTLINED_FUNCTION_4_25(&dword_26686A000, v88, v89, "[%s] modifyRelationship slot is empty, return needsValue to get value from user.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_11_1();
    }

    OUTLINED_FUNCTION_60_4();
    v20 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_42;
  }

  v22 = *(v0 + 24);
  v23 = specialized BaseIntentHandler.meCard.getter();
  object = &off_266966000;
  if (!v23)
  {
LABEL_96:
    OUTLINED_FUNCTION_70_2();
    if (!v99)
    {
LABEL_123:
      OUTLINED_FUNCTION_2();
    }

    v131 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v131, static Logger.siriContacts);

    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = OUTLINED_FUNCTION_33_2();
      v135 = swift_slowAlloc();
      v241 = v135;
      *v134 = *(object + 279);
      *(v134 + 4) = OUTLINED_FUNCTION_8_22(v135, v136, v137, v138, v139, v140, v141, v142, v218, v222);
      *(v134 + 12) = 2080;
      v143 = v232;
      *(v134 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v232, v235, &v241);
      _os_log_impl(&dword_26686A000, v132, v133, "[%s] Successfully resolved modifyRelationship: %s", v134, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v143 = v232;
    }

    OUTLINED_FUNCTION_60_4();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v145 = MEMORY[0x26D5E2470](v143, v235);

    [ObjCClassFromMetadata successWithResolvedString_];

    goto LABEL_102;
  }

  v25 = v23;
  v26 = *(v0 + 16);
  v27 = [v23 contactRelations];

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v26);
  if (!v30)
  {
    goto LABEL_94;
  }

  v31 = v30;
  v239 = v29;
  v32 = v30 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v30 & 0xC000000000000001) == 0, v30);
  v33 = v32 ? MEMORY[0x26D5E29D0](0, v31) : *(v31 + 32);
  v34 = v33;

  v35 = outlined bridged method (ob) of @objc SiriMatch.fullName.getter(v34);
  v229 = v36;
  if (!v36)
  {
LABEL_94:

    goto LABEL_96;
  }

  v236 = v35;
  OUTLINED_FUNCTION_70_2();
  if (!v99)
  {
    OUTLINED_FUNCTION_2();
  }

  v37 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v37, static Logger.siriContacts);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  v222 = v38;
  if (OUTLINED_FUNCTION_45_1())
  {
    v41 = OUTLINED_FUNCTION_33_2();
    v42 = swift_slowAlloc();
    v241 = v42;
    *v41 = 136315394;
    *(v41 + 4) = OUTLINED_FUNCTION_8_22(v42, v43, v44, v45, v46, v47, v48, v49, v218, v222);
    *(v41 + 12) = 2080;
    v50 = MEMORY[0x26D5E2610](v29, v28);
    object = v51;
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v241);

    *(v41 + 14) = v52;
    _os_log_impl(&dword_26686A000, v39, v40, "[%s] Existing contactRelations: %s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_6();
  }

  v226 = v4;
  if ([*(v0 + 16) modifyOperation] == 1)
  {
    v53 = v29;
    v54 = specialized Array._getCount()(v29);
    v55 = 0;
    v237 = v239 & 0xFFFFFFFFFFFFFF8;
    v238 = v239 & 0xC000000000000001;
    v56 = MEMORY[0x277D84F90];
    while (v54 != v55)
    {
      if (v238)
      {
        v57 = MEMORY[0x26D5E29D0](v55, v53);
      }

      else
      {
        if (v55 >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v57 = *(v53 + 8 * v55 + 32);
      }

      v58 = v57;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        OUTLINED_FUNCTION_2();
LABEL_8:
        v6 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v6, static Logger.siriContacts);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_31(v8))
        {
          v9 = OUTLINED_FUNCTION_24();
          v10 = OUTLINED_FUNCTION_23();
          v241 = v10;
          *v9 = 136315138;
          *(v9 + 4) = OUTLINED_FUNCTION_8_22(v10, v11, v12, v13, v14, v15, v16, v17, v218, v222);
          OUTLINED_FUNCTION_4_25(&dword_26686A000, v18, v19, "[%s] Since we're not modifying relationship, returning notRequired for modifyRelationship.");
          OUTLINED_FUNCTION_11_19();
          OUTLINED_FUNCTION_11_1();
        }

        OUTLINED_FUNCTION_60_4();
        v20 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_42:
        v90 = v20;
        goto LABEL_102;
      }

      v59 = [v57 label];
      if (v59)
      {
        v60 = v59;
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0;
      }

      v64 = static Dictionary<>.nlSemantic(forCNLabel:)(v61, v63);
      v66 = v65;

      v67 = [v58 value];
      v68 = [v67 name];

      object = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
        v56 = v74;
      }

      v72 = v56[2];
      v71 = v56[3];
      if (v72 >= v71 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1, v56);
        v56 = v75;
      }

      v56[2] = v72 + 1;
      v73 = &v56[4 * v72];
      v73[4] = v64;
      v73[5] = v66;
      v73[6] = object;
      v73[7] = v70;
      ++v55;
      v53 = v239;
    }

    v91 = v56[2];
    if (v91)
    {
      v92 = 0;
      v93 = v56 + 7;
      while (1)
      {
        if (v92 >= v56[2])
        {
          __break(1u);
          goto LABEL_123;
        }

        v95 = *(v93 - 3);
        v94 = *(v93 - 2);
        v96 = *(v93 - 1);
        v97 = *v93;
        v98 = String.lowercased()();
        object = v98._object;
        v99 = v95 == v98._countAndFlagsBits && v94 == v98._object;
        if (v99)
        {
          break;
        }

        v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v100)
        {
          goto LABEL_56;
        }

LABEL_61:
        ++v92;
        v93 += 4;
        if (v91 == v92)
        {

          v104 = v232;
          v103 = v235;
          v105 = v229;
          v53 = v239;
          goto LABEL_65;
        }
      }

LABEL_56:
      if (v96 == v236 && v229 == v97)
      {

LABEL_112:

        v187 = v229;

        v188 = Logger.logObject.getter();
        v189 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v188, v189))
        {
          v190 = OUTLINED_FUNCTION_23();
          v191 = swift_slowAlloc();
          v241 = v191;
          *v190 = 136315650;
          v192 = OUTLINED_FUNCTION_36_8(v191, 0x8000000266970710, &v241);
          v200 = OUTLINED_FUNCTION_52_5(v192, v193, v194, v195, v196, v197, v198, v199, v218, v222, v226, v229, v232);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v200, v235, v201);

          v210 = OUTLINED_FUNCTION_66_0(v202, v203, v204, v205, v206, v207, v208, v209, v221, v225, v228, v231, v234, v235, v236);
          v212 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v187, v211);

          *(v190 + 24) = v212;
          OUTLINED_FUNCTION_67_3();
          _os_log_impl(v213, v214, v215, v216, v217, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_17_12();
          OUTLINED_FUNCTION_5_32();
        }

        else
        {
        }

        OUTLINED_FUNCTION_60_4();
        static GetContactAttributeContactAttributeToGetResolutionResult.unsupported(forReason:)(1);
        static os_signpost_type_t.end.getter();
        goto LABEL_103;
      }

      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v102)
      {
        goto LABEL_112;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v53 = v29;
    v237 = v29 & 0xFFFFFFFFFFFFFF8;
    v238 = v29 & 0xC000000000000001;
  }

  v104 = v232;
  v103 = v235;
  v105 = v229;
LABEL_65:
  v241 = MEMORY[0x277D84F90];
  v106 = specialized Array._getCount()(v53);
  for (i = 0; v106 != i; ++i)
  {
    if (v238)
    {
      v108 = MEMORY[0x26D5E29D0](i, v53);
    }

    else
    {
      if (i >= *(v237 + 16))
      {
        goto LABEL_117;
      }

      v108 = *(v53 + 8 * i + 32);
    }

    v109 = v108;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v110 = [v108 label];
    if (v110)
    {
      v111 = v110;
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v113;
    }

    else
    {
      v112 = 0;
      v114 = 0;
    }

    v115 = static Dictionary<>.nlSemantic(forCNLabel:)(v112, v114);
    v117 = v116;

    if (v115 == v104 && v103 == v117)
    {
    }

    else
    {
      v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v119 & 1) == 0)
      {

        v53 = v239;
        continue;
      }
    }

    v120 = [v109 value];
    v121 = [v120 name];

    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;

    if (v122 == v236 && v105 == v124)
    {

      v53 = v239;
    }

    else
    {
      OUTLINED_FUNCTION_26_3();
      v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v53 = v239;
      if ((v126 & 1) == 0)
      {

        continue;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v127 = *(v241 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  v128 = *(v0 + 16);

  v129 = v241;
  if ([v128 modifyOperation] != 3)
  {

    object = &off_266966000;
    goto LABEL_96;
  }

  object = &off_266966000;
  if (v106)
  {
    v130 = specialized Array._getCount()(v129);

    if (v130)
    {
      goto LABEL_94;
    }
  }

  else
  {
  }

  v149 = v229;

  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = OUTLINED_FUNCTION_23();
    v240 = swift_slowAlloc();
    v241 = v240;
    *v152 = 136315650;
    v160 = OUTLINED_FUNCTION_8_22(v240, v153, v154, v155, v156, v157, v158, v159, v218, v222);
    v168 = OUTLINED_FUNCTION_52_5(v160, v161, v162, v163, v164, v165, v166, v167, v219, v223, v226, v229, v232);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v235, v169);

    v178 = OUTLINED_FUNCTION_66_0(v170, v171, v172, v173, v174, v175, v176, v177, v220, v224, v227, v230, v233, v235, v236);
    v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v149, v179);

    *(v152 + 24) = v180;
    OUTLINED_FUNCTION_67_3();
    _os_log_impl(v181, v182, v183, v184, v185, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5_32();
  }

  else
  {
  }

  OUTLINED_FUNCTION_60_4();
  v186 = OUTLINED_FUNCTION_69_3();
  static GetContactAttributeContactAttributeToGetResolutionResult.unsupported(forReason:)(v186);
LABEL_102:
  static os_signpost_type_t.end.getter();
LABEL_103:
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(*(v0 + 40));

  v146 = OUTLINED_FUNCTION_30_9();

  return v147(v146);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:);

  return ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)();
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  v10 = v5[2];
  v11 = OUTLINED_FUNCTION_26_3();
  v12(v11);
  _Block_release(v5);

  OUTLINED_FUNCTION_3();

  return v13();
}

uint64_t ModifyContactAttributeIntentHandler.resolveModifyNickName(for:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Signpost.OpenSignpost();
  v1[4] = v3;
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_63_2();
  if ([v3 contactAttributeToModify] != 6 || objc_msgSend(*(v0 + 16), sel_contactAttributeToModify) == 6 && OUTLINED_FUNCTION_79_2() == 3)
  {
    type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
    v5 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ((*(*(v0 + 24) + direct field offset for BaseIntentHandler.passedPrereqs) & 1) != 0 || !_s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA022ModifyContactAttributeE0C_AA0qrsE8ResponseCAA0qrs7Relateda7MatchesoP0CAOTtg5Tm(1, type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult))
  {
    v11 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(*(v0 + 16));
    if (!v12)
    {
      type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
      v5 = [swift_getObjCClassFromMetadata() needsValue];
      goto LABEL_7;
    }

    v13 = v11;
    v14 = v12;
    v15 = *(v0 + 24);
    v16 = specialized BaseIntentHandler.meCard.getter();
    if (!v16)
    {

      goto LABEL_26;
    }

    v17 = v16;
    v18 = [v16 nickname];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v13 == v19 && v14 == v21)
    {
    }

    else
    {
      v23 = OUTLINED_FUNCTION_58_3();

      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (OUTLINED_FUNCTION_79_2() == 1)
    {
      swift_bridgeObjectRelease_n();
      type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
      v24 = 1;
      goto LABEL_38;
    }

LABEL_26:
    v25 = *(v0 + 24);
    v26 = specialized BaseIntentHandler.meCard.getter();
    if (v26 && (v27 = v26, v28 = *(v0 + 24), v29 = [v26 nickname], v27, v29, (v30 = specialized BaseIntentHandler.meCard.getter()) != 0))
    {
      v31 = v30;
      v32 = [v30 nickname];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      if (v13 == v33 && v14 == v35)
      {

LABEL_40:
        type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v39 = MEMORY[0x26D5E2470](v13, v14);

        [ObjCClassFromMetadata successWithResolvedString_];

        goto LABEL_8;
      }

      v37 = OUTLINED_FUNCTION_58_3();

      if (v37)
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

    if (OUTLINED_FUNCTION_79_2() != 3 && OUTLINED_FUNCTION_79_2() != 2)
    {
      goto LABEL_40;
    }

    type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
    v24 = OUTLINED_FUNCTION_69_3();
LABEL_38:
    static GetContactSiriMatchesResolutionResult.unsupported(forReason:)(v24);
  }

LABEL_8:
  v7 = *(v0 + 40);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v7);

  v8 = OUTLINED_FUNCTION_30_9();

  return v9(v8);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:);

  return ModifyContactAttributeIntentHandler.resolveModifyNickName(for:)();
}

uint64_t ModifyContactAttributeIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v2 = type metadata accessor for Signpost.OpenSignpost();
  v0[3] = v2;
  OUTLINED_FUNCTION_18_0(v2);
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  v62 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_63_2();
  v5 = [v3 contactAttributeToModify];
  if (v5 == 6)
  {
    if ([*(v0 + 16) modifyOperation] == 3)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v23 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_29(v23, static Logger.siriContacts);
      v24 = v3;
      v25 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_59_5())
      {
        v26 = *(v0 + 16);
        OUTLINED_FUNCTION_33_2();
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_23_13();
        OUTLINED_FUNCTION_62_2();
        *v24 = 136315394;
        OUTLINED_FUNCTION_21_11();
        v29 = OUTLINED_FUNCTION_36_8(v27, v28, &v61);
        OUTLINED_FUNCTION_2_43(v29);
        MEMORY[0x1D] = v26;
        v30 = v26;
        OUTLINED_FUNCTION_20_11(&dword_26686A000, v31, v32, "[%s] Returning success for intent: %@");
        outlined destroy of UsoEntity_common_Person.DefinedValues?(29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_17_12();
        OUTLINED_FUNCTION_10_27();
        OUTLINED_FUNCTION_11_1();
      }

      v33 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
      v34 = 4;
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v46 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_29(v46, static Logger.siriContacts);
      v47 = v3;
      v48 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_59_5())
      {
        v49 = *(v0 + 16);
        OUTLINED_FUNCTION_33_2();
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_23_13();
        OUTLINED_FUNCTION_62_2();
        *v47 = 136315394;
        OUTLINED_FUNCTION_21_11();
        v52 = OUTLINED_FUNCTION_36_8(v50, v51, &v61);
        OUTLINED_FUNCTION_2_43(v52);
        MEMORY[0x1D] = v49;
        v53 = v49;
        OUTLINED_FUNCTION_20_11(&dword_26686A000, v54, v55, "[%s] Confirming intent for modifyNickname: %@");
        outlined destroy of UsoEntity_common_Person.DefinedValues?(29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_17_12();
        OUTLINED_FUNCTION_10_27();
        OUTLINED_FUNCTION_11_1();
      }

      v56 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
      v34 = 1;
    }

    goto LABEL_29;
  }

  if (v5 != 10)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v35 = OUTLINED_FUNCTION_77_2();
    OUTLINED_FUNCTION_29(v35, static Logger.siriContacts);
    v36 = v3;
    v37 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_59_5())
    {
      v38 = *(v0 + 16);
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_23_13();
      OUTLINED_FUNCTION_62_2();
      *v36 = 136315394;
      OUTLINED_FUNCTION_21_11();
      v41 = OUTLINED_FUNCTION_36_8(v39, v40, &v61);
      OUTLINED_FUNCTION_2_43(v41);
      MEMORY[0x1D] = v38;
      v42 = v38;
      OUTLINED_FUNCTION_20_11(&dword_26686A000, v43, v44, "[%s] Returning continueInApp for intent: %@");
      outlined destroy of UsoEntity_common_Person.DefinedValues?(29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_10_27();
      OUTLINED_FUNCTION_11_1();
    }

    v45 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
    v34 = OUTLINED_FUNCTION_69_3();
LABEL_29:
    ModifyContactAttributeIntentResponse.init(code:userActivity:)(v34, 0);
    goto LABEL_32;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v6 = OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_29(v6, static Logger.siriContacts);
  v7 = v3;
  v8 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_59_5())
  {
    v9 = *(v0 + 16);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_15_16();
    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_62_2();
    *v7 = 136315394;
    OUTLINED_FUNCTION_21_11();
    v12 = OUTLINED_FUNCTION_36_8(v10, v11, &v61);
    OUTLINED_FUNCTION_2_43(v12);
    MEMORY[0x1D] = v9;
    v13 = v9;
    OUTLINED_FUNCTION_20_11(&dword_26686A000, v14, v15, "[%s] Confirming intent for modifyRelationship: %@");
    outlined destroy of UsoEntity_common_Person.DefinedValues?(29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_10_27();
    OUTLINED_FUNCTION_11_1();
  }

  v16 = *(v0 + 16);
  outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v16);
  OUTLINED_FUNCTION_30_3();
  v17 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v16);
  v18 = v17;
  if (v17)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v17 & 0xC000000000000001) == 0, v17);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D5E29D0](0, v18);
    }

    else
    {
      v19 = *(v18 + 32);
    }

    v20 = v19;

    v18 = outlined bridged method (ob) of @objc SiriMatch.fullName.getter(v20);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  type metadata accessor for ModifyContactAttributeIntentResponse();
  ModifyContactAttributeIntentResponse.__allocating_init(relationshipLabel:contactName:code:)(v8, v7, v18, v22, 1);
LABEL_32:
  v57 = *(v0 + 32);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v57);

  v58 = OUTLINED_FUNCTION_30_9();

  return v59(v58);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.confirm(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:);

  return ModifyContactAttributeIntentHandler.confirm(intent:)();
}

uint64_t ModifyContactAttributeIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_4();
  v1[23] = v2;
  v1[24] = v0;
  v3 = type metadata accessor for Signpost.OpenSignpost();
  v1[25] = v3;
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v1[26] = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v117 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v4 = "HandleModifyContactAttribute";
  v5 = 2;
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_61_3();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v6 = *(v0 + 184);
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriContacts);
  v8 = v6;
  v9 = OUTLINED_FUNCTION_57_3();
  v10 = static os_log_type_t.debug.getter();

  v11 = &off_266966000;
  if (OUTLINED_FUNCTION_59_5())
  {
    v12 = *(v0 + 184);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_15_16();
    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_50_6();
    *"HandleModifyContactAttribute" = 136315394;
    v13 = OUTLINED_FUNCTION_6_31("ortedValueOutput", v113, v114, v115);
    OUTLINED_FUNCTION_4_30(v13);
    *"ntactAttribute" = v12;
    MEMORY[2] = v12;
    v14 = v12;
    v11 = &off_266966000;
    OUTLINED_FUNCTION_20_11(&dword_26686A000, v15, v16, "[%s] Handling intent: %@");
    outlined destroy of UsoEntity_common_Person.DefinedValues?(2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_11_1();
  }

  v17 = *(v0 + 192);
  v18 = specialized BaseIntentHandler.meCard.getter();
  if (!v18)
  {
    v40 = *(v0 + 208);
    v41 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
    v42 = OUTLINED_FUNCTION_69_3();
    v5 = ModifyContactAttributeIntentResponse.init(code:userActivity:)(v42, 0);
    goto LABEL_49;
  }

  v19 = v18;
  v20 = &selRef_isoCountryCode;
  v21 = [*(v0 + 184) contactAttributeToModify];
  v22 = *(v0 + 184);
  if (v21 != 6)
  {
    if (v21 != 10)
    {
      v53 = v22;
      v54 = OUTLINED_FUNCTION_57_3();
      v55 = static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_45_1())
      {
        v56 = *(v0 + 184);
        v57 = OUTLINED_FUNCTION_33_2();
        swift_slowAlloc();
        OUTLINED_FUNCTION_37_7();
        *v57 = *(v11 + 279);
        *(v57 + 4) = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v113, v114, v115);
        *(v57 + 12) = 2080;
        *(v0 + 176) = [v56 contactAttributeToModify];
        v58 = String.init<A>(describing:)();
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v116);

        *(v57 + 14) = v60;
        OUTLINED_FUNCTION_22_12(&dword_26686A000, v61, v55, "[%s] Unsupported attribute requested to be modified: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_17_12();
        OUTLINED_FUNCTION_11_1();
      }

      v62 = objc_allocWithZone(OUTLINED_FUNCTION_76_1());
      v63 = 100;
      goto LABEL_48;
    }

    v23 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v22);
    if (v24)
    {
      v20 = v23;
      v5 = v24;
      v25 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(*(v0 + 184));
      if (v25)
      {
        v26 = v25;
        v27 = v25 & 0xC000000000000001;
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v25 & 0xC000000000000001) == 0, v25);
        v28 = v27 ? MEMORY[0x26D5E29D0](0, v26) : *(v26 + 32);
        v4 = v28;

        outlined bridged method (ob) of @objc SiriMatch.fullName.getter(v4);
        if (v29)
        {
          v30 = [*(v0 + 184) modifyOperation];
          if ((v30 - 1) < 2)
          {
            outlined init with copy of DeviceState(*(v0 + 192) + direct field offset for BaseIntentHandler.contactService, v0 + 136);
            v31 = v19;
            v32 = *(v0 + 168);
            __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
            v33 = v32[6];
            v34 = OUTLINED_FUNCTION_43_6();
            v35(v34);

            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
            v36 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
            v37 = OUTLINED_FUNCTION_56_4();
            v38 = OUTLINED_FUNCTION_75_1();
            v39 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v38, v39))
            {
              goto LABEL_36;
            }

            goto LABEL_37;
          }

          if (v30 == 3)
          {
            outlined init with copy of DeviceState(*(v0 + 192) + direct field offset for BaseIntentHandler.contactService, v0 + 96);
            v31 = v19;
            v32 = *(v0 + 120);
            v79 = *(v0 + 128);
            __swift_project_boxed_opaque_existential_1((v0 + 96), v32);
            v80 = *(v79 + 56);
            v81 = OUTLINED_FUNCTION_43_6();
            v82(v81);

            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
            v83 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
            v84 = OUTLINED_FUNCTION_56_4();
            v38 = OUTLINED_FUNCTION_75_1();
            v85 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v38, v85))
            {
LABEL_36:
              v86 = OUTLINED_FUNCTION_33_2();
              OUTLINED_FUNCTION_40_3();
              v87 = OUTLINED_FUNCTION_1_33();
              v116 = v87;
              *v86 = 136315394;
              v88 = OUTLINED_FUNCTION_6_31("ortedValueOutput", v113, v114, v115);
              OUTLINED_FUNCTION_29_11(v88);
              *(v86 + 14) = v5;
              *v32 = v5;
              v89 = v5;
              OUTLINED_FUNCTION_67_3();
              _os_log_impl(v90, v91, v92, v93, v94, 0x16u);
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              OUTLINED_FUNCTION_3_22();
              __swift_destroy_boxed_opaque_existential_0Tm(v87);
              OUTLINED_FUNCTION_6();
              OUTLINED_FUNCTION_5_32();
            }

LABEL_37:

            v112 = *(v0 + 208);
            goto LABEL_49;
          }

          v105 = *(v0 + 184);

          v106 = v105;
          v67 = OUTLINED_FUNCTION_57_3();
          v68 = static os_log_type_t.error.getter();

          if (!OUTLINED_FUNCTION_45_1())
          {
            goto LABEL_47;
          }

          OUTLINED_FUNCTION_25_11();
          OUTLINED_FUNCTION_15_16();
          OUTLINED_FUNCTION_1_33();
          OUTLINED_FUNCTION_37_7();
          *v4 = 136315394;
          v107 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v113, v114, v115);
          OUTLINED_FUNCTION_2_43(v107);
          *v10 = v20;
          v108 = v20;
          v72 = "[%s] Unknown modifyOperation received in modifyRelationship intent, returning failure: %@";
          goto LABEL_46;
        }
      }
    }

    v66 = *(v0 + 184);
    v67 = OUTLINED_FUNCTION_57_3();
    v68 = static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_45_1())
    {
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_37_7();
      *v4 = *(v11 + 279);
      v69 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v113, v114, v115);
      OUTLINED_FUNCTION_2_43(v69);
      *v10 = v20;
      v70 = v20;
      v72 = "[%s] Didn't resolve modifyRelationship and/or fullName for intent, returning failure: %@";
LABEL_46:
      OUTLINED_FUNCTION_22_12(&dword_26686A000, v71, v68, v72);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_3_22();
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_11_1();
      goto LABEL_47;
    }

    goto LABEL_47;
  }

  v43 = [v22 modifyOperation];
  if ((v43 - 1) >= 2)
  {
    if (v43 != 3)
    {
      v73 = *(v0 + 184);
      v67 = OUTLINED_FUNCTION_57_3();
      v68 = static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_45_1())
      {
        OUTLINED_FUNCTION_25_11();
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_37_7();
        *"HandleModifyContactAttribute" = *(v11 + 279);
        v74 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v113, v114, v115);
        OUTLINED_FUNCTION_2_43(v74);
        *v10 = &selRef_isoCountryCode;
        v75 = &selRef_isoCountryCode;
        v72 = "[%s] Unknown modifyOperation received in modifyNickname intent, returning failure: %@";
        goto LABEL_46;
      }

LABEL_47:

      v109 = objc_allocWithZone(OUTLINED_FUNCTION_76_1());
      v63 = 5;
      goto LABEL_48;
    }

    outlined init with copy of DeviceState(*(v0 + 192) + direct field offset for BaseIntentHandler.contactService, v0 + 16);
    v48 = *(v0 + 40);
    v47 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v48);
    (*(v47 + 40))(v19, v48, v47);
    v64 = *(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v65 = v64;
    v52 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_45_1())
    {
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_37_7();
      MEMORY[0] = *(v11 + 279);
      v102 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v113, v114, v115);
      OUTLINED_FUNCTION_2_43(v102);
      *v48 = v65;
      v103 = v65;
      v100 = "[%s] Delete nickname complete for intent, returning success: %@";
      goto LABEL_42;
    }
  }

  else
  {
    v44 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(*(v0 + 184));
    if (!v45)
    {
      v76 = *(v0 + 184);
      v67 = OUTLINED_FUNCTION_57_3();
      v68 = static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_45_1())
      {
        OUTLINED_FUNCTION_25_11();
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_37_7();
        *"HandleModifyContactAttribute" = *(v11 + 279);
        v77 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v113, v114, v115);
        OUTLINED_FUNCTION_2_43(v77);
        *v10 = &selRef_isoCountryCode;
        v78 = &selRef_isoCountryCode;
        v72 = "[%s] Didn't resolve modifyNickName for intent, returning failure: %@";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v46 = v44;
    v47 = v45;
    outlined init with copy of DeviceState(*(v0 + 192) + direct field offset for BaseIntentHandler.contactService, v0 + 56);
    v48 = *(v0 + 80);
    v49 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v48);
    (*(v49 + 32))(v46, v47, v19, v48, v49);
    v50 = *(v0 + 184);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v51 = v50;
    v52 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_45_1())
    {
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_37_7();
      MEMORY[0] = *(v11 + 279);
      v97 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v113, v114, v115);
      OUTLINED_FUNCTION_2_43(v97);
      *v48 = v51;
      v98 = v51;
      v100 = "[%s] Add nickname complete for intent, returning success: %@";
LABEL_42:
      OUTLINED_FUNCTION_22_12(&dword_26686A000, v99, v95, v100);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_3_22();
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_11_1();
    }
  }

  v104 = objc_allocWithZone(OUTLINED_FUNCTION_76_1());
  v63 = 4;
LABEL_48:
  v5 = ModifyContactAttributeIntentResponse.init(code:userActivity:)(v63, 0);

LABEL_49:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(*(v0 + 208));

  v110 = *(v0 + 8);

  return v110(v5);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.handle(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:);

  return ModifyContactAttributeIntentHandler.handle(intent:)();
}

id ModifyContactAttributeIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModifyContactAttributeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ModifyContactAttributeIntentHandler()
{
  result = type metadata singleton initialization cache for ModifyContactAttributeIntentHandler;
  if (!type metadata singleton initialization cache for ModifyContactAttributeIntentHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of TaskPriority?(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of UsoEntity_common_Person.DefinedValues?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  OUTLINED_FUNCTION_3();

  return v5();
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(void *a1)
{
  v1 = [a1 modifyNickName];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_26_3();
}

uint64_t outlined bridged method (ob) of @objc SiriMatch.fullName.getter(void *a1)
{
  v2 = [a1 fullName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id outlined copy of CNContact??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_10(v5);
  *v6 = v7;
  v6[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return _sIeghH_IeAgH_TR(v1, v2, v4);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_10(v7);
  *v8 = v9;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return _sIeAgH_ytIeAgHr_TR(a1, v3, v4, v6);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_10(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_38_4(v4);

  return v7(v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_34()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_10(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_38_4(v4);

  return v7(v6);
}

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

id specialized ModifyContactAttributeIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29 - v17;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v16);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v29 - v25;
  (*(v20 + 32))(&v29 - v25);
  (*(v11 + 32))(v18, a2, a5);
  (*(v20 + 16))(v24, v26, a4);
  (*(v11 + 16))(v15, v18, a5);
  v27 = specialized BaseIntentHandler.init(contactService:contactResolver:)(v24, v15, a3, a4, a5, v29, v30);
  (*(v11 + 8))(v18, a5);
  (*(v20 + 8))(v26, a4);
  return v27;
}

uint64_t OUTLINED_FUNCTION_2_43(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_36@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_6_31@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, a1 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_8_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, (v10 - 32) | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_10_27()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D5E3300);
}

void OUTLINED_FUNCTION_11_19()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D5E3300);
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_17_12()
{

  JUMPOUT(0x26D5E3300);
}

void OUTLINED_FUNCTION_18_13()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D5E3300);
}

void OUTLINED_FUNCTION_20_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_22_12(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_23_13()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_24_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_25_11()
{
  v2 = *(v0 + 184);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_11(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_38_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_45_1()
{

  return os_log_type_enabled(v0, v1);
}

char *OUTLINED_FUNCTION_48_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return ModifyContactAttributeIntentResponse.__allocating_init(relationshipLabel:contactName:code:)(v11, v10, a10, v12, 4);
}

id OUTLINED_FUNCTION_49_5()
{

  return SiriMatch.__allocating_init(identifier:fullName:)(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_52_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 4) = a1;
  *(v13 + 12) = 2080;
  return a13;
}

id OUTLINED_FUNCTION_55_5(uint64_t a1, uint64_t a2)
{

  return SiriMatch.__allocating_init(identifier:fullName:)(v2, v3, a1, a2);
}

char *OUTLINED_FUNCTION_56_4()
{

  return ModifyContactAttributeIntentResponse.init(code:userActivity:)(5, 0);
}

uint64_t OUTLINED_FUNCTION_57_3()
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL OUTLINED_FUNCTION_59_5()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_60_4()
{
  v2 = *(v0 + 40);

  return type metadata accessor for ModifyContactAttributeModifyRelationshipResolutionResult();
}

void OUTLINED_FUNCTION_61_3()
{
  v5 = v0 + *(v2 + 20);
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

void OUTLINED_FUNCTION_63_2()
{
  v5 = v0 + *(v2 + 20);
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 + 14) = v15;
  *(v16 + 22) = v17;
  return a15;
}

void OUTLINED_FUNCTION_72_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_76_1()
{
  v2 = *(v0 + 208);

  return type metadata accessor for ModifyContactAttributeIntentResponse();
}

uint64_t OUTLINED_FUNCTION_77_2()
{
  v2 = *(v0 + 16);

  return type metadata accessor for Logger();
}

id OUTLINED_FUNCTION_79_2()
{
  v3 = *(v0 + 16);

  return [v3 (v1 + 2166)];
}

uint64_t FlowFactory.__allocating_init(referenceResolver:deviceState:commonCATs:modifyAttributeCATs:sirikitEventSender:)()
{
  OUTLINED_FUNCTION_63_3();
  v0 = swift_allocObject();
  FlowFactory.init(referenceResolver:deviceState:commonCATs:modifyAttributeCATs:sirikitEventSender:)();
  return v0;
}

uint64_t FlowFactory.init(referenceResolver:deviceState:commonCATs:modifyAttributeCATs:sirikitEventSender:)()
{
  OUTLINED_FUNCTION_63_3();
  outlined init with take of DeviceState(v5, v1 + 72);
  outlined init with take of DeviceState(v4, v1 + 16);
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;
  outlined init with take of DeviceState(v0, v1 + 112);
  return v1;
}

uint64_t FlowFactory.makeGetContactFlow(intent:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents16GetContactIntentCAD0ijK8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents16GetContactIntentCAD0ijK8ResponseCGMR);
  OUTLINED_FUNCTION_18_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_42_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents010GetContactC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents010GetContactC8StrategyCGMR);
  OUTLINED_FUNCTION_3_29(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_14();
  type metadata accessor for GetContactFlowStrategy(0);
  v8 = OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_33_8(v8);
  FlowFactory.getContactFlowProducers()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents16GetContactIntentCAD0hiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents16GetContactIntentCAD0hiJ8ResponseCGMR);
  OUTLINED_FUNCTION_2_6(v9);
  RCHChildFlowFactory.init(producers:)();
  ContactFlow = lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>, type metadata accessor for GetContactFlowStrategy);
  OUTLINED_FUNCTION_22_13(ContactFlow);
  type metadata accessor for App();
  v11 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_34_7(v11);

  v12 = OUTLINED_FUNCTION_40_4();
  v13(v12);
  v14 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_2_44(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<GetContactIntent, GetContactIntentResponse>> and conformance AnyValueFlow<A>);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_72_2();
  return OUTLINED_FUNCTION_62_3();
}

uint64_t FlowFactory.makeGetContactAttributeFlow(intent:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents25GetContactAttributeIntentCAD0ijkL8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents25GetContactAttributeIntentCAD0ijkL8ResponseCGMR);
  OUTLINED_FUNCTION_18_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_42_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents019GetContactAttributeC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents019GetContactAttributeC8StrategyCGMR);
  OUTLINED_FUNCTION_3_29(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_14();
  type metadata accessor for GetContactAttributeFlowStrategy(0);
  v8 = OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_33_8(v8);
  FlowFactory.getContactAttributeFlowProducers()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents25GetContactAttributeIntentCAD0hijK8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents25GetContactAttributeIntentCAD0hijK8ResponseCGMR);
  OUTLINED_FUNCTION_2_6(v9);
  RCHChildFlowFactory.init(producers:)();
  ContactFlow = lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeFlowStrategy and conformance ContactsFlowStrategy<A, B>, type metadata accessor for GetContactAttributeFlowStrategy);
  OUTLINED_FUNCTION_22_13(ContactFlow);
  type metadata accessor for App();
  v11 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_34_7(v11);

  v12 = OUTLINED_FUNCTION_40_4();
  v13(v12);
  v14 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_2_44(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<GetContactAttributeIntent, GetContactAttributeIntentResponse>> and conformance AnyValueFlow<A>);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_72_2();
  return OUTLINED_FUNCTION_62_3();
}

uint64_t FlowFactory.makeModifyContactAttributeFlow(intent:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents28ModifyContactAttributeIntentCAD0ijkL8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents28ModifyContactAttributeIntentCAD0ijkL8ResponseCGMR);
  OUTLINED_FUNCTION_18_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_42_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents022ModifyContactAttributeC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents022ModifyContactAttributeC8StrategyCGMR);
  OUTLINED_FUNCTION_3_29(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_14();
  type metadata accessor for ModifyContactAttributeFlowStrategy(0);
  v8 = OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_33_8(v8);
  FlowFactory.modifyContactAttributeFlowProducers()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents28ModifyContactAttributeIntentCAD0hijK8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents28ModifyContactAttributeIntentCAD0hijK8ResponseCGMR);
  OUTLINED_FUNCTION_2_6(v9);
  RCHChildFlowFactory.init(producers:)();
  ContactFlow = lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeFlowStrategy and conformance ContactsFlowStrategy<A, B>, type metadata accessor for ModifyContactAttributeFlowStrategy);
  OUTLINED_FUNCTION_22_13(ContactFlow);
  type metadata accessor for App();
  v11 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_34_7(v11);

  v12 = OUTLINED_FUNCTION_40_4();
  v13(v12);
  v14 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_2_44(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<ModifyContactAttributeIntent, ModifyContactAttributeIntentResponse>> and conformance AnyValueFlow<A>);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_72_2();
  return OUTLINED_FUNCTION_62_3();
}

uint64_t FlowFactory.makeUnsupportedLearnPronunciationFlow()()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[3] = v2;
  OUTLINED_FUNCTION_1_1(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(v0[2] + 56);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = FlowFactory.makeUnsupportedLearnPronunciationFlow();
  v3 = v0[5];

  return ContactsCommonCATs.unsupportedLearnPronunciation()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = FlowFactory.makeUnsupportedLearnPronunciationFlow();
  }

  else
  {
    v9 = FlowFactory.makeUnsupportedLearnPronunciationFlow();
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  OUTLINED_FUNCTION_19_1();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_59_6();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_65_3(&dword_26686A000, v5, v6, "#FlowFactory building flow for unsupportedLearnPronunciation");
    OUTLINED_FUNCTION_11_1();
  }

  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  FlowFactory.getUnsupportedFlow(for:)(v7);
  v11 = OUTLINED_FUNCTION_61_4();
  v12(v11);

  v13 = OUTLINED_FUNCTION_8_1();

  return v14(v13);
}

uint64_t FlowFactory.makeUnsupportedActionFlow()()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[3] = v2;
  OUTLINED_FUNCTION_1_1(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(v0[2] + 56);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = FlowFactory.makeUnsupportedActionFlow();
  v3 = v0[5];

  return ContactsCommonCATs.unsupportedAction()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = FlowFactory.makeUnsupportedActionFlow();
  }

  else
  {
    v9 = FlowFactory.makeUnsupportedActionFlow();
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  OUTLINED_FUNCTION_19_1();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_59_6();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_65_3(&dword_26686A000, v5, v6, "#FlowFactory building flow for unsupportedAction");
    OUTLINED_FUNCTION_11_1();
  }

  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  FlowFactory.getUnsupportedFlow(for:)(v7);
  v11 = OUTLINED_FUNCTION_61_4();
  v12(v11);

  v13 = OUTLINED_FUNCTION_8_1();

  return v14(v13);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t FlowFactory.makeUnsupportedOnDeviceFlow(intent:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for TemplatingResult();
  v1[5] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_41();
  v1 = *(*(v0 + 24) + 64);
  [*(v0 + 16) contactAttributeToModify];
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  String.toSpeakableString.getter();

  v4 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  OUTLINED_FUNCTION_37_0();
  *(v0 + 64) = DeviceState.toSiriKitDeviceState.getter();
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = FlowFactory.makeUnsupportedOnDeviceFlow(intent:);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);

  return ModifyContactAttributeCATs.unsupportedDeviceIdiom(contactAttributeType:device:)();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[4];
  v8 = *v1;
  OUTLINED_FUNCTION_0();
  *v9 = v8;
  *(v10 + 80) = v0;

  outlined destroy of Result<TemplatingResult, Error>(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    v11 = FlowFactory.makeUnsupportedOnDeviceFlow(intent:);
  }

  else
  {
    v11 = FlowFactory.makeUnsupportedOnDeviceFlow(intent:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

{
  OUTLINED_FUNCTION_19_1();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_59_6();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v6);
    _os_log_impl(&dword_26686A000, v4, v0, "#FlowFactory building flow for unsupportedOnDevice", v1, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  v8 = v2[6];
  v7 = v2[7];
  v10 = v2[4];
  v9 = v2[5];
  v11 = v2[3];

  FlowFactory.getUnsupportedFlow(for:)(v7);
  (*(v8 + 8))(v7, v9);

  v12 = OUTLINED_FUNCTION_8_1();

  return v13(v12);
}

{
  OUTLINED_FUNCTION_4();
  v1 = v0[7];
  v2 = v0[4];

  OUTLINED_FUNCTION_3();
  v4 = v0[10];

  return v3();
}

uint64_t FlowFactory.makeAppPunchoutFlow()()
{
  *(v1 + 24) = v0;
  v2 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_59_6();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v6);
    _os_log_impl(&dword_26686A000, v4, v0, "#FlowFactory building flow for unsupported multiple contacts request", v1, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  v7 = v2[3];

  OUTLINED_FUNCTION_60_5();
  if ((DeviceState.isVox.getter() & 1) != 0 || (OUTLINED_FUNCTION_60_5(), (DeviceState.supportsCompactView.getter() & 1) == 0))
  {
    v13 = swift_task_alloc();
    v2[4] = v13;
    *v13 = v2;
    v13[1] = FlowFactory.makeAppPunchoutFlow();
    v14 = v2[3];

    return FlowFactory.makeUnsupportedActionFlow()();
  }

  else
  {
    v8 = v2[3];

    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v9 = type metadata accessor for SimpleOutputFlowAsync();
    OUTLINED_FUNCTION_2_6(v9);
    v2[2] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    Flow.eraseToAnyFlow()();

    v10 = OUTLINED_FUNCTION_8_1();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t closure #1 in FlowFactory.makeAppPunchoutFlow()(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeAppPunchoutFlow(), 0, 0);
}

uint64_t closure #1 in FlowFactory.makeAppPunchoutFlow()()
{
  v1 = v0[8];
  v2 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  type metadata accessor for SiriKitEvent();
  static SiriKitEvent.uufrReady()();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v0[5] = &type metadata for InstalledAppsProvider;
  v0[6] = &protocol witness table for InstalledAppsProvider;
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v4 = v3;
  outlined destroy of AppUtil((v0 + 2));
  v5 = v0[7];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_266966A40;
    *(v6 + 32) = v4;
    v7 = type metadata accessor for AceOutput();
    v8 = MEMORY[0x277D5C1D8];
    v5[3] = v7;
    v5[4] = v8;
    __swift_allocate_boxed_opaque_existential_1(v5);
    AceOutput.init(commands:flowActivity:)();
  }

  else
  {
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
  }

  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t FlowFactory.getUnsupportedFlow(for:)(uint64_t a1)
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = OUTLINED_FUNCTION_3_29(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *(v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v12 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_2_6(v12);
  v14[1] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_72_2();
  return OUTLINED_FUNCTION_62_3();
}

uint64_t closure #1 in FlowFactory.getUnsupportedFlow(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v5 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.getUnsupportedFlow(for:), 0, 0);
}

uint64_t closure #1 in FlowFactory.getUnsupportedFlow(for:)()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = v4[6];
  OUTLINED_FUNCTION_77(v4 + 2, v4[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  static Device.current.getter();
  type metadata accessor for ContactsLabelCATs();
  static CATOption.defaultMode.getter();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 88) = &type metadata for InstalledAppsProvider;
  *(v0 + 96) = &protocol witness table for InstalledAppsProvider;
  *(v0 + 56) = v7;
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of ErrorViewBuilder(v0 + 16);
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
  v9 = type metadata accessor for AceOutput();
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 104) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Result<TemplatingResult, Error>(v0 + 104, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Result<TemplatingResult, Error>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t FlowFactory.getContactFlowProducers()()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_18_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_47_5();
  v6 = OUTLINED_FUNCTION_10_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v12 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_56_5();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_44_5();
  type metadata accessor for GetContactIntent();
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for GetContactIntentResponse();
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  v13 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_49_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents16GetContactIntentCAD0ijK8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents16GetContactIntentCAD0ijK8ResponseCGMR);
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  type metadata accessor for GetContactCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v30 = v11;
  v14 = CATWrapper.__allocating_init(options:globals:)();
  outlined init with copy of DeviceState(v0 + 72, v49);

  static Device.current.getter();
  v29 = v0;
  if (one-time initialization token for current != -1)
  {
    OUTLINED_FUNCTION_1_34();
  }

  v15 = static ContactService.current;
  v46 = type metadata accessor for ContactService();
  v47 = &protocol witness table for ContactService;
  v45[0] = v15;
  v31 = type metadata accessor for ContactsLabelCATs();
  swift_retain_n();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v16 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for GetContactCATsModern();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for ContactsLabelCATsModern();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  v43 = &type metadata for SiriContactsFeatureFlagProvider;
  v44 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactNeedsValueStrategy();
  v18 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v42, &type metadata for SiriContactsFeatureFlagProvider);
  outlined init with copy of DeviceState(v49, v41);
  outlined init with copy of DeviceState(v48, v40);
  outlined init with copy of DeviceState(v45, v39);
  *(v18 + 184) = 1;
  outlined init with copy of DeviceState(v41, v18 + 192);
  outlined init with copy of DeviceState(v40, &v36);
  outlined init with copy of DeviceState(v39, v35);
  v33 = &type metadata for SiriContactsFeatureFlagProvider;
  v34 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(&v36, v18 + 16);
  outlined init with copy of DeviceState(v35, v18 + 56);
  *(v18 + 104) = v16;
  v19 = *(v18 + 48);
  OUTLINED_FUNCTION_77((v18 + 16), *(v18 + 40));

  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(&v36);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  OUTLINED_FUNCTION_31_7(v41);
  OUTLINED_FUNCTION_4_31();
  outlined init with take of DeviceState(&v32, v18 + 144);
  *(v18 + 128) = v31;
  *(v18 + 136) = v17;
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  v49[0] = v18;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactNeedsValueStrategy and conformance ContactsNeedsValueStrategy<A, B, C>, type metadata accessor for GetContactNeedsValueStrategy);
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  static Device.current.getter();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_8_23();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v21 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v22 = CATWrapperSimple.__allocating_init(options:globals:)();
  v46 = &type metadata for SiriContactsFeatureFlagProvider;
  v47 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactDisambiguationStrategy(0);
  swift_allocObject();
  OUTLINED_FUNCTION_27_10();
  outlined init with copy of DeviceState(v49, v42);
  outlined init with copy of DeviceState(v48, v41);
  v40[3] = &type metadata for SiriContactsFeatureFlagProvider;
  v40[4] = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v18 + 184) = 1;
  outlined init with copy of DeviceState(v42, v39);
  outlined init with copy of DeviceState(v41, &v36);
  outlined init with copy of DeviceState(v40, v35);
  __swift_mutable_project_boxed_opaque_existential_1(v35, v35[3]);
  v33 = &type metadata for SiriContactsFeatureFlagProvider;
  v34 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(v39, v18 + 16);
  outlined init with copy of DeviceState(&v36, v18 + 56);
  *(v18 + 104) = v20;
  v23 = *(v18 + 48);
  OUTLINED_FUNCTION_77((v18 + 16), *(v18 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(&v36);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  OUTLINED_FUNCTION_13_18(v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  OUTLINED_FUNCTION_4_31();
  outlined init with take of DeviceState(&v32, v18 + 144);
  *(v18 + 128) = v21;
  *(v18 + 136) = v22;
  OUTLINED_FUNCTION_20_12(v35);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactDisambiguationStrategy and conformance ContactsDisambiguationStrategy<A, B>, type metadata accessor for GetContactDisambiguationStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  v24 = swift_allocObject();
  v24[2] = v14;
  v24[3] = v29;

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();

  static Device.current.getter();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_8_23();
  CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_8_23();
  v25 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v26 = CATWrapperSimple.__allocating_init(options:globals:)();
  v46 = &type metadata for SiriContactsFeatureFlagProvider;
  v47 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactHandleIntentStrategy();
  swift_allocObject();
  OUTLINED_FUNCTION_27_10();
  v43 = &type metadata for SiriContactsFeatureFlagProvider;
  v44 = &protocol witness table for SiriContactsFeatureFlagProvider;
  v24[26] = &type metadata for InstalledAppsProvider;
  v24[27] = &protocol witness table for InstalledAppsProvider;
  static SiriKitEventSender.current.getter();
  outlined init with copy of DeviceState(v49, v41);
  outlined init with copy of DeviceState(v48, v40);
  outlined init with copy of DeviceState(v42, v39);
  __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
  v37 = &type metadata for SiriContactsFeatureFlagProvider;
  v38 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(v41, (v24 + 2));
  outlined init with copy of DeviceState(v40, (v24 + 7));
  v24[13] = v22;
  v27 = v24[6];
  OUTLINED_FUNCTION_77(v24 + 2, v24[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  OUTLINED_FUNCTION_1_42(v41);
  outlined init with take of DeviceState(&v36, (v24 + 18));
  v24[16] = v25;
  v24[17] = v26;
  OUTLINED_FUNCTION_20_12(v39);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy, type metadata accessor for GetContactHandleIntentStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return outlined destroy of Signpost.OpenSignpost(v30);
}

uint64_t closure #1 in FlowFactory.getContactFlowProducers()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v84 = a4;
  v85 = a3;
  v86 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents16GetContactIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents16GetContactIntentCGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v78 - v11;
  v13 = type metadata accessor for CATOption();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = ParameterResolutionRecord.result.getter();
  v16 = INIntentResolutionResult.isUnsupportedRelationshipNotFound.getter();

  if (v16)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriContacts);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      MEMORY[0x26D5E3300](v20, -1, -1);
    }

    v83 = a2;

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v21 = static ContactService.current;
    v107 = type metadata accessor for ContactService();
    v108 = &protocol witness table for ContactService;
    v82 = v107;
    v106[0] = v21;
    v22 = type metadata accessor for ContactsLabelCATs();

    static CATOption.defaultMode.getter();
    v81 = v22;
    v23 = CATWrapper.__allocating_init(options:globals:)();
    ContactCATsModern = type metadata accessor for GetContactCATsModern();
    static CATOption.defaultMode.getter();
    v80 = ContactCATsModern;
    v78 = CATWrapperSimple.__allocating_init(options:globals:)();
    v25 = type metadata accessor for ContactsLabelCATsModern();
    static CATOption.defaultMode.getter();
    v79 = v25;
    v26 = CATWrapperSimple.__allocating_init(options:globals:)();
    v104 = &type metadata for SiriContactsFeatureFlagProvider;
    v105 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for GetContactUnsupportedValueStrategy();
    v27 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v103, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v109, v102);
    outlined init with copy of DeviceState(v106, v101);
    v99 = &type metadata for SiriContactsFeatureFlagProvider;
    v100 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v102, v97);
    outlined init with copy of DeviceState(v101, v96);
    outlined init with copy of DeviceState(v98, v94);
    __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
    v92 = &type metadata for SiriContactsFeatureFlagProvider;
    v93 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v27 + 113) = 0;
    *(v27 + 96) = v85;
    outlined init with copy of DeviceState(v97, v27 + 16);
    outlined init with copy of DeviceState(v96, v27 + 56);
    *(v27 + 104) = v23;
    v28 = *(v27 + 48);
    __swift_project_boxed_opaque_existential_1((v27 + 16), *(v27 + 40));

    LOBYTE(v25) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v96);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    __swift_destroy_boxed_opaque_existential_0Tm(v109);
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    *(v27 + 112) = v25 & 1;
    *(v27 + 120) = 0;
    outlined init with take of DeviceState(&v91, v27 + 144);
    *(v27 + 128) = v78;
    *(v27 + 136) = v26;
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    v29 = v84[6];
    __swift_project_boxed_opaque_existential_1(v84 + 2, v84[5]);
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      v109[0] = v27;
      lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactUnsupportedValueStrategy);
      v30 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
    }

    else
    {
      v109[0] = v27;
      lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactUnsupportedValueStrategy);
      v30 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    }

    v85 = v30;
    type metadata accessor for ContactsCommonCATs();

    static CATOption.defaultMode.getter();
    v78 = CATWrapper.__allocating_init(options:globals:)();
    static Device.current.getter();
    static CATOption.defaultMode.getter();
    v45 = CATWrapper.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    v80 = CATWrapperSimple.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    v79 = CATWrapperSimple.__allocating_init(options:globals:)();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA16GetContactIntentCAA0hiJ8ResponseCGMd, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA16GetContactIntentCAA0hiJ8ResponseCGMR);
    v46 = swift_allocObject();
    v107 = v82;
    v108 = &protocol witness table for ContactService;
    v106[0] = v21;
    v104 = &type metadata for SiriContactsFeatureFlagProvider;
    v105 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for ModifyContactAttributeCATs();

    static CATOption.defaultMode.getter();
    *(v46 + 192) = CATWrapper.__allocating_init(options:globals:)();
    outlined init with copy of DeviceState(v109, v102);
    outlined init with copy of DeviceState(v106, v101);
    outlined init with copy of DeviceState(v103, v98);
    __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
    v97[3] = &type metadata for SiriContactsFeatureFlagProvider;
    v97[4] = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v46 + 184) = 1;
    outlined init with copy of DeviceState(v102, v96);
    outlined init with copy of DeviceState(v101, v94);
    outlined init with copy of DeviceState(v97, &v91);
    __swift_mutable_project_boxed_opaque_existential_1(&v91, v92);
    v89 = &type metadata for SiriContactsFeatureFlagProvider;
    v90 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v46 + 113) = 0;
    *(v46 + 96) = v78;
    outlined init with copy of DeviceState(v96, v46 + 16);
    outlined init with copy of DeviceState(v94, v46 + 56);
    *(v46 + 104) = v45;
    outlined init with copy of DeviceState(v46 + 16, v87);
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    v47 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
    __swift_destroy_boxed_opaque_existential_0Tm(v96);
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    __swift_destroy_boxed_opaque_existential_0Tm(v109);
    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    *(v46 + 112) = v47 & 1;
    __swift_destroy_boxed_opaque_existential_0Tm(v87);
    *(v46 + 120) = 0;
    outlined init with take of DeviceState(&v88, v46 + 144);
    v48 = v79;
    *(v46 + 128) = v80;
    *(v46 + 136) = v48;
    __swift_destroy_boxed_opaque_existential_0Tm(&v91);
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    v109[0] = v46;
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for GetContactIntentResponse();
    lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type ContactsUnsetRelationshipFlowStrategy<GetContactIntent, GetContactIntentResponse> and conformance ContactsUnsetRelationshipFlowStrategy<A, B>, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA16GetContactIntentCAA0hiJ8ResponseCGMd, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA16GetContactIntentCAA0hiJ8ResponseCGMR);
    v49 = static RCHChildFlowFactoryHelper.makeUnsupportedFlowProducer<A, B>(unsupportedValueFlowProducer:unsetRelationshipStrategy:_:)();

    v50 = v49(v86, v83);
  }

  else
  {
    v31 = ParameterResolutionRecord.result.getter();
    ContactNeeds = INIntentResolutionResult.isGetContactNeedsValue.getter();

    if (ContactNeeds)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.siriContacts);
      (*(v6 + 16))(v12, a2, v5);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v109[0] = v84;
        *v36 = 136315138;
        v37 = ParameterResolutionRecord.result.getter();
        v38 = [v37 unsupportedReason];
        v83 = a2;
        v39 = v38;

        LOBYTE(v106[0]) = SiriKitContactUnsupportedReason.init(rawValue:)(v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
        v40 = String.init<A>(describing:)();
        v42 = v41;
        (*(v6 + 8))(v12, v5);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v109);
        a2 = v83;

        *(v36 + 4) = v43;
        _os_log_impl(&dword_26686A000, v34, v35, "#FlowFactory GetContact unsupported reason is %s. Creating prompt producer to handle unsupported with needs value.", v36, 0xCu);
        v44 = v84;
        __swift_destroy_boxed_opaque_existential_0Tm(v84);
        MEMORY[0x26D5E3300](v44, -1, -1);
        MEMORY[0x26D5E3300](v36, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v12, v5);
      }

      static Device.current.getter();
      if (one-time initialization token for current != -1)
      {
        swift_once();
      }

      v63 = static ContactService.current;
      v107 = type metadata accessor for ContactService();
      v108 = &protocol witness table for ContactService;
      v106[0] = v63;
      type metadata accessor for ContactsLabelCATs();

      static CATOption.defaultMode.getter();
      v64 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for GetContactCATsModern();
      static CATOption.defaultMode.getter();
      v65 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for ContactsLabelCATsModern();
      static CATOption.defaultMode.getter();
      v66 = CATWrapperSimple.__allocating_init(options:globals:)();
      v104 = &type metadata for SiriContactsFeatureFlagProvider;
      v105 = &protocol witness table for SiriContactsFeatureFlagProvider;
      type metadata accessor for GetContactUnsupportedValueStrategy();
      v67 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v103, &type metadata for SiriContactsFeatureFlagProvider);
      outlined init with copy of DeviceState(v109, v102);
      outlined init with copy of DeviceState(v106, v101);
      v99 = &type metadata for SiriContactsFeatureFlagProvider;
      v100 = &protocol witness table for SiriContactsFeatureFlagProvider;
      outlined init with copy of DeviceState(v102, v97);
      outlined init with copy of DeviceState(v101, v96);
      outlined init with copy of DeviceState(v98, v94);
      __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
      v92 = &type metadata for SiriContactsFeatureFlagProvider;
      v93 = &protocol witness table for SiriContactsFeatureFlagProvider;
      *(v67 + 113) = 0;
      *(v67 + 96) = v85;
      outlined init with copy of DeviceState(v97, v67 + 16);
      outlined init with copy of DeviceState(v96, v67 + 56);
      *(v67 + 104) = v64;
      v68 = *(v67 + 48);
      __swift_project_boxed_opaque_existential_1((v67 + 16), *(v67 + 40));

      LOBYTE(v63) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      *(v67 + 112) = v63 & 1;
      *(v67 + 120) = 0;
      outlined init with take of DeviceState(&v91, v67 + 144);
      *(v67 + 128) = v65;
      *(v67 + 136) = v66;
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
      v109[0] = v67;
      lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactUnsupportedValueStrategy);
      v69 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.siriContacts);
      (*(v6 + 16))(v10, a2, v5);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v109[0] = v84;
        *v54 = 136315138;
        v55 = ParameterResolutionRecord.result.getter();
        v56 = [v55 unsupportedReason];
        v83 = a2;
        v57 = v56;

        LOBYTE(v106[0]) = SiriKitContactUnsupportedReason.init(rawValue:)(v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
        v58 = String.init<A>(describing:)();
        v60 = v59;
        (*(v6 + 8))(v10, v5);
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v109);
        a2 = v83;

        *(v54 + 4) = v61;
        _os_log_impl(&dword_26686A000, v52, v53, "#FlowFactory GetContact unsupported reason is %s. Creating cancel producer to handle unsupported without needs value.", v54, 0xCu);
        v62 = v84;
        __swift_destroy_boxed_opaque_existential_0Tm(v84);
        MEMORY[0x26D5E3300](v62, -1, -1);
        MEMORY[0x26D5E3300](v54, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v10, v5);
      }

      static Device.current.getter();
      if (one-time initialization token for current != -1)
      {
        swift_once();
      }

      v70 = static ContactService.current;
      v107 = type metadata accessor for ContactService();
      v108 = &protocol witness table for ContactService;
      v106[0] = v70;
      type metadata accessor for ContactsLabelCATs();

      static CATOption.defaultMode.getter();
      v71 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for GetContactCATsModern();
      static CATOption.defaultMode.getter();
      v72 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for ContactsLabelCATsModern();
      static CATOption.defaultMode.getter();
      v73 = CATWrapperSimple.__allocating_init(options:globals:)();
      v104 = &type metadata for SiriContactsFeatureFlagProvider;
      v105 = &protocol witness table for SiriContactsFeatureFlagProvider;
      type metadata accessor for GetContactUnsupportedValueStrategy();
      v74 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v103, &type metadata for SiriContactsFeatureFlagProvider);
      outlined init with copy of DeviceState(v109, v102);
      outlined init with copy of DeviceState(v106, v101);
      v99 = &type metadata for SiriContactsFeatureFlagProvider;
      v100 = &protocol witness table for SiriContactsFeatureFlagProvider;
      outlined init with copy of DeviceState(v102, v97);
      outlined init with copy of DeviceState(v101, v96);
      outlined init with copy of DeviceState(v98, v94);
      __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
      v92 = &type metadata for SiriContactsFeatureFlagProvider;
      v93 = &protocol witness table for SiriContactsFeatureFlagProvider;
      *(v74 + 113) = 0;
      *(v74 + 96) = v85;
      outlined init with copy of DeviceState(v97, v74 + 16);
      outlined init with copy of DeviceState(v96, v74 + 56);
      *(v74 + 104) = v71;
      v75 = *(v74 + 48);
      __swift_project_boxed_opaque_existential_1((v74 + 16), *(v74 + 40));

      LOBYTE(v70) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      *(v74 + 112) = v70 & 1;
      *(v74 + 120) = 0;
      outlined init with take of DeviceState(&v91, v74 + 144);
      *(v74 + 128) = v72;
      *(v74 + 136) = v73;
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
      v109[0] = v74;
      lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactUnsupportedValueStrategy);
      v69 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
    }

    v76 = v69;

    v50 = v76(v86, a2);
  }

  return v50;
}

uint64_t closure #1 in closure #1 in FlowFactory.getContactFlowProducers()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, Strong[5]);
    v2 = dispatch thunk of DeviceState.isWatch.getter();

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t FlowFactory.getContactAttributeFlowProducers()()
{
  v1 = v0;
  v2 = type metadata accessor for CATOption();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v6 = OUTLINED_FUNCTION_47_5();
  v7 = OUTLINED_FUNCTION_10_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = v12 + *(v6 + 20);
  *v13 = "MakeGetContactAttributeFlowProducers";
  *(v13 + 8) = 36;
  *(v13 + 16) = 2;
  type metadata accessor for GetContactAttributeIntent();
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for GetContactAttributeIntentResponse();
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  v14 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_51_3(v14);
  OUTLINED_FUNCTION_49_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents25GetContactAttributeIntentCAD0ijkL8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents25GetContactAttributeIntentCAD0ijkL8ResponseCGMR);
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  type metadata accessor for GetContactAttributeCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  outlined init with copy of DeviceState(v1 + 72, v50);

  static Device.current.getter();
  v32 = v12;
  if (one-time initialization token for current != -1)
  {
    OUTLINED_FUNCTION_1_34();
  }

  v16 = static ContactService.current;
  v30 = type metadata accessor for ContactService();
  v47 = v30;
  v48 = &protocol witness table for ContactService;
  v46[0] = v16;
  type metadata accessor for ContactsLabelCATs();
  swift_retain_n();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for GetContactCATsModern();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  v19 = type metadata accessor for ContactsLabelCATsModern();
  OUTLINED_FUNCTION_68_5(v19);
  OUTLINED_FUNCTION_8_23();
  v29 = CATWrapperSimple.__allocating_init(options:globals:)();
  v45[3] = &type metadata for SiriContactsFeatureFlagProvider;
  v45[4] = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactAttributeNeedsValueStrategy();
  v20 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v45, &type metadata for SiriContactsFeatureFlagProvider);
  outlined init with copy of DeviceState(v50, v44);
  outlined init with copy of DeviceState(v49, &v41);
  outlined init with copy of DeviceState(v46, v40);
  v39[3] = &type metadata for SiriContactsFeatureFlagProvider;
  v39[4] = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v20 + 184) = 1;
  outlined init with copy of DeviceState(v44, v20 + 192);
  outlined init with copy of DeviceState(&v41, v38);
  outlined init with copy of DeviceState(v40, v37);
  outlined init with copy of DeviceState(v39, v36);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
  v34 = &type metadata for SiriContactsFeatureFlagProvider;
  v35 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v20 + 113) = 0;
  *(v20 + 96) = v15;
  outlined init with copy of DeviceState(v38, v20 + 16);
  outlined init with copy of DeviceState(v37, v20 + 56);
  *(v20 + 104) = v17;
  v21 = *(v20 + 48);
  OUTLINED_FUNCTION_77((v20 + 16), *(v20 + 40));
  v22 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  __swift_destroy_boxed_opaque_existential_0Tm(&v41);
  OUTLINED_FUNCTION_31_7(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  *(v20 + 112) = v22 & 1;
  *(v20 + 120) = 0;
  outlined init with take of DeviceState(&v33, v20 + 144);
  *(v20 + 128) = v18;
  *(v20 + 136) = v29;
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  v50[0] = v20;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeNeedsValueStrategy and conformance ContactsNeedsValueStrategy<A, B, C>, type metadata accessor for GetContactAttributeNeedsValueStrategy);
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  v24 = v23;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();

  static Device.current.getter();
  v49[3] = v30;
  v49[4] = &protocol witness table for ContactService;
  v49[0] = v16;
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v25 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v31 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v26 = CATWrapperSimple.__allocating_init(options:globals:)();
  v47 = &type metadata for SiriContactsFeatureFlagProvider;
  v48 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactAttributeHandleIntentStrategy();
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_27_10();
  outlined init with copy of DeviceState(v50, v45);
  outlined init with copy of DeviceState(v49, v44);
  v42 = &type metadata for SiriContactsFeatureFlagProvider;
  v43 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v24 + 113) = 0;
  *(v24 + 96) = v15;
  outlined init with copy of DeviceState(v45, v24 + 16);
  outlined init with copy of DeviceState(v44, v24 + 56);
  *(v24 + 104) = v25;
  v27 = *(v24 + 48);
  OUTLINED_FUNCTION_77((v24 + 16), *(v24 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  OUTLINED_FUNCTION_13_18(v45);
  OUTLINED_FUNCTION_4_31();
  outlined init with take of DeviceState(&v41, v24 + 144);
  *(v24 + 128) = v31;
  *(v24 + 136) = v26;
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  v50[0] = v24;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy, type metadata accessor for GetContactAttributeHandleIntentStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return outlined destroy of Signpost.OpenSignpost(v32);
}

uint64_t closure #1 in FlowFactory.getContactAttributeFlowProducers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v5 = type metadata accessor for CATOption();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ParameterIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v12 = ParameterIdentifier.name.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  v16.value = GetContactAttributeSlots.init(rawValue:)(v15).value;
  if (v16.value == SiriContactsIntents_GetContactAttributeSlots_unknownDefault)
  {
    goto LABEL_2;
  }

  value = v16.value;
  GetContactAttributeSlots.rawValue.getter(v16.value);
  if (v28 == 0xD000000000000014 && 0x800000026696E3B0 == v27)
  {
    goto LABEL_16;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_17;
  }

  GetContactAttributeSlots.rawValue.getter(value);
  if (v32 == 0xD000000000000019 && 0x800000026696E3D0 == v31)
  {
LABEL_16:

    goto LABEL_17;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
LABEL_2:
    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v17 = static ContactService.current;
    v64 = type metadata accessor for ContactService();
    v65 = &protocol witness table for ContactService;
    v63[0] = v17;
    type metadata accessor for ContactsLabelCATs();

    static CATOption.defaultMode.getter();
    v18 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for GetContactCATsModern();
    static CATOption.defaultMode.getter();
    v19 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for ContactsLabelCATsModern();
    static CATOption.defaultMode.getter();
    v20 = CATWrapperSimple.__allocating_init(options:globals:)();
    v61 = &type metadata for SiriContactsFeatureFlagProvider;
    v62 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for GCAContactsDisambiguationStrategy(0);
    v21 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v60, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v66, v59);
    outlined init with copy of DeviceState(v63, v58);
    *(v21 + 184) = 1;
    outlined init with copy of DeviceState(v59, v57);
    outlined init with copy of DeviceState(v58, v56);
    v54 = &type metadata for SiriContactsFeatureFlagProvider;
    v55 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v21 + 113) = 0;
    *(v21 + 96) = a3;
    outlined init with copy of DeviceState(v57, v21 + 16);
    outlined init with copy of DeviceState(v56, v21 + 56);
    *(v21 + 104) = v18;
    v22 = *(v21 + 48);
    __swift_project_boxed_opaque_existential_1((v21 + 16), *(v21 + 40));

    LOBYTE(v17) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    *(v21 + 112) = v17 & 1;
    *(v21 + 120) = 0;
    outlined init with take of DeviceState(&v53, v21 + 144);
    *(v21 + 128) = v19;
    *(v21 + 136) = v20;
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    v66[0] = v21;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GCAContactsDisambiguationStrategy and conformance ContactsDisambiguationStrategy<A, B>, type metadata accessor for GCAContactsDisambiguationStrategy);
    v23 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

    v24 = v46;
    v25 = a2;
    goto LABEL_20;
  }

LABEL_17:
  v45 = a2;
  static Device.current.getter();
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v35 = static ContactService.current;
  v64 = type metadata accessor for ContactService();
  v65 = &protocol witness table for ContactService;
  v63[0] = v35;
  type metadata accessor for ContactsLabelCATs();

  static CATOption.defaultMode.getter();
  v36 = CATWrapper.__allocating_init(options:globals:)();
  v61 = &type metadata for SiriContactsFeatureFlagProvider;
  v62 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactCATsModern();
  static CATOption.defaultMode.getter();
  v44 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for ContactsLabelCATsModern();
  static CATOption.defaultMode.getter();
  v37 = CATWrapperSimple.__allocating_init(options:globals:)();
  v38 = type metadata accessor for ReferenceResolutionClient();
  v39 = ReferenceResolutionClient.__allocating_init()();
  outlined init with copy of DeviceState(v66, v59);
  outlined init with copy of DeviceState(v63, v58);
  outlined init with copy of DeviceState(v60, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents38ContactAttributeDisambiguationStrategyCyAA03GetdE6IntentCAA0hdeI8ResponseCAA0hdE4CATsCGMd, &_s19SiriContactsIntents38ContactAttributeDisambiguationStrategyCyAA03GetdE6IntentCAA0hdeI8ResponseCAA0hdE4CATsCGMR);
  v40 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v57, v57[3]);
  v56[3] = v38;
  v56[4] = MEMORY[0x277D5FDD8];
  v55 = &protocol witness table for SiriContactsFeatureFlagProvider;
  v56[0] = v39;
  v54 = &type metadata for SiriContactsFeatureFlagProvider;
  outlined init with copy of DeviceState(v56, v40 + 184);
  outlined init with copy of DeviceState(v59, v52);
  outlined init with copy of DeviceState(v58, v51);
  outlined init with copy of DeviceState(&v53, v50);
  __swift_mutable_project_boxed_opaque_existential_1(v50, v50[3]);
  v48 = &type metadata for SiriContactsFeatureFlagProvider;
  v49 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v40 + 113) = 0;
  *(v40 + 96) = a3;
  outlined init with copy of DeviceState(v52, v40 + 16);
  outlined init with copy of DeviceState(v51, v40 + 56);
  *(v40 + 104) = v36;
  v41 = *(v40 + 48);
  __swift_project_boxed_opaque_existential_1((v40 + 16), *(v40 + 40));

  LOBYTE(v38) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();

  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  __swift_destroy_boxed_opaque_existential_0Tm(v63);
  __swift_destroy_boxed_opaque_existential_0Tm(&v53);
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  *(v40 + 112) = v38 & 1;
  *(v40 + 120) = 0;
  outlined init with take of DeviceState(&v47, v40 + 144);
  *(v40 + 128) = v44;
  *(v40 + 136) = v37;
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  v66[0] = v40;
  lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type ContactAttributeDisambiguationStrategy<GetContactAttributeIntent, GetContactAttributeIntentResponse, GetContactAttributeCATs> and conformance ContactAttributeDisambiguationStrategy<A, B, C>, &_s19SiriContactsIntents38ContactAttributeDisambiguationStrategyCyAA03GetdE6IntentCAA0hdeI8ResponseCAA0hdE4CATsCGMd, &_s19SiriContactsIntents38ContactAttributeDisambiguationStrategyCyAA03GetdE6IntentCAA0hdeI8ResponseCAA0hdE4CATsCGMR);
  v23 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  v25 = v45;
  v24 = v46;
LABEL_20:
  v42 = v23(v24, v25);

  return v42;
}

uint64_t closure #2 in FlowFactory.getContactAttributeFlowProducers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v59 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v52 - v7;
  v9 = type metadata accessor for CATOption();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = ParameterResolutionRecord.result.getter();
  v12 = INIntentResolutionResult.isUnsupportedRelationshipNotFound.getter();

  if (v12)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriContacts);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      MEMORY[0x26D5E3300](v16, -1, -1);
    }

    v57 = a2;

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v17 = static ContactService.current;
    v56 = type metadata accessor for ContactService();
    v77 = v56;
    v78 = &protocol witness table for ContactService;
    v76[0] = v17;
    v54 = type metadata accessor for ContactsLabelCATs();

    static CATOption.defaultMode.getter();
    v18 = CATWrapper.__allocating_init(options:globals:)();
    ContactCATsModern = type metadata accessor for GetContactCATsModern();
    static CATOption.defaultMode.getter();
    v55 = CATWrapperSimple.__allocating_init(options:globals:)();
    v52[1] = type metadata accessor for ContactsLabelCATsModern();
    static CATOption.defaultMode.getter();
    v19 = CATWrapperSimple.__allocating_init(options:globals:)();
    v74 = &type metadata for SiriContactsFeatureFlagProvider;
    v75 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for GetContactAttributeUnsupportedValueStrategy();
    v20 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v73, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v79, v72);
    outlined init with copy of DeviceState(v76, v71);
    v69 = &type metadata for SiriContactsFeatureFlagProvider;
    v70 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v72, v67);
    outlined init with copy of DeviceState(v71, v66);
    outlined init with copy of DeviceState(v68, &v63);
    __swift_mutable_project_boxed_opaque_existential_1(&v63, v64);
    v61 = &type metadata for SiriContactsFeatureFlagProvider;
    v62 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v20 + 113) = 0;
    *(v20 + 96) = v58;
    outlined init with copy of DeviceState(v67, v20 + 16);
    outlined init with copy of DeviceState(v66, v20 + 56);
    *(v20 + 104) = v18;
    v21 = *(v20 + 48);
    __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));

    v22 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    *(v20 + 112) = v22 & 1;
    *(v20 + 120) = 0;
    outlined init with take of DeviceState(&v60, v20 + 144);
    *(v20 + 128) = v55;
    *(v20 + 136) = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(&v63);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v79[0] = v20;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactAttributeUnsupportedValueStrategy);
    v58 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    v55 = v23;

    type metadata accessor for ContactsCommonCATs();
    static CATOption.defaultMode.getter();
    v24 = CATWrapper.__allocating_init(options:globals:)();
    static Device.current.getter();
    static CATOption.defaultMode.getter();
    v25 = CATWrapper.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    v54 = CATWrapperSimple.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    ContactCATsModern = CATWrapperSimple.__allocating_init(options:globals:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA25GetContactAttributeIntentCAA0hijK8ResponseCGMd, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA25GetContactAttributeIntentCAA0hijK8ResponseCGMR);
    v26 = swift_allocObject();
    v77 = v56;
    v78 = &protocol witness table for ContactService;
    v76[0] = v17;
    v74 = &type metadata for SiriContactsFeatureFlagProvider;
    v75 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for ModifyContactAttributeCATs();

    static CATOption.defaultMode.getter();
    *(v26 + 192) = CATWrapper.__allocating_init(options:globals:)();
    outlined init with copy of DeviceState(v79, v72);
    outlined init with copy of DeviceState(v76, v71);
    outlined init with copy of DeviceState(v73, v68);
    __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    *(v26 + 184) = 1;
    outlined init with copy of DeviceState(v72, v67);
    outlined init with copy of DeviceState(v71, v66);
    v64 = &type metadata for SiriContactsFeatureFlagProvider;
    v65 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v26 + 113) = 0;
    *(v26 + 96) = v24;
    outlined init with copy of DeviceState(v67, v26 + 16);
    outlined init with copy of DeviceState(v66, v26 + 56);
    *(v26 + 104) = v25;
    outlined init with copy of DeviceState(v26 + 16, &v60);
    __swift_project_boxed_opaque_existential_1(&v60, v61);
    v27 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    *(v26 + 112) = v27 & 1;
    __swift_destroy_boxed_opaque_existential_0Tm(&v60);
    *(v26 + 120) = 0;
    outlined init with take of DeviceState(&v63, v26 + 144);
    v28 = ContactCATsModern;
    *(v26 + 128) = v54;
    *(v26 + 136) = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    v79[0] = v26;
    type metadata accessor for GetContactAttributeIntentResponse();
    lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type ContactsUnsetRelationshipFlowStrategy<GetContactAttributeIntent, GetContactAttributeIntentResponse> and conformance ContactsUnsetRelationshipFlowStrategy<A, B>, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA25GetContactAttributeIntentCAA0hijK8ResponseCGMd, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA25GetContactAttributeIntentCAA0hijK8ResponseCGMR);
    v29 = static RCHChildFlowFactoryHelper.makeUnsupportedFlowProducer<A, B>(unsupportedValueFlowProducer:unsetRelationshipStrategy:_:)();

    v30 = v59;
    v31 = v57;
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriContacts);
    (*(v5 + 16))(v8, a2, v4);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v79[0] = v56;
      *v35 = 136315138;
      v36 = ParameterResolutionRecord.result.getter();
      v37 = [v36 unsupportedReason];
      v57 = a2;
      v38 = v37;

      LOBYTE(v76[0]) = SiriKitContactUnsupportedReason.init(rawValue:)(v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      (*(v5 + 8))(v8, v4);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v79);
      a2 = v57;

      *(v35 + 4) = v42;
      _os_log_impl(&dword_26686A000, v33, v34, "#FlowFactory GetContactAttribute unsupported reason is %s. Creating cancel producer to handle unsupported without needs value.", v35, 0xCu);
      v43 = v56;
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x26D5E3300](v43, -1, -1);
      MEMORY[0x26D5E3300](v35, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v44 = static ContactService.current;
    v77 = type metadata accessor for ContactService();
    v78 = &protocol witness table for ContactService;
    v76[0] = v44;
    type metadata accessor for ContactsLabelCATs();

    static CATOption.defaultMode.getter();
    v45 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for GetContactCATsModern();
    static CATOption.defaultMode.getter();
    v46 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for ContactsLabelCATsModern();
    static CATOption.defaultMode.getter();
    v47 = CATWrapperSimple.__allocating_init(options:globals:)();
    v74 = &type metadata for SiriContactsFeatureFlagProvider;
    v75 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for GetContactAttributeUnsupportedValueStrategy();
    v48 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v73, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v79, v72);
    outlined init with copy of DeviceState(v76, v71);
    v69 = &type metadata for SiriContactsFeatureFlagProvider;
    v70 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v72, v67);
    outlined init with copy of DeviceState(v71, v66);
    outlined init with copy of DeviceState(v68, &v63);
    __swift_mutable_project_boxed_opaque_existential_1(&v63, v64);
    v61 = &type metadata for SiriContactsFeatureFlagProvider;
    v62 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v48 + 113) = 0;
    *(v48 + 96) = v58;
    outlined init with copy of DeviceState(v67, v48 + 16);
    outlined init with copy of DeviceState(v66, v48 + 56);
    *(v48 + 104) = v45;
    v49 = *(v48 + 48);
    __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));

    LOBYTE(v44) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    *(v48 + 112) = v44 & 1;
    *(v48 + 120) = 0;
    outlined init with take of DeviceState(&v60, v48 + 144);
    *(v48 + 128) = v46;
    *(v48 + 136) = v47;
    __swift_destroy_boxed_opaque_existential_0Tm(&v63);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v79[0] = v48;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactAttributeUnsupportedValueStrategy);
    v29 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();

    v30 = v59;
    v31 = a2;
  }

  v50 = v29(v30, v31);

  return v50;
}

uint64_t FlowFactory.modifyContactAttributeFlowProducers()()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_18_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_47_5();
  v6 = OUTLINED_FUNCTION_10_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v12 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_56_5();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_44_5();
  type metadata accessor for ModifyContactAttributeIntent();
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for ModifyContactAttributeIntentResponse();
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  v13 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_49_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents28ModifyContactAttributeIntentCAD0ijkL8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents28ModifyContactAttributeIntentCAD0ijkL8ResponseCGMR);
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  type metadata accessor for ModifyContactAttributeCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v38 = v11;
  v14 = CATWrapper.__allocating_init(options:globals:)();
  outlined init with copy of DeviceState(v0 + 72, v61);
  outlined init with copy of DeviceState(v0 + 16, v58);
  v15 = one-time initialization token for current;
  v16 = v14;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_1_34();
  }

  v17 = static ContactService.current;
  v39 = type metadata accessor for ContactService();
  v56 = v39;
  v57 = &protocol witness table for ContactService;
  v55[0] = v17;
  type metadata accessor for ContactsLabelCATs();
  swift_retain_n();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for GetContactCATsModern();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v37 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for ContactsLabelCATsModern();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  v53 = &type metadata for SiriContactsFeatureFlagProvider;
  v54 = &protocol witness table for SiriContactsFeatureFlagProvider;
  v20 = type metadata accessor for ModifyContactAttributeNeedsValueStrategy();
  v21 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v52, &type metadata for SiriContactsFeatureFlagProvider);
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_69_4();
  outlined init with copy of DeviceState(v55, v48);
  *(v21 + 184) = 1;
  outlined init with copy of DeviceState(v51, v21 + 192);
  outlined init with copy of DeviceState(v50, v45);
  outlined init with copy of DeviceState(v48, v44);
  v42 = &type metadata for SiriContactsFeatureFlagProvider;
  v43 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v21 + 113) = 0;
  *(v21 + 96) = v16;
  outlined init with copy of DeviceState(v45, v21 + 16);
  outlined init with copy of DeviceState(v44, v21 + 56);
  *(v21 + 104) = v18;
  v22 = *(v21 + 48);
  OUTLINED_FUNCTION_77((v21 + 16), *(v21 + 40));
  v23 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  OUTLINED_FUNCTION_31_7(v51);
  *(v21 + 112) = v23 & 1;
  *(v21 + 120) = 0;
  outlined init with take of DeviceState(&v41, v21 + 144);
  *(v21 + 128) = v37;
  *(v21 + 136) = v19;
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  v61[0] = v21;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeNeedsValueStrategy and conformance ContactsNeedsValueStrategy<A, B, C>, type metadata accessor for ModifyContactAttributeNeedsValueStrategy);
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  OUTLINED_FUNCTION_38_5();
  v24 = v16;
  v59 = v39;
  v60 = &protocol witness table for ContactService;
  v40 = v17;
  v58[0] = v17;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_8_23();
  v25 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_68_5(v25);
  OUTLINED_FUNCTION_8_23();
  v35 = CATWrapperSimple.__allocating_init(options:globals:)();
  v56 = &type metadata for SiriContactsFeatureFlagProvider;
  v57 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for ModifyContactAttributeDisambiguationStrategy(0);
  v26 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v55, &type metadata for SiriContactsFeatureFlagProvider);
  outlined init with copy of DeviceState(v61, v52);
  outlined init with copy of DeviceState(v58, v51);
  *(v26 + 184) = 1;
  outlined init with copy of DeviceState(v52, v50);
  outlined init with copy of DeviceState(v51, v48);
  v46 = &type metadata for SiriContactsFeatureFlagProvider;
  v47 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v26 + 113) = 0;
  *(v26 + 96) = v24;
  outlined init with copy of DeviceState(v50, v26 + 16);
  outlined init with copy of DeviceState(v48, v26 + 56);
  OUTLINED_FUNCTION_19_12();
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  OUTLINED_FUNCTION_13_18(v52);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_73_1();
  *(v26 + 128) = v37;
  *(v26 + 136) = v35;
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  v61[0] = v26;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeDisambiguationStrategy and conformance ContactsDisambiguationStrategy<A, B>, type metadata accessor for ModifyContactAttributeDisambiguationStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  OUTLINED_FUNCTION_38_5();
  v59 = v39;
  v60 = &protocol witness table for ContactService;
  v58[0] = v17;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_8_23();
  v27 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_68_5(v27);
  OUTLINED_FUNCTION_8_23();
  v36 = CATWrapperSimple.__allocating_init(options:globals:)();
  v56 = &type metadata for SiriContactsFeatureFlagProvider;
  v57 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for ModifyContactAttributeConfirmIntentStrategy();
  v28 = OUTLINED_FUNCTION_48_6();
  __swift_mutable_project_boxed_opaque_existential_1(v55, &type metadata for SiriContactsFeatureFlagProvider);
  v53 = &type metadata for SiriContactsFeatureFlagProvider;
  v54 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_69_4();
  outlined init with copy of DeviceState(v52, v48);
  __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  v46 = &type metadata for SiriContactsFeatureFlagProvider;
  v47 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v28 + 113) = 0;
  *(v28 + 96) = v24;
  outlined init with copy of DeviceState(v51, v28 + 16);
  outlined init with copy of DeviceState(v50, v28 + 56);
  OUTLINED_FUNCTION_19_12();
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  OUTLINED_FUNCTION_1_42(v51);
  OUTLINED_FUNCTION_73_1();
  *(v28 + 128) = v37;
  *(v28 + 136) = v36;
  OUTLINED_FUNCTION_20_12(v48);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeConfirmIntentStrategy and conformance ModifyContactAttributeConfirmIntentStrategy, type metadata accessor for ModifyContactAttributeConfirmIntentStrategy);
  static RCHChildFlowFactoryHelper.makeConditionalConfirmIntentFlowProducer<A>(strategy:_:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  OUTLINED_FUNCTION_38_5();
  v59 = v39;
  v60 = &protocol witness table for ContactService;
  v58[0] = v17;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_8_23();
  v29 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_68_5(v29);
  OUTLINED_FUNCTION_8_23();
  v30 = CATWrapperSimple.__allocating_init(options:globals:)();
  v56 = &type metadata for SiriContactsFeatureFlagProvider;
  v57 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for ModifyContactAttributeHandleIntentStrategy();
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_27_10();
  v53 = &type metadata for SiriContactsFeatureFlagProvider;
  v54 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_69_4();
  outlined init with copy of DeviceState(v52, v48);
  __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  v46 = &type metadata for SiriContactsFeatureFlagProvider;
  v47 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(v51, v28 + 16);
  outlined init with copy of DeviceState(v50, v28 + 56);
  OUTLINED_FUNCTION_19_12();
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  OUTLINED_FUNCTION_1_42(v51);
  OUTLINED_FUNCTION_73_1();
  *(v28 + 128) = v37;
  *(v28 + 136) = v30;
  OUTLINED_FUNCTION_20_12(v48);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy, type metadata accessor for ModifyContactAttributeHandleIntentStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  OUTLINED_FUNCTION_38_5();
  v59 = v39;
  v60 = &protocol witness table for ContactService;
  v58[0] = v40;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_8_23();
  v31 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v32 = CATWrapperSimple.__allocating_init(options:globals:)();
  v56 = &type metadata for SiriContactsFeatureFlagProvider;
  v57 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for ModifyContactAttributeContinueInAppFlowStrategy();
  swift_allocObject();
  OUTLINED_FUNCTION_27_10();
  v53 = &type metadata for SiriContactsFeatureFlagProvider;
  v54 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v28 + 208) = &type metadata for InstalledAppsProvider;
  *(v28 + 216) = &protocol witness table for InstalledAppsProvider;
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_69_4();
  outlined init with copy of DeviceState(v52, v48);
  __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  v46 = &type metadata for SiriContactsFeatureFlagProvider;
  v47 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(v51, v28 + 16);
  outlined init with copy of DeviceState(v50, v28 + 56);
  *(v28 + 104) = v20;
  v33 = *(v28 + 48);
  OUTLINED_FUNCTION_77((v28 + 16), *(v28 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  OUTLINED_FUNCTION_1_42(v51);
  OUTLINED_FUNCTION_73_1();
  *(v28 + 128) = v31;
  *(v28 + 136) = v32;
  OUTLINED_FUNCTION_20_12(v48);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy, type metadata accessor for ModifyContactAttributeContinueInAppFlowStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return outlined destroy of Signpost.OpenSignpost(v38);
}

uint64_t closure #1 in FlowFactory.modifyContactAttributeFlowProducers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - v7;
  v9 = type metadata accessor for CATOption();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v48 = a2;
  v11 = ParameterResolutionRecord.result.getter();
  v12 = INIntentResolutionResult.isModifyContactAttributeNeedsValue.getter();

  if (v12)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriContacts);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26686A000, v14, v15, "#FlowFactory ModifyContactAttribute unsupported. Creating prompt producer to handle unsupported with needs value.", v16, 2u);
      MEMORY[0x26D5E3300](v16, -1, -1);
    }

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v17 = static ContactService.current;
    v65 = type metadata accessor for ContactService();
    v66 = &protocol witness table for ContactService;
    v64[0] = v17;
    type metadata accessor for ContactsLabelCATs();

    static CATOption.defaultMode.getter();
    v18 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for GetContactCATsModern();
    static CATOption.defaultMode.getter();
    v19 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for ContactsLabelCATsModern();
    static CATOption.defaultMode.getter();
    v20 = CATWrapperSimple.__allocating_init(options:globals:)();
    v62 = &type metadata for SiriContactsFeatureFlagProvider;
    v63 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for ModifyContactAttributeUnsupportedValueStrategy();
    v21 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v61, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v67, v60);
    outlined init with copy of DeviceState(v64, v59);
    v57 = &type metadata for SiriContactsFeatureFlagProvider;
    v58 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v60, v55);
    outlined init with copy of DeviceState(v59, v54);
    outlined init with copy of DeviceState(v56, v52);
    __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    v50 = &type metadata for SiriContactsFeatureFlagProvider;
    v51 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v21 + 113) = 0;
    *(v21 + 96) = v46;
    outlined init with copy of DeviceState(v55, v21 + 16);
    outlined init with copy of DeviceState(v54, v21 + 56);
    *(v21 + 104) = v18;
    v22 = *(v21 + 48);
    __swift_project_boxed_opaque_existential_1((v21 + 16), *(v21 + 40));

    LOBYTE(v17) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    *(v21 + 112) = v17 & 1;
    *(v21 + 120) = 0;
    outlined init with take of DeviceState(&v49, v21 + 144);
    *(v21 + 128) = v19;
    *(v21 + 136) = v20;
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    v67[0] = v21;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for ModifyContactAttributeUnsupportedValueStrategy);
    v23 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriContacts);
    (*(v5 + 16))(v8, v48, v4);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v67[0] = v45;
      *v27 = 136315138;
      v28 = ParameterResolutionRecord.result.getter();
      v29 = [v28 unsupportedReason];

      LOBYTE(v64[0]) = SiriKitContactUnsupportedReason.init(rawValue:)(v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      (*(v5 + 8))(v8, v4);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v67);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_26686A000, v25, v26, "#FlowFactory ModifyContactAttribute unsupported reason is %s. Creating cancel producer to handle unsupported without needs value.", v27, 0xCu);
      v34 = v45;
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x26D5E3300](v34, -1, -1);
      MEMORY[0x26D5E3300](v27, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v35 = static ContactService.current;
    v65 = type metadata accessor for ContactService();
    v66 = &protocol witness table for ContactService;
    v64[0] = v35;
    type metadata accessor for ContactsLabelCATs();

    static CATOption.defaultMode.getter();
    v36 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for GetContactCATsModern();
    static CATOption.defaultMode.getter();
    v37 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for ContactsLabelCATsModern();
    static CATOption.defaultMode.getter();
    v38 = CATWrapperSimple.__allocating_init(options:globals:)();
    v62 = &type metadata for SiriContactsFeatureFlagProvider;
    v63 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for ModifyContactAttributeUnsupportedValueStrategy();
    v39 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v61, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v67, v60);
    outlined init with copy of DeviceState(v64, v59);
    v57 = &type metadata for SiriContactsFeatureFlagProvider;
    v58 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v60, v55);
    outlined init with copy of DeviceState(v59, v54);
    outlined init with copy of DeviceState(v56, v52);
    __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    v50 = &type metadata for SiriContactsFeatureFlagProvider;
    v51 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v39 + 113) = 0;
    *(v39 + 96) = v46;
    outlined init with copy of DeviceState(v55, v39 + 16);
    outlined init with copy of DeviceState(v54, v39 + 56);
    *(v39 + 104) = v36;
    v40 = *(v39 + 48);
    __swift_project_boxed_opaque_existential_1((v39 + 16), *(v39 + 40));

    LOBYTE(v35) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    *(v39 + 112) = v35 & 1;
    *(v39 + 120) = 0;
    outlined init with take of DeviceState(&v49, v39 + 144);
    *(v39 + 128) = v37;
    *(v39 + 136) = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    v67[0] = v39;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for ModifyContactAttributeUnsupportedValueStrategy);
    v23 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
  }

  v41 = v23;

  v42 = v41(v47, v48);

  return v42;
}