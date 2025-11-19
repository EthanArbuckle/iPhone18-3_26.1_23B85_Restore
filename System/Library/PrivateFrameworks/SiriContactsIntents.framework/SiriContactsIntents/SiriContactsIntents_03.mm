uint64_t static ContactsContextProvider.makeSDAForConfirmation(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v50) = a2;
  v5 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v43 - v9;
  v10 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v43 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v43 - v24;
  static ContactsContextProvider.buildWantedToProceed(for:)(a1, v50 & 1);
  static Siri_Nlu_External_SystemOffered.from(_:)();
  (*(v11 + 8))(v14, v10);
  v26 = v16[2];
  v50 = v25;
  v26(v23, v25, v15);
  Siri_Nlu_External_SystemDialogAct.init()();
  v26(v20, v23, v15);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  v27 = v16[1];
  v49 = v16 + 1;
  v27(v23, v15);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.siriContacts);
  v30 = v47;
  v29 = v48;
  v31 = *(v47 + 16);
  v31(v51, a3, v48);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v44 = v15;
    v45 = v27;
    v35 = v51;
    v36 = v34;
    v37 = swift_slowAlloc();
    v52 = v37;
    *v36 = 136315138;
    v31(v46, v35, v29);
    v38 = String.init<A>(describing:)();
    v40 = v39;
    (*(v30 + 8))(v35, v29);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v52);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_26686A000, v32, v33, "#ContactsContextProvider Returning SystemOffered for confirm ModifyContactAttributeIntent: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x26D5E3300](v37, -1, -1);
    MEMORY[0x26D5E3300](v36, -1, -1);

    return v45(v50, v44);
  }

  else
  {

    (*(v30 + 8))(v51, v29);
    return (v27)(v50, v15);
  }
}

uint64_t static ContactsContextProvider.buildWantedToProceed(for:)(uint64_t a1, char a2)
{
  updated = type metadata accessor for UsoTaskBuilder_update_common_Person();
  v5 = *(updated + 48);
  v6 = *(updated + 52);
  swift_allocObject();
  UsoTaskBuilder_update_common_Person.init()();
  if ((a2 & 1) == 0 && a1 == 6)
  {
    v7 = type metadata accessor for UsoEntityBuilder_common_Person();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    UsoEntityBuilder_common_Person.init()();
    v10 = type metadata accessor for UsoEntityBuilder_common_PersonName();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    UsoEntityBuilder_common_PersonName.init()();
    dispatch thunk of UsoEntityBuilder_common_PersonName.setNickName(value:)();

    dispatch thunk of UsoEntityBuilder_common_Person.setStructuredName(value:)();

    dispatch thunk of Uso_VerbTemplateBuilder_ReferenceTarget.setTarget(value:)();
  }

  static Siri_Nlu_External_UserWantedToProceed.from(_:)();
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return String.uppercased()()._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_16_8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return String.uppercased()()._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_23_6()
{

  JUMPOUT(0x26D5E2570);
}

unint64_t OUTLINED_FUNCTION_25_3()
{

  return ContactNLv3Constants.canonicalName.getter();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return type metadata accessor for Siri_Nlu_External_SystemPrompted();
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0xEF6E6F6974617265;
  v3 = 0x704F796669646F6DLL;
  v4 = a1;
  v5 = 0x704F796669646F6DLL;
  v6 = 0xEF6E6F6974617265;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0xD000000000000012;
      v7 = "contactAttributeToModify";
      goto LABEL_5;
    case 3:
      v5 = 0x694E796669646F6DLL;
      v8 = 0x656D614E6B63;
      goto LABEL_8;
    case 4:
      v5 = 0xD000000000000012;
      v7 = "modifyRelationship";
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      break;
    case 5:
      v5 = 0x43646574616C6572;
      v8 = 0x746361746E6FLL;
LABEL_8:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      v6 = 0x800000026696E3F0;
      v5 = 0xD000000000000018;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0xD000000000000012;
      v9 = "contactAttributeToModify";
      goto LABEL_13;
    case 3:
      v3 = 0x694E796669646F6DLL;
      v10 = 0x656D614E6B63;
      goto LABEL_16;
    case 4:
      v3 = 0xD000000000000012;
      v9 = "modifyRelationship";
LABEL_13:
      v2 = v9 | 0x8000000000000000;
      break;
    case 5:
      v3 = 0x43646574616C6572;
      v10 = 0x746361746E6FLL;
LABEL_16:
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      v2 = 0x800000026696E3F0;
      v3 = 0xD000000000000018;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

{
  v2 = 0x64695F6D657469;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x64695F6D657469;
  switch(v4)
  {
    case 1:
      v3 = 0x800000026696E150;
      v5 = 0xD000000000000012;
      break;
    case 2:
      v5 = 0x65746C615F727361;
      v3 = 0xEF65766974616E72;
      break;
    case 3:
      v6 = 0x54656E6F6870;
      goto LABEL_6;
    case 4:
      v6 = 0x546C69616D65;
LABEL_6:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x7079000000000000;
      v3 = 0xE900000000000065;
      break;
    case 5:
      v5 = 0x5473736572646461;
      goto LABEL_9;
    case 6:
      v5 = 0xD000000000000011;
      v3 = 0x800000026696E1A0;
      break;
    case 7:
      v5 = 0x54746361746E6F63;
LABEL_9:
      v3 = 0xEB00000000657079;
      break;
    case 8:
      v5 = 0x6369746E616D6573;
      v3 = 0xEE0065756C61765FLL;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0x800000026696E150;
      v2 = 0xD000000000000012;
      break;
    case 2:
      v2 = 0x65746C615F727361;
      v7 = 0xEF65766974616E72;
      break;
    case 3:
      v8 = 0x54656E6F6870;
      goto LABEL_17;
    case 4:
      v8 = 0x546C69616D65;
LABEL_17:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x7079000000000000;
      v7 = 0xE900000000000065;
      break;
    case 5:
      v2 = 0x5473736572646461;
      goto LABEL_20;
    case 6:
      v2 = 0xD000000000000011;
      v7 = 0x800000026696E1A0;
      break;
    case 7:
      v2 = 0x54746361746E6F63;
LABEL_20:
      v7 = 0xEB00000000657079;
      break;
    case 8:
      v2 = 0x6369746E616D6573;
      v7 = 0xEE0065756C61765FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_20();
  }

  return v10 & 1;
}

{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C65636E6163;
      break;
    case 3:
      v5 = 0x206D7269666E6F63;
      v3 = 0xEF746361746E6F63;
      break;
    case 4:
      v5 = 0x63207463656A6572;
      v3 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      v2 = 0x206D7269666E6F63;
      v6 = 0xEF746361746E6F63;
      break;
    case 4:
      v2 = 0x63207463656A6572;
      v6 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20();
  }

  return v8 & 1;
}

{
  v2 = 0x73736572646441;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73736572646441;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6645569;
      break;
    case 2:
      v5 = 0x73726576696E6E41;
      v3 = 0xEB00000000797261;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x7961646874726942;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1685217603;
      break;
    case 5:
      v5 = 0x796E61706D6F43;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x6C69616D45;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1701667150;
      break;
    case 8:
      v3 = 0xE500000000000000;
      v5 = 0x656E6F6850;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6645569;
      break;
    case 2:
      v2 = 0x73726576696E6E41;
      v6 = 0xEB00000000797261;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x7961646874726942;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1685217603;
      break;
    case 5:
      v2 = 0x796E61706D6F43;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x6C69616D45;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v2 = 1701667150;
      break;
    case 8:
      v6 = 0xE500000000000000;
      v2 = 0x656E6F6850;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20();
  }

  return v8 & 1;
}

{
  v2 = 6645601;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6645601;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v3 = 0x800000026696E8A0;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x65674174736170;
      break;
    case 3:
      v5 = 0x6741657275747566;
      v3 = 0xE900000000000065;
      break;
    case 4:
      v5 = 0x6574736575716572;
      v3 = 0xED00006574614464;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000013;
      v6 = 0x800000026696E8A0;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x65674174736170;
      break;
    case 3:
      v2 = 0x6741657275747566;
      v6 = 0xE900000000000065;
      break;
    case 4:
      v2 = 0x6574736575716572;
      v6 = 0xED00006574614464;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  return specialized == infix<A>(_:_:)(a1, a2, GetContactAttributeSlots.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLv3Constants.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLv3Intent.NLContactAttributesValue.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLv3Intent.NLContactReferenceValue.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLv3Intent.NLContactVerbValue.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, GetContactSlots.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLIntent.NLContactTypeValue.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactsLabelCATsModern.ContactsLabelDialogIDs.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x277D5EA60], &lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, MEMORY[0x277D5EA60]);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x277D5E830], &lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues, MEMORY[0x277D5E830]);
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_20();
  }

  return v9 & 1;
}

{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_20();
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_6_14();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xED0000676E697274;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_6_14();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xED0000656C646E61;
  }

  else
  {
    v1 = 0xEC0000006C656261;
  }

  OUTLINED_FUNCTION_6_14();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB00000000656C64;
  }

  else
  {
    v1 = 0xEA00000000006C65;
  }

  OUTLINED_FUNCTION_6_14();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB00000000656C64;
  }

  else
  {
    v1 = 0xEA00000000006C65;
  }

  OUTLINED_FUNCTION_6_14();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x7961646874726962;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000026696E460;
  }

  if (a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x7961646874726962;
  }

  if (a2)
  {
    v6 = 0x800000026696E460;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent(a4, a5);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t GetContactAttributeIntent.requestedName.getter()
{
  result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_fullName);
  if (!v2)
  {
    result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_firstName);
    if (!v3)
    {
      result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_middleName);
      if (!v4)
      {
        result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_lastName);
        if (!v5)
        {
          return outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_nickName);
        }
      }
    }
  }

  return result;
}

id GetContactAttributeIntent.__allocating_init(_:referenceResolver:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v57 - v8;
  v10 = type metadata accessor for PersonIntentNode();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  v19 = [objc_allocWithZone(v2) init];
  v20 = ContactNLv3Intent.isMeCardRequest.getter();
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(v20 & 1).super.super.isa;
  OUTLINED_FUNCTION_4_10(isa, sel_setIsMe_);

  v22 = a1;
  ContactNLv3Intent.person.getter(v23, v24, v25, v26, v27, v28, v29, v30, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of PersonIntentNode?(v9);
    if (one-time initialization token for contactId != -1)
    {
      swift_once();
    }

    type metadata accessor for ContactNLv3Intent();
    lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent);
    IntentNodeTraversable.value<A>(forNode:)();
    if (v58)
    {
      v31 = String.sanitizeContactIdURL.getter(v57, v58);
      v33 = v32;

      outlined bridged method (mbgnn) of @objc GetContactIntent.contactIdentifier.setter(v31, v33, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_266966A40;
      type metadata accessor for SiriMatch();
      v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      *(v34 + 32) = @nonobjc INObject.init(identifier:display:)(v31, v33, v31, v33);
      outlined bridged method (mbnn) of @objc GetContactIntent.siriMatches.setter(v34, v19);
    }

    else
    {
      SiriKitGetEntityIntent.runReferenceResolution(_:)(a2, v3, &protocol witness table for GetContactAttributeIntent);
    }
  }

  else
  {
    (*(v13 + 32))(v18, v9, v10);
    OUTLINED_FUNCTION_1_16();
    v36 = PersonIntentNodeContaining.firstName.getter();
    if (v37)
    {
      MEMORY[0x26D5E2470](v36);
      v36 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_4_10(v36, sel_setFirstName_);

    OUTLINED_FUNCTION_1_16();
    v38 = PersonIntentNodeContaining.nickName.getter();
    if (v39)
    {
      MEMORY[0x26D5E2470](v38);
      v38 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_4_10(v38, sel_setNickName_);

    OUTLINED_FUNCTION_1_16();
    v40 = PersonIntentNodeContaining.lastName.getter();
    if (v41)
    {
      MEMORY[0x26D5E2470](v40);
      v40 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_4_10(v40, sel_setLastName_);

    OUTLINED_FUNCTION_1_16();
    v42 = PersonIntentNodeContaining.fullName.getter();
    if (v43)
    {
      MEMORY[0x26D5E2470](v42);
      v42 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_4_10(v42, sel_setFullName_);

    OUTLINED_FUNCTION_1_16();
    v44 = PersonIntentNodeContaining.middleName.getter();
    if (v45)
    {
      MEMORY[0x26D5E2470](v44);
      v44 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_4_10(v44, sel_setMiddleName_);

    OUTLINED_FUNCTION_1_16();
    v46 = PersonIntentNodeContaining.company.getter();
    if (v47)
    {
      MEMORY[0x26D5E2470](v46);
      v46 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_4_10(v46, sel_setOrganizationName_);

    OUTLINED_FUNCTION_1_16();
    v48 = PersonIntentNodeContaining.relationship.getter();
    if (v49)
    {
      MEMORY[0x26D5E2470](v48);
      v48 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_4_10(v48, sel_setContactRelation_);

    (*(v13 + 8))(v18, v10);
  }

  type metadata accessor for ContactAttribute();
  v50 = ContactNLv3Intent.requestedContactAttribute.getter();
  v51 = ContactNLv3Intent.requestedContactAttributeLabel.getter();
  v53 = v52;
  v54 = static DateTimeUtil.getRequestedAgeDateTime(from:)(a1);
  v55 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v50, 0, 0, v51, v53, 0, 0, v54, 0);
  OUTLINED_FUNCTION_4_10(v55, sel_setContactAttributeToGet_);

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  outlined destroy of ContactNLv3Intent(a1);
  return v19;
}

uint64_t GetContactAttributeIntent.siriInferenceContact.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContactHandle.HandleType();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v43 = v8 - v7;
  v9 = type metadata accessor for ContactHandle();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  Contact.init()();
  outlined bridged method (pb) of @objc GetContactIntent.contactIdentifier.getter(v0);
  if (v18)
  {
    Contact.id.setter();
  }

  outlined bridged method (pb) of @objc GetContactIntent.contactRelation.getter(v0);
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference7ContactV12LabeledValueVy_SSGGMd, &_ss23_ContiguousArrayStorageCy13SiriInference7ContactV12LabeledValueVy_SSGGMR);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ContactV12LabeledValueVy_SSGMd, &_s13SiriInference7ContactV12LabeledValueVy_SSGMR) - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_266966D90;
    static String.EMPTY.getter();
    v45[0] = static String.EMPTY.getter();
    v45[1] = v23;
    Contact.LabeledValue.init(id:label:value:)();
    Contact.contactRelations.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_fullName);
  if (v24)
  {
    Contact.givenName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_firstName);
  if (v25)
  {
    Contact.givenName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_middleName);
  if (v26)
  {
    Contact.middleName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_lastName);
  if (v27)
  {
    Contact.familyName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_nickName);
  if (v28)
  {
    Contact.nickname.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_organizationName);
  if (v29)
  {
    Contact.organizationName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_phoneNumber);
  if (v30)
  {
    (*(v44 + 104))(v43, *MEMORY[0x277D56010], v2);
    OUTLINED_FUNCTION_2_20();
    ContactHandle.init(id:type:label:value:isSuggested:)();
    v31 = Contact.handles.modify();
    v33 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v34 = *(*v33 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v34);
    v35 = *v33;
    *(v35 + 16) = v34 + 1;
    (*(v12 + 32))(v35 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v34, v17, v9);
    v31(v45, 0);
  }

  result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v1, &selRef_emailAddress);
  if (v37)
  {
    (*(v44 + 104))(v43, *MEMORY[0x277D56008], v2);
    OUTLINED_FUNCTION_2_20();
    ContactHandle.init(id:type:label:value:isSuggested:)();
    v38 = Contact.handles.modify();
    v40 = v39;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v41 = *(*v40 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v41);
    v42 = *v40;
    *(v42 + 16) = v41 + 1;
    (*(v12 + 32))(v42 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v41, v17, v9);
    return v38(v45, 0);
  }

  return result;
}

uint64_t GetContactAttributeIntent.handleTypePreference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 contactAttributeToGet];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 contactAttributeType];

    if (v5 == 2)
    {
      static ContactHandleTypePreference.preferPhone.getter();
LABEL_7:
      v9 = 0;
      goto LABEL_9;
    }
  }

  v6 = [v1 contactAttributeToGet];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 contactAttributeType];

    if (v8 == 1)
    {
      static ContactHandleTypePreference.preferEmail.getter();
      goto LABEL_7;
    }
  }

  v9 = 1;
LABEL_9:
  v10 = type metadata accessor for ContactHandleTypePreference();

  return __swift_storeEnumTagSinglePayload(a1, v9, 1, v10);
}

char *GetContactAttributeIntentResponse.__allocating_init(contactIdentifiers:code:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = GetContactAttributeIntentResponse.init(code:userActivity:)(a2, 0);
  v7 = v6;
  if (a1)
  {
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  [v6 setContactIdentifiers_];

  return v6;
}

uint64_t lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_20()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id SAPerson.init(contact:isMe:)(void *a1, void *a2)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v91 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v91 - v12;
  v13 = type metadata accessor for URL();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = type metadata accessor for UUID();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v30 = v29 - v28;
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v31);
  if (v32)
  {
  }

  else
  {
    UUID.init()();
    v33 = UUID.uuidString.getter();
    v91 = v21;
    v92 = v16;
    v34 = v9;
    v35 = v7;
    v36 = v33;
    v37 = v31;
    v38 = a1;
    v39 = v13;
    v41 = v40;
    (*(v25 + 8))(v30, v22);
    v42 = v36;
    v7 = v35;
    v9 = v34;
    v43 = v41;
    v13 = v39;
    a1 = v38;
    v31 = v37;
    v21 = v91;
    v16 = v92;
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v42, v43, v31, &selRef_setAceId_);
  }

  v44 = v94;
  if (a1)
  {
    v45 = [objc_opt_self() assistantIDFromContact_];
    if (v45)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v46);
      v45 = v47;
      (*(v16 + 8))(v21, v13);
    }

    v48 = v93;
    [v31 setIdentifier_];

    v49 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v50, v51, v52, &selRef_setInternalGUID_);
    v53 = [a1 birthday];
    if (v53)
    {
      v54 = v53;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v56 = type metadata accessor for DateComponents();
    __swift_storeEnumTagSinglePayload(v7, v55, 1, v56);
    outlined init with take of DateComponents?(v7, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v56) == 1)
    {
      outlined destroy of DateComponents?(v9);
      v57 = type metadata accessor for Date();
      __swift_storeEnumTagSinglePayload(v48, 1, 1, v57);
      isa = 0;
    }

    else
    {
      DateComponents.date.getter();
      (*(*(v56 - 8) + 8))(v9, v56);
      v59 = type metadata accessor for Date();
      isa = 0;
      if (__swift_getEnumTagSinglePayload(v48, 1, v59) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(*(v59 - 8) + 8))(v48, v59);
      }
    }

    [v31 setBirthday_];

    v60 = [a1 organizationName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v61, v62, v63, &selRef_setCompany_);
    v64 = [a1 givenName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v65, v66, v67, &selRef_setFirstName_);
    v68 = CNContact.formattedFullName.getter();
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v68, v69, v31, &selRef_setFullName_);
    v70 = [a1 familyName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v71, v72, v73, &selRef_setLastName_);
    [v31 setMe_];
    v74 = [a1 middleName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v75, v76, v77, &selRef_setMiddleName_);
    v78 = [a1 nickname];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v79, v80, v81, &selRef_setNickName_);
    v82 = [a1 namePrefix];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v83, v84, v85, &selRef_setPrefix_);
    v86 = [a1 nameSuffix];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v87, v88, v89, &selRef_setSuffix_);
  }

  return v31;
}

id SAUIButton.init(commands:text:)()
{
  v3 = [objc_allocWithZone(OUTLINED_FUNCTION_4_12()) init];
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v2, v3);
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v1, v0, v3, &selRef_setText_);

  return v3;
}

id SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v17);
  if (v18)
  {
  }

  else
  {
    UUID.init()();
    v19 = UUID.uuidString.getter();
    v21 = v20;
    (*(v11 + 8))(v16, v8);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v19, v21, v17, &selRef_setAceId_);
  }

  v22 = AppUtil.buildSash()();
  [v17 setSash_];

  v23 = *MEMORY[0x277D47C68];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v24, v25, v17, &selRef_setItemType_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAABPerson, 0x277D470F0);
  v27 = a1;
  v28 = a3;
  *(v26 + 32) = SAPerson.init(contact:isMe:)(a1, v28);
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(v26, v17, &lazy cache variable for type metadata for SAPerson, 0x277D47630, &selRef_setPersons_);
  switch(a2)
  {
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v29 = OUTLINED_FUNCTION_5_18();
      *(v29 + 16) = xmmword_266966D90;
      v30 = MEMORY[0x277CBD0C8];
      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v29 = OUTLINED_FUNCTION_5_18();
      *(v29 + 16) = xmmword_266966D90;
      v30 = MEMORY[0x277CBD098];
      break;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v29 = OUTLINED_FUNCTION_5_18();
      *(v29 + 16) = xmmword_266966D90;
      v30 = MEMORY[0x277CBCFC0];
      break;
    default:
      type metadata accessor for ContactService();
      v29 = static ContactService.defaultPropertiesString.getter();
      goto LABEL_12;
  }

  v31 = *v30;
  *(v29 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 40) = v32;
