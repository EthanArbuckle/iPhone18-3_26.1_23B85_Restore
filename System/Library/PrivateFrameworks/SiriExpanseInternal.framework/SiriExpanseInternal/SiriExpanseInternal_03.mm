uint64_t sub_266BE028C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266BE02C4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266BE03B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t UsoEntity_common_AttachmentType.DefinedValues.preferSharingInCall.getter()
{
  v1 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *MEMORY[0x277D5EF30];
  v21 = v2[13];
  v21(&v18 - v9, v11, v1);
  lazy protocol witness table accessor for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues();
  v20 = v0;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v24 == v22 && v25 == v23)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13 = v2[1];
  v13(v10, v1);

  if (v12)
  {
    goto LABEL_10;
  }

  v21(v8, *MEMORY[0x277D5EF38], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v24 == v22 && v25 == v23)
  {
    v13(v8, v1);

LABEL_10:
    v15 = 1;
    return v15 & 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13(v8, v1);

  if (v14)
  {
    goto LABEL_10;
  }

  v17 = v19;
  v21(v19, *MEMORY[0x277D5EF68], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v24 == v22 && v25 == v23)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13(v17, v1);

  return v15 & 1;
}

unint64_t ValidateStartSharingIntentFlow.ValidationResult.description.getter(char a1)
{
  if (a1 == 2)
  {
    return 0xD000000000000015;
  }

  _StringGuts.grow(_:)(33);

  if (a1)
  {
    v3 = 0x4D616956646E6573;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (a1)
  {
    v4 = 0xEF73656761737365;
  }

  else
  {
    v4 = 0x8000000266BEE390;
  }

  MEMORY[0x26D5EC8A0](v3, v4);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason(unint64_t *a1@<X8>)
{
  v2 = 0x8000000266BEE390;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x4D616956646E6573;
    v2 = 0xEF73656761737365;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4D616956646E6573;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = 0x8000000266BEE390;
  }

  else
  {
    v5 = 0xEF73656761737365;
  }

  if (*a2)
  {
    v6 = 0x4D616956646E6573;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = 0xEF73656761737365;
  }

  else
  {
    v7 = 0x8000000266BEE390;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason()
{
  if (*v0)
  {
    result = 0x4D616956646E6573;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t ValidateStartSharingIntentFlow.execute()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ShareTarget();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](ValidateStartSharingIntentFlow.execute(), 0, 0);
}

uint64_t ValidateStartSharingIntentFlow.execute()()
{
  v34 = v0;
  v1 = v0[3];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  if (((*(v3 + 200))(v2, v3) & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v1[6];
  v8 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v7);
  (*(v8 + 192))(v7, v8);
  swift_storeEnumTagMultiPayload();
  v9 = specialized static ShareTarget.== infix(_:_:)(v4, v5);
  outlined destroy of ShareTarget(v5);
  outlined destroy of ShareTarget(v4);
  if (v9)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.default);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v13 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateStartSharingIntentFlow.typeName, *algn_2800C0F88, &v33);
      _os_log_impl(&dword_266B9E000, v11, v12, "%s: intent cannot be handled as a screen sharing or app casting intent because it is a SharePlay request with no target", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x26D5ED340](v14, -1, -1);
      MEMORY[0x26D5ED340](v13, -1, -1);
    }

    v15 = 0;
  }

  else
  {
LABEL_10:
    v16 = v1[6];
    v17 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v16);
    if ((*(v17 + 216))(v16, v17))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.default);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v33 = v22;
        *v21 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateStartSharingIntentFlow.typeName, *algn_2800C0F88, &v33);
        _os_log_impl(&dword_266B9E000, v19, v20, "%s: intent cannot be handled as a screen sharing or app casting intent because it should use message sending", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x26D5ED340](v22, -1, -1);
        MEMORY[0x26D5ED340](v21, -1, -1);
      }

      v15 = 1;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.default);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33 = v27;
        *v26 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateStartSharingIntentFlow.typeName, *algn_2800C0F88, &v33);
        _os_log_impl(&dword_266B9E000, v24, v25, "%s: intent to be handled as a screen sharing or app casting intent", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x26D5ED340](v27, -1, -1);
        MEMORY[0x26D5ED340](v26, -1, -1);
      }

      v15 = 2;
    }
  }

  v28 = v0[5];
  v29 = v0[6];
  v30 = v0[2];
  *(v0[3] + 16) = v15;
  static ExecuteResponse.complete()();

  v31 = v0[1];

  return v31();
}

uint64_t protocol witness for Flow.execute() in conformance ValidateStartSharingIntentFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return ValidateStartSharingIntentFlow.execute()(a1);
}

BOOL specialized static ValidateStartSharingIntentFlow.ValidationResult.== infix(_:_:)(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0x4D616956646E6573;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = 0x8000000266BEE390;
  }

  else
  {
    v5 = 0xEF73656761737365;
  }

  if (a2)
  {
    v6 = 0x4D616956646E6573;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (a2)
  {
    v7 = 0xEF73656761737365;
  }

  else
  {
    v7 = 0x8000000266BEE390;
  }

  if (v4 == v6 && v5 == v7)
  {

    return 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v8 & 1;
  }
}

uint64_t specialized ValidateStartSharingIntentFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.default);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateStartSharingIntentFlow.typeName, *algn_2800C0F88, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v8, v9, "%s: received input %s - this flow should never receive input, ignoring it...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v11, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason and conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason()
{
  result = lazy protocol witness table cache variable for type ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason and conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason;
  if (!lazy protocol witness table cache variable for type ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason and conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason and conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PermittedRecipients(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PermittedRecipients(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PermittedRecipients(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t PermittedRecipients.description.getter(uint64_t a1)
{
  v1 = 0xD000000000000013;
  if (a1)
  {
    _StringGuts.grow(_:)(33);

    v3 = type metadata accessor for INPerson();
    v4 = MEMORY[0x26D5EC930](a1, v3);
    MEMORY[0x26D5EC8A0](v4);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return 0xD00000000000001ELL;
  }

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PermittedRecipients(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for INPerson();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D5ECB50](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26D5ECB50](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = __CocoaSet.count.getter();
  }

  result = __CocoaSet.count.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized logIfThrows<A>(message:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 160) = a6;
  *(v7 + 128) = a5;
  *(v7 + 136) = a7;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  return MEMORY[0x2822009F8](specialized logIfThrows<A>(message:_:), 0, 0);
}

uint64_t specialized logIfThrows<A>(message:_:)()
{
  v1 = *(v0 + 136);
  outlined init with copy of ResponseExecuting(v1 + 16, v0 + 16);
  outlined init with copy of ResponseExecuting(v1 + 96, v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = specialized logIfThrows<A>(message:_:);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 160);

  return ExpanseUIModelConverter.convert(utils:)(v5, v0 + 16, v3, v4, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(v2 + 152) = v0;

  outlined destroy of ExpanseUIModelConverter.Utils(v2 + 16);
  if (v0)
  {
    v4 = specialized logIfThrows<A>(message:_:);
  }

  else
  {
    v4 = specialized logIfThrows<A>(message:_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 160);
  v6 = type metadata accessor for ExpanseUIModel(0);
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  outlined consume of ExpanseUIModelConverter(v3, v1, v5);

  v7 = *(v0 + 8);

  return v7();
}

{
  v25 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.default);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v24);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_266B9E000, v5, v6, "%s: %@", v11, 0x16u);
    outlined destroy of NSObject?(v12);
    MEMORY[0x26D5ED340](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D5ED340](v13, -1, -1);
    MEMORY[0x26D5ED340](v11, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 128);
  v17 = *(v0 + 136);
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  v20 = *(v0 + 160);
  v21 = type metadata accessor for ExpanseUIModel(0);
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  outlined consume of ExpanseUIModelConverter(v18, v16, v20);

  v22 = *(v0 + 8);

  return v22();
}

void specialized SharingFlow.state.didset(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v9 = v5;
  v11 = a2(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.default);
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a1, v17, a3);
  swift_retain_n();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + 16), *(v9 + 24), &v36);
    *(v21 + 12) = 2080;
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v17, v15, a3);
    v22 = _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v17, a4);
    v23 = a5(v22);
    v25 = v24;
    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v15, a4);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v36);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = *(*v9 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v9 + v27, v15, a3);

    v29 = a5(v28);
    v31 = v30;

    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v15, a4);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v36);

    *(v21 + 24) = v32;
    _os_log_impl(&dword_266B9E000, v19, v20, "%s: transitioned from state %s to %s", v21, 0x20u);
    v33 = v35;
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v33, -1, -1);
    MEMORY[0x26D5ED340](v21, -1, -1);
  }

  else
  {

    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v17, a4);
  }
}