LABEL_12:
  outlined bridged method (mbnn) of @objc SAABPersonSnippet.displayProperties.setter(v29, v17);

  outlined destroy of AppUtil(a4);
  return v17;
}

id SAABPersonSnippet.init(_:isMe:)(void *a1, void *a2)
{
  v4 = &type metadata for InstalledAppsProvider;
  v5 = &protocol witness table for InstalledAppsProvider;
  return SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(a1, 0, a2, v3);
}

id SAStartLocalRequest.init(clientBoundCommands:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = v2;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  [v2 setClientBoundCommands_];

  return v2;
}

id SASTHeaderItem.init(header:text:)()
{
  v3 = [objc_allocWithZone(OUTLINED_FUNCTION_4_12()) init];
  [v3 setHeader_];
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v1, v0, v3, &selRef_setText_);

  return v3;
}

id SASTLineDetailItem.init(title:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTitle_];

  return v2;
}

id SAUIDecoratedText.init(text:regions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(a1, a2, v6, &selRef_setText_);
  if (a3)
  {
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SATextDecorationRegion, 0x277D479C8);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  [v6 setRegions_];

  return v6;
}

id SATextDecorationRegion.init(start:length:property:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setStart_];
  [v8 setLength_];
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(a3, a4, v8, &selRef_setProperty_);

  return v8;
}

id SASTPropertyListItem.init(decoratedTitle:decoratedValues:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setDecoratedTitle_];
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a2, v4, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40, &selRef_setDecoratedValues_);

  return v4;
}

id SASTColumnDataListItem.init(title:decoratedRows:action:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTitle_];
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a2, v6, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40, &selRef_setDecoratedRows_);
  v7 = a3;
  [v6 setAction_];

  return v6;
}

id SASTButtonItem.init(action:centered:decoratedLabel:)(void *a1, char a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setAction_];
  [v6 setCentered_];
  v7 = a3;
  [v6 setDecoratedLabel_];

  return v6;
}

id SAUIConfirmationView.init(confirmCommands:confirmText:denyCommands:denyText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmCommands.setter(a1, v12, &selRef_setConfirmCommands_);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmText.setter(a2, a3, v12);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmCommands.setter(a4, v12, &selRef_setDenyCommands_);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationView.denyText.setter(a5, a6, v12);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIConfirmationOption, 0x277D47A28);
  v13 = SAUIConfirmationOption.init(commands:label:)(a1, a2, a3);
  v14 = SAUIConfirmationOption.init(commands:label:)(a4, a5, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = OUTLINED_FUNCTION_5_18();
  *(v15 + 16) = xmmword_2669681E0;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  v16 = v13;
  v17 = v14;
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(v15, v12, &lazy cache variable for type metadata for SAUIConfirmationOption, 0x277D47A28, &selRef_setAllConfirmationOptions_);

  return v12;
}

id SAUIConfirmationOption.init(commands:label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = v6;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  [v6 setCommands_];

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(a2, a3, v6, &selRef_setLabel_);
  return v6;
}

void outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  type metadata accessor for CNContact(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a5];
}

void outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands_];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470]();
  [a3 setConfirmText_];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmCommands.setter(uint64_t a1, void *a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 *a3];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationView.denyText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470]();
  [a3 setDenyText_];
}

uint64_t outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SAABPersonSnippet.displayProperties.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setDisplayProperties_];
}

uint64_t outlined destroy of DateComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_0_21(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v4, v6, v5, a4);
}

void OUTLINED_FUNCTION_3_12()
{
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_getObjCClassFromMetadata();
}

uint64_t OUTLINED_FUNCTION_5_18()
{

  return swift_allocObject();
}

uint64_t ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v1[26] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow28WindowedPaginationParametersVSgMd, &_s11SiriKitFlow28WindowedPaginationParametersVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[27] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  v1[28] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[29] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[30] = v11;
  v13 = *(v12 + 64);
  v1[31] = OUTLINED_FUNCTION_10_0();
  v14 = type metadata accessor for Signpost.OpenSignpost();
  v1[32] = v14;
  OUTLINED_FUNCTION_18_0(v14);
  v16 = *(v15 + 64);
  v1[33] = OUTLINED_FUNCTION_10_0();
  v17 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

{
  v60 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = static Signpost.contactsLog;
  v0[34] = static Signpost.contactsLog;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = v1 + *(v2 + 20);
  *v5 = "MakePromptForDisambiguation";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v6, static Logger.siriContacts);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v8))
  {
    v9 = v0[26];
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_32_4();
    v59 = v10;
    *"MakePromptForDisambiguation" = 136315138;
    v11 = *(v9 + 240);
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v59);

    *"PromptForDisambiguation" = v14;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  v21 = v0[24];
  v20 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
  v0[22] = PaginatedItemContainer.items.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  type metadata accessor for CNContact();
  OUTLINED_FUNCTION_12_8(&lazy protocol witness table cache variable for type [String] and conformance [A]);
  v22 = Sequence.compactMap<A>(_:)();

  v23 = specialized Array._getCount()(v22);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v25 = v23;
    v59 = MEMORY[0x277D84F90];
    v26 = specialized ContiguousArray.reserveCapacity(_:)();
    if (v25 < 0)
    {
      __break(1u);
      return MEMORY[0x2821B9188](v26, v27, v28, v29, v30, v31);
    }

    v32 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v33 = OUTLINED_FUNCTION_22_0();
        v34 = MEMORY[0x26D5E29D0](v33);
      }

      else
      {
        v34 = *(v22 + 8 * v32 + 32);
      }

      v35 = v34;
      ++v32;
      [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithContact_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = v59[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_36_3();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v25 != v32);
    v24 = v59;
  }

  v0[35] = v24;
  v37 = v0[31];
  v38 = v0[28];
  v39 = v0[25];
  static DialogPhase.clarification.getter();
  v40 = swift_task_alloc();
  *(v40 + 16) = v39;
  *(v40 + 24) = v22;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v41 = ContactsStrategy.isSmartEnabled.getter();
  v42 = *(v39 + 120);
  v43 = v0[25];
  if ((v41 & 1) == 0)
  {
    if (v42)
    {
      outlined init with copy of DeviceState(v43 + 16, (v0 + 7));
      v46 = type metadata accessor for ContactResolutionPatternGenerator();
      OUTLINED_FUNCTION_2_6(v46);
      v47 = v42;
    }

    else
    {
      outlined init with copy of DeviceState(v43 + 16, (v0 + 2));
      type metadata accessor for CATGlobals();
      CATGlobals.__allocating_init()();
      v53 = type metadata accessor for ContactResolutionPatternGenerator();
      OUTLINED_FUNCTION_2_6(v53);
    }

    OUTLINED_FUNCTION_34_2();
    v0[39] = ContactResolutionPatternGenerator.init(appBundleId:globals:deviceState:)();
    v54 = v0[27];
    v55 = type metadata accessor for WindowedPaginationParameters();
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v55);
    v56 = *(MEMORY[0x277D56538] + 4);

    v57 = swift_task_alloc();
    v0[40] = v57;
    *v57 = v0;
    v57[1] = ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v31 = v0[27];
    v27 = 0xD000000000000025;
    v28 = 0x800000026696E020;
    v29 = 0xD000000000000025;
    v30 = 0x800000026696DFF0;
    v26 = v24;

    return MEMORY[0x2821B9188](v26, v27, v28, v29, v30, v31);
  }

  if (v42)
  {
    outlined init with copy of DeviceState(v43 + 16, (v0 + 17));
    v44 = type metadata accessor for ContactResolutionSnippetGenerator();
    OUTLINED_FUNCTION_2_6(v44);
    v45 = v42;
  }

  else
  {
    outlined init with copy of DeviceState(v43 + 16, (v0 + 12));
    type metadata accessor for CATGlobals();
    CATGlobals.__allocating_init()();
    v48 = type metadata accessor for ContactResolutionSnippetGenerator();
    OUTLINED_FUNCTION_2_6(v48);
  }

  OUTLINED_FUNCTION_34_2();
  v0[36] = ContactResolutionSnippetGenerator.init(appBundleId:globals:deviceState:)();
  v49 = *(MEMORY[0x277D56570] + 4);

  v50 = swift_task_alloc();
  v0[37] = v50;
  *v50 = v0;
  v50[1] = ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v51 = v0[31];
  v52 = v0[23];

  return MEMORY[0x2821B91D0](v52, v24, 0xD000000000000025, 0x800000026696DFF0, v51);
}

{
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[37];
  *v4 = *v1;
  *(v3 + 304) = v0;

  v6 = v2[36];
  v7 = v2[35];
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *(v1 + 288);

  v3 = OUTLINED_FUNCTION_23_7();
  v4(v3);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_39_1();
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v5();
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[40];
  v6 = *v1;
  *(v3 + 328) = v7;
  *(v3 + 336) = v0;

  v8 = v2[39];
  v9 = v2[35];
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v2[27], &_s11SiriKitFlow28WindowedPaginationParametersVSgMd, &_s11SiriKitFlow28WindowedPaginationParametersVSgMR);

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_2_6(v1);
  v0[43] = ResponseFactory.init()();
  v2 = *(MEMORY[0x277D5BD48] + 4);
  v8 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v4 = v0[41];
  v5 = v0[31];
  v6 = v0[23];

  return v8(v6, v4, v5);
}

{
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *(v2 + 352);
  *v4 = *v1;
  *(v3 + 360) = v0;

  v6 = *(v2 + 344);

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *(v1 + 312);

  v3 = OUTLINED_FUNCTION_23_7();
  v4(v3);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_39_1();
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v5();
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *(v1 + 288);

  v3 = *(v1 + 304);
  v4 = OUTLINED_FUNCTION_4_13();
  v5(v4);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_21_5();
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v6();
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *(v1 + 312);

  v3 = *(v1 + 336);
  v4 = OUTLINED_FUNCTION_4_13();
  v5(v4);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_21_5();
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v6();
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *(v1 + 312);

  v3 = *(v1 + 360);
  v4 = OUTLINED_FUNCTION_4_13();
  v5(v4);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_21_5();
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t static ContactsDisambiguationStrategy.extractCurrentContext(from:)()
{
  v2 = *(v1 + 240);
  type metadata accessor for ParameterResolutionRecord();
  v50 = ParameterResolutionRecord.intent.getter();
  v3 = (*(*(v1 + 256) + 32))(v2);
  v51 = MEMORY[0x277D84F90];
  if (v4)
  {
    v5 = v3;
    ObjectType = v4;
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = v7;
    v0 = *(v7 + 16);
    v9 = *(v7 + 24);
    v2 = v0 + 1;
    if (v0 >= v9 >> 1)
    {
LABEL_39:
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v2, 1, v8);
      v8 = v48;
    }

    *(v8 + 16) = v2;
    v10 = v8 + 16 * v0;
    *(v10 + 32) = v5;
    *(v10 + 40) = ObjectType;
    v51 = v8;
  }

  v11 = ParameterResolutionRecord.result.getter();
  v5 = specialized INIntentResolutionResult.typedDisambiguationItems<A>()();

  v12 = specialized Array._getCount()(v5);
  ObjectType = 0;
  v13 = MEMORY[0x277D84F90];
  while (v12 != ObjectType)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D5E29D0](ObjectType, v5);
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (ObjectType >= v9)
      {
        goto LABEL_36;
      }

      v14 = *(v5 + 8 * ObjectType + 32);
    }

    v15 = v14;
    v0 = ObjectType + 1;
    if (__OFADD__(ObjectType, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v2 = outlined bridged method (pb) of @objc INObject.identifier.getter(v14);
    v17 = v16;

    ++ObjectType;
    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v13 + 16);
        v22 = OUTLINED_FUNCTION_27_3();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v23, v24, v13);
        v13 = v25;
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v13);
        v13 = v26;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v2;
      *(v20 + 40) = v17;
      ObjectType = v0;
    }
  }

  specialized Array.append<A>(contentsOf:)(v13);
  v27 = v50;
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v50))
  {
    v29 = v28;
    ObjectType = swift_getObjectType();
    v30 = *(v29 + 16);
    v31 = v50;
    v0 = v30(ObjectType, v29);
    v32 = (*(v29 + 104))(ObjectType, v29);
    if (v32)
    {
      v5 = v32;
      v49 = v31;
      v2 = specialized Array._getCount()(v32);
      v33 = 0;
      v34 = MEMORY[0x277D84F90];
      while (v2 != v33)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x26D5E29D0](v33, v5);
        }

        else
        {
          v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33 >= v9)
          {
            goto LABEL_38;
          }

          v35 = *(v5 + 8 * v33 + 32);
        }

        ObjectType = v35;
        v0 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_37;
        }

        v36 = outlined bridged method (pb) of @objc INObject.identifier.getter(v35);
        v38 = v37;

        ++v33;
        if (v38)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = *(v34 + 16);
            v42 = OUTLINED_FUNCTION_27_3();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42, v43, v44, v34);
            v34 = v45;
          }

          ObjectType = *(v34 + 16);
          v39 = *(v34 + 24);
          if (ObjectType >= v39 >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, ObjectType + 1, 1, v34);
            v34 = v46;
          }

          *(v34 + 16) = ObjectType + 1;
          v40 = v34 + 16 * ObjectType;
          *(v40 + 32) = v36;
          *(v40 + 40) = v38;
          v33 = v0;
        }
      }

      specialized Array.append<A>(contentsOf:)(v34);
      v27 = v50;
      v31 = v49;
    }
  }

  return v51;
}

uint64_t static ContactsDisambiguationStrategy.isRequestForDifferentContact(_:currentContactIds:currentRelation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v77 - v11;
  USOParse.preferredUserDialogAct.getter(&v77 - v11);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_8:
    v78 = 0;
    v15 = 0;
    v84 = 0u;
    v85 = 0u;
LABEL_9:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  a1 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  (*(*(v13 - 8) + 8))(v12, v13);
  if (!a1)
  {
    goto LABEL_8;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v85 + 1))
  {
    goto LABEL_73;
  }

  outlined init with copy of Any?(&v84, v83);
  type metadata accessor for UsoTask_noVerb_common_Person();
  if (OUTLINED_FUNCTION_2_21())
  {

    OUTLINED_FUNCTION_24_5();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    a1 = v81;
    if (v81)
    {
      v14 = UsoEntity_common_Person.contactIds.getter();
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_24_5();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    goto LABEL_66;
  }

  type metadata accessor for UsoTask_read_common_Person();
  if (OUTLINED_FUNCTION_2_21())
  {
LABEL_35:

    OUTLINED_FUNCTION_24_5();
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    a1 = v81;
    if (v81)
    {
      v14 = UsoEntity_common_Person.contactIds.getter();
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_24_5();
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    goto LABEL_66;
  }

  type metadata accessor for UsoTask_request_common_Person();
  if (!OUTLINED_FUNCTION_2_21())
  {
    type metadata accessor for UsoTask_summarise_common_Person();
    if (OUTLINED_FUNCTION_2_21())
    {
      goto LABEL_35;
    }

    type metadata accessor for UsoTask_update_common_Person();
    if (OUTLINED_FUNCTION_2_21())
    {

      OUTLINED_FUNCTION_24_5();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      a1 = v81;
      if (v81)
      {
        v14 = UsoEntity_common_Person.contactIds.getter();
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_24_5();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      goto LABEL_66;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v83);
LABEL_73:
    v78 = 0;
    v15 = 0;
    goto LABEL_9;
  }

  a1 = v82;
  v14 = UsoTask_request_common_Person.contactIds.getter();

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
LABEL_66:

  v15 = v81;
  if (v81)
  {
    a1 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();

    if (a1)
    {
      UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
      v78 = v75;
      v15 = v76;
    }

    else
    {

      v78 = 0;
      v15 = 0;
    }
  }

  else
  {

    v78 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v83);
LABEL_10:
  outlined destroy of UsoEntity_common_Person.DefinedValues?(&v84, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v16, static Logger.siriContacts);

  v80 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_33_2();
    v77 = a4;
    v20 = v19;
    *&v84 = OUTLINED_FUNCTION_40_0();
    *v20 = 136315394;

    v22 = MEMORY[0x277D837D0];
    MEMORY[0x26D5E2610](v21, MEMORY[0x277D837D0]);
    v23 = v15;

    v24 = OUTLINED_FUNCTION_36_3();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    v28 = MEMORY[0x26D5E2610](a2, v22);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v84);

    *(v20 + 14) = v30;
    v15 = v23;
    _os_log_impl(&dword_26686A000, v17, v18, "#ContactsDisambiguationStrategy isRequestForDifferentContact contactIds: %s, current IDs are %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_1();
    a4 = v77;
    OUTLINED_FUNCTION_6();
  }

  if (*(v14 + 16))
  {

    v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v31);

    v34 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v33);
    v35 = specialized _NativeSet.intersection(_:)(v34, v32);

    v36 = *(v35 + 16);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v39 = OUTLINED_FUNCTION_21_2(v38);
    if (v36)
    {
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v40);
        OUTLINED_FUNCTION_7_4(&dword_26686A000, v41, v42, "#ContactsDisambiguationStrategy isRequestForDifferentContact returning false");
        OUTLINED_FUNCTION_11_1();
      }

      v43 = 0;
      return v43 & 1;
    }

    if (v39)
    {
      v51 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v51);
      v54 = "#ContactsDisambiguationStrategy isRequestForDifferentContact returning true";
LABEL_32:
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v52, v53, v54);
      OUTLINED_FUNCTION_11_1();
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_30();
    *v46 = 0;
    _os_log_impl(&dword_26686A000, v44, v45, "#ContactsDisambiguationStrategy isRequestForDifferentContact no contact IDs found in response parse", v46, 2u);
    OUTLINED_FUNCTION_6();
  }

  if (!a4)
  {
    v37 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v55))
    {
      v56 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v56);
      v54 = "#ContactsDisambiguationStrategy isRequestForDifferentContact no current relationship from intent, returning true";
      goto LABEL_32;
    }

LABEL_33:

    v43 = 1;
    return v43 & 1;
  }

  v47 = String.lowercased()();
  if (v15)
  {
    v48 = String.lowercased()();
    if (v47._countAndFlagsBits == v48._countAndFlagsBits && v47._object == v48._object)
    {
      v50 = 1;
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v50 = 0;
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v83[0] = v80;
    *v59 = 136315906;
    *&v84 = v78;
    *(&v84 + 1) = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v60 = String.init<A>(describing:)();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v83);
    v78 = v15;
    v63 = v62;

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    if (v50)
    {
      v64 = 0x6465686374616DLL;
    }

    else
    {
      v64 = 0x20746F6E20646964;
    }

    if (v50)
    {
      v65 = 0xE700000000000000;
    }

    else
    {
      v65 = 0xED0000686374616DLL;
    }

    v66 = 0xD000000000000011;
    if (v50)
    {
      v66 = 0x6E6F6320656D6173;
    }

    v77 = v66;
    if (v50)
    {
      v67 = 0xEC00000074636174;
    }

    else
    {
      v67 = 0x800000026696FDA0;
    }

    v68 = v50;
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v83);

    *(v59 + 14) = v69;
    v50 = v68;
    *(v59 + 22) = 2080;
    *&v84 = v79;
    *(&v84 + 1) = a4;

    v70 = String.init<A>(describing:)();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v83);

    *(v59 + 24) = v72;
    *(v59 + 32) = 2080;
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v67, v83);

    *(v59 + 34) = v73;
    _os_log_impl(&dword_26686A000, v57, v58, "#ContactsDisambiguationStrategy isRequestForDifferentContact identifiyingRelationship from parse %s %s the current %s, so %s.", v59, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  v43 = v50 ^ 1;
  return v43 & 1;
}

uint64_t ContactsDisambiguationStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v88 = a2;
  v93 = a3;
  v91 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v86 - v10;
  v90 = type metadata accessor for ConfirmationResponse();
  v12 = OUTLINED_FUNCTION_1_0(v90);
  v87 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v86 - v19;
  v20 = type metadata accessor for Parse();
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v21);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v86 - v29;
  v31 = type metadata accessor for USOParse();
  v32 = OUTLINED_FUNCTION_1_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v38 = &v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a1;
  Input.parse.getter();
  if ((*(v23 + 88))(v30, v20) != *MEMORY[0x277D5C160])
  {
    (*(v23 + 8))(v30, v20);
    v49 = v91;
    goto LABEL_9;
  }

  (*(v23 + 96))(v30, v20);
  v86 = v34;
  (*(v34 + 32))(v38, v30, v31);
  v39 = v38;
  if (USOParse.isOrdinalDisambiguation.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v40 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v40, static Logger.siriContacts);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    v43 = OUTLINED_FUNCTION_21_2(v42);
    v44 = v86;
    if (v43)
    {
      v45 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v45);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v46, v47, "#ContactsDisambiguationStrategy actionForInput ordinal disambiguation, returning .handle()");
      OUTLINED_FUNCTION_11_1();
    }

    static ActionForInput.handle()();
    return (*(v44 + 8))(v38, v31);
  }

  Input.parse.getter();
  Parse.confirmationResponse.getter();
  (*(v23 + 8))(v28, v20);
  v51 = v90;
  if (__swift_getEnumTagSinglePayload(v11, 1, v90) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    v52 = v39;
LABEL_12:
    v49 = v91;
    v53 = static ContactsDisambiguationStrategy.extractCurrentContext(from:)();
    v56 = static ContactsDisambiguationStrategy.isRequestForDifferentContact(_:currentContactIds:currentRelation:)(v52, v53, v54, v55);

    v57 = v86;
    if (v56)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v58 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v58, static Logger.siriContacts);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v60))
      {
        v61 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v61);
        OUTLINED_FUNCTION_7_4(&dword_26686A000, v62, v63, "#ContactsDisambiguationStrategy actionForInput encountered parse for different contact, ignoring");
        OUTLINED_FUNCTION_11_1();
      }

      static ActionForInput.ignore()();
      return (*(v57 + 8))(v52, v31);
    }

    if (USOParse.isOrdinalDisambiguation.getter() & 1) != 0 || (USOParse.isContactDisambiguation.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v73 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v73, static Logger.siriContacts);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v75))
      {
        v76 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v76);
        OUTLINED_FUNCTION_7_4(&dword_26686A000, v77, v78, "#ContactsDisambiguationStrategy actionForInput returning .handle()");
        OUTLINED_FUNCTION_11_1();
      }

      static ActionForInput.handle()();
      return (*(v57 + 8))(v52, v31);
    }

    (*(v57 + 8))(v52, v31);
LABEL_9:
    v50 = *(v49 + 256);
    return static StrategyUtil.getActionForInput<A>(input:intentType:)(v92, *(v49 + 240), v93);
  }

  v64 = v87;
  v65 = v89;
  (*(v87 + 32))(v89, v11, v51);
  (*(v64 + 16))(v18, v65, v51);
  v66 = (*(v64 + 88))(v18, v51);
  if (v66 == *MEMORY[0x277D5BED8])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v67 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v67, static Logger.siriContacts);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v69))
    {
      v70 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v70);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v71, v72, "#ContactsDisambiguationStrategy actionForInput user accepted, returning .handle()");
      v65 = v89;
      OUTLINED_FUNCTION_6();
    }

    static ActionForInput.handle()();
    (*(v64 + 8))(v65, v51);
    return (*(v86 + 8))(v39, v31);
  }

  else
  {
    v52 = v39;
    if (v66 != *MEMORY[0x277D5BED0])
    {
      v85 = *(v64 + 8);
      v85(v65, v51);
      v85(v18, v51);
      goto LABEL_12;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v79 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v79, static Logger.siriContacts);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v81))
    {
      v82 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v82);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v83, v84, "#ContactsDisambiguationStrategy actionForInput user rejected, returning .cancel()");
      v65 = v89;
      OUTLINED_FUNCTION_6();
    }

    static ActionForInput.cancel()();
    (*(v64 + 8))(v65, v51);
    return (*(v86 + 8))(v39, v31);
  }
}

uint64_t ContactsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = *(*v0 + 240);
  v3 = type metadata accessor for ParameterResolutionRecord();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for Signpost.OpenSignpost();
  v1[7] = v7;
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_10_0();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v65 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_28:
    OUTLINED_FUNCTION_30_2();
  }

  v2 = v0[7];
  v1 = v0[8];
  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v3 = v1 + *(v2 + 20);
  *v3 = "MakeDisambiguationItemContainer";
  *(v3 + 8) = 31;
  *(v3 + 16) = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v63 = v0;
  v7 = v0[2];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriContacts);
  v9 = v0;
  (*(v5 + 16))(v4, v7, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[4];
  if (v12)
  {
    v16 = v0[3];
    v17 = OUTLINED_FUNCTION_33_2();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64 = v19;
    *v17 = 136315394;
    v20 = _typeName(_:qualified:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v64);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = ParameterResolutionRecord.result.getter();
    (*(v14 + 8))(v13, v15);
    *(v17 + 14) = v23;
    *v18 = v23;
    _os_log_impl(&dword_26686A000, v10, v11, "#ContactsDisambiguationStrategy<%s> Intent resolution result: %@", v17, 0x16u);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    OUTLINED_FUNCTION_6();
    v9 = v63;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v24 = v9[4];
  v25 = v9[2];
  v26 = ParameterResolutionRecord.result.getter();
  v27 = specialized INIntentResolutionResult.typedDisambiguationItems<A>()();

  v28 = specialized Array._getCount()(v27);
  v29 = 0;
  v0 = MEMORY[0x277D84F90];
  while (v28 != v29)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x26D5E29D0](v29, v27);
    }

    else
    {
      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v33 = outlined bridged method (pb) of @objc INObject.identifier.getter(v30);
    v35 = v34;

    ++v29;
    if (v35)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = v0[2];
        v40 = OUTLINED_FUNCTION_27_3();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v41, v42, v0);
        v0 = v43;
      }

      v37 = v0[2];
      v36 = v0[3];
      if (v37 >= v36 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v0);
        v0 = v44;
      }

      v0[2] = v37 + 1;
      v38 = &v0[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
      v29 = v32;
    }
  }

  v45 = v0;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v63;
    v49 = v63[3];
    v50 = OUTLINED_FUNCTION_33_2();
    v64 = OUTLINED_FUNCTION_40_0();
    *v50 = 136315394;
    v51 = _typeName(_:qualified:)();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v64);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2080;
    v54 = MEMORY[0x26D5E2610](v45, MEMORY[0x277D837D0]);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v64);

    *(v50 + 14) = v56;
    _os_log_impl(&dword_26686A000, v46, v47, "#ContactsDisambiguationStrategy<%s> Contact identifiers retrieved from disambiguation items: %s", v50, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  else
  {

    v48 = v63;
  }

  v57 = v48[8];
  v58 = v48[6];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySSGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySSGMR);
  OUTLINED_FUNCTION_2_6(v59);
  v60 = BasicDisambiguationItemContainer.init(_:_:)();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v57);

  v61 = v48[1];

  return v61(v60);
}

uint64_t ContactsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[16] = v2;
  v1[17] = v3;
  v1[14] = v4;
  v1[15] = v5;
  v6 = *v0;
  v1[18] = *v0;
  v1[19] = *(v6 + 240);
  v7 = type metadata accessor for IntentPromptAnswer();
  v1[20] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[21] = v8;
  v10 = *(v9 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v11 = type metadata accessor for Parse.DirectInvocation();
  v1[24] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[25] = v12;
  v14 = *(v13 + 64);
  v1[26] = OUTLINED_FUNCTION_10_0();
  v15 = type metadata accessor for Parse();
  v1[27] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v1[28] = v16;
  v18 = *(v17 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v19 = type metadata accessor for Signpost.OpenSignpost();
  v1[32] = v19;
  OUTLINED_FUNCTION_18_0(v19);
  v21 = *(v20 + 64);
  v1[33] = OUTLINED_FUNCTION_10_0();
  v22 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

{
  v150 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v4 = v2 + *(v3 + 20);
  *v4 = "ParseDisambiguationResult";
  *(v4 + 8) = 25;
  *(v4 + 16) = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v7))
  {
    v8 = *(v0 + 152);
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_32_4();
    v146 = v9;
    *v3 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v146);

    *(v3 + 4) = v12;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  v18 = *(v0 + 248);
  v19 = *(v0 + 216);
  v20 = *(v0 + 224);
  v21 = *(v0 + 120);
  Input.parse.getter();
  v22 = *(v20 + 88);
  v23 = OUTLINED_FUNCTION_22_0();
  if (v24(v23) != *MEMORY[0x277D5C150])
  {
    goto LABEL_14;
  }

  v25 = *(v0 + 240);
  v26 = *(v0 + 216);
  v27 = *(v0 + 224);
  v29 = *(v0 + 200);
  v28 = *(v0 + 208);
  v30 = *(v0 + 192);
  (*(v27 + 16))(v25, *(v0 + 248), v26);
  (*(v27 + 96))(v25, v26);
  v31 = *(v29 + 32);
  v1 = (v29 + 32);
  v31(v28, v25, v30);
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000025 && 0x800000026696DFF0 == v32)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
LABEL_14:
      v35 = *(v0 + 232);
      v37 = *(v0 + 120);
      v36 = *(v0 + 128);
      Input.parse.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
      v38 = PaginatedItemContainer.items.getter();
      v39 = Parse.toContactId(existingCandidates:)(v38);
      v41 = v40;
      v42 = *(v0 + 232);
      v43 = *(v0 + 216);
      v44 = *(v0 + 224) + 8;
      if (v41)
      {

        v45 = OUTLINED_FUNCTION_30_4();
        v1(v45);
        v46 = 0;
        v47 = 0;
      }

      else
      {
        v60 = OUTLINED_FUNCTION_30_4();
        v1(v60);

        v46 = String.sanitizeContactIdURL.getter(v39._countAndFlagsBits, v39._object);
        v47 = v61;
      }

LABEL_22:
      v62 = *(v0 + 152);
      (v1)(*(v0 + 248), *(v0 + 216));
      v143 = v46;
      if (v62 == type metadata accessor for GetContactIntent() || (v63 = *(v0 + 152), v63 == type metadata accessor for GetContactAttributeIntent()))
      {
        v71 = *(v0 + 136);
        type metadata accessor for ParameterResolutionRecord();
        v65 = ParameterResolutionRecord.intent.getter();
        if (v47)
        {
          v72 = OUTLINED_FUNCTION_36_3();
          v73 = MEMORY[0x26D5E2470](v72);
        }

        else
        {
          v73 = 0;
        }

        v74 = MEMORY[0x26D5E2470](0xD000000000000011, 0x800000026696E340);
        [v65 setValue:v73 forKey:v74];
        swift_unknownObjectRelease();
      }

      else
      {
        v64 = *(v0 + 136);
        type metadata accessor for ParameterResolutionRecord();
        v65 = ParameterResolutionRecord.intent.getter();
        type metadata accessor for ModifyContactAttributeIntent();
        v66 = swift_dynamicCastClass();
        if (!v66 || (v67 = [v66 relatedContact]) == 0)
        {
LABEL_40:
          v96 = *(v0 + 144);
          v95 = *(v0 + 152);
          v97 = *(v0 + 128);
          v98 = *(v0 + 136);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
          *(v0 + 96) = PaginatedItemContainer.items.getter();
          v99 = swift_task_alloc();
          *(v99 + 16) = v95;
          *(v99 + 24) = *(v96 + 248);
          *(v99 + 40) = *(v96 + 264);
          *(v99 + 48) = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          OUTLINED_FUNCTION_12_8(&lazy protocol witness table cache variable for type [String] and conformance [A]);
          Sequence.first(where:)();

          v100 = *(v0 + 56);
          if (v100)
          {
            v101 = *(v0 + 48);

            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v102, v103))
            {
              v104 = *(v0 + 152);
              v105 = OUTLINED_FUNCTION_33_2();
              v146 = OUTLINED_FUNCTION_40_0();
              *v105 = 136315394;
              v106 = _typeName(_:qualified:)();
              v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v146);

              *(v105 + 4) = v108;
              *(v105 + 12) = 2080;
              *(v105 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v100, &v146);
              _os_log_impl(&dword_26686A000, v102, v103, "#ContactsDisambiguationStrategy<%s> Returning user-selected contact: %s.", v105, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_6();
              OUTLINED_FUNCTION_6();
            }

            v110 = (v0 + 184);
            v109 = *(v0 + 184);
            v111 = *(v0 + 152);
            v112 = *(v0 + 136);
            v149 = MEMORY[0x277D837D0];
            v146 = v101;
            v147 = v100;
            type metadata accessor for ParameterResolutionRecord();
            ParameterResolutionRecord.intent.getter();
            goto LABEL_50;
          }

          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = *(v0 + 152);
            v116 = OUTLINED_FUNCTION_33_2();
            v146 = OUTLINED_FUNCTION_40_0();
            *v116 = 136315394;
            v117 = _typeName(_:qualified:)();
            v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &v146);

            *(v116 + 4) = v119;
            *(v116 + 12) = 2080;
            v120 = v143;
            *(v0 + 64) = v143;
            *(v0 + 72) = v47;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v121 = String.init<A>(describing:)();
            v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &v146);

            *(v116 + 14) = v123;
            _os_log_impl(&dword_26686A000, v113, v114, "#ContactsDisambiguationStrategy<%s> Returning contact selected from contact picker: %s.", v116, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_11_1();

            if (v47)
            {
LABEL_46:
              v124 = MEMORY[0x277D837D0];
LABEL_49:
              v110 = (v0 + 176);
              v125 = *(v0 + 176);
              v126 = *(v0 + 152);
              v127 = *(v0 + 136);
              v146 = v120;
              v147 = v47;
              v149 = v124;
              type metadata accessor for ParameterResolutionRecord();
              ParameterResolutionRecord.intent.getter();
LABEL_50:
              IntentPromptAnswer.init(answeredValue:updatedIntent:)();
              v128 = *v110;
              v129 = *(v0 + 264);
              v131 = *(v0 + 240);
              v130 = *(v0 + 248);
              v132 = *(v0 + 232);
              v133 = *(v0 + 208);
              v134 = *(v0 + 184);
              v145 = *(v0 + 176);
              v136 = *(v0 + 160);
              v135 = *(v0 + 168);
              v137 = *(v0 + 112);
              static DisambiguationResult.chosenItem(_:)();
              (*(v135 + 8))(v128, v136);
              static os_signpost_type_t.end.getter();
              os_signpost(_:dso:log:name:signpostID:)();
              outlined destroy of Signpost.OpenSignpost(v129);

              OUTLINED_FUNCTION_3();
              goto LABEL_51;
            }
          }

          else
          {

            v120 = v143;
            if (v47)
            {
              goto LABEL_46;
            }
          }

          v120 = 0;
          v124 = 0;
          v148 = 0;
          goto LABEL_49;
        }

        v68 = v67;
        if (v47)
        {
          v69 = OUTLINED_FUNCTION_36_3();
          v70 = MEMORY[0x26D5E2470](v69);
        }

        else
        {
          v70 = 0;
        }

        v91 = *(v0 + 136);
        v92 = MEMORY[0x26D5E2470](0x696669746E656469, 0xEA00000000007265);
        [v68 setValue:v70 forKey:v92];

        swift_unknownObjectRelease();
        v93 = ParameterResolutionRecord.intent.getter();
        v94 = v68;
        v74 = MEMORY[0x26D5E2470](0x43646574616C6572, 0xEE00746361746E6FLL);
        [v93 setValue:v94 forKey:v74];
      }

      v65 = v74;
      goto LABEL_40;
    }
  }

  v48 = *(v0 + 208);
  v49 = Parse.DirectInvocation.userData.getter();
  if (!v49)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_33;
  }

  specialized Dictionary.subscript.getter(v49, (v0 + 16));

  if (!*(v0 + 40))
  {
LABEL_33:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0 + 16, &_sypSgMd, &_sypSgMR);
    goto LABEL_34;
  }

  if (swift_dynamicCast())
  {
    v50 = *(v0 + 224);
    v52 = *(v0 + 200);
    v51 = *(v0 + 208);
    v53 = *(v0 + 192);
    v54 = *(v0 + 128);
    v55 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
    v56 = PaginatedItemContainer.items.getter();
    Array.subscript.getter(v55, v56, MEMORY[0x277D837D0], v0 + 80);

    v57 = *(v52 + 8);
    v58 = OUTLINED_FUNCTION_22_0();
    v59(v58);
    v46 = *(v0 + 80);
    v47 = *(v0 + 88);
    v1 = *(v50 + 8);
    goto LABEL_22;
  }

LABEL_34:
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_15_0(v76))
  {
    v77 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v77);
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v78, v79, v80, v81, v82, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  v83 = *(v0 + 264);
  v84 = *(v0 + 248);
  v85 = *(v0 + 224);
  v140 = *(v0 + 240);
  v141 = *(v0 + 232);
  v86 = *(v0 + 208);
  v139 = *(v0 + 216);
  v88 = *(v0 + 192);
  v87 = *(v0 + 200);
  v142 = *(v0 + 184);
  v144 = *(v0 + 176);

  type metadata accessor for ContactsError();
  lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  swift_allocError();
  (*(v87 + 16))(v89, v86, v88);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v87 + 8))(v86, v88);
  (*(v85 + 8))(v84, v139);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v83);

  OUTLINED_FUNCTION_3();
LABEL_51:

  return v90();
}

uint64_t ContactsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = *v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[5] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v10);
  v12 = *(v11 + 64);
  v1[8] = OUTLINED_FUNCTION_10_0();
  v13 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  v20 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v4))
  {
    v5 = v1[3];
    swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_32_4();
    v19 = v6;
    *v0 = 136315138;
    v7 = *(v5 + 240);
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

    *(v0 + 4) = v10;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  v16 = v1[8];
  type metadata accessor for ContactsCommonCATsModern();
  static CATOption.defaultMode.getter();
  v1[9] = CATWrapperSimple.__allocating_init(options:globals:)();
  v17 = swift_task_alloc();
  v1[10] = v17;
  *v17 = v1;
  v17[1] = ContactsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameter:);

  return ContactsCommonCATsModern.cancellationAcknowledgement()();
}

{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_5_3();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_0();
  *v10 = v9;
  v5[11] = v0;

  if (!v0)
  {
    v11 = v5[9];

    v5[12] = v3;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_19_1();
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[4];
  static DialogPhase.canceled.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v4 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_2_6(v4);
  v0[13] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  v0[14] = v5;
  *(v5 + 16) = xmmword_266966A40;
  *(v5 + 32) = v1;
  v6 = *(MEMORY[0x277D5BD50] + 4);
  v12 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v7 = v1;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = ContactsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameter:);
  v9 = v0[7];
  v10 = v0[2];

  return v12(v10, v5, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[13];
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_19_1();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_22_0();
  v8(v7);

  OUTLINED_FUNCTION_3();

  return v9();
}

{
  OUTLINED_FUNCTION_41();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];

  OUTLINED_FUNCTION_3();
  v6 = v0[11];

  return v5();
}

uint64_t closure #1 in ContactsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for ParameterResolutionRecord();
  v9 = ParameterResolutionRecord.intent.getter();
  v10 = (*(a5 + 32))(a3, a5);
  v12 = v11;

  if (v12)
  {
    if (v7 == v10 && v12 == v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t closure #1 in ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2[10];
  v8 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v7);
  result = (*(v8 + 8))(v5, v6, v7, v8);
  if (v3)
  {

    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t closure #3 in ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = type metadata accessor for ResponseType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - v11;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  static ContactsContextProvider.disambiguate(contacts:)(a3, v12);
  v13 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v5 + 104))(v8, *MEMORY[0x277D5BC50], v4);
  return OutputGenerationManifest.responseType.setter();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x26D5E26C0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t ContactsDisambiguationStrategy.__deallocating_deinit()
{
  ContactsStrategy.deinit();
  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 240);
  v8 = *(a2 + 256);
  v5 = type metadata accessor for ContactsDisambiguationStrategy();
  return MEMORY[0x26D5DF6B0](a1, v5, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeDisambiguationItemContainer(contacts:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return ContactsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B588] + 4);
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  v13 = *(a4 + 256);
  *(v5 + 16) = *(a4 + 240);
  *(v5 + 32) = v13;
  v14 = type metadata accessor for ContactsDisambiguationStrategy();
  *v12 = v5;
  v12[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821B9F38](a1, a2, a3, v14, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B598] + 4);
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  v13 = *(a4 + 256);
  *(v5 + 16) = *(a4 + 240);
  *(v5 + 32) = v13;
  v14 = type metadata accessor for ContactsDisambiguationStrategy();
  *v12 = v5;
  v12[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821B9F48](a1, a2, a3, v14, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B590] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 256);
  *(v4 + 16) = *(a3 + 240);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for ContactsDisambiguationStrategy();
  *v10 = v4;
  v10[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821B9F40](a1, a2, v12, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B5A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 256);
  *(v4 + 16) = *(a3 + 240);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for ContactsDisambiguationStrategy();
  *v10 = v4;
  v10[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821B9F58](a1, a2, v12, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 240);
  v4 = *(a2 + 256);
  type metadata accessor for ContactsDisambiguationStrategy();
  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)();
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactsDisambiguationStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameter:)();
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 48) = v16;
  v17 = *(a6 + 256);
  *(v7 + 16) = *(a6 + 240);
  *(v7 + 32) = v17;
  v18 = type metadata accessor for ContactsDisambiguationStrategy();
  *v16 = v7;
  v16[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v18, a7);
}