void specialized SharingFlow.intent.didset()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.default);

  v19 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v20 = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 16), *(v0 + 24), &v20);
    *(v3 + 12) = 2080;
    v5 = (v0 + *(*v0 + 112));
    swift_beginAccess();
    v6 = v5[3];
    v7 = v5[4];
    v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = &v18 - v11;
    (*(v9 + 16))(&v18 - v11);
    v13 = *(v7 + 8);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v12, v6);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

    *(v3 + 14) = v17;
    _os_log_impl(&dword_266B9E000, v19, v2, "%s: intent set to: %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v4, -1, -1);
    MEMORY[0x26D5ED340](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v6 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  outlined init with copy of ResponseExecuting(v3 + *(*v3 + 120), v20);
  type metadata accessor for ValidateCallStatusFlow();
  v13 = swift_allocObject();
  *(v13 + 16) = 5;
  outlined init with take of ConversationParticipant(v20, v13 + 24);
  *&v20[0] = v13;
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a1, v12, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a2, v10, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  v14 = *(v7 + 80);
  v15 = (v14 + 24) & ~v14;
  v16 = (v8 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  outlined init with take of ShareTarget(v12, v17 + v15, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  outlined init with take of ShareTarget(v10, v17 + v16, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type ValidateCallStatusFlow and conformance ValidateCallStatusFlow, type metadata accessor for ValidateCallStatusFlow);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

{
  v19 = a3;
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v7 = *(started - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](started - 8);
  v10 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  outlined init with copy of ResponseExecuting(v3 + *(*v3 + 120), v20);
  type metadata accessor for ValidateCallStatusFlow();
  v13 = swift_allocObject();
  *(v13 + 16) = 5;
  outlined init with take of ConversationParticipant(v20, v13 + 24);
  *&v20[0] = v13;
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a1, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a2, v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  v14 = *(v7 + 80);
  v15 = (v14 + 24) & ~v14;
  v16 = (v8 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  outlined init with take of ShareTarget(v12, v17 + v15, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined init with take of ShareTarget(v10, v17 + v16, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type ValidateCallStatusFlow and conformance ValidateCallStatusFlow, type metadata accessor for ValidateCallStatusFlow);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v10);
  v14 = v33 - v13 + 16;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        *v14 = 0;
        goto LABEL_13;
      }

      v15 = 1;
    }

    else
    {
      v15 = 4;
    }

    *v14 = v15;
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v16 = *(*a2 + 112);
    swift_beginAccess();
    outlined init with copy of ResponseExecuting(a2 + v16, v33);
    v17 = v34;
    v18 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v19 = (*(v18 + 200))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      outlined init with copy of ResponseExecuting(a2 + v16, v33);
      v26 = v34;
      v27 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v28 = (*(v27 + 224))(v26, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      if ((v28 & 1) == 0)
      {
        outlined init with copy of StopSharingFlow.StopSharingFlowState(a4, v14, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        v29 = *(*a2 + 104);
        swift_beginAccess();
        v30 = a2 + v29;
        v31 = v12;
        goto LABEL_21;
      }

      v20 = 2;
    }

    *v14 = v20;
    swift_storeEnumTagMultiPayload();
    v29 = *(*a2 + 104);
    swift_beginAccess();
    v30 = a2 + v29;
    v31 = v12;
LABEL_21:
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v30, v31, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StopSharingFlow.StopSharingFlowState(v14, a2 + v29, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    goto LABEL_15;
  }

  if (a1 != 4)
  {
    outlined init with copy of StopSharingFlow.StopSharingFlowState(a3, v33 - v13 + 16, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    v25 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(a2 + v25, v12, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    swift_beginAccess();
    v22 = a2 + v25;
    v23 = v14;
    goto LABEL_14;
  }

  lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
  *v14 = swift_allocError();
LABEL_13:
  swift_storeEnumTagMultiPayload();
  v21 = *(*a2 + 104);
  swift_beginAccess();
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a2 + v21, v12, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  swift_beginAccess();
  v22 = a2 + v21;
  v23 = v14;
LABEL_14:
  outlined assign with copy of StopSharingFlow.StopSharingFlowState(v23, v22, type metadata accessor for StopSharingFlow.StopSharingFlowState);
LABEL_15:
  swift_endAccess();
  specialized SharingFlow.state.didset(v12, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v12, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  return _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v14, type metadata accessor for StopSharingFlow.StopSharingFlowState);
}

{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v9 = *(*(started - 8) + 64);
  v10 = MEMORY[0x28223BE20](started);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v10);
  v14 = v33 - v13 + 16;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        *v14 = 0;
        goto LABEL_13;
      }

      v15 = 1;
    }

    else
    {
      v15 = 4;
    }

    *v14 = v15;
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v16 = *(*a2 + 112);
    swift_beginAccess();
    outlined init with copy of ResponseExecuting(a2 + v16, v33);
    v17 = v34;
    v18 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v19 = (*(v18 + 200))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      outlined init with copy of ResponseExecuting(a2 + v16, v33);
      v26 = v34;
      v27 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v28 = (*(v27 + 224))(v26, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      if ((v28 & 1) == 0)
      {
        outlined init with copy of StopSharingFlow.StopSharingFlowState(a4, v14, type metadata accessor for StartSharingFlow.StartSharingFlowState);
        v29 = *(*a2 + 104);
        swift_beginAccess();
        v30 = a2 + v29;
        v31 = v12;
        goto LABEL_21;
      }

      v20 = 2;
    }

    *v14 = v20;
    swift_storeEnumTagMultiPayload();
    v29 = *(*a2 + 104);
    swift_beginAccess();
    v30 = a2 + v29;
    v31 = v12;
LABEL_21:
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v30, v31, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StopSharingFlow.StopSharingFlowState(v14, a2 + v29, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    goto LABEL_15;
  }

  if (a1 != 4)
  {
    outlined init with copy of StopSharingFlow.StopSharingFlowState(a3, v33 - v13 + 16, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    v25 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(a2 + v25, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    v22 = a2 + v25;
    v23 = v14;
    goto LABEL_14;
  }

  lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
  *v14 = swift_allocError();
LABEL_13:
  swift_storeEnumTagMultiPayload();
  v21 = *(*a2 + 104);
  swift_beginAccess();
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a2 + v21, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  v22 = a2 + v21;
  v23 = v14;
LABEL_14:
  outlined assign with copy of StopSharingFlow.StopSharingFlowState(v23, v22, type metadata accessor for StartSharingFlow.StartSharingFlowState);
LABEL_15:
  swift_endAccess();
  specialized SharingFlow.state.didset(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState, type metadata accessor for StartSharingFlow.StartSharingFlowState, type metadata accessor for StartSharingFlow.StartSharingFlowState, StartSharingFlow.StartSharingFlowState.description.getter);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  return _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v14, type metadata accessor for StartSharingFlow.StartSharingFlowState);
}

uint64_t specialized SharingFlow.makeResponseForCommonError(_:)(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v1 = type metadata accessor for Responses.Common.CallOutgoing1on1(0);
      v2 = -124;
      v3 = &protocol witness table for Responses.Common.CallOutgoing1on1;
    }

    else
    {
      v1 = type metadata accessor for Responses.Common.CallOnHold(0);
      v2 = -125;
      v3 = &protocol witness table for Responses.Common.CallOnHold;
    }
  }

  else if (a1 == 2)
  {
    v1 = type metadata accessor for Responses.Common.NotInCall(0);
    v2 = -107;
    v3 = &protocol witness table for Responses.Common.NotInCall;
  }

  else if (a1 == 3)
  {
    v1 = type metadata accessor for Responses.Common.SharePlayUnsupported(0);
    v2 = -102;
    v3 = &protocol witness table for Responses.Common.SharePlayUnsupported;
  }

  else
  {
    v1 = type metadata accessor for Responses.Common.ScreenSharingUnsupported(0);
    v2 = -103;
    v3 = &protocol witness table for Responses.Common.ScreenSharingUnsupported;
  }

  v7[3] = v1;
  v7[4] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  *boxed_opaque_existential_1 = v2;
  v5 = boxed_opaque_existential_1 + *(v1 + 20);
  static DialogPhase.completion.getter();
  specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.default);
  outlined init with copy of ResponseExecuting(a1, v36);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), v34);
    *(v7 + 12) = 2080;
    v9 = v37;
    v10 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v11 = (*(v10 + 8))(v9, v10);
    v12 = CATIdentifier.stringValue.getter(v11);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v34);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v5, v6, "%s: Outputting %s dialog and completing flow", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v8, -1, -1);
    MEMORY[0x26D5ED340](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  outlined init with copy of ResponseExecuting(a1, v36);
  outlined init with copy of ResponseExecuting(v2 + *(*v2 + 128), v34);
  outlined init with copy of ResponseExecuting(v2 + *(*v2 + 136), v33);
  v16 = v35;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = v37;
  v24 = v38;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v26 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  v30 = _s19SiriExpanseInternal16OutputDialogFlowC8response0G8Executor15outputPublisherAcA15SharingResponse_p_AA0L9Executing_p0a3KitF00dJ5Async_ptcfCTf4nenn_nAA0lH0C_Tt2g5Tf4enn_n(v28, v22, v33, v23, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v36[0] = v30;
  type metadata accessor for OutputDialogFlow();
  lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type OutputDialogFlow and conformance OutputDialogFlow, type metadata accessor for OutputDialogFlow);
  static ExecuteResponse.complete<A>(next:)();
}