uint64_t GetContactDisambiguationStrategy.__deallocating_deinit()
{
  specialized ContactsStrategy.deinit();
  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v8);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v12, v6, a2, a1);

    MEMORY[0x26D5E3300](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.intersection(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v42 = Hasher._finalize()();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return specialized _NativeSet.extractSubset(using:count:)(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_13()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = *(v0[30] + 8);
  return v0[31];
}

uint64_t OUTLINED_FUNCTION_12_8(unint64_t *a1)
{

  return lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_23_7()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = *(v0[30] + 8);
  return v0[31];
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return swift_slowAlloc();
}

uint64_t UsoIdentifierNamespace.rawValue.getter(char a1)
{
  result = 0x64695F6D657469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x65746C615F727361;
      break;
    case 3:
      v3 = 0x54656E6F6870;
      goto LABEL_6;
    case 4:
      v3 = 0x546C69616D65;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7079000000000000;
      break;
    case 5:
      result = 0x5473736572646461;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x54746361746E6F63;
      break;
    case 8:
      result = 0x6369746E616D6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UsoIdentifierAppBundle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x73746361746E6F43;
  }
}

uint64_t one-time initialization function for contactsUnlockPolicy()
{
  v0 = type metadata accessor for UnlockDevicePolicy();
  __swift_allocate_value_buffer(v0, static Constants.contactsUnlockPolicy);
  __swift_project_value_buffer(v0, static Constants.contactsUnlockPolicy);
  return static UnlockDevicePolicy.requiringDeviceUnlock.getter();
}

uint64_t static Constants.contactsUnlockPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for contactsUnlockPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UnlockDevicePolicy();
  v3 = __swift_project_value_buffer(v2, static Constants.contactsUnlockPolicy);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t getEnumTagSinglePayload for Constants(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Constants(_BYTE *result, int a2, int a3)
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

uint64_t static UsoIdentifierNamespace.attributeType(for:)(uint64_t a1, void *a2)
{
  if (a2 && (, v4._countAndFlagsBits = a1, v4._object = a2, v5.value = UsoIdentifierNamespace.init(rawValue:)(v4).value - 3, v5.value <= SiriContactsIntents_UsoIdentifierNamespace_asrAlternative))
  {
    return qword_266968590[v5.value];
  }

  else
  {
    return 0;
  }
}

SiriContactsIntents::UsoIdentifierNamespace_optional __swiftcall UsoIdentifierNamespace.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t UsoAttributeName.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

SiriContactsIntents::UsoIdentifierNamespace_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespace@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::UsoIdentifierNamespace_optional *a2@<X8>)
{
  result.value = UsoIdentifierNamespace.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespace@<X0>(uint64_t *a1@<X8>)
{
  result = UsoIdentifierNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t UsoCommonPersonAttribute.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x636974656E6F6870;
  }

  else
  {
    return 1701667182;
  }
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

uint64_t getEnumTagSinglePayload for UsoIdentifierNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UsoIdentifierNamespace(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
  }

  return result;
}

uint64_t ContactsBirthdayInfo.Builder.withBirthday(_:)(uint64_t a1)
{
  if (a1)
  {
    a1 = dispatch thunk of DialogCalendar.Builder.build()();
  }

  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ContactsBirthdayInfo.Builder.__deallocating_deinit()
{
  v1 = v0[2];

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents20ContactsBirthdayInfo7Builder_durationUntilBirthday);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t ContactsBirthdayInfo.init(builder:)(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  outlined init with copy of SpeakableString?(a1 + OBJC_IVAR____TtCC19SiriContactsIntents20ContactsBirthdayInfo7Builder_durationUntilBirthday, &v8 - v5);

  outlined init with take of SpeakableString?(v6, v1 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsBirthdayInfo_durationUntilBirthday);
  return v1;
}

uint64_t ContactsBirthdayInfo.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_10_5();
  result = MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  if (a1 != 0x7961646874726962 || a2 != 0xE800000000000000)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v14 = a1 == 0xD000000000000015 && 0x800000026696E460 == a2;
      if (v14 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsBirthdayInfo_durationUntilBirthday, v11);
        v15 = type metadata accessor for SpeakableString();
        if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
        {
          *(a3 + 24) = v15;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
          return (*(*(v15 - 8) + 32))(boxed_opaque_existential_1, v11, v15);
        }

        result = outlined destroy of SpeakableString?(v11);
      }

      goto LABEL_17;
    }
  }

  v13 = *(v3 + 24);
  if (!v13)
  {
LABEL_17:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = type metadata accessor for DialogCalendar();
  *a3 = v13;
}

uint64_t ContactsBirthdayInfo.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsBirthdayInfo.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ContactsBirthdayInfo.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x7961646874726962;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsBirthdayInfo.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContactsBirthdayInfo.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsBirthdayInfo.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsBirthdayInfo.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsBirthdayInfo.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = ContactsBirthdayInfo.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsBirthdayInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsBirthdayInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsBirthdayInfo.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsBirthdayInfo_durationUntilBirthday);
  return v0;
}

uint64_t ContactsBirthdayInfo.__deallocating_deinit()
{
  ContactsBirthdayInfo.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for ContactsBirthdayInfo()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsBirthdayInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E12BirthdayInfoC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E12BirthdayInfoC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = *(v3 + 24);
  v19[7] = 0;
  type metadata accessor for DialogCalendar();
  OUTLINED_FUNCTION_0_22();
  lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(v14, v15);
  OUTLINED_FUNCTION_5_19();
  if (!v2)
  {
    v19[6] = 1;
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_18();
    lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(v16, v17);
    OUTLINED_FUNCTION_5_19();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t ContactsBirthdayInfo.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ContactsBirthdayInfo.init(from:)(a1);
  return v5;
}

void type metadata accessor for SpeakableString?()
{
  if (!lazy cache variable for type metadata for SpeakableString?)
  {
    type metadata accessor for SpeakableString();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SpeakableString?);
    }
  }
}

void type metadata completion function for ContactsBirthdayInfo.Builder()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsBirthdayInfo.init(from:)(uint64_t *a1)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E12BirthdayInfoC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E12BirthdayInfoC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0(v21);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v10);
  *(v1 + 16) = 0;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsBirthdayInfo(0);
    v14 = *(*v1 + 48);
    v15 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DialogCalendar();
    v23 = 0;
    OUTLINED_FUNCTION_0_22();
    lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(v12, v13);
    OUTLINED_FUNCTION_6_15();
    *(v1 + 24) = v24;
    type metadata accessor for SpeakableString();
    v22 = 1;
    OUTLINED_FUNCTION_1_18();
    lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(v17, v18);
    OUTLINED_FUNCTION_6_15();
    v19 = OUTLINED_FUNCTION_2_22();
    v20(v19);
    outlined init with take of SpeakableString?(v7, v1 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsBirthdayInfo_durationUntilBirthday);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

void *protocol witness for CATType.mockGlobals.getter in conformance ContactsBirthdayInfo()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void protocol witness for CATType.mockGlobals.setter in conformance ContactsBirthdayInfo(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*protocol witness for CATType.mockGlobals.modify in conformance ContactsBirthdayInfo())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for CATType.mockGlobals.modify in conformance ContactsBirthdayInfo;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsBirthdayInfo@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsBirthdayInfo.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactsBirthdayInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactsBirthdayInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t ContactsAgeInfo.__allocating_init(contact:contactAttribute:mockGlobals:)(void *a1, id a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v166 = &v157 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v157 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v157 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v157 - v20;
  v170 = type metadata accessor for DateComponents();
  v22 = *(v170 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v170);
  v26 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v27);
  v168 = a1;
  v169 = &v157 - v28;
  static DateTimeUtil.getRequestedAgeInterval(contact:contactAttribute:)(a1, a2);
  if (v29)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v30, static Logger.siriContacts);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    v33 = OUTLINED_FUNCTION_21_2(v32);
    v34 = v168;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      OUTLINED_FUNCTION_2_23();
      _os_log_impl(v36, v37, v38, v39, v35, 2u);
      OUTLINED_FUNCTION_6();
    }

    return 0;
  }

  v40 = type metadata accessor for DialogDuration();
  v163 = a3;
  v161 = a3;
  v162 = v40;
  v165 = DialogDuration.init(_:mockGlobals:)();
  type metadata accessor for ContactsAgeInfo.Builder();
  swift_initStackObject();
  v164 = ContactsAgeInfo.Builder.init()();
  v41 = [a2 ageDateTime];
  v167 = a2;
  if (v41)
  {
    v42 = v41;
    v43 = [v41 dateComponents];

    v44 = v22;
    if (v43)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = v170;
    __swift_storeEnumTagSinglePayload(v19, v45, 1, v170);
    outlined init with take of DateComponents?(v19, v21);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v46);
    a2 = v167;
    if (EnumTagSinglePayload != 1)
    {
      (*(v22 + 32))(v169, v21, v46);
      goto LABEL_16;
    }
  }

  else
  {
    v46 = v170;
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v170);
    v44 = v22;
  }

  static DateComponents.startOfToday.getter();
  if (__swift_getEnumTagSinglePayload(v21, 1, v46) != 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v21, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

LABEL_16:
  v48 = v168;
  v49 = [v168 birthday];
  if (!v49)
  {
    goto LABEL_36;
  }

  v50 = v49;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = DateComponents.month.getter();
  v53 = v52;
  v54 = DateComponents.month.getter();
  if (v53)
  {
    if ((v55 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((v55 & 1) != 0 || v51 != v54)
  {
    goto LABEL_33;
  }

  v56 = DateComponents.day.getter();
  v58 = v57;
  v59 = DateComponents.day.getter();
  if (v58)
  {
    if ((v60 & 1) == 0)
    {
LABEL_33:
      v77 = OUTLINED_FUNCTION_1_19();
      v78(v77);
      a2 = v167;
      goto LABEL_36;
    }
  }

  else if ((v60 & 1) != 0 || v56 != v59)
  {
    goto LABEL_33;
  }

  v61 = dispatch thunk of DialogDuration.valueInYears.getter();
  v63 = v62;
  v64 = round(*&v61);
  if (v62)
  {
    v64 = *&v61;
  }

  v160 = *&v64;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v65 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v65, static Logger.siriContacts);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = OUTLINED_FUNCTION_24();
    v157 = v68;
    v158 = OUTLINED_FUNCTION_23();
    v173 = v158;
    *v68 = 136315138;
    v69 = v160;
    v171 = v160;
    v172 = v63 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, _sSdSgMR);
    v70 = String.init<A>(describing:)();
    v159 = v63;
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v173);

    v73 = v157;
    *(v157 + 1) = v72;
    v48 = v168;
    _os_log_impl(&dword_26686A000, v66, v67, "#ContactsAgeInfo.init: birthday is today or on the date requested, setting ageInYearsAsInteger to %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v158);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v74 = OUTLINED_FUNCTION_1_19();
    v75(v74);
    v76 = v159;
    a2 = v167;
  }

  else
  {

    v79 = OUTLINED_FUNCTION_1_19();
    v80(v79);
    v76 = v63;
    a2 = v167;
    v69 = v160;
  }

  v81 = v164;
  *(v164 + 24) = v69;
  *(v81 + 32) = v76 & 1;
LABEL_36:
  v82 = [a2 ageDateTime];
  v83 = v165;
  if (!v82)
  {
    goto LABEL_58;
  }

  v84 = v82;
  v85 = [v82 dateComponents];

  if (v85)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = 0;
  }

  else
  {
    v86 = 1;
  }

  v87 = v170;
  __swift_storeEnumTagSinglePayload(v13, v86, 1, v170);
  outlined init with take of DateComponents?(v13, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v87))
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    goto LABEL_58;
  }

  (*(v44 + 16))(v26, v16, v87);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v88 = v166;
  DateComponents.date.getter();
  v89 = *(v44 + 8);
  v89(v26, v87);
  v90 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v88, 1, v90) != 1)
  {
    Date.timeIntervalSince1970.getter();
    (*(*(v90 - 8) + 8))(v88, v90);
    type metadata accessor for DialogCalendar();
    v91 = v163;
    DialogCalendar.init(_:mockGlobals:)();
    v92 = [v167 ageDateTime];
    if (v92)
    {
      v93 = v92;
      v94 = [v92 qualifier];

      if (v94 == 2)
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v142 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v142, static Logger.siriContacts);

        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v143, v144))
        {
          v145 = OUTLINED_FUNCTION_24();
          v146 = OUTLINED_FUNCTION_23();
          v171 = v146;
          *v145 = 136315138;
          v173 = v83;

          v147 = OUTLINED_FUNCTION_5_20();
          v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v148, &v171);

          *(v145 + 4) = v149;
          OUTLINED_FUNCTION_2_23();
          _os_log_impl(v150, v151, v152, v153, v145, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v146);
          OUTLINED_FUNCTION_6();
          v48 = v168;
          OUTLINED_FUNCTION_6();
        }

        ContactsAgeInfo.Builder.withPastAge(_:)(v154);
        goto LABEL_79;
      }

      if (v94 == 1)
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v95 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v95, static Logger.siriContacts);

        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = OUTLINED_FUNCTION_24();
          v99 = OUTLINED_FUNCTION_23();
          v171 = v99;
          *v98 = 136315138;
          v173 = v83;

          v100 = OUTLINED_FUNCTION_5_20();
          v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v171);

          *(v98 + 4) = v102;
          OUTLINED_FUNCTION_2_23();
          _os_log_impl(v103, v104, v105, v106, v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v99);
          OUTLINED_FUNCTION_6();
          v48 = v168;
          OUTLINED_FUNCTION_6();
        }

        ContactsAgeInfo.Builder.withFutureAge(_:)(v107);
LABEL_79:

        v156 = ContactsAgeInfo.Builder.withRequestedDate(_:)(v155);

        type metadata accessor for ContactsAgeInfo();
        swift_allocObject();
        v140 = ContactsAgeInfo.init(builder:)(v156);

        goto LABEL_69;
      }
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v108 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v108, static Logger.siriContacts);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      OUTLINED_FUNCTION_2_23();
      _os_log_impl(v112, v113, v114, v115, v111, 2u);
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_57;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v88, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_57:
  a2 = v167;
LABEL_58:
  v116 = COERCE_DOUBLE(dispatch thunk of DialogDuration.valueInDays.getter());
  if ((v117 & 1) == 0 && v116 < 0.0)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v118 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v118, static Logger.siriContacts);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      OUTLINED_FUNCTION_2_23();
      _os_log_impl(v122, v123, v124, v125, v121, 2u);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    (*(v44 + 8))(v169, v170);
    return 0;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v126 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v126, static Logger.siriContacts);

  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = OUTLINED_FUNCTION_24();
    v130 = OUTLINED_FUNCTION_23();
    v171 = v130;
    *v129 = 136315138;
    v173 = v83;

    v131 = OUTLINED_FUNCTION_5_20();
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, &v171);
    v48 = v168;

    *(v129 + 4) = v133;
    OUTLINED_FUNCTION_2_23();
    _os_log_impl(v134, v135, v136, v137, v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v130);
    a2 = v167;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v139 = ContactsAgeInfo.Builder.withAge(_:)(v138);

  type metadata accessor for ContactsAgeInfo();
  swift_allocObject();
  v140 = ContactsAgeInfo.init(builder:)(v139);

  v89 = *(v44 + 8);
LABEL_69:
  v89(v169, v170);
  return v140;
}

uint64_t OUTLINED_FUNCTION_1_19()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_20()
{
  v2 = *(v0 - 264);

  return String.init<A>(describing:)();
}

uint64_t GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[50] = v2;
  v1[51] = v0;
  v1[49] = v3;
  v4 = *(*(type metadata accessor for CATOption() - 8) + 64);
  v1[52] = OUTLINED_FUNCTION_10_0();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  v1[53] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for TemplatingResult();
  v1[54] = v6;
  v7 = *(v6 - 8);
  v1[55] = v7;
  v8 = *(v7 + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  v1[60] = v9;
  v10 = *(v9 - 8);
  v1[61] = v10;
  v11 = *(v10 + 64);
  v1[62] = OUTLINED_FUNCTION_10_0();
  v12 = type metadata accessor for Signpost.OpenSignpost();
  v1[63] = v12;
  v13 = *(*(v12 - 8) + 64);
  v1[64] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 408);
  v4 = static Signpost.contactsLog;
  *(v0 + 520) = static Signpost.contactsLog;
  v5 = v4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_5_21();
  v6 = os_signpost(_:dso:log:name:signpostID:)();
  v7 = v1 + *(v2 + 20);
  *v7 = "MakeGetContactAttributeUnsupportedValueOutput";
  *(v7 + 8) = 45;
  *(v7 + 16) = 2;
  if (specialized ContactsStrategy.isSmartEnabled.getter(v6))
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriContacts);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26686A000, v9, v10, "#GetContactAttributeUnsupportedValueStrategy makeIntentHandledResponse SMART enabled but not yet implemented for the intent", v11, 2u);
      MEMORY[0x26D5E3300](v11, -1, -1);
    }
  }

  v13 = *(v0 + 488);
  v12 = *(v0 + 496);
  v14 = *(v0 + 480);
  v15 = *(v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v16 = ParameterIdentifier.name.getter();
  v18 = v17;
  v19 = *(v13 + 8);
  v20 = OUTLINED_FUNCTION_17_0();
  v21(v20);
  v22._countAndFlagsBits = v16;
  v22._object = v18;
  v23.value = GetContactAttributeSlots.init(rawValue:)(v22).value;
  if (v23.value == SiriContactsIntents_GetContactAttributeSlots_unknownDefault)
  {
LABEL_10:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 624) = v24;
    *v24 = v25;
    v24[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v26 = *(v0 + 400);
    v27 = *(v0 + 408);
    v28 = *(v0 + 392);
    OUTLINED_FUNCTION_8_6();

    __asm { BR              X2 }
  }

  GetContactAttributeSlots.rawValue.getter(v23.value);
  if (v32 == 0xD000000000000015 && 0x800000026696E390 == v31)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v35 = *(v0 + 400);
  v36 = ParameterResolutionRecord.result.getter();
  v37 = [v36 unsupportedReason];

  v38 = GetContactAttributeContactAttributeToGetUnsupportedReason.init(rawValue:)(v37);
  if (v39)
  {
    goto LABEL_21;
  }

  switch(v38)
  {
    case 1:
      v59 = *(*(v0 + 408) + 96);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 584) = v60;
      *v60 = v61;
      v60[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v62 = *(v0 + 456);
      OUTLINED_FUNCTION_8_6();

      return ContactsCommonCATs.unsupportedAuthFailed()();
    case 2:
      v53 = *(v0 + 408);
      v52 = *(v0 + 416);
      v54 = *(v0 + 400);
      type metadata accessor for ContactsLabelCATs();
      static CATOption.defaultMode.getter();
      v55 = CATWrapper.__allocating_init(options:globals:)();
      *(v0 + 544) = v55;
      v56 = *(v53 + 96);
      outlined init with copy of DeviceState(v53 + 16, v0 + 272);
      *(v0 + 640) = *(v53 + 112);
      v57 = ParameterResolutionRecord.intent.getter();
      v58 = [v57 isMe];

      if (v58)
      {
        [v58 BOOLValue];
      }

      v64 = *(v0 + 392);
      v65 = type metadata accessor for AceOutput();
      v66 = MEMORY[0x277D5C1D8];
      v64[3] = v65;
      v64[4] = v66;
      *(v0 + 552) = __swift_allocate_boxed_opaque_existential_1(v64);
      outlined init with copy of DeviceState(v0 + 272, v0 + 104);
      *(v0 + 176) = &type metadata for InstalledAppsProvider;
      *(v0 + 184) = &protocol witness table for InstalledAppsProvider;
      *(v0 + 144) = v55;

      specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
      *(v0 + 560) = v67;
      outlined destroy of MissingMeCardViewBuilder(v0 + 104);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 568) = v68;
      *v68 = v69;
      v68[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v70 = *(v0 + 464);
      OUTLINED_FUNCTION_8_6();

      return ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)();
    case 3:
      v46 = *(*(v0 + 408) + 96);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 528) = v47;
      *v47 = v48;
      v47[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v49 = *(v0 + 472);
      OUTLINED_FUNCTION_8_6();

      return GetContactAttributeCATs.unsupportedContactAttribute()(v50);
    default:
LABEL_21:
      v40 = *(v0 + 416);
      type metadata accessor for ContactsCommonCATs();
      static CATOption.defaultMode.getter();
      *(v0 + 600) = CATWrapper.__allocating_init(options:globals:)();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 608) = v41;
      *v41 = v42;
      v41[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v43 = *(v0 + 448);
      OUTLINED_FUNCTION_8_6();

      return ContactsCommonCATs.unsupportedAction()();
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 536) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 568);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 576) = v0;

  if (v0)
  {
    v9 = *(v3 + 560);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 584);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 592) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v16 = *(v0 + 520);
  v17 = *(v0 + 512);
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v15 = *(v0 + 432);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = *(v4 + 112);
  outlined init with copy of DeviceState(v4 + 16, v0 + 16);
  v7 = *(v4 + 104);
  *(v0 + 88) = &type metadata for InstalledAppsProvider;
  *(v0 + 96) = &protocol witness table for InstalledAppsProvider;
  *(v0 + 56) = v7;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of ErrorViewBuilder(v0 + 16);
  v8 = type metadata accessor for NLContextUpdate();
  v11 = OUTLINED_FUNCTION_17_5(v3, v9, v10, v8);
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 232) = 0u;
  v12 = MEMORY[0x277D5C1D8];
  v5[3] = v11;
  v5[4] = v12;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0 + 232, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v15);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_5_21();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_23();

  OUTLINED_FUNCTION_6_4();

  return v13();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 608);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 616) = v0;

  if (!v0)
  {
    v9 = *(v3 + 600);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 624);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 632) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_11_11();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_0_23();

  OUTLINED_FUNCTION_6_4();

  return v0();
}

uint64_t GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 520);
  v39 = *(v14 + 512);
  v16 = *(v14 + 472);
  v17 = *(v14 + 432);
  v18 = *(v14 + 440);
  v19 = *(v14 + 424);
  v20 = *(v14 + 392);
  v21 = *(*(v14 + 408) + 112);
  v22 = type metadata accessor for NLContextUpdate();
  v25 = OUTLINED_FUNCTION_17_5(v19, v23, v24, v22);
  *(v14 + 352) = 0u;
  *(v14 + 368) = 0u;
  *(v14 + 384) = 0;
  v26 = MEMORY[0x277D5C1D8];
  v20[3] = v25;
  v20[4] = v26;
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_21_6();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 352, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v19, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v27 = *(v18 + 8);
  v28 = OUTLINED_FUNCTION_17_0();
  v29(v28);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_5_21();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_23();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_13_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v14 + 352, a10, v39, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 560);
  v16 = *(v14 + 552);
  v17 = *(v14 + 640);
  v18 = *(v14 + 544);
  v36 = *(v14 + 520);
  v37 = *(v14 + 512);
  v19 = *(v14 + 464);
  v21 = *(v14 + 432);
  v20 = *(v14 + 440);
  v22 = *(v14 + 424);
  v23 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  *(v14 + 344) = 0;
  *(v14 + 312) = 0u;
  *(v14 + 328) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 312, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v22, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v24 = *(v20 + 8);
  v25 = OUTLINED_FUNCTION_17_0();
  v26(v25);
  __swift_destroy_boxed_opaque_existential_0Tm((v14 + 272));
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_5_21();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_23();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_13_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v14 + 312, v36, v37, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 520);
  v39 = *(v14 + 512);
  v17 = *(v14 + 440);
  v16 = *(v14 + 448);
  v19 = *(v14 + 424);
  v18 = *(v14 + 432);
  v20 = *(v14 + 392);
  v21 = *(*(v14 + 408) + 112);
  v22 = type metadata accessor for NLContextUpdate();
  v25 = OUTLINED_FUNCTION_17_5(v19, v23, v24, v22);
  *(v14 + 208) = 0u;
  *(v14 + 224) = 0;
  *(v14 + 192) = 0u;
  v26 = MEMORY[0x277D5C1D8];
  v20[3] = v25;
  v20[4] = v26;
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_21_6();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 192, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v19, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v27 = *(v17 + 8);
  v28 = OUTLINED_FUNCTION_17_0();
  v29(v28);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_5_21();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_23();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_13_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v14 + 192, a10, v39, a12, a13, a14);
}

uint64_t GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v13 = v12[68];
  OUTLINED_FUNCTION_11_11();
  v14 = v12[49];

  __swift_destroy_boxed_opaque_existential_0Tm(v12 + 34);
  __swift_deallocate_boxed_opaque_existential_1(v14);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24();
  v15 = v12[72];
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11_11();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24();
  v13 = *(v12 + 632);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11_11();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24();
  v13 = *(v12 + 536);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11_11();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24();
  v13 = *(v12 + 592);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v13 = *(v12 + 600);
  OUTLINED_FUNCTION_11_11();

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24();
  v14 = *(v12 + 616);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t type metadata accessor for GetContactAttributeUnsupportedValueStrategy()
{
  result = type metadata singleton initialization cache for GetContactAttributeUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for GetContactAttributeUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_23()
{
  v2 = v0[62];
  v4 = v0[58];
  v3 = v0[59];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[64];

  return outlined destroy of Signpost.OpenSignpost(v9);
}

uint64_t OUTLINED_FUNCTION_1_20()
{
  v2 = v0[62];
  v4 = v0[58];
  v3 = v0[59];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[64];

  return outlined destroy of Signpost.OpenSignpost(v9);
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return type metadata accessor for AceOutput();
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

id static DateTimeUtil.getRequestedAgeInterval(contact:contactAttribute:)(void *a1, void *a2)
{
  v90 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_4();
  v91 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = OUTLINED_FUNCTION_18_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_16();
  v88 = v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_6();
  v92 = type metadata accessor for Date();
  v19 = OUTLINED_FUNCTION_1_0(v92);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_16();
  v89 = v24;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_6();
  v87 = v26;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  v30 = type metadata accessor for DateComponents();
  v31 = OUTLINED_FUNCTION_1_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  v38 = (v36 - v37);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v83 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v83 - v43;
  result = [a1 birthday];
  if (result)
  {
    v46 = result;
    v85 = v29;
    v86 = v21;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = *(v33 + 32);
    v47(v44, v42, v30);
    DateComponents.year.getter();
    if (v48)
    {
      v49 = OUTLINED_FUNCTION_23_8();
      v50(v49);
      return 0;
    }

    DateComponents.date.getter();
    v51 = v92;
    OUTLINED_FUNCTION_57(v2, 1, v92);
    if (v52)
    {
      v53 = OUTLINED_FUNCTION_23_8();
      v54(v53);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return 0;
    }

    v84 = *(v86 + 32);
    v84(v85, v2, v51);
    v55 = [v90 ageDateTime];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 dateComponents];

      if (v57)
      {
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v58 = 0;
      }

      else
      {
        v58 = 1;
      }

      v59 = v91;
      __swift_storeEnumTagSinglePayload(v10, v58, 1, v30);
      outlined init with take of DateComponents?(v10, v59);
      OUTLINED_FUNCTION_57(v59, 1, v30);
      if (!v52)
      {
        v47(v38, v59, v30);
        DateComponents.year.getter();
        if ((v70 & 1) == 0)
        {
          v73 = v88;
          DateComponents.date.getter();
          v74 = v92;
          OUTLINED_FUNCTION_57(v73, 1, v92);
          v60 = v86;
          if (!v52)
          {
            v77 = v87;
            v84(v87, v73, v74);
            v78 = v85;
            v79 = v74;
            Date.timeIntervalSince(_:)();
            v64 = v80;
            v81 = *(v60 + 8);
            v81(v77, v79);
            v82 = *(v33 + 8);
            v82(v38, v30);
            v81(v78, v79);
            v82(v44, v30);
            return v64;
          }

          v75 = OUTLINED_FUNCTION_48();
          v76(v75);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_18:
          v61 = v89;
          static Date.startOfTodayGMT.getter();
          v62 = v85;
          Date.timeIntervalSince(_:)();
          v64 = v63;
          v65 = *(v60 + 8);
          v66 = v61;
          v67 = v92;
          v65(v66, v92);
          v65(v62, v67);
          v68 = OUTLINED_FUNCTION_23_8();
          v69(v68);
          return v64;
        }

        v71 = OUTLINED_FUNCTION_48();
        v72(v71);
LABEL_17:
        v60 = v86;
        goto LABEL_18;
      }
    }

    else
    {
      v59 = v91;
      __swift_storeEnumTagSinglePayload(v91, 1, 1, v30);
    }

    outlined destroy of UsoEntity_common_Person.DefinedValues?(v59, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    goto LABEL_17;
  }

  return result;
}

uint64_t static DateTimeUtil.getRequestedAgeDateTime(from:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  v4 = *(v3 + 64) + 15;
  v0[3] = swift_task_alloc();
  v0[4] = swift_task_alloc();
  v5 = type metadata accessor for TimeZone();
  v0[5] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v0[6] = v6;
  v8 = *(v7 + 64);
  v0[7] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for Calendar();
  v0[8] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v0[9] = v10;
  v12 = *(v11 + 64);
  v0[10] = OUTLINED_FUNCTION_10_0();
  v13 = type metadata accessor for DateComponents();
  v0[11] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v0[12] = v14;
  v16 = *(v15 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v17 = type metadata accessor for DateTimeResolutionSpec.DateTimeConvergenceStrategy();
  v0[16] = v17;
  OUTLINED_FUNCTION_1_1(v17);
  v0[17] = v18;
  v20 = *(v19 + 64);
  v0[18] = OUTLINED_FUNCTION_10_0();
  v21 = type metadata accessor for DateTimeResolutionSpec.ExpandToType();
  v0[19] = v21;
  OUTLINED_FUNCTION_1_1(v21);
  v0[20] = v22;
  v24 = *(v23 + 64);
  v0[21] = OUTLINED_FUNCTION_10_0();
  v25 = type metadata accessor for DateTimeResolutionSpec();
  v0[22] = v25;
  OUTLINED_FUNCTION_1_1(v25);
  v0[23] = v26;
  v28 = *(v27 + 64);
  v0[24] = OUTLINED_FUNCTION_10_0();
  v29 = type metadata accessor for DateTimeResolver();
  v0[25] = v29;
  OUTLINED_FUNCTION_1_1(v29);
  v0[26] = v30;
  v32 = *(v31 + 64);
  v0[27] = OUTLINED_FUNCTION_10_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  OUTLINED_FUNCTION_18_0(v33);
  v35 = *(v34 + 64);
  v0[28] = OUTLINED_FUNCTION_10_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
  v0[29] = v36;
  OUTLINED_FUNCTION_1_1(v36);
  v0[30] = v37;
  v39 = *(v38 + 64) + 15;
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v40 = type metadata accessor for Signpost.OpenSignpost();
  v0[34] = v40;
  OUTLINED_FUNCTION_18_0(v40);
  v42 = *(v41 + 64);
  v0[35] = OUTLINED_FUNCTION_10_0();
  v43 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[2];
  v4 = static Signpost.contactsLog;
  v0[36] = static Signpost.contactsLog;
  v5 = v4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = v1 + *(v2 + 20);
  *v6 = "AgeDateTime";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = UsoEntity_common_Date.toDate()();
  v0[37] = v7;
  if (v7)
  {
    v8 = v0[27];
    v9 = type metadata accessor for DateTime.Time();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();

    DateTime.Time.init(withHour:)();
    v12 = type metadata accessor for DateTime();
    v0[38] = v12;
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v0[39] = DateTime.init(withDate:time:)();
    DateTimeResolver.init()();
    v15 = swift_task_alloc();
    v0[40] = v15;
    *v15 = v0;
    v15[1] = static DateTimeUtil.getRequestedAgeDateTime(from:);

    return static DateTimeUtil.requestContext()();
  }

  else
  {
    v17 = v0[35];
    v18 = v0[36];
    v20 = v0[32];
    v19 = v0[33];
    v21 = v0[31];
    v23 = v0[27];
    v22 = v0[28];
    v24 = v0[24];
    v25 = v0[21];
    v27 = v0[18];
    v28 = v0[15];
    v29 = v0[14];
    v30 = v0[13];
    v31 = v0[10];
    v32 = v0[7];
    v33 = v0[4];
    v34 = v0[3];
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v17);

    v26 = v0[1];

    return v26(0);
  }
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(*v0 + 320);
  v7 = *v0;
  *(*v0 + 328) = v2;

  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  v150 = v0;
  v146 = v0[41];
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[18];
  v8 = v0[16];
  v7 = v0[17];
  (*(v0[20] + 104))(v0[21], *MEMORY[0x277D56138], v0[19]);
  (*(v7 + 104))(v6, *MEMORY[0x277D56128], v8);
  type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
  lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(&lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, MEMORY[0x277D563F8]);
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_42_1();
  DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)();
  DateTimeResolver.makeRecommendation(value:context:spec:)();
  v9 = v0[41];
  v21 = v0[29];
  v22 = v0[30];
  v23 = v0[28];
  v145 = v0[27];
  v148 = v0[33];
  v25 = v0[25];
  v24 = v0[26];
  v26 = v0[23];
  v27 = v0[24];
  v28 = v0[22];

  v29 = *(v26 + 8);
  v30 = OUTLINED_FUNCTION_42_1();
  v31(v30);
  (*(v24 + 8))(v145, v25);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v21);
  (*(v22 + 32))(v148, v23, v21);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v35 = v0[32];
  v36 = v0[33];
  v38 = v0[29];
  v37 = v0[30];
  v39 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v39, static Logger.siriContacts);
  v40 = *(v37 + 16);
  v40(v35, v36, v38);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[32];
  v46 = v0[29];
  v45 = v0[30];
  if (v43)
  {
    v141 = v42;
    v47 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v149 = v139;
    *v47 = 136315138;
    lazy protocol witness table accessor for type Recommendation<DateTime> and conformance Recommendation<A>();
    v48 = v40;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v52 = OUTLINED_FUNCTION_39_2();
    v53(v52);
    v54 = v49;
    v40 = v48;
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v51, &v149);

    *(v47 + 4) = v55;
    _os_log_impl(&dword_26686A000, v41, v141, "#getRequestedAgeDateTime ### datetime recommendation: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v139);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v56 = OUTLINED_FUNCTION_39_2();
    v57(v56);
  }

  v58 = v0[30];
  v59 = v0[31];
  v60 = v0[29];
  v40(v59, v0[33], v60);
  v61 = (*(v58 + 88))(v59, v60);
  if (v61 == *MEMORY[0x277D56080] || v61 == *MEMORY[0x277D56068])
  {
    v63 = v0[31];
    v65 = v0[9];
    v64 = v0[10];
    v67 = v0[7];
    v66 = v0[8];
    v68 = v0[5];
    v69 = v0[6];
    (*(v0[30] + 96))(v63, v0[29]);
    v70 = *v63;
    static Calendar.current.getter();
    static TimeZone.current.getter();
    v71 = DateTime.toINDateComponentsRange(calendar:timeZone:)();

    v72 = *(v69 + 8);
    v73 = OUTLINED_FUNCTION_43();
    v74(v73);
    (*(v65 + 8))(v64, v66);
    v75 = [v71 startDateComponents];

    v76 = v0[39];
    v77 = v0[37];
    v78 = v0[29];
    v79 = v0[30];
    if (!v75)
    {
      v145(v0[33], v0[29]);

LABEL_2:
      v147 = 0;
      goto LABEL_3;
    }

    v81 = v0[14];
    v80 = v0[15];
    v83 = v0[11];
    v82 = v0[12];
    v142 = v0[33];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for AgeDateTime();
    (*(v82 + 16))(v81, v80, v83);
    v84 = static DateTimeUtil.getQualifier(for:)();
    v147 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v81, v84);

    (*(v82 + 8))(v80, v83);
    v85 = v142;
    v86 = v78;
  }

  else
  {
    if (v61 != *MEMORY[0x277D56070])
    {
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      v102 = OUTLINED_FUNCTION_31(v101);
      v103 = v0[39];
      v104 = v0[37];
      if (v102)
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v105, v106, "#getRequestedAgeDateTime DateTimeValue recommendation had no valid value, returning nil.");
        OUTLINED_FUNCTION_6();
      }

      v107 = v0[31];
      v108 = v0[29];
      v109 = v0[30] + 8;
      v145(v0[33], v108);
      v145(v107, v108);
      goto LABEL_2;
    }

    v87 = v0[31];
    (*(v0[30] + 96))(v87, v0[29]);
    v88 = *v87;
    if (!specialized Array._getCount()(*v87))
    {

      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();
      v112 = OUTLINED_FUNCTION_31(v111);
      v113 = v0[39];
      v114 = v0[37];
      if (v112)
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v115, v116, "#getRequestedAgeDateTime DateTimeValue recommendation had no valid value, returning nil.");
        OUTLINED_FUNCTION_6();
      }

      v117 = v0[30] + 8;
      v145(v0[33], v0[29]);
      goto LABEL_2;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v88 & 0xC000000000000001) == 0, v88);
    if ((v88 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D5E29D0](0, v88);
    }

    else
    {
      v89 = *(v88 + 32);
    }

    v91 = v0[9];
    v90 = v0[10];
    v93 = v0[7];
    v92 = v0[8];
    v94 = v0[5];
    v95 = v0[6];

    static Calendar.current.getter();
    static TimeZone.current.getter();
    v96 = DateTime.toINDateComponentsRange(calendar:timeZone:)();

    (*(v95 + 8))(v93, v94);
    (*(v91 + 8))(v90, v92);
    v97 = [v96 startDateComponents];

    if (v97)
    {
      v98 = v0[3];
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    v118 = v0[11];
    v120 = v0[3];
    v119 = v0[4];
    __swift_storeEnumTagSinglePayload(v120, v99, 1, v118);
    outlined init with take of DateComponents?(v120, v119);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v119, 1, v118);
    v122 = v0[39];
    v123 = v0[37];
    v124 = v0[33];
    v125 = v0[29];
    v126 = v0[30];
    if (EnumTagSinglePayload == 1)
    {
      v127 = v0[4];
      v145(v0[33], v0[29]);

      outlined destroy of UsoEntity_common_Person.DefinedValues?(v127, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      goto LABEL_2;
    }

    v129 = v0[13];
    v128 = v0[14];
    v131 = v0[11];
    v130 = v0[12];
    v143 = v0[33];
    (*(v130 + 32))(v129, v0[4], v131);
    type metadata accessor for AgeDateTime();
    (*(v130 + 16))(v128, v129, v131);
    v132 = static DateTimeUtil.getQualifier(for:)();
    v147 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v128, v132);

    (*(v130 + 8))(v129, v131);
    v85 = v143;
    v86 = v125;
  }

  v145(v85, v86);
LABEL_3:
  v11 = v0[35];
  v10 = v0[36];
  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[31];
  v16 = v0[27];
  v15 = v0[28];
  v17 = v0[24];
  v18 = v0[21];
  v133 = v0[18];
  v134 = v0[15];
  v135 = v0[14];
  v136 = v0[13];
  v137 = v0[10];
  v138 = v0[7];
  v140 = v0[4];
  v144 = v0[3];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v11);

  v19 = v0[1];

  return v19(v147);
}

uint64_t static DateTimeUtil.requestContext()()
{
  v1 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = *(*(type metadata accessor for Calendar() - 8) + 64) + 15;
  v0[3] = swift_task_alloc();
  v3 = *(*(type metadata accessor for DateTimeResolutionContext.Hemisphere() - 8) + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for TimeZone() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](static DateTimeUtil.requestContext(), 0, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  static Locale.autoupdatingCurrent.getter();
  static Locale.autoupdatingCurrent.getter();
  static Locale.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = static DateTimeUtil.requestContext();
  v6 = v0[4];

  return static DateTimeUtil.hemisphere()(v6);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(*v0 + 72);
  v6 = *v0;

  v2 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  static Calendar.autoupdatingCurrent.getter();
  static Date.now.getter();
  v8 = type metadata accessor for DateTimeResolutionContext();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_43();
  v11 = DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)();

  v12 = v0[1];

  return v12(v11);
}

uint64_t static DateTimeUtil.getQualifier(for:)()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  static DateComponents.startOfToday.getter();
  DateComponents.date.getter();
  (*(v1 + 8))(v4, v0);
  v12 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v13 = v11;
LABEL_5:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  Date.timeIntervalSince1970.getter();
  v15 = v14;
  v16 = *(*(v12 - 8) + 8);
  v16(v11, v12);
  DateComponents.date.getter();
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    v13 = v9;
    goto LABEL_5;
  }

  Date.timeIntervalSince1970.getter();
  v19 = v18;
  v16(v9, v12);
  if (v15 >= v19)
  {
    return 2 * (v19 < v15);
  }

  else
  {
    return 1;
  }
}