unint64_t StopSharingFlow.StopSharingFlowState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ShareTarget();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  outlined init with copy of StopSharingFlow.StopSharingFlowState(v1, v37 - v14, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v20 = 35;
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          return 0xD000000000000010;
        }

        v20 = 46;
      }

      return v20 | 0xD000000000000010;
    }

    if (EnumCaseMultiPayload == 5)
    {
      return 0x696C616974696E69;
    }

    else
    {
      return 0x6E696D726F666572;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v31 = *v15;
        v38 = 0;
        v39 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);

        v38 = 0xD00000000000001BLL;
        v39 = 0x8000000266BEF9A0;
        if (v31)
        {
          v32 = 0xD000000000000012;
        }

        else
        {
          v32 = 0xD000000000000020;
        }

        if (v31)
        {
          v33 = "failedWithStopSharingError(";
        }

        else
        {
          v33 = "nothingBeingShared";
        }

        MEMORY[0x26D5EC8A0](v32, v33 | 0x8000000000000000);
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v34 = *v15;
          v38 = 0;
          v39 = 0xE000000000000000;
          _StringGuts.grow(_:)(26);
          MEMORY[0x26D5EC8A0](0xD000000000000017, 0x8000000266BEE890);
          v37[1] = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x26D5EC8A0](41, 0xE100000000000000);

          return v38;
        }

        v17 = 0xD000000000000010;
        v18 = *v15;
        v38 = 0;
        v39 = 0xE000000000000000;
        _StringGuts.grow(_:)(25);

        v38 = 0xD000000000000016;
        v39 = 0x8000000266BEF640;
        if (v18 <= 1)
        {
          if (v18)
          {
            v19 = 0x8000000266BEE350;
          }

          else
          {
            v19 = 0xEA0000000000646CLL;
            v17 = 0x6F486E4F6C6C6163;
          }
        }

        else if (v18 == 2)
        {
          v19 = 0xE90000000000006CLL;
          v17 = 0x6C61436E49746F6ELL;
        }

        else if (v18 == 3)
        {
          v19 = 0x8000000266BEE390;
          v17 = 0xD000000000000014;
        }

        else
        {
          v19 = 0x8000000266BEE6B0;
          v17 = 0xD000000000000012;
        }

        MEMORY[0x26D5EC8A0](v17, v19);
      }

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      return v38;
    }

    if (EnumCaseMultiPayload)
    {
      outlined init with take of ShareTarget(v15, v5, type metadata accessor for ShareTarget);
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v38 = 0xD000000000000010;
      v39 = 0x8000000266BEF750;
      v35 = ShareTarget.description.getter();
      MEMORY[0x26D5EC8A0](v35);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v36 = v38;
      _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v5, type metadata accessor for ShareTarget);
      return v36;
    }

    else
    {
      v21 = *v15;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
      v23 = swift_projectBox();
      v24 = *(v22 + 48);
      outlined init with copy of StopSharingFlow.StopSharingFlowState(v23, v13, type metadata accessor for StopSharingFlow.StopSharingFlowState);
      outlined init with copy of StopSharingFlow.StopSharingFlowState(v23 + v24, v10, type metadata accessor for StopSharingFlow.StopSharingFlowState);
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      v25 = MEMORY[0x26D5EC8A0](0xD00000000000002ALL, 0x8000000266BEF840);
      v26 = StopSharingFlow.StopSharingFlowState.description.getter(v25);
      MEMORY[0x26D5EC8A0](v26);

      v27 = MEMORY[0x26D5EC8A0](0xD00000000000001FLL, 0x8000000266BEF870);
      v28 = StopSharingFlow.StopSharingFlowState.description.getter(v27);
      MEMORY[0x26D5EC8A0](v28);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v29 = v38;
      _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v10, type metadata accessor for StopSharingFlow.StopSharingFlowState);
      _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v13, type metadata accessor for StopSharingFlow.StopSharingFlowState);

      return v29;
    }
  }
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance StopSharingFlow.StopSharingFlowError()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000020;
  }

  *v0;
  return result;
}