uint64_t static DateTimeUtil.getRequestedAgeDateTime(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarV9ComponentOSgMd, &_s10Foundation8CalendarV9ComponentOSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_11_12(v7);
  v225 = type metadata accessor for Calendar.Component();
  v8 = OUTLINED_FUNCTION_1_0(v225);
  v224 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_11_12(v12);
  v235 = type metadata accessor for TerminalElement.Qualifier();
  v13 = OUTLINED_FUNCTION_1_0(v235);
  v231 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_14_10(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV8IntervalVSgMd, &_s12SiriOntology15TerminalElementV8IntervalVSgMR);
  OUTLINED_FUNCTION_18_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_11_12(v23);
  v244 = type metadata accessor for TerminalElement.Interval();
  v24 = OUTLINED_FUNCTION_1_0(v244);
  v234 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_10(v28);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  v29 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v233);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_14_10(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, _s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_18_0(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_14_10(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_18_0(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_30_5();
  v247 = v43;
  OUTLINED_FUNCTION_13_8();
  v248 = type metadata accessor for Calendar();
  v44 = OUTLINED_FUNCTION_1_0(v248);
  v246 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_74();
  v251 = v48;
  OUTLINED_FUNCTION_13_8();
  v240 = type metadata accessor for DateComponents();
  v49 = OUTLINED_FUNCTION_1_0(v240);
  v239 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_6();
  v249 = v54;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_19_4();
  v254 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV14DateTimePeriodVSgMd, &_s12SiriOntology15TerminalElementV14DateTimePeriodVSgMR);
  OUTLINED_FUNCTION_18_0(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v60);
  v62 = &v222 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV6PeriodOSgMd, &_s12SiriOntology15TerminalElementV6PeriodOSgMR);
  v64 = OUTLINED_FUNCTION_18_0(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v67);
  v69 = &v222 - v68;
  v245 = type metadata accessor for TerminalElement.Period();
  v70 = OUTLINED_FUNCTION_1_0(v245);
  v232 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_26_6();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV4DateVSgMd, &_s12SiriOntology15TerminalElementV4DateVSgMR);
  OUTLINED_FUNCTION_18_0(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v78);
  v80 = &v222 - v79;
  v253 = type metadata accessor for TerminalElement.Date();
  v81 = OUTLINED_FUNCTION_1_0(v253);
  v250 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_74();
  v252 = v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_18_0(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v89);
  v91 = &v222 - v90;
  v92 = type metadata accessor for TerminalElement.DateTimeValue();
  v93 = OUTLINED_FUNCTION_1_0(v92);
  v256 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_74();
  v255 = v97;
  if (one-time initialization token for contactAgeDate != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for ContactNLv3Intent();
  lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent);
  v236 = v98;
  v243 = a1;
  IntentNodeTraversable.value<A>(forNode:)();
  OUTLINED_FUNCTION_57(v91, 1, v92);
  if (v105)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v91, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v99 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v99, static Logger.siriContacts);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v102);
      _os_log_impl(&dword_26686A000, v100, v101, "#getRequestedAgeDateTime user didn't provide a date time reference for age computation. returning nil.", v62, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    return 0;
  }

  v103 = *(v256 + 32);
  v222 = v92;
  v103(v255, v91);
  TerminalElement.DateTimeValue.startDate.getter();
  v104 = v253;
  OUTLINED_FUNCTION_57(v80, 1, v253);
  if (!v105)
  {
    v112 = *(v250 + 32);
    v113 = v252;
    v114 = OUTLINED_FUNCTION_46_0();
    v115(v114);
    v116 = TerminalElement.Date.periods.getter();
    specialized Collection.first.getter(v116, v62);

    v117 = type metadata accessor for TerminalElement.DateTimePeriod();
    v118 = OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_57(v118, v119, v117);
    if (v120)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v62, &_s12SiriOntology15TerminalElementV14DateTimePeriodVSgMd, &_s12SiriOntology15TerminalElementV14DateTimePeriodVSgMR);
      __swift_storeEnumTagSinglePayload(v69, 1, 1, v245);
    }

    else
    {
      TerminalElement.DateTimePeriod.period.getter();
      (*(*(v117 - 8) + 8))(v62, v117);
      v134 = v245;
      OUTLINED_FUNCTION_57(v69, 1, v245);
      if (!v135)
      {
        OUTLINED_FUNCTION_44_1(&v257);
        (*(v184 + 32))(v1, v69, v134);
        v133 = static DateTimeUtil.ageDateTime(for:)(v1);
        (*(v62 + 1))(v1, v134);
        (*(v250 + 8))(v113, v104);
LABEL_44:
        v185 = OUTLINED_FUNCTION_7_9();
        v186(v185);
        return v133;
      }
    }

    outlined destroy of UsoEntity_common_Person.DefinedValues?(v69, &_s12SiriOntology15TerminalElementV6PeriodOSgMd, &_s12SiriOntology15TerminalElementV6PeriodOSgMR);
    static DateComponents.startOfToday.getter();
    static Calendar.gregorianCurrent.getter();
    result = TerminalElement.Date.month.getter();
    v138 = v137;
    if (v137)
    {
      v245 = 0;
LABEL_30:
      v139 = v248;
      (*(v246 + 16))(v247, v251, v248);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v140, v141, v142, v139);
      Calendar.timeZone.getter();
      type metadata accessor for TimeZone();
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v143, v144, v145, v146);
      TerminalElement.Date.year.getter();
      if (v147)
      {
        DateComponents.year.getter();
      }

      TerminalElement.Date.dayOfMonth.getter();
      TerminalElement.Date.dayOfWeekOrdinalValue.getter();
      TerminalElement.Date.year.getter();
      if (v148)
      {
        DateComponents.year.getter();
      }

      v149 = v249;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      (*(v246 + 8))(v251, v248);
      if (one-time initialization token for contactAttributes != -1)
      {
        swift_once();
      }

      v150 = IntentNodeTraversable.values<A>(forNode:)();
      v151 = v241;
      v152 = v254;
      static DateTimeUtil.qualifier(for:requestedDateComponents:now:)(v150, v241);

      DateComponents.setImplicitYear(from:now:qualifier:)(v252, v152, v151);
      v153 = v242;
      v154 = v240;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v155 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v155, static Logger.siriContacts);
      v156 = v237;
      outlined init with copy of TerminalElement.Qualifier?(v151, v237);
      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v157, v158))
      {
        v138 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        *v138 = 136315394;
        outlined init with copy of TerminalElement.Qualifier?(v156, v153);
        v159 = String.init<A>(describing:)();
        v161 = v160;
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v156, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
        v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v161, &v257);

        *(v138 + 4) = v162;
        *(v138 + 12) = 2080;
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_4_14();
        lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(v163, v164);
        v165 = dispatch thunk of CustomStringConvertible.description.getter();
        v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, &v257);

        *(v138 + 14) = v167;
        _os_log_impl(&dword_26686A000, v157, v158, "#getRequestedAgeDateTime user asked for age with qualifier: %s on specific date: %s", v138, 0x16u);
        swift_arrayDestroy();
        v149 = v249;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {

        outlined destroy of UsoEntity_common_Person.DefinedValues?(v156, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
      }

      type metadata accessor for AgeDateTime();
      OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_44_1(&v259);
      v169 = v238;
      (*(v168 + 16))(v238, v149, v154);
      outlined init with copy of TerminalElement.Qualifier?(v151, v153);
      v133 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v169, v153);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v151, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
      v170 = *(v138 + 8);
      v170(v254, v154);
      (*(v250 + 8))(v252, v253);
      v171 = OUTLINED_FUNCTION_7_9();
      v172(v171);
      v170(v149, v154);
      return v133;
    }

    if (!__OFADD__(result, 1))
    {
      v245 = result + 1;
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_62;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v80, &_s12SiriOntology15TerminalElementV4DateVSgMd, &_s12SiriOntology15TerminalElementV4DateVSgMR);
  OUTLINED_FUNCTION_44_1(&v260);
  TerminalElement.DateTimeValue.interval.getter();
  v106 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_57(v106, v107, v244);
  if (v105)
  {
    v108 = OUTLINED_FUNCTION_29_4();
    v109(v108);
    v110 = &_s12SiriOntology15TerminalElementV8IntervalVSgMd;
    v111 = &_s12SiriOntology15TerminalElementV8IntervalVSgMR;
    goto LABEL_21;
  }

  v121 = *(v234 + 32);
  v122 = OUTLINED_FUNCTION_37_0();
  v123(v122);
  OUTLINED_FUNCTION_44_1(v258);
  TerminalElement.Interval.qualifier.getter();
  v124 = OUTLINED_FUNCTION_43_2();
  v125 = v235;
  OUTLINED_FUNCTION_57(v124, v126, v235);
  if (v127)
  {
    v128 = OUTLINED_FUNCTION_25_4();
    v129(v128);
    v130 = OUTLINED_FUNCTION_29_4();
    v131(v130);
    v110 = &_s12SiriOntology15TerminalElementV9QualifierOSgMd;
    v111 = &_s12SiriOntology15TerminalElementV9QualifierOSgMR;
    goto LABEL_21;
  }

  v173 = v231;
  v174 = v230;
  (*(v231 + 32))(v230, v62, v125);
  v175 = TerminalElement.Interval.quantity.getter();
  if (v176)
  {
    v177 = *(v173 + 8);
    v178 = OUTLINED_FUNCTION_46_0();
    v179(v178);
    v180 = OUTLINED_FUNCTION_25_4();
    v181(v180);
    v182 = OUTLINED_FUNCTION_7_9();
    v183(v182);
    return 0;
  }

  v187 = v175;
  v188 = *&v175;
  v189 = v227;
  (*(v173 + 104))(v227, *MEMORY[0x277D5E640], v125);
  v190 = MEMORY[0x26D5E0980](v174, v189);
  v191 = *(v173 + 8);
  v192 = OUTLINED_FUNCTION_43();
  v254 = v193;
  result = (v193)(v192);
  if (v190)
  {
    v194 = v228;
    v195 = v229;
    if ((~v187 & 0x7FF0000000000000) == 0)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v62 = v226;
    if (v188 <= -9.22337204e18)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v188 < 9.22337204e18)
    {
      goto LABEL_55;
    }

    __break(1u);
  }

  v194 = v228;
  v195 = v229;
  if ((v187 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v62 = v226;
  if (v188 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v188 > -9.22337204e18)
  {
    v188 = -v188;
LABEL_55:
    TerminalElement.Interval.period.getter();
    v196 = OUTLINED_FUNCTION_43_2();
    v197 = v245;
    OUTLINED_FUNCTION_57(v196, v198, v245);
    if (!v105)
    {
      v204 = v232;
      (*(v232 + 32))(v195, v62, v197);
      static DateTimeUtil.calendarComponent(for:)(v195, v194);
      v205 = v225;
      OUTLINED_FUNCTION_57(v194, 1, v225);
      if (!v206)
      {
        v253 = v188;
        v212 = v174;
        v213 = v224;
        v214 = v204;
        v215 = v223;
        (*(v224 + 32))(v223, v194, v205);
        v133 = static DateTimeUtil.ageDateTime(for:nlQuantity:qualifier:)(v215, v253, v212);
        v216 = *(v213 + 8);
        v217 = OUTLINED_FUNCTION_37_0();
        v218(v217);
        (*(v214 + 8))(v229, v245);
        v219 = OUTLINED_FUNCTION_43();
        v254(v219);
        v220 = OUTLINED_FUNCTION_41_2();
        v221(v220);
        goto LABEL_44;
      }

      (*(v204 + 8))(v195, v197);
      v207 = OUTLINED_FUNCTION_46_0();
      v254(v207);
      v208 = OUTLINED_FUNCTION_41_2();
      v209(v208);
      v210 = OUTLINED_FUNCTION_7_9();
      v211(v210);
      v110 = &_s10Foundation8CalendarV9ComponentOSgMd;
      v111 = &_s10Foundation8CalendarV9ComponentOSgMR;
      v132 = v194;
      goto LABEL_22;
    }

    v199 = OUTLINED_FUNCTION_46_0();
    v254(v199);
    v200 = OUTLINED_FUNCTION_25_4();
    v201(v200);
    v202 = OUTLINED_FUNCTION_7_9();
    v203(v202);
    v110 = &_s12SiriOntology15TerminalElementV6PeriodOSgMd;
    v111 = &_s12SiriOntology15TerminalElementV6PeriodOSgMR;
LABEL_21:
    v132 = v62;
LABEL_22:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v132, v110, v111);
    return 0;
  }

LABEL_66:
  __break(1u);
  return result;
}

id static DateTimeUtil.ageDateTime(for:)(uint64_t a1)
{
  v83 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v75 - v14;
  v15 = type metadata accessor for TimeZone();
  v81 = *(v15 - 8);
  v82 = v15;
  v16 = *(v81 + 64);
  MEMORY[0x28223BE20](v15);
  v79 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateComponents();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v80 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TerminalElement.Period();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Date();
  v84 = *(v26 - 8);
  v27 = *(v84 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v77 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v75 = &v75 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v75 - v32;
  v34 = type metadata accessor for Calendar();
  v85 = *(v34 - 8);
  v86 = v34;
  v35 = *(v85 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.gregorianCurrent.getter();
  static Date.startOfToday.getter();
  (*(v22 + 16))(v25, v83, v21);
  v38 = (*(v22 + 88))(v25, v21);
  if (v38 == *MEMORY[0x277D5E638])
  {
    (*(v2 + 104))(v5, *MEMORY[0x277CC9968], v1);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v2 + 8))(v5, v1);
    v39 = v37;
    if (__swift_getEnumTagSinglePayload(v10, 1, v26) == 1)
    {
      (*(v84 + 8))(v33, v26);
      (*(v85 + 8))(v37, v86);
      v40 = v10;
LABEL_4:
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return 0;
    }

    v53 = v84;
    v54 = v77;
    (*(v84 + 32))(v77, v10, v26);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.siriContacts);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_26686A000, v56, v57, "#getRequestedAgeDateTime user asked for age yesterday. returning yesterday's date components.", v58, 2u);
      MEMORY[0x26D5E3300](v58, -1, -1);
    }

    type metadata accessor for AgeDateTime();
    v59 = v79;
    Calendar.timeZone.getter();
    v60 = v80;
    Calendar.dateComponents(in:from:)();
    (*(v81 + 8))(v59, v82);
    v52 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v60, 2);
    v61 = *(v53 + 8);
    v61(v54, v26);
    v61(v33, v26);
    goto LABEL_16;
  }

  v41 = v37;
  if (v38 == *MEMORY[0x277D5E610])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.siriContacts);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v84;
    v39 = v41;
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26686A000, v43, v44, "#getRequestedAgeDateTime user asked for age today. returning today's date components.", v47, 2u);
      MEMORY[0x26D5E3300](v47, -1, -1);
    }

    type metadata accessor for AgeDateTime();
    v48 = v79;
    Calendar.timeZone.getter();
    v49 = v80;
    Calendar.dateComponents(in:from:)();
    (*(v81 + 8))(v48, v82);
    v50 = type metadata accessor for TerminalElement.Qualifier();
    v51 = v78;
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v50);
    v52 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v49, v51);
    (*(v46 + 8))(v33, v26);
LABEL_16:
    (*(v85 + 8))(v39, v86);
    return v52;
  }

  if (v38 != *MEMORY[0x277D5E628])
  {
    (*(v84 + 8))(v33, v26);
    (*(v85 + 8))(v37, v86);
    (*(v22 + 8))(v25, v21);
    return 0;
  }

  v62 = v1;
  (*(v2 + 104))(v5, *MEMORY[0x277CC9968], v1);
  v63 = v76;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v2 + 8))(v5, v62);
  v64 = v26;
  if (__swift_getEnumTagSinglePayload(v63, 1, v26) == 1)
  {
    (*(v84 + 8))(v33, v26);
    (*(v85 + 8))(v37, v86);
    v40 = v63;
    goto LABEL_4;
  }

  v66 = v84;
  v67 = v75;
  (*(v84 + 32))(v75, v63, v26);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.siriContacts);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_26686A000, v69, v70, "#getRequestedAgeDateTime user asked for age tomorrow. returning tomorrow's date components.", v71, 2u);
    MEMORY[0x26D5E3300](v71, -1, -1);
  }

  type metadata accessor for AgeDateTime();
  v72 = v79;
  Calendar.timeZone.getter();
  v73 = v80;
  Calendar.dateComponents(in:from:)();
  (*(v81 + 8))(v72, v82);
  v52 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v73, 1);
  v74 = *(v66 + 8);
  v74(v67, v64);
  v74(v33, v64);
  (*(v85 + 8))(v41, v86);
  return v52;
}

uint64_t static DateTimeUtil.qualifier(for:requestedDateComponents:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!specialized Sequence<>.contains(_:)(67, a1))
  {
    DateComponents.year.getter();
    if ((v12 & 1) != 0 || (DateComponents.day.getter(), (v13 & 1) == 0) || (DateComponents.month.getter(), (v14 & 1) == 0))
    {
      if (!specialized Sequence<>.contains(_:)(69, a1))
      {
        DateComponents.year.getter();
        if ((v22 & 1) != 0 || (DateComponents.day.getter(), (v23 & 1) == 0) || (DateComponents.month.getter(), (v24 & 1) == 0))
        {
          v21 = type metadata accessor for TerminalElement.Qualifier();
          v19 = a2;
          v20 = 1;
          goto LABEL_15;
        }
      }

      result = DateComponents.year.getter();
      if ((v15 & 1) == 0)
      {
        v16 = result;
        result = DateComponents.year.getter();
        if ((v17 & 1) == 0)
        {
          v18 = result;
          v9 = type metadata accessor for TerminalElement.Qualifier();
          v10 = *(*(v9 - 8) + 104);
          if (v16 < v18)
          {
            goto LABEL_13;
          }

          goto LABEL_5;
        }

LABEL_25:
        __break(1u);
        return result;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  result = DateComponents.year.getter();
  if (v5)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = result;
  result = DateComponents.year.getter();
  if (v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = result;
  v9 = type metadata accessor for TerminalElement.Qualifier();
  v10 = *(*(v9 - 8) + 104);
  if (v8 >= v6)
  {
LABEL_13:
    v11 = MEMORY[0x277D5E648];
    goto LABEL_14;
  }

LABEL_5:
  v11 = MEMORY[0x277D5E640];
LABEL_14:
  v10(a2, *v11, v9);
  v19 = a2;
  v20 = 0;
  v21 = v9;
LABEL_15:

  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
}

uint64_t static DateTimeUtil.calendarComponent(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TerminalElement.Period();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D5E620])
  {
    v10 = MEMORY[0x277CC99A8];
  }

  else if (v9 == *MEMORY[0x277D5E618])
  {
    v10 = MEMORY[0x277CC99A0];
  }

  else if (v9 == *MEMORY[0x277D5E5F0])
  {
    v10 = MEMORY[0x277CC9980];
  }

  else if (v9 == *MEMORY[0x277D5E5E8])
  {
    v10 = MEMORY[0x277CC9968];
  }

  else if (v9 == *MEMORY[0x277D5E5F8])
  {
    v10 = MEMORY[0x277CC9940];
  }

  else if (v9 == *MEMORY[0x277D5E608])
  {
    v10 = MEMORY[0x277CC9998];
  }

  else
  {
    if (v9 != *MEMORY[0x277D5E600])
    {
      v14 = type metadata accessor for Calendar.Component();
      __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
      return (*(v5 + 8))(v8, v4);
    }

    v10 = MEMORY[0x277CC9988];
  }

  v11 = *v10;
  v12 = type metadata accessor for Calendar.Component();
  (*(*(v12 - 8) + 104))(a2, v11, v12);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
}

id static DateTimeUtil.ageDateTime(for:nlQuantity:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v182 = a2;
  v183 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_5();
  v180 = v9;
  OUTLINED_FUNCTION_13_8();
  v184 = type metadata accessor for TerminalElement.Qualifier();
  v10 = OUTLINED_FUNCTION_1_0(v184);
  v176 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_16();
  v173 = v14;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_12(v17);
  v172 = type metadata accessor for TimeZone();
  v18 = OUTLINED_FUNCTION_1_0(v172);
  v170 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v171 = v22;
  OUTLINED_FUNCTION_13_8();
  v181 = type metadata accessor for DateComponents();
  v23 = OUTLINED_FUNCTION_1_0(v181);
  v178 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_6();
  v175 = v28;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_6();
  v179 = v30;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_4();
  v174 = v32;
  OUTLINED_FUNCTION_13_8();
  v169 = type metadata accessor for Calendar.Component();
  v33 = OUTLINED_FUNCTION_1_0(v169);
  v168 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v37);
  v39 = &v155 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_18_0(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v43);
  v45 = &v155 - v44;
  v46 = type metadata accessor for Date();
  v47 = OUTLINED_FUNCTION_1_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_4();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_26_6();
  v56 = type metadata accessor for Calendar();
  v57 = OUTLINED_FUNCTION_1_0(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  v63 = &v155 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.gregorianCurrent.getter();
  static Date.startOfToday.getter();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v64 = *(v49 + 8);
  v182 = v49 + 8;
  v177 = v64;
  v64(v54, v46);
  OUTLINED_FUNCTION_57(v45, 1, v46);
  if (v65)
  {
    (*(v59 + 8))(v63, v56);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v45, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  else
  {
    v162 = v59;
    v163 = v56;
    v67 = *(v49 + 32);
    v164 = v46;
    v67(v3, v45, v46);
    v68 = v168;
    v69 = v169;
    (*(v168 + 104))(v39, *MEMORY[0x277CC9988], v169);
    v70 = MEMORY[0x26D5DF470](a1, v39);
    v71 = *(v68 + 8);
    v159 = v68 + 8;
    v158 = v71;
    v71(v39, v69);
    v72 = v171;
    Calendar.timeZone.getter();
    v73 = (v170 + 8);
    v161 = v3;
    v160 = v63;
    if (v70)
    {
      Calendar.dateComponents(in:from:)();
      (*v73)(v72, v172);
      DateComponents.month.setter();
      DateComponents.day.setter();
      v74 = v178;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v75 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v75, static Logger.siriContacts);
      v76 = v176;
      v77 = *(v176 + 16);
      v78 = v166;
      v79 = v184;
      (v77)(v166, v183, v184);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      v82 = os_log_type_enabled(v80, v81);
      v175 = v77;
      if (v82)
      {
        v83 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v185 = v39;
        *v83 = 136315394;
        v84 = OUTLINED_FUNCTION_34_3(&v187);
        (v77)(v84, v78, v184);
        v85 = String.init<A>(describing:)();
        v87 = v86;
        (*(v76 + 8))(v78, v184);
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v185);

        *(v83 + 4) = v88;
        *(v83 + 12) = 2080;
        v89 = v174;
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_4_14();
        lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(v90, v91);
        v92 = v181;
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v185);

        *(v83 + 14) = v77;
        _os_log_impl(&dword_26686A000, v80, v81, "#getRequestedAgeDateTime user asked for age on year interval. qualifier: %s, date: %s", v83, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        v79 = v184;
        OUTLINED_FUNCTION_6();

        OUTLINED_FUNCTION_47_1();
      }

      else
      {

        (*(v76 + 8))(v78, v79);
        v92 = v181;
        OUTLINED_FUNCTION_47_1();
        v89 = v174;
      }

      type metadata accessor for AgeDateTime();
      OUTLINED_FUNCTION_50_1();
      v132 = v179;
      (*(v74 + 16))(v179, v89, v92);
      v133 = v180;
      v175(v180, v183, v79);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v79);
      v66 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v132, v133);
      v137 = OUTLINED_FUNCTION_22_7();
      v138(v137);
      (*(v77 + 8))(v160, v39);
      v139 = *(v74 + 8);
      v140 = OUTLINED_FUNCTION_42_1();
      v141(v140);
    }

    else
    {
      v95 = a1;
      v166 = v39;
      v96 = v69;
      v97 = v175;
      Calendar.dateComponents(in:from:)();
      (*v73)(v72, v172);
      v98 = v178;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v99 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v99, static Logger.siriContacts);
      v100 = (v68 + 16);
      v101 = v165;
      v102 = v96;
      v168 = *(v68 + 16);
      (v168)(v165, v95, v96);
      v103 = v176;
      v104 = *(v176 + 16);
      v171 = v176 + 16;
      v104(v173, v183, v184);
      v105 = *(v98 + 16);
      v106 = v181;
      v174 = v98 + 16;
      v172 = v105;
      v105(v167, v97, v181);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();
      v109 = OUTLINED_FUNCTION_31(v108);
      v170 = v104;
      if (v109)
      {
        v110 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v185 = v157;
        *v110 = 136315650;
        v156 = v107;
        v111 = OUTLINED_FUNCTION_34_3(&v186);
        (v168)(v111, v101, v102);
        v112 = String.init<A>(describing:)();
        v114 = v113;
        v115 = OUTLINED_FUNCTION_20_4();
        v116(v115);
        v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v185);

        *(v110 + 4) = v117;
        *(v110 + 12) = 2080;
        v118 = OUTLINED_FUNCTION_34_3(&v187);
        v100 = v173;
        v119 = v184;
        v104(v118, v173, v184);
        String.init<A>(describing:)();
        LODWORD(v169) = v108;
        (*(v103 + 8))(v100, v119);
        v120 = OUTLINED_FUNCTION_37_0();
        v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v121, v122);

        *(v110 + 14) = v123;
        *(v110 + 22) = 2080;
        OUTLINED_FUNCTION_4_14();
        lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(v124, v125);
        dispatch thunk of CustomStringConvertible.description.getter();
        v126 = OUTLINED_FUNCTION_35_3();
        v100(v126, v181);
        v127 = OUTLINED_FUNCTION_37_0();
        v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, v129);

        *(v110 + 24) = v130;
        v131 = v156;
        _os_log_impl(&dword_26686A000, v156, v169, "#getRequestedAgeDateTime user asked for age on %s interval. qualifier: %s, date: %s", v110, 0x20u);
        OUTLINED_FUNCTION_34_3(&v185);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        v106 = v181;
        OUTLINED_FUNCTION_6();
      }

      else
      {

        v142 = OUTLINED_FUNCTION_35_3();
        v100(v142, v106);
        v143 = v184;
        (*(v103 + 8))(v173, v184);
        v144 = OUTLINED_FUNCTION_20_4();
        v145(v144);
        v119 = v143;
      }

      type metadata accessor for AgeDateTime();
      v146 = v179;
      v147 = v175;
      v172(v179, v175, v106);
      v148 = v180;
      (v170)(v180, v183, v119);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v149, v150, v151, v119);
      v66 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v146, v148);
      v100(v147, v106);
      v152 = OUTLINED_FUNCTION_22_7();
      v153(v152);
      (*(v162 + 8))(v160, v163);
    }
  }

  return v66;
}