uint64_t StopSharingFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.default);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v8, v9, "%s: received input %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v11, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t StopSharingFlow.execute()(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = *(*(type metadata accessor for ShareTarget() - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v4 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v2[52] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](StopSharingFlow.execute(), 0, 0);
}

uint64_t StopSharingFlow.execute()()
{
  v133 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(*v3 + 104);
  swift_beginAccess();
  outlined init with copy of StopSharingFlow.StopSharingFlowState(v3 + v4, v1, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v32 = *(v0 + 424);
        v31 = *(v0 + 432);
        v33 = *(v0 + 416);
        v34 = *(v0 + 400);
        v130 = *(v0 + 392);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
        v36 = swift_allocBox();
        v38 = v37;
        v39 = *(v35 + 48);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
        *(v38 + v39) = swift_allocError();
        swift_storeEnumTagMultiPayload();
        *v31 = v36;
        swift_storeEnumTagMultiPayload();
        outlined init with copy of StopSharingFlow.StopSharingFlowState(v3 + v4, v32, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        swift_beginAccess();
        outlined assign with copy of StopSharingFlow.StopSharingFlowState(v31, v3 + v4, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        swift_endAccess();
        specialized SharingFlow.state.didset(v32, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
        _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v32, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v31, type metadata accessor for StopSharingFlow.StopSharingFlowState);
      }

      else
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v80 = *(v0 + 400);
        v81 = type metadata accessor for Logger();
        __swift_project_value_buffer(v81, static Logger.default);

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v132 = v85;
          *v84 = 136315394;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          v86 = *(v0 + 400);
          *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v132);
          *(v84 + 12) = 2080;
          v87 = *(*v86 + 112);
          swift_beginAccess();
          outlined init with copy of ResponseExecuting(v86 + v87, v0 + 216);
          v88 = *(v0 + 248);
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          v89 = *(v88 + 8);
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
          v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v132);

          *(v84 + 14) = v93;
          _os_log_impl(&dword_266B9E000, v82, v83, "%s: Intent before reformation: %s", v84, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5ED340](v85, -1, -1);
          MEMORY[0x26D5ED340](v84, -1, -1);
        }

        v94 = *(v0 + 400) + *(**(v0 + 400) + 112);
        swift_beginAccess();
        v95 = *(v94 + 24);
        v96 = *(v94 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
        LOBYTE(v95) = (*(v96 + 232))(v95, v96);
        swift_endAccess();
        specialized SharingFlow.intent.didset();
        if (v95)
        {
          v97 = *(v0 + 400);

          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v132 = v101;
            *v100 = 136315394;
            if (one-time initialization token for typeName != -1)
            {
              swift_once();
            }

            *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v132);
            *(v100 + 12) = 2080;
            outlined init with copy of ResponseExecuting(v94, v0 + 176);
            v102 = *(v0 + 208);
            __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
            v103 = *(v102 + 8);
            v104 = dispatch thunk of CustomStringConvertible.description.getter();
            v106 = v105;
            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
            v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v132);

            *(v100 + 14) = v107;
            _os_log_impl(&dword_266B9E000, v98, v99, "%s: Intent after reformation: %s", v100, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D5ED340](v101, -1, -1);
            MEMORY[0x26D5ED340](v100, -1, -1);
          }
        }

        else
        {
          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v132 = v115;
            *v114 = 136315138;
            if (one-time initialization token for typeName != -1)
            {
              swift_once();
            }

            *(v114 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v132);
            _os_log_impl(&dword_266B9E000, v112, v113, "%s: Intent unchanged by reformation", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v115);
            MEMORY[0x26D5ED340](v115, -1, -1);
            MEMORY[0x26D5ED340](v114, -1, -1);
          }
        }

        v117 = *(v0 + 424);
        v116 = *(v0 + 432);
        v118 = *(v0 + 416);
        v119 = *(v0 + 400);
        v131 = *(v0 + 392);
        outlined init with copy of ResponseExecuting(v94, v0 + 136);
        v120 = *(v0 + 160);
        v121 = *(v0 + 168);
        __swift_project_boxed_opaque_existential_1((v0 + 136), v120);
        (*(v121 + 192))(v120, v121);
        swift_storeEnumTagMultiPayload();
        outlined init with copy of StopSharingFlow.StopSharingFlowState(v3 + v4, v117, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        swift_beginAccess();
        outlined assign with copy of StopSharingFlow.StopSharingFlowState(v116, v3 + v4, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        swift_endAccess();
        specialized SharingFlow.state.didset(v117, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
        _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v117, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v116, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      }

      static ExecuteResponse.ongoing(requireInput:)();
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v54 = *(v0 + 400);
      StopSharingFlow.stopSharingTarget(_:)(*(v0 + 392));
    }

    else if (EnumCaseMultiPayload == 8)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.default);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v132 = v20;
        *v19 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v132);
        *(v19 + 12) = 2080;
        *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v132);
        _os_log_impl(&dword_266B9E000, v17, v18, "%s: Successfully stopped sharing %s; dismissing Siri and completing flow", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v20, -1, -1);
        MEMORY[0x26D5ED340](v19, -1, -1);
      }

      v21 = *(v0 + 392);
      outlined init with copy of ResponseExecuting(*(v0 + 400) + *(**(v0 + 400) + 136), v0 + 96);
      type metadata accessor for DismissSiriFlow();
      v22 = swift_allocObject();
      outlined init with take of ConversationParticipant((v0 + 96), v22 + 16);
      *(v0 + 384) = v22;
      lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow, type metadata accessor for DismissSiriFlow);
      static ExecuteResponse.complete<A>(next:)();
    }

    else
    {
      v74 = *(v0 + 392);
      static ExecuteResponse.complete()();
    }

    goto LABEL_83;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v40 = **(v0 + 440);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.default);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v132 = v45;
        *v44 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v46 = static StopSharingFlow.typeName;
        v47 = *algn_2800C0FA8;
        *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v132);
        *(v44 + 12) = 2080;
        *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v132);
        *(v44 + 22) = 2080;
        if (v40)
        {
          v48 = 0xD000000000000012;
        }

        else
        {
          v48 = 0xD000000000000020;
        }

        if (v40)
        {
          v49 = "failedWithStopSharingError(";
        }

        else
        {
          v49 = "nothingBeingShared";
        }

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49 | 0x8000000000000000, &v132);

        *(v44 + 24) = v50;
        _os_log_impl(&dword_266B9E000, v42, v43, "%s: %s failed with stop sharing error: %s", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v45, -1, -1);
        MEMORY[0x26D5ED340](v44, -1, -1);
      }

      if (v40)
      {
        v51 = type metadata accessor for Responses.StopSharing.NothingBeingShared(0);
        v52 = -106;
        v53 = &protocol witness table for Responses.StopSharing.NothingBeingShared;
      }

      else
      {
        v51 = type metadata accessor for Responses.StopSharing.CannotUnshareRemotelyOwnedTarget(0);
        v52 = -120;
        v53 = &protocol witness table for Responses.StopSharing.CannotUnshareRemotelyOwnedTarget;
      }

      v109 = *(v0 + 392);
      v108 = *(v0 + 400);
      *(v0 + 80) = v51;
      *(v0 + 88) = v53;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      *boxed_opaque_existential_1 = v52;
      v111 = boxed_opaque_existential_1 + *(v51 + 20);
      static DialogPhase.completion.getter();
      specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v0 + 56);
      v73 = (v0 + 56);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v6 = **(v0 + 440);
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static Logger.default);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v132 = v11;
          *v10 = 136315650;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          v12 = static StopSharingFlow.typeName;
          v13 = *algn_2800C0FA8;
          *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v132);
          *(v10 + 12) = 2080;
          *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v132);
          *(v10 + 22) = 2080;
          if (v6 <= 1)
          {
            if (v6)
            {
              v14 = 0x8000000266BEE350;
              v15 = 0xD000000000000010;
            }

            else
            {
              v14 = 0xEA0000000000646CLL;
              v15 = 0x6F486E4F6C6C6163;
            }
          }

          else if (v6 == 2)
          {
            v14 = 0xE90000000000006CLL;
            v15 = 0x6C61436E49746F6ELL;
          }

          else if (v6 == 3)
          {
            v14 = 0x8000000266BEE390;
            v15 = 0xD000000000000014;
          }

          else
          {
            v15 = 0xD000000000000012;
            v14 = 0x8000000266BEE6B0;
          }

          v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v132);

          *(v10 + 24) = v122;
          _os_log_impl(&dword_266B9E000, v8, v9, "%s: %s failed with common error: %s", v10, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D5ED340](v11, -1, -1);
          MEMORY[0x26D5ED340](v10, -1, -1);
        }

        v123 = *(v0 + 392);
        v124 = *(v0 + 400);
        specialized SharingFlow.makeResponseForCommonError(_:)(v6);
        goto LABEL_83;
      }

      v55 = **(v0 + 440);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.default);
      v57 = v55;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v132 = v61;
        *v60 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v62 = static StopSharingFlow.typeName;
        v63 = *algn_2800C0FA8;
        *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v132);
        *(v60 + 12) = 2080;
        *(v60 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v132);
        *(v60 + 22) = 2080;
        *(v0 + 376) = v55;
        v64 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
        v65 = String.init<A>(describing:)();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v132);

        *(v60 + 24) = v67;
        _os_log_impl(&dword_266B9E000, v58, v59, "%s: %s failed with unknown/unexpected error: %s", v60, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v61, -1, -1);
        MEMORY[0x26D5ED340](v60, -1, -1);
      }

      v69 = *(v0 + 392);
      v68 = *(v0 + 400);
      v70 = type metadata accessor for Responses.Common.GenericError(0);
      *(v0 + 40) = v70;
      *(v0 + 48) = &protocol witness table for Responses.Common.GenericError;
      v71 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      v72 = v71 + *(v70 + 20);
      static DialogPhase.completion.getter();
      *v71 = -112;
      *(v71 + *(v70 + 24)) = 0;
      specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v0 + 16);

      v73 = (v0 + 16);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v73);