uint64_t static DateTimeUtil.hemisphere()(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for DateTimeResolutionContext.Hemisphere();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](static DateTimeUtil.hemisphere(), 0, 0);
}

uint64_t static DateTimeUtil.hemisphere()()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = [objc_allocWithZone(MEMORY[0x277D47310]) init];
  *(v0 + 96) = v4;
  v5 = *MEMORY[0x277D47D78];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAGetRequestOrigin.desiredAccuracy.setter(v6, v7, v4);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = NSNumber.init(integerLiteral:)(300).super.super.isa;
  [v4 setMaxAge_];

  *(v0 + 136) = *MEMORY[0x277D56158];
  v9 = *(v3 + 104);
  *(v0 + 104) = v9;
  *(v0 + 112) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v1);
  static AceService.currentAsync.getter();
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  v12 = *(MEMORY[0x277D5BFB8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 120) = v13;
  v14 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  *v13 = v0;
  v13[1] = static DateTimeUtil.hemisphere();

  return MEMORY[0x2821BB6A0](v4, v10, v14, v11);
}

{
  OUTLINED_FUNCTION_4();
  v2 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 128) = v3;

  if (v0)
  {

    v4 = static DateTimeUtil.hemisphere();
  }

  else
  {
    v4 = static DateTimeUtil.hemisphere();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 128);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = *(v0 + 128);
  if (v2)
  {
    v4 = v2;
    v6 = (v0 + 80);
    v5 = *(v0 + 80);
    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    v7 = *(v0 + 136);
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    [v4 latitude];
    v13 = v12;

    (*(v11 + 8))(v8, v10);
    if (v13 <= 0.0)
    {
      v14 = v7;
    }

    else
    {
      v14 = *MEMORY[0x277D56150];
    }

    v27(v5, v14, v10);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_31(v17))
    {
      v18 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v18);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v19, v20, "#getCurrentLocation - submitted SAGetRequestOrigin command but either failed or could not cast to SASetRequestOrigin. returning nil");
      OUTLINED_FUNCTION_11_1();
    }

    v21 = *(v0 + 96);

    v6 = (v0 + 88);
  }

  v22 = *v6;
  v23 = OUTLINED_FUNCTION_37_3();
  v24(v23);

  v25 = *(v0 + 8);

  return v25();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_31(v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v5, v6, "#getCurrentLocation - submitted SAGetRequestOrigin command but either failed or could not cast to SASetRequestOrigin. returning nil");
    OUTLINED_FUNCTION_11_1();
  }

  v7 = v0[12];

  v8 = OUTLINED_FUNCTION_37_3();
  v9(v8, v2);

  v10 = v0[1];

  return v10();
}

unint64_t lazy protocol witness table accessor for type Recommendation<DateTime> and conformance Recommendation<A>()
{
  result = lazy protocol witness table cache variable for type Recommendation<DateTime> and conformance Recommendation<A>;
  if (!lazy protocol witness table cache variable for type Recommendation<DateTime> and conformance Recommendation<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Recommendation<DateTime> and conformance Recommendation<A>);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SAGetRequestOrigin.desiredAccuracy.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470]();

  [a3 setDesiredAccuracy_];
}

uint64_t lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_9()
{
  result = *(v0 - 168);
  v2 = *(*(v0 - 160) + 8);
  v3 = *(v0 - 464);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_4()
{
  result = v0;
  v3 = *(v1 - 352);
  v4 = *(v1 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_7()
{
  result = *(v0 - 336);
  v2 = *(v0 - 312);
  v3 = *(v0 - 160);
  v4 = *(v0 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_4()
{
  v2 = *(*(v1 - 160) + 8);
  result = v0;
  v4 = *(v1 - 464);
  return result;
}

uint64_t OUTLINED_FUNCTION_37_3()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  result = v0[7];
  v5 = *(v0[9] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_beginAccess();
}

uint64_t specialized INIntentResolutionResult.typedDisambiguationItems<A>()(uint64_t (*a1)(uint64_t *))
{
  v3 = [v1 disambiguationItems];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v7 = *(v4 + 16);
LABEL_2:
  v8 = v4 + 32 + 32 * v5;
  while (1)
  {
    if (v7 == v5)
    {

      return v6;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    outlined init with copy of Any(v8, v12);
    v9 = a1(v12);
    ++v5;
    v8 += 32;
    v10 = __swift_destroy_boxed_opaque_existential_0Tm(v12);
    if (v9)
    {
      MEMORY[0x26D5E25E0](v10);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v13;
      goto LABEL_2;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0Tm(v12);

  __break(1u);
  return result;
}

void ContactAttributeDisambiguationStrategy.actionForInput(_:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v74 = *v1;
  v6 = type metadata accessor for Parse();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v76 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v75 = v12 - v11;
  v13 = type metadata accessor for USOParse();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = type metadata accessor for Input();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v30 = v29 - v28;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.siriContacts);
  v77 = v3;
  (*(v25 + 16))(v30, v3, v22);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v72 = v16;
    v34 = OUTLINED_FUNCTION_24();
    v73 = v5;
    v35 = OUTLINED_FUNCTION_23();
    v78 = v35;
    *v34 = 136315138;
    v36 = Input.description.getter();
    v71 = v21;
    v37 = v13;
    v39 = v38;
    (*(v25 + 8))(v30, v22);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, &v78);
    v13 = v37;
    v21 = v71;

    *(v34 + 4) = v40;
    _os_log_impl(&dword_26686A000, v32, v33, "#ContactAttributeDisambiguationStrategy input: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v5 = v73;
    OUTLINED_FUNCTION_6();
    v16 = v72;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v25 + 8))(v30, v22);
  }

  v41 = v77;
  Input.parse.getter();
  v42 = v76[11];
  v43 = OUTLINED_FUNCTION_59_0();
  if (v44(v43) == *MEMORY[0x277D5C160])
  {
    v45 = v76[12];
    v46 = OUTLINED_FUNCTION_59_0();
    v47(v46);
    (*(v16 + 32))(v21, v75, v13);
    if (USOParse.isOrdinalDisambiguation.getter())
    {
      static ActionForInput.handle()();
LABEL_28:
      (*(v16 + 8))(v21, v13);
      goto LABEL_29;
    }

    v51 = *(v74 + 240);
    type metadata accessor for ParameterResolutionRecord();
    v52 = ParameterResolutionRecord.intent.getter();
    v53 = [v52 siriMatches];

    if (v53)
    {
      type metadata accessor for SiriMatch();
      OUTLINED_FUNCTION_73();
      v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Array._getCount()(v54))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v54 & 0xC000000000000001) == 0, v54);
        if ((v54 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x26D5E29D0](0, v54);
        }

        else
        {
          v55 = *(v54 + 32);
        }

        v56 = v55;

        v57 = [v56 identifier];

        if (v57)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v41 = v77;
      }

      else
      {
      }
    }

    static ContactAttributeDisambiguationStrategy.isRequestForDifferentContact(_:currentContactId:)();
    v59 = v58;

    if (v59)
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v61))
      {
        v62 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v62);
        v65 = "#ContactAttributeDisambiguationStrategy received request_common_Person for another contact which is not a disambiguation response, ignoring here.";
LABEL_26:
        OUTLINED_FUNCTION_7_4(&dword_26686A000, v63, v64, v65);
        OUTLINED_FUNCTION_11_1();
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    v66 = ParameterResolutionRecord.intent.getter();
    v67 = [v66 contactAttributeToGet];

    static ContactAttributeDisambiguationStrategy.isRequestForDifferentContactAttribute(_:contactAttributeToGet:)();
    LOBYTE(v66) = v68;

    if (v66)
    {
      v60 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v69))
      {
        v70 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v70);
        v65 = "#ContactAttributeDisambiguationStrategy received request for a different contact attribute which is not a disambiguation response, ignoring here.";
        goto LABEL_26;
      }

LABEL_27:

      static ActionForInput.ignore()();
      goto LABEL_28;
    }

    (*(v16 + 8))(v21, v13);
  }

  else
  {
    v48 = v76[1];
    v49 = OUTLINED_FUNCTION_59_0();
    v50(v49);
    v51 = *(v74 + 240);
  }

  static StrategyUtil.getActionForInput<A>(input:intentType:)(v41, v51, v5);
LABEL_29:
  OUTLINED_FUNCTION_14();
}

void static ContactAttributeDisambiguationStrategy.isRequestForDifferentContact(_:currentContactId:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v6 = OUTLINED_FUNCTION_18_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_39_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v42[-v10];
  USOParse.preferredUserDialogAct.getter(&v42[-v10]);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of ResponseMode?(v11, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_7:
    OUTLINED_FUNCTION_46_1();
    goto LABEL_8;
  }

  v13 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_9_13();
  (*(v14 + 8))(v11, v12);
  if (!v13)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_52_1();

  if (!v44)
  {
LABEL_8:
    outlined destroy of ResponseMode?(v43, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  type metadata accessor for UsoTask_request_common_Person();
  OUTLINED_FUNCTION_15_9();
  if (swift_dynamicCast())
  {
    v15 = UsoTask_request_common_Person.contactIds.getter();
LABEL_17:

    goto LABEL_21;
  }

LABEL_9:
  USOParse.preferredUserDialogAct.getter(v0);
  OUTLINED_FUNCTION_20_5(v0);
  if (v36)
  {
    outlined destroy of ResponseMode?(v0, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_18:
    OUTLINED_FUNCTION_46_1();
    goto LABEL_19;
  }

  v16 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_9_13();
  (*(v17 + 8))(v0, v12);
  if (!v16)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_52_1();

  if (!v44)
  {
LABEL_19:
    outlined destroy of ResponseMode?(v43, &_sypSgMd, &_sypSgMR);
    goto LABEL_20;
  }

  type metadata accessor for UsoTask_noVerb_common_Person();
  OUTLINED_FUNCTION_15_9();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v43[0])
    {
      v15 = UsoEntity_common_Person.contactIds.getter();

      goto LABEL_17;
    }
  }

LABEL_20:
  v15 = MEMORY[0x277D84F90];
LABEL_21:
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriContacts);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v21 = 136315394;

    MEMORY[0x26D5E2610](v22, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_10_8();

    v23 = OUTLINED_FUNCTION_26_7();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v25);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;

    v27 = OUTLINED_FUNCTION_26_7();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v29);

    *(v21 + 14) = v30;
    OUTLINED_FUNCTION_68_0(&dword_26686A000, v31, v32, "#GCADisambiguationStrategy isRequestForDifferentContact contactIds: %s, current is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v33 = *(v15 + 16);
  if (v33)
  {
    if (v2)
    {
      v34 = (v15 + 40);
      v35 = v33 + 1;
      do
      {
        if (!--v35)
        {
          break;
        }

        v36 = *(v34 - 1) == v4 && *v34 == v2;
        if (v36)
        {
          break;
        }

        v34 += 2;
      }

      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
    }
  }

  else
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v38))
    {
      v39 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v39);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v40, v41, "#GCADisambiguationStrategy isRequestForDifferentContact no contact IDs found in response parse, treating as follow-up for same contact");
      OUTLINED_FUNCTION_11_1();
    }
  }

  OUTLINED_FUNCTION_14();
}

void static ContactAttributeDisambiguationStrategy.isRequestForDifferentContactAttribute(_:contactAttributeToGet:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = type metadata accessor for UsoIdentifier();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v131 = v5;
  v132 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v128 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v128 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v128 - v26;
  USOParse.preferredUserDialogAct.getter(&v128 - v26);
  v28 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_71_0(v27);
  if (v110)
  {
    outlined destroy of ResponseMode?(v27, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_25:
    OUTLINED_FUNCTION_46_1();
    goto LABEL_26;
  }

  v29 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52(v28);
  (*(v30 + 8))(v27, v28);
  if (!v29)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_52_1();

  if (!v135)
  {
LABEL_26:
    outlined destroy of ResponseMode?(v134, &_sypSgMd, &_sypSgMR);
    goto LABEL_27;
  }

  type metadata accessor for UsoTask_request_common_Person();
  OUTLINED_FUNCTION_15_9();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v31 = v133;

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

  v32 = v134[0];
  if (!v134[0])
  {

LABEL_27:
    USOParse.preferredUserDialogAct.getter(v25);
    OUTLINED_FUNCTION_71_0(v25);
    if (v110)
    {
      outlined destroy of ResponseMode?(v25, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      v50 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      OUTLINED_FUNCTION_52(v28);
      (*(v51 + 8))(v25, v28);
      if (v50)
      {
        OUTLINED_FUNCTION_52_1();

        if (v135)
        {
          type metadata accessor for UsoTask_noVerb_common_Person();
          OUTLINED_FUNCTION_15_9();
          if (swift_dynamicCast())
          {
            v52 = v133;

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

            v53 = v134[0];
            if (v134[0])
            {
              dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
              OUTLINED_FUNCTION_48_0();

              OUTLINED_FUNCTION_19_7();
              OUTLINED_FUNCTION_51_0();
              v54 = *(v53 + 16);
              if (v54)
              {
                v128 = v53;
                v129 = v52;
                OUTLINED_FUNCTION_21_7();
                v56 = v53 + v55;
                v130 = *(v57 + 56);
                v131 = v58;
                v59 = (v57 - 8);
                v40 = MEMORY[0x277D84F90];
                do
                {
                  v60 = v132;
                  v131(v0, v56, v132);
                  v61 = UsoIdentifier.namespace.getter();
                  if (v62)
                  {
                    v63 = v61;
                  }

                  else
                  {
                    v63 = 0;
                  }

                  if (v62)
                  {
                    v64 = v62;
                  }

                  else
                  {
                    v64 = 0xE000000000000000;
                  }

                  v65._countAndFlagsBits = v63;
                  v65._object = v64;
                  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v65);
                  OUTLINED_FUNCTION_48_0();

                  if (v0 >= 9)
                  {
                    (*v59)(v0, v60);
                  }

                  else
                  {
                    (*v59)(v0, v60);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      OUTLINED_FUNCTION_23_9();
                      v40 = v68;
                    }

                    v67 = *(v40 + 16);
                    v66 = *(v40 + 24);
                    if (v67 >= v66 >> 1)
                    {
                      OUTLINED_FUNCTION_22_8(v66);
                      v40 = v69;
                    }

                    *(v40 + 16) = v67 + 1;
                    *(v40 + v67 + 32) = v0;
                  }

                  v56 += v130;
                  --v54;
                }

                while (v54);
                goto LABEL_114;
              }

              goto LABEL_123;
            }
          }

LABEL_53:
          USOParse.preferredUserDialogAct.getter(v21);
          OUTLINED_FUNCTION_71_0(v21);
          if (v110)
          {
            outlined destroy of ResponseMode?(v21, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
          }

          else
          {
            v70 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
            OUTLINED_FUNCTION_52(v28);
            (*(v71 + 8))(v21, v28);
            if (v70)
            {
              OUTLINED_FUNCTION_52_1();

              if (v135)
              {
                type metadata accessor for UsoTask_checkExistence_common_Person();
                OUTLINED_FUNCTION_15_9();
                if (swift_dynamicCast())
                {
                  v72 = v133;

                  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

                  if (v134[0])
                  {
                    v73 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();

                    if (v73)
                    {
                      v74 = OUTLINED_FUNCTION_19_7();

                      if (v74)
                      {
                        v75 = *(v74 + 16);
                        if (v75)
                        {
                          v128 = v74;
                          v129 = v72;
                          OUTLINED_FUNCTION_21_7();
                          v77 = v74 + v76;
                          v130 = *(v78 + 56);
                          v131 = v79;
                          v80 = (v78 - 8);
                          v40 = MEMORY[0x277D84F90];
                          do
                          {
                            v81 = v132;
                            v131(v10, v77, v132);
                            v82 = UsoIdentifier.namespace.getter();
                            if (v83)
                            {
                              v84 = v82;
                            }

                            else
                            {
                              v84 = 0;
                            }

                            if (v83)
                            {
                              v85 = v83;
                            }

                            else
                            {
                              v85 = 0xE000000000000000;
                            }

                            v86._countAndFlagsBits = v84;
                            v86._object = v85;
                            _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v86);
                            OUTLINED_FUNCTION_48_0();

                            if (v10 >= 9)
                            {
                              (*v80)(v10, v81);
                            }

                            else
                            {
                              (*v80)(v10, v81);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                OUTLINED_FUNCTION_23_9();
                                v40 = v89;
                              }

                              v88 = *(v40 + 16);
                              v87 = *(v40 + 24);
                              if (v88 >= v87 >> 1)
                              {
                                OUTLINED_FUNCTION_22_8(v87);
                                v40 = v90;
                              }

                              *(v40 + 16) = v88 + 1;
                              *(v40 + v88 + 32) = v10;
                            }

                            v77 += v130;
                            --v75;
                          }

                          while (v75);
                          goto LABEL_114;
                        }

                        goto LABEL_123;
                      }
                    }
                  }
                }

LABEL_81:
                v40 = MEMORY[0x277D84F90];
                goto LABEL_82;
              }

LABEL_80:
              outlined destroy of ResponseMode?(v134, &_sypSgMd, &_sypSgMR);
              goto LABEL_81;
            }
          }

          OUTLINED_FUNCTION_46_1();
          goto LABEL_80;
        }

LABEL_52:
        outlined destroy of ResponseMode?(v134, &_sypSgMd, &_sypSgMR);
        goto LABEL_53;
      }
    }

    OUTLINED_FUNCTION_46_1();
    goto LABEL_52;
  }

  v129 = v31;
  dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
  OUTLINED_FUNCTION_48_0();

  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_51_0();
  v33 = *(v32 + 16);
  if (!v33)
  {
LABEL_123:

    goto LABEL_81;
  }

  v34 = v132;
  OUTLINED_FUNCTION_21_7();
  v128 = v32;
  v36 = v32 + v35;
  v130 = *(v37 + 56);
  v131 = v38;
  v39 = (v37 - 8);
  v40 = MEMORY[0x277D84F90];
  do
  {
    v131(v14, v36, v34);
    v41 = UsoIdentifier.namespace.getter();
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v45);
    OUTLINED_FUNCTION_48_0();

    if (v14 >= 9)
    {
      (*v39)(v14, v34);
    }

    else
    {
      (*v39)(v14, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_23_9();
        v40 = v48;
      }

      v47 = *(v40 + 16);
      v46 = *(v40 + 24);
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_22_8(v46);
        v40 = v49;
      }

      *(v40 + 16) = v47 + 1;
      *(v40 + v47 + 32) = v14;
      v34 = v132;
    }

    v36 += v130;
    --v33;
  }

  while (v33);
LABEL_114:

LABEL_82:
  if (!*(v40 + 16))
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v116 = type metadata accessor for Logger();
    __swift_project_value_buffer(v116, static Logger.siriContacts);
    v119 = Logger.logObject.getter();
    v117 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_25_5(v117))
    {
      goto LABEL_111;
    }

    v118 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_47_2(v118);
    v115 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute no relevant namespace candidates found, returning true";
LABEL_110:
    OUTLINED_FUNCTION_65_0(&dword_26686A000, v113, v114, v115);
    OUTLINED_FUNCTION_6();
    goto LABEL_111;
  }

  if (one-time initialization token for siriContacts != -1)
  {
LABEL_125:
    OUTLINED_FUNCTION_2();
  }

  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static Logger.siriContacts);
  v92 = v2;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v134[0] = swift_slowAlloc();
    *v95 = 136315394;

    MEMORY[0x26D5E2610](v96, &type metadata for UsoIdentifierNamespace);
    OUTLINED_FUNCTION_10_8();

    v97 = OUTLINED_FUNCTION_26_7();
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v99);

    *(v95 + 4) = v100;
    *(v95 + 12) = 2080;
    v133 = v2;
    v101 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16ContactAttributeCSgMd, _s19SiriContactsIntents16ContactAttributeCSgMR);
    v102 = String.init<A>(describing:)();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v134);

    *(v95 + 14) = v104;
    OUTLINED_FUNCTION_68_0(&dword_26686A000, v105, v106, "#GCADisambiguationStrategy isRequestForDifferentContactAttribute follow-up namespaces: %s, current is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v107 = *(v40 + 16);
  if (!v107)
  {
LABEL_104:
    v119 = Logger.logObject.getter();
    v111 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_25_5(v111))
    {
      goto LABEL_111;
    }

    v112 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_47_2(v112);
    v115 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute returning true";
    goto LABEL_110;
  }

  v108 = 0;
  while (1)
  {
    if (v108 >= *(v40 + 16))
    {
      __break(1u);
      goto LABEL_125;
    }

    v109 = *(v40 + v108 + 32);
    if (v109 != 5)
    {
      break;
    }

    if (v2 && [v92 contactAttributeType] == 3)
    {

      v119 = Logger.logObject.getter();
      v123 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_25_5(v123))
      {
        goto LABEL_111;
      }

      v124 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_47_2(v124);
      v115 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute matched to postal address request, returning false";
      goto LABEL_110;
    }

LABEL_102:
    if (v107 == ++v108)
    {

      goto LABEL_104;
    }
  }

  if (v109 != 4)
  {
    v110 = v109 != 3 || v2 == 0;
    if (!v110 && [v92 contactAttributeType] == 2)
    {

      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_25_5(v120))
      {
        v122 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_47_2(v122);
        v115 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute matched to phone number request, returning false";
        goto LABEL_110;
      }

      goto LABEL_111;
    }

    goto LABEL_102;
  }

  if (!v2 || [v92 contactAttributeType] != 1)
  {
    goto LABEL_102;
  }

  v119 = Logger.logObject.getter();
  v125 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_25_5(v125))
  {
    v127 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_47_2(v127);
    v115 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute matched to email request, returning false";
    goto LABEL_110;
  }

LABEL_111:

  OUTLINED_FUNCTION_14();
}

uint64_t ContactAttributeDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v3 = *(*v0 + 240);
  v4 = type metadata accessor for ParameterResolutionRecord();
  v1[3] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v1[4] = v5;
  v7 = *(v6 + 64);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for Signpost.OpenSignpost();
  v1[6] = v8;
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v11 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t ContactAttributeDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v25 = v22[6];
  v26 = v22[7];
  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_42_2(*(v25 + 20));
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v27 = v22[4];
  v28 = v22[5];
  v30 = v22[2];
  v29 = v22[3];
  v31 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v31, static Logger.siriContacts);
  (*(v27 + 16))(v28, v30, v29);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v22[4];
  v37 = v22[5];
  v38 = v22[3];
  if (v35)
  {
    v39 = OUTLINED_FUNCTION_24();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    a10 = v32;
    v41 = ParameterResolutionRecord.result.getter();
    v42 = *(v36 + 8);
    v43 = OUTLINED_FUNCTION_60_0();
    v44(v43);
    *(v39 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&dword_26686A000, v33, v34, "#ContactAttributeDisambiguationStrategy Intent resolution result: %@", v39, 0xCu);
    outlined destroy of ResponseMode?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v45 = *(v36 + 8);
    v46 = OUTLINED_FUNCTION_60_0();
    v47(v46);
  }

  v49 = v22[2];
  v48 = v22[3];
  v50 = ParameterResolutionRecord.result.getter();
  v51 = specialized INIntentResolutionResult.typedDisambiguationItems<A>()(specialized closure #1 in INIntentResolutionResult.typedDisambiguationItems<A>());

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = OUTLINED_FUNCTION_24();
    v55 = OUTLINED_FUNCTION_23();
    a11 = v55;
    *v54 = 136315138;
    v56 = type metadata accessor for ContactAttribute();
    v57 = MEMORY[0x26D5E2610](v51, v56);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &a11);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_26686A000, v52, v53, "#ContactAttributeDisambiguationStrategy Contact attributes retrieved from disambiguation items: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v60 = v22[7];
  v61 = v22[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCy0A15ContactsIntents16ContactAttributeCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCy0A15ContactsIntents16ContactAttributeCGMR);
  BasicDisambiguationItemContainer.__allocating_init(_:_:)();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v60, v62);

  v63 = v22[1];
  OUTLINED_FUNCTION_13_0();

  return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = *v4;
  v7 = type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  v5[18] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for NLIntent();
  v5[19] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v5[20] = v11;
  v13 = *(v12 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = *(v6 + 240);
  v14 = type metadata accessor for IntentPromptAnswer();
  v5[24] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v5[25] = v15;
  v17 = *(v16 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v18 = type metadata accessor for USOParse();
  v5[28] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v5[29] = v19;
  v21 = *(v20 + 64);
  v5[30] = OUTLINED_FUNCTION_10_0();
  v22 = type metadata accessor for Parse();
  v5[31] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v5[32] = v23;
  v25 = *(v24 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v26 = type metadata accessor for Input();
  v5[35] = v26;
  OUTLINED_FUNCTION_1_1(v26);
  v5[36] = v27;
  v29 = *(v28 + 64);
  v5[37] = OUTLINED_FUNCTION_10_0();
  v30 = type metadata accessor for Signpost.OpenSignpost();
  v5[38] = v30;
  OUTLINED_FUNCTION_18_0(v30);
  v32 = *(v31 + 64);
  v5[39] = OUTLINED_FUNCTION_10_0();
  v33 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  v181 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = static Signpost.contactsLog;
  v0[40] = static Signpost.contactsLog;
  v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_42_2(*(v1 + 20));
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[35];
  v7 = v0[14];
  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Logger.siriContacts);
  v0[41] = v9;
  (*(v4 + 16))(v5, v7, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[36];
  v13 = v0[37];
  v15 = v0[35];
  v178 = v9;
  if (v12)
  {
    v16 = v0[34];
    v17 = v0[31];
    v18 = OUTLINED_FUNCTION_24();
    *&v179 = OUTLINED_FUNCTION_23();
    *v18 = 136315138;
    Input.parse.getter();
    OUTLINED_FUNCTION_26_7();
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_10_8();
    (*(v14 + 8))(v13, v15);
    v19 = v16;
    v9 = v178;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v17, &v179);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_26686A000, v10, v11, "#ContactAttributeDisambiguationStrategy Running parseDisambiguationResult() %s", v18, 0xCu);
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[31];
  v24 = v0[14];
  Input.parse.getter();
  v25 = *(v22 + 88);
  v26 = OUTLINED_FUNCTION_22_0();
  v28 = v27(v26);
  if (v28 == *MEMORY[0x277D5C128])
  {
    v29 = v0[33];
    v31 = v0[21];
    v30 = v0[22];
    v33 = v0[19];
    v32 = v0[20];
    value = v0[18];
    v35 = v0[15];
    (*(v0[32] + 96))(v29, v0[31]);
    (*(v32 + 32))(v30, v29, v33);
    v37 = *(v32 + 16);
    v36 = v32 + 16;
    v38 = OUTLINED_FUNCTION_59_0();
    v39(v38);
    ContactNLv3Intent.init(intent:)(v31, value);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0A15ContactsIntents16ContactAttributeCGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0A15ContactsIntents16ContactAttributeCGMR);
    PaginatedItemContainer.items.getter();
    type metadata accessor for ContactAttribute();
    v40 = OUTLINED_FUNCTION_60_0();
    v41 = MEMORY[0x26D5E2640](v40);

    v183 = ContactNLv3Intent.arrayIndexForReference(arrayLength:)(v41);
    if (!v183.is_nil)
    {
      value = v183.value;
      if ((v183.value & 0x8000000000000000) == 0 && v183.value < v41)
      {
        v80 = v0[15];
        PaginatedItemContainer.items.getter();
        Array.subscript.getter();

        v81 = v0[12];
        v82 = [v81 handleLabel];

        if (v82)
        {
          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v84;
        }

        else
        {
          v83 = 0;
          v46 = 0;
        }

        swift_bridgeObjectRetain_n();
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.debug.getter();

        os_log_type_enabled(v120, v121);
        OUTLINED_FUNCTION_57_0();
        if (v122)
        {
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_32_4();
          OUTLINED_FUNCTION_41_3();
          *value = 136315138;
          v0[4] = v83;
          v0[5] = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v123 = String.init<A>(describing:)();
          v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v179);

          *(value + 4) = v125;
          OUTLINED_FUNCTION_69_0(&dword_26686A000, v126, v127, "#ContactAttributeDisambiguationStrategy User selected attribute label by ordinal reference: %s");
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_11_1();

          OUTLINED_FUNCTION_2_25();
          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v9, v128);
          (*(v36 + 8))(v9);
        }

        else
        {

          OUTLINED_FUNCTION_2_25();
          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v9, v129);
          v130 = *(v36 + 8);
          v131 = OUTLINED_FUNCTION_60();
          v133(v131, v132);
        }

        if (!v46)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }
    }

    v42 = v0[18];
    v43 = ContactNLv3Intent.requestedContactAttributeLabel.getter();
    if (!v44)
    {
      v85 = v0[22];
      v86 = v0[19];
      v87 = v0[20];
      v88 = v0[18];
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v89, v90);
      v91 = *(v87 + 8);
      v92 = OUTLINED_FUNCTION_60();
      v93(v92);
      goto LABEL_46;
    }

    v45 = v43;
    v46 = v44;
    swift_bridgeObjectRetain_n();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    os_log_type_enabled(v47, v48);
    OUTLINED_FUNCTION_57_0();
    if (v49)
    {
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_41_3();
      *value = 136315138;
      v0[2] = v45;
      v0[3] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v50 = String.init<A>(describing:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v179);

      *(value + 4) = v52;
      OUTLINED_FUNCTION_69_0(&dword_26686A000, v53, v54, "#ContactAttributeDisambiguationStrategy User selected attribute label by semantic reference: %s");
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_11_1();

      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v9, v55);
      (*(v36 + 8))(v9);
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v9, v94);
    v95 = *(v36 + 8);
    v96 = OUTLINED_FUNCTION_60();
LABEL_41:
    v98(v96, v97);
LABEL_42:
    v138 = v0[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0A15ContactsIntents16ContactAttributeCGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0A15ContactsIntents16ContactAttributeCGMR);
    v0[11] = PaginatedItemContainer.items.getter();
    v139 = swift_task_alloc();
    *(v139 + 16) = v177;
    *(v139 + 24) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents16ContactAttributeCGMd, &_sSay19SiriContactsIntents16ContactAttributeCGMR);
    lazy protocol witness table accessor for type BasicDisambiguationItemContainer<SAPerson> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type [ContactAttribute] and conformance [A], &_sSay19SiriContactsIntents16ContactAttributeCGMd, &_sSay19SiriContactsIntents16ContactAttributeCGMR);
    Sequence.first(where:)();

    v140 = v0[10];
    if (v140)
    {
      v141 = v0[23];
      v142 = v0[16];
      type metadata accessor for ParameterResolutionRecord();
      v143 = ParameterResolutionRecord.intent.getter();
      [v143 setContactHandleMatches_];

      v144 = ParameterResolutionRecord.intent.getter();
      [v144 setContactHandleAlternatives_];

      v145 = ParameterResolutionRecord.intent.getter();
      v146 = v140;
      v147 = MEMORY[0x26D5E2470](0xD000000000000015, 0x800000026696E390);
      [v145 setValue:v146 forKey:v147];

      v148 = v146;
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = OUTLINED_FUNCTION_24();
        v152 = swift_slowAlloc();
        *v151 = 138412290;
        *(v151 + 4) = v148;
        *v152 = v140;
        v153 = v148;
        _os_log_impl(&dword_26686A000, v149, v150, "#ContactAttributeDisambiguationStrategy Returning user-selected contact attribute: %@.", v151, 0xCu);
        outlined destroy of ResponseMode?(v152, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_17_6();
      }

      v154 = v0[39];
      v156 = v0[25];
      v155 = v0[26];
      v158 = v0[23];
      v157 = v0[24];
      v159 = v0[16];
      v160 = v0[13];

      *(&v180 + 1) = type metadata accessor for ContactAttribute();
      *&v179 = v148;
      v161 = v148;
      ParameterResolutionRecord.intent.getter();
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      static DisambiguationResult.chosenItem(_:)();

      (*(v156 + 8))(v155, v157);
      goto LABEL_49;
    }

LABEL_46:
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = OUTLINED_FUNCTION_30();
      *v164 = 0;
      _os_log_impl(&dword_26686A000, v162, v163, "#ContactAttributeDisambiguationStrategy No matching contact attribute found, returning nil.", v164, 2u);
      OUTLINED_FUNCTION_17_6();
    }

    v165 = v0[39];
    v167 = v0[25];
    v166 = v0[26];
    v169 = v0[23];
    v168 = v0[24];
    v159 = v0[16];
    v170 = v0[13];

    type metadata accessor for ParameterResolutionRecord();
    v179 = 0u;
    v180 = 0u;
    ParameterResolutionRecord.intent.getter();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
    OUTLINED_FUNCTION_22_0();
    static DisambiguationResult.chosenItem(_:)();
    v171 = *(v167 + 8);
    v172 = OUTLINED_FUNCTION_22_0();
    v173(v172);
LABEL_49:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_0_24();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v159, v174);

    OUTLINED_FUNCTION_3();

    return v175();
  }

  v56 = v0[32];
  v57 = v0[33];
  v58 = v0[31];
  if (v28 != *MEMORY[0x277D5C160])
  {
    (*(v56 + 8))(v0[33], v58);
    goto LABEL_46;
  }

  v60 = v0[29];
  v59 = v0[30];
  v61 = v0[28];
  v62 = v0[17];
  (*(v56 + 96))(v0[33], v58);
  v63 = *(v60 + 32);
  v64 = OUTLINED_FUNCTION_26_3();
  v65(v64);
  v66 = v62[27];
  __swift_project_boxed_opaque_existential_1(v62 + 23, v62[26]);
  v67 = OUTLINED_FUNCTION_26_3();
  if (RRReferenceResolverProtocol.resolveAttributeDisambiguationReference(from:)(v67, v68, v66))
  {
    v69 = dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
    v46 = v70;
    swift_bridgeObjectRetain_n();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();

    v73 = os_log_type_enabled(v71, v72);
    v75 = v0[29];
    v74 = v0[30];
    v76 = v0[28];
    v177 = v69;
    if (v73)
    {
      OUTLINED_FUNCTION_24();
      *&v179 = OUTLINED_FUNCTION_32_4();
      *v76 = 136315138;
      v0[8] = v69;
      v0[9] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v77 = String.init<A>(describing:)();
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v179);

      *(v76 + 4) = v79;
      _os_log_impl(&dword_26686A000, v71, v72, "#ContactAttributeDisambiguationStrategy User selected attribute with label: %s", v76, 0xCu);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_11_1();

      (*(v75 + 8))(v74, v76);
    }

    else
    {

      v116 = *(v75 + 8);
      v117 = OUTLINED_FUNCTION_22_0();
      v119(v117, v118);
    }

    if (!v46)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  v99 = v0[30];
  v100 = v0[23];
  v101 = v0[16];
  v102 = v0[17];
  v103 = type metadata accessor for ParameterResolutionRecord();
  v0[42] = v103;
  v104 = ParameterResolutionRecord.intent.getter();
  v105 = [v104 contactAttributeToGet];

  v177 = ContactAttributeDisambiguationStrategy.extractContactAttribute(_:fromParse:)();
  v46 = v106;

  if (v46)
  {
    swift_bridgeObjectRetain_n();
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.debug.getter();

    v109 = os_log_type_enabled(v107, v108);
    v111 = v0[29];
    v110 = v0[30];
    v112 = v0[28];
    if (v109)
    {
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_41_3();
      *v103 = 136315138;
      v0[6] = v177;
      v0[7] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v113 = String.init<A>(describing:)();
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, &v179);

      *(v103 + 4) = v115;
      _os_log_impl(&dword_26686A000, v107, v108, "#ContactAttributeDisambiguationStrategy User selected attribute with label: %s", v103, 0xCu);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_11_1();

      v98 = *(v111 + 8);
      v96 = v176;
    }

    else
    {

      v98 = *(v111 + 8);
      v96 = v110;
    }

    v97 = v112;
    goto LABEL_41;
  }

  v134 = v0[16];
  v0[43] = ParameterResolutionRecord.intent.getter();
  v135 = swift_task_alloc();
  v0[44] = v135;
  *v135 = v0;
  v135[1] = ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  v136 = v0[30];

  return USOParse.toSiriKitIntent(previousIntent:referenceResolver:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 352);
  v3 = *(v1 + 344);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v7 + 360) = v6;

  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v1 = v0[41];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v5, v6, "#ContactAttributeDisambiguationStrategy User either did not select an option or we could not resolve their selection, returning nil");
    OUTLINED_FUNCTION_11_1();
  }

  v7 = v0[45];

  if (v7 && (v8 = v0[23], OUTLINED_FUNCTION_26_3(), swift_dynamicCastClass()))
  {
    v9 = v7;
  }

  else
  {
    v10 = v0[42];
    v11 = v0[16];
    ParameterResolutionRecord.intent.getter();
    v8 = v0[23];
  }

  v25 = v0[40];
  v26 = v0[39];
  v12 = v0[29];
  v24 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v16 = v0[24];
  v15 = v0[25];
  v17 = v0[13];
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  OUTLINED_FUNCTION_26_7();
  static DisambiguationResult.chosenItem(_:)();

  v18 = *(v15 + 8);
  v19 = OUTLINED_FUNCTION_26_7();
  v20(v19);
  (*(v12 + 8))(v24, v13);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v8, v21);

  OUTLINED_FUNCTION_3();

  return v22();
}