LABEL_83:
    v126 = *(v0 + 432);
    v125 = *(v0 + 440);
    v127 = *(v0 + 424);
    v128 = *(v0 + 408);

    v129 = *(v0 + 8);

    return v129();
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = *(v0 + 432);
    v24 = *(v0 + 424);
    v26 = *(v0 + 392);
    v25 = *(v0 + 400);
    v27 = **(v0 + 440);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
    v29 = swift_projectBox();
    v30 = *(v28 + 48);
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v29, v23, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v29 + v30, v24, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    specialized SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(v23, v24, v26);
    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v24, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v23, type metadata accessor for StopSharingFlow.StopSharingFlowState);

    goto LABEL_83;
  }

  outlined init with take of ShareTarget(*(v0 + 440), *(v0 + 408), type metadata accessor for ShareTarget);
  v75 = swift_task_alloc();
  *(v0 + 448) = v75;
  *v75 = v0;
  v75[1] = StopSharingFlow.execute();
  v77 = *(v0 + 400);
  v76 = *(v0 + 408);
  v78 = *(v0 + 392);

  return StopSharingFlow.resolveTarget(_:)(v78, v76);
}

{
  v1 = *(*v0 + 448);
  v3 = *v0;

  return MEMORY[0x2822009F8](StopSharingFlow.execute(), 0, 0);
}

{
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v0[51], type metadata accessor for ShareTarget);
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[51];

  v5 = v0[1];

  return v5();
}

uint64_t StopSharingFlow.resolveTarget(_:)(uint64_t a1, uint64_t a2)
{
  v3[32] = a1;
  v3[33] = v2;
  v5 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v3[34] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v7 = *(*v2 + 120);
  v8 = swift_task_alloc();
  v3[37] = v8;
  *v8 = v3;
  v8[1] = StopSharingFlow.resolveTarget(_:);

  return specialized ShareTargetResolver.resolveShareTargetForStopSharing(target:call:)(a2, v2 + v7);
}

uint64_t StopSharingFlow.resolveTarget(_:)(__int16 a1)
{
  v2 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](StopSharingFlow.resolveTarget(_:), 0, 0);
}

uint64_t StopSharingFlow.resolveTarget(_:)()
{
  v30 = v0;
  v1 = *(v0 + 304);
  if ((v1 & 0x100) != 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.default);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v29);
      *(v10 + 12) = 2080;
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v29);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_266B9E000, v8, v9, "%s: Target resolution failed with error %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v11, -1, -1);
      MEMORY[0x26D5ED340](v10, -1, -1);
    }

    v3 = *(v0 + 280);
    v2 = *(v0 + 288);
    v15 = *(v0 + 264);
    v16 = *(v0 + 272);
    lazy protocol witness table accessor for type StopSharingTargetResolutionError and conformance StopSharingTargetResolutionError();
    *v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v17 = *(*v15 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v15 + v17, v3, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StopSharingFlow.StopSharingFlowState(v2, v15 + v17, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  }

  else
  {
    v3 = *(v0 + 280);
    v2 = *(v0 + 288);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    if (v1 > 1u)
    {
      if (v1 == 2)
      {
        *v2 = 3;
      }

      else
      {
        v23 = *(v0 + 272);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
        v25 = swift_allocBox();
        v27 = v26;
        v28 = *(v24 + 48);
        swift_storeEnumTagMultiPayload();
        *(v27 + v28) = 2;
        swift_storeEnumTagMultiPayload();
        *v2 = v25;
      }
    }

    else if (v1)
    {
      *v2 = 0;
    }

    else
    {
      *v2 = 1;
    }

    swift_storeEnumTagMultiPayload();
    v6 = *(*v5 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v5 + v6, v3, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StopSharingFlow.StopSharingFlowState(v2, v5 + v6, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  }

  swift_endAccess();
  specialized SharingFlow.state.didset(v3, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v3, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v2, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  v18 = *(v0 + 280);
  v19 = *(v0 + 288);
  v20 = *(v0 + 256);
  static ExecuteResponse.ongoing(requireInput:)();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t StopSharingFlow.stopSharingTarget(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.default);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v22[1] = a1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, v23);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, v23);
    _os_log_impl(&dword_266B9E000, v12, v13, "%s: Stopping sharing of target %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v15, -1, -1);
    MEMORY[0x26D5ED340](v14, -1, -1);
  }

  else
  {
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(0, (v1 + *(*v1 + 120)));
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, v23);
    _os_log_impl(&dword_266B9E000, v16, v17, "%s: Successfully stopped sharing target", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x26D5ED340](v19, -1, -1);
    MEMORY[0x26D5ED340](v18, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v20 = *(*v2 + 104);
  swift_beginAccess();
  outlined init with copy of StopSharingFlow.StopSharingFlowState(v2 + v20, v8, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StopSharingFlow.StopSharingFlowState(v10, v2 + v20, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  swift_endAccess();
  specialized SharingFlow.state.didset(v8, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v8, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v10, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  return static ExecuteResponse.ongoing(requireInput:)();
}

uint64_t StopSharingFlow.__deallocating_deinit()
{
  v1 = v0[3];

  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v0 + *(*v0 + 104), type metadata accessor for StopSharingFlow.StopSharingFlowState);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 112)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 120)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 128)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 136)));
  v2 = direct field offset for StopSharingFlow.shareTargetResolver;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v2));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StopSharingFlow.sharer));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t type metadata completion function for StopSharingFlow.StopSharingFlowState()
{
  result = type metadata accessor for ShareTarget();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Error();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowError and conformance StopSharingFlow.StopSharingFlowError()
{
  result = lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowError and conformance StopSharingFlow.StopSharingFlowError;
  if (!lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowError and conformance StopSharingFlow.StopSharingFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowError and conformance StopSharingFlow.StopSharingFlowError);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for StopSharingFlow.StopSharingFlowState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s19SiriExpanseInternal11ShareTargetOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_266BE66D8()
{
  v1 = *(type metadata accessor for StopSharingFlow.StopSharingFlowState(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);

  v7 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = *v7;
    }

    goto LABEL_14;
  }

  type metadata accessor for ShareTarget();
  v10 = swift_getEnumCaseMultiPayload();
  if (v10 > 1)
  {
    if (v10 != 2 && v10 != 3)
    {
      goto LABEL_14;
    }

LABEL_12:
    v11 = *(v7 + 8);

    goto LABEL_14;
  }

  if (!v10)
  {
    v12 = *v7;

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
    v14 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
    goto LABEL_14;
  }

  if (v10 == 1)
  {
    goto LABEL_12;
  }

LABEL_14:
  v15 = v0 + v5;
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 == 4)
  {

    goto LABEL_27;
  }

  if (v16 != 1)
  {
    if (!v16)
    {
      v17 = *v15;
    }

    goto LABEL_27;
  }

  type metadata accessor for ShareTarget();
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 > 1)
  {
    if (v18 != 2 && v18 != 3)
    {
      goto LABEL_27;
    }

LABEL_25:
    v19 = *(v15 + 8);

    goto LABEL_27;
  }

  if (!v18)
  {
    v20 = *v15;

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
    v22 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    (*(*(v22 - 8) + 8))(v15 + v21, v22);
    goto LABEL_27;
  }

  if (v18 == 1)
  {
    goto LABEL_25;
  }

LABEL_27:

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t outlined init with take of ShareTarget(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(unsigned __int8 *a1)
{
  return partial apply for specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(a1, type metadata accessor for StopSharingFlow.StopSharingFlowState, specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:));
}

{
  return partial apply for specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(a1, type metadata accessor for StartSharingFlow.StartSharingFlowState, specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:));
}

uint64_t outlined init with copy of StopSharingFlow.StopSharingFlowState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266BE6AA0()
{
  v1 = *(type metadata accessor for StartSharingFlow.StartSharingFlowState(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);

  v7 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *v7;

      goto LABEL_31;
    }

    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_31;
    }

    type metadata accessor for ShareTarget();
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 1)
    {
      if (v9 != 2 && v9 != 3)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!v9)
      {
        v20 = *v7;

        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
        v22 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
        (*(*(v22 - 8) + 8))(v7 + v21, v22);
        goto LABEL_28;
      }

      if (v9 != 1)
      {
        goto LABEL_28;
      }
    }

    v13 = *(v7 + 8);

LABEL_28:
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR) + 48);
    goto LABEL_29;
  }

  switch(EnumCaseMultiPayload)
  {
    case 5:
      type metadata accessor for ShareTarget();
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 1)
      {
        if (v10 != 2 && v10 != 3)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v10)
        {
          v14 = *v7;

          v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
          v16 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
          (*(*(v16 - 8) + 8))(v7 + v15, v16);
          goto LABEL_26;
        }

        if (v10 != 1)
        {
          goto LABEL_26;
        }
      }

      v12 = *(v7 + 8);

LABEL_26:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v18 = *(v7 + *(v17 + 48) + 8);

      v19 = *(v17 + 64);
LABEL_29:
      v23 = *(v7 + v19);
      goto LABEL_30;
    case 6:
      if (*(v7 + 8) < 3uLL)
      {
        break;
      }

LABEL_30:

      break;
    case 8:

      break;
  }

LABEL_31:
  v24 = v0 + v5;
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 <= 4)
  {
    if (!v25)
    {
      v28 = *v24;

      goto LABEL_61;
    }

    if (v25 != 4)
    {
      goto LABEL_61;
    }

    type metadata accessor for ShareTarget();
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 1)
    {
      if (v26 != 2 && v26 != 3)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (!v26)
      {
        v37 = *v24;

        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
        v39 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
        (*(*(v39 - 8) + 8))(v24 + v38, v39);
        goto LABEL_58;
      }

      if (v26 != 1)
      {
        goto LABEL_58;
      }
    }

    v30 = *(v24 + 8);

LABEL_58:
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR) + 48);
    goto LABEL_59;
  }

  switch(v25)
  {
    case 5:
      type metadata accessor for ShareTarget();
      v27 = swift_getEnumCaseMultiPayload();
      if (v27 > 1)
      {
        if (v27 != 2 && v27 != 3)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (!v27)
        {
          v31 = *v24;

          v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
          v33 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
          (*(*(v33 - 8) + 8))(v24 + v32, v33);
          goto LABEL_56;
        }

        if (v27 != 1)
        {
          goto LABEL_56;
        }
      }

      v29 = *(v24 + 8);

LABEL_56:
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v35 = *(v24 + *(v34 + 48) + 8);

      v36 = *(v34 + 64);
LABEL_59:
      v40 = *(v24 + v36);
      goto LABEL_60;
    case 6:
      if (*(v24 + 8) < 3uLL)
      {
        break;
      }

LABEL_60:

      break;
    case 8:

      break;
  }

LABEL_61:

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t partial apply for specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(unsigned __int8 *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v3 + 16);
  v9 = *a1;
  v10 = v3 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return a3(v9, v8, v3 + v7, v10);
}

uint64_t outlined assign with copy of StopSharingFlow.StopSharingFlowState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}