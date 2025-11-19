uint64_t specialized SharingIntent.isExplicitShareInCallIntent.getter()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      return 0;
    }
  }

  else if (*(v0 + 16))
  {

    return 1;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
    return 1;
  }

  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!*(v0 + 16))
  {

    goto LABEL_13;
  }

LABEL_12:
  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if (*(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isSharePlayRequest))
  {
    return 1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier + 8);
  if (!v4)
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier) == 0xD000000000000012 && v4 == 0x8000000266BEE5E0)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26D5ECB50](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v15 = v7;
        a1(&v14, &v15);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v14)
        {
          MEMORY[0x26D5EC910](v9);
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v11 = v16;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t SharingNLv4Intent.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ShareTarget();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(480);
  v51 = v49;
  v52 = v50;
  MEMORY[0x26D5EC8A0](0xD00000000000001DLL, 0x8000000266BEF130);
  LOBYTE(v49) = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11SharingVerbOSgMd, &_s19SiriExpanseInternal11SharingVerbOSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v10);

  MEMORY[0x26D5EC8A0](0x7974202020200A2CLL, 0xEC000000203A6570);
  v11 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type;
  swift_beginAccess();
  outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v1 + v11, v9);
  v12 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v12);

  MEMORY[0x26D5EC8A0](0xD000000000000020, 0x8000000266BEF150);
  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_containsSharingReference))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_containsSharingReference))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x26D5EC8A0](v13, v14);

  MEMORY[0x26D5EC8A0](0x7061202020200A2CLL, 0xEF203A656D614E70);
  v15 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName + 8);
  v47 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName);
  v48 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v16);

  MEMORY[0x26D5EC8A0](0xD000000000000018, 0x8000000266BEF180);
  v17 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_typeMatchingSpan + 8);
  v47 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_typeMatchingSpan);
  v48 = v17;

  v18 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v18);

  MEMORY[0x26D5EC8A0](0xD000000000000015, 0x8000000266BEF1A0);
  v19 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier + 8);
  v47 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier);
  v48 = v19;

  v20 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v20);

  MEMORY[0x26D5EC8A0](0xD00000000000001FLL, 0x8000000266BEF1C0);
  v21 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier + 8);
  v47 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier);
  v48 = v21;

  v22 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v22);

  MEMORY[0x26D5EC8A0](0xD000000000000016, 0x8000000266BEF1E0);
  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToScreen))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToScreen))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x26D5EC8A0](v23, v24);

  MEMORY[0x26D5EC8A0](0xD00000000000001ALL, 0x8000000266BEF200);
  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToEverything))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToEverything))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x26D5EC8A0](v25, v26);

  MEMORY[0x26D5EC8A0](0xD000000000000020, 0x8000000266BEF220);
  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToDisplayedContent))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToDisplayedContent))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x26D5EC8A0](v27, v28);

  MEMORY[0x26D5EC8A0](0xD000000000000012, 0x8000000266BEF250);
  v47 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_recipients);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  v29 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v29);

  MEMORY[0x26D5EC8A0](0xD000000000000019, 0x8000000266BEF270);
  LOBYTE(v47) = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_confirmationValue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal17ConfirmationValueOSgMd, &_s19SiriExpanseInternal17ConfirmationValueOSgMR);
  v30 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v30);

  MEMORY[0x26D5EC8A0](0xD000000000000013, 0x8000000266BEF290);
  specialized SharingIntent.shareTarget.getter(v5);
  v31 = ShareTarget.description.getter();
  MEMORY[0x26D5EC8A0](v31);

  outlined destroy of ShareTarget(v5);
  MEMORY[0x26D5EC8A0](0xD00000000000001ALL, 0x8000000266BEF2B0);
  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isSharePlayRequest))
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isSharePlayRequest))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x26D5EC8A0](v32, v33);

  MEMORY[0x26D5EC8A0](0xD000000000000011, 0x8000000266BEF2D0);
  v47 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_usoEntity);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityCSgMd, &_s12SiriOntology9UsoEntityCSgMR);
  v34 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v34);

  MEMORY[0x26D5EC8A0](0xD000000000000028, 0x8000000266BEF2F0);
  v35 = specialized SharingIntent.isExplicitShareViaMessagesIntent.getter();
  v36 = (v35 & 1) == 0;
  if (v35)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v36)
  {
    v38 = 0xE500000000000000;
  }

  else
  {
    v38 = 0xE400000000000000;
  }

  MEMORY[0x26D5EC8A0](v37, v38);

  MEMORY[0x26D5EC8A0](0xD000000000000023, 0x8000000266BEF320);
  v39 = specialized SharingIntent.isExplicitShareInCallIntent.getter();
  v40 = (v39 & 1) == 0;
  if (v39)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v40)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x26D5EC8A0](v41, v42);

  MEMORY[0x26D5EC8A0](0xD000000000000012, 0x8000000266BEF350);
  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isReformed))
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isReformed))
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x26D5EC8A0](v43, v44);

  MEMORY[0x26D5EC8A0](10506, 0xE200000000000000);
  return v51;
}

uint64_t SharingNLv4Intent.init(from:)(uint64_t a1)
{
  v3 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v94 = *(v93 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v98 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v104 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserParse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v89 - v17;
  *(v1 + 16) = 3;
  v19 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type;
  v20 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_containsSharingReference) = 0;
  v21 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_typeMatchingSpan);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier);
  *v24 = 0;
  v24[1] = 0;
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToScreen) = 0;
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToEverything) = 0;
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToDisplayedContent) = 0;
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_recipients) = 0;
  v99 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_confirmationValue;
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_confirmationValue) = 3;
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isSharePlayRequest) = 0;
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_usoEntity) = 0;
  v103 = v1;
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isReformed) = 0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.default);
  v27 = v12;
  v28 = *(v12 + 16);
  v102 = a1;
  v28(v18, a1, v11);
  v101 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v91 = v27;
    v31 = v8;
    v32 = v11;
    v92 = v31;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v107[0] = v34;
    *v33 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v107);
    *(v33 + 12) = 2080;
    v28(v16, v18, v32);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = *(v91 + 8);
    v38(v18, v32);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v107);

    *(v33 + 14) = v39;
    v40 = v32;
    _os_log_impl(&dword_266B9E000, v29, v30, "%s: Initializing self from user parse: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v34, -1, -1);
    MEMORY[0x26D5ED340](v33, -1, -1);

    v8 = v92;
  }

  else
  {

    v38 = *(v27 + 8);
    v38(v18, v11);
    v40 = v11;
  }

  v41 = v104;
  v42 = v102;
  v43 = MEMORY[0x26D5EC090]();
  if (!*(v43 + 16))
  {

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v38;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v107[0] = v54;
      *v53 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v107);
      _os_log_impl(&dword_266B9E000, v50, v51, "%s: Failed to get UserDialogAct.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x26D5ED340](v54, -1, -1);
      MEMORY[0x26D5ED340](v53, -1, -1);

      v52(v42, v40);
    }

    else
    {

      v38(v42, v40);
    }

    return 0;
  }

  v44 = v100;
  (*(v8 + 16))(v100, v43 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v41);

  if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v38;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v107[0] = v49;
      *v48 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v107);
      _os_log_impl(&dword_266B9E000, v45, v46, "%s: UserDialogAct is an accepted response.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x26D5ED340](v49, -1, -1);
      MEMORY[0x26D5ED340](v48, -1, -1);

      v47(v42, v40);
      (*(v8 + 8))(v44, v104);
    }

    else
    {

      v38(v42, v40);
      (*(v8 + 8))(v44, v41);
    }

    result = v103;
    *(v103 + v99) = 0;
    return result;
  }

  if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v41;
      v58 = v38;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v107[0] = v60;
      *v59 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v107);
      _os_log_impl(&dword_266B9E000, v55, v56, "%s: UserDialogAct is a rejected response.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x26D5ED340](v60, -1, -1);
      MEMORY[0x26D5ED340](v59, -1, -1);

      v58(v42, v40);
      (*(v8 + 8))(v100, v57);
    }

    else
    {

      v38(v42, v40);
      (*(v8 + 8))(v44, v41);
    }

    v68 = 1;
LABEL_40:
    result = v103;
    *(v103 + v99) = v68;
    return result;
  }

  if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v41;
      v65 = v38;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v107[0] = v67;
      *v66 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v107);
      _os_log_impl(&dword_266B9E000, v62, v63, "%s: UserDialogAct is a cancelled response.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x26D5ED340](v67, -1, -1);
      MEMORY[0x26D5ED340](v66, -1, -1);

      v65(v42, v40);
      (*(v8 + 8))(v100, v64);
    }

    else
    {

      v38(v42, v40);
      (*(v8 + 8))(v44, v41);
    }

    v68 = 2;
    goto LABEL_40;
  }

  if ((Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter() & 1) == 0)
  {

    v38(v42, v40);
LABEL_50:
    (*(v8 + 8))(v44, v41);
    return 0;
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  v71 = os_log_type_enabled(v69, v70);
  v90 = v40;
  if (v71)
  {
    v72 = v41;
    v73 = v38;
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v107[0] = v75;
    *v74 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v107);
    _os_log_impl(&dword_266B9E000, v69, v70, "%s: UserDialogAct has a user stated task.", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x26D5ED340](v75, -1, -1);
    MEMORY[0x26D5ED340](v74, -1, -1);

    v38 = v73;
    v41 = v72;
    v44 = v100;
  }

  else
  {
  }

  v76 = v98;
  v77 = v95;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v96 + 8))(v77, v97);
  v78 = 0;
  v83 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
  v84 = MEMORY[0x26D5EC340]();
  if (v84 >> 62)
  {
    v78 = v84;
    v86 = __CocoaSet.count.getter();
    v84 = v78;
    if (!v86)
    {
      goto LABEL_58;
    }
  }

  else if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_58;
  }

  if ((v84 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5ECB50](0);
  }

  else
  {
    if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_75;
    }

    v85 = *(v84 + 32);
  }

LABEL_58:

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v106 + 1))
  {
    outlined destroy of SharingResponse?(&v105, &_sypSgMd, &_sypSgMR);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v101 = v38;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v107[0] = v82;
      *v81 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v107);
      _os_log_impl(&dword_266B9E000, v79, v80, "%s: Failed to convert graph into UsoTask.", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x26D5ED340](v82, -1, -1);
      MEMORY[0x26D5ED340](v81, -1, -1);

      v101(v42, v90);
    }

    else
    {

      v38(v42, v90);
    }

    goto LABEL_49;
  }

  v70 = v42;
  outlined init with take of Any(&v105, v107);
  outlined init with copy of Any(v107, &v105);
  type metadata accessor for UsoTask_share_common_Message();
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined init with copy of Any(v107, &v105);
    type metadata accessor for UsoTask_unshare_common_Message();
    v88 = swift_dynamicCast();
    v87 = v103;
    if (v88)
    {
      *(v103 + 16) = 1;

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      goto LABEL_63;
    }

    outlined init with copy of Any(v107, &v105);
    type metadata accessor for UsoTask_send_common_Message();
    if (swift_dynamicCast())
    {

      v38(v70, v90);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      (*(v94 + 8))(v76, v93);
      (*(v8 + 8))(v44, v41);
      result = v87;
      *(v87 + 16) = 2;
      return result;
    }

    v83 = Logger.logObject.getter();
    LOBYTE(v42) = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v83, v42))
    {

      v38(v70, v90);
      goto LABEL_72;
    }

    v101 = v38;
    v78 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v105 = v38;
    *v78 = 136315138;
    if (one-time initialization token for typeName == -1)
    {
LABEL_70:
      *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, &v105);
      _os_log_impl(&dword_266B9E000, v83, v42, "%s: Failed to convert UsoTask to any expected type.", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x26D5ED340](v38, -1, -1);
      MEMORY[0x26D5ED340](v78, -1, -1);

      v101(v70, v90);
LABEL_72:
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
LABEL_49:
      (*(v94 + 8))(v76, v93);
      goto LABEL_50;
    }

LABEL_75:
    swift_once();
    goto LABEL_70;
  }

  v87 = v103;
  *(v103 + 16) = 0;

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
LABEL_63:

  if (v105)
  {

    SharingNLv4Intent.processCommonMessage(_:)();
  }

  v38(v70, v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  (*(v94 + 8))(v76, v93);
  (*(v8 + 8))(v44, v41);
  return v87;
}

uint64_t SharingNLv4Intent.processCommonMessage(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology34UsoEntity_common_CollaborationModeC13DefinedValuesOSgMd, &_s12SiriOntology34UsoEntity_common_CollaborationModeC13DefinedValuesOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v130 = &v122 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v127 = &v122 - v7;
  v131 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v128 = *(v131 - 8);
  v8 = *(v128 + 64);
  MEMORY[0x28223BE20](v131 - 8);
  v122 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v123 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v122 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v125 = &v122 - v18;
  MEMORY[0x28223BE20](v17);
  v124 = &v122 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCGMR);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v122 - v23;
  static Transformer<>.transformer.getter();
  v25 = dispatch thunk of UsoEntity_common_Message.recipients.getter();
  v126 = v16;
  if (v25)
  {
    v26 = v25;
    v132 = v24;
    v136[0] = MEMORY[0x277D84F90];
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
LABEL_91:
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v133 = v1;
    v134 = v21;
    v129 = v20;
    if (v28)
    {
      v20 = 0;
      v1 = v26 & 0xC000000000000001;
      v21 = MEMORY[0x277D84F90];
      do
      {
        v29 = v20;
        while (1)
        {
          if (v1)
          {
            MEMORY[0x26D5ECB50](v29, v26);
            v20 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_89;
            }
          }

          else
          {
            if (v29 >= *(v27 + 16))
            {
              goto LABEL_90;
            }

            v30 = *(v26 + 8 * v29 + 32);

            v20 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
              goto LABEL_91;
            }
          }

          dispatch thunk of CodeGenListEntry.entry.getter();

          if (v135)
          {
            break;
          }

          ++v29;
          if (v20 == v28)
          {
            goto LABEL_22;
          }
        }

        MEMORY[0x26D5EC910](v31);
        if (*((v136[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((v136[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v136[0];
      }

      while (v20 != v28);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

LABEL_22:

    MEMORY[0x28223BE20](v34);
    v24 = v132;
    *(&v122 - 2) = v132;
    v33 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in SharingNLv4Intent.processCommonMessage(_:), (&v122 - 4), v21);

    v20 = v129;
    v1 = v133;
    v21 = v134;
  }

  else
  {
    v33 = 0;
  }

  v35 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_recipients);
  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_recipients) = v33;

  if (dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter())
  {
    v36 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
    if (v36)
    {
      v37 = Array<A>.firstAppBundleIdentifier.getter(v36);
      v39 = v38;

      if (v39)
      {
        v40 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier);
        v41 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier + 8);
        *v40 = v37;
        v40[1] = v39;
      }
    }

    else
    {
    }
  }

  v42 = dispatch thunk of UsoEntity_common_Message.attachments.getter();
  if (!v42)
  {
    return (*(v21 + 8))(v24, v20);
  }

  v43 = v42;
  v44 = v42 & 0xFFFFFFFFFFFFFF8;
  if (!(v42 >> 62))
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      if (v45 < 2)
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

LABEL_95:

    return (*(v21 + 8))(v24, v20);
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_95;
  }

  if (__CocoaSet.count.getter() < 2)
  {
    goto LABEL_39;
  }

LABEL_32:
  v133 = v1;
  v1 = v24;
  if (one-time initialization token for default != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.default);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v134 = v21;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v136[0] = v50;
      *v49 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v136);
      *(v49 + 12) = 2080;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16CodeGenListEntryCyAA27UsoEntity_common_AttachmentCGMd, &_s12SiriOntology16CodeGenListEntryCyAA27UsoEntity_common_AttachmentCGMR);
      v52 = MEMORY[0x26D5EC930](v43, v51);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v136);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_266B9E000, v47, v48, "%s: Found more than one attachment, but only taking the first: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v50, -1, -1);
      MEMORY[0x26D5ED340](v49, -1, -1);

      v21 = v134;
    }

    else
    {
    }

    v24 = v1;
    v1 = v133;
LABEL_39:
    if ((v43 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(v44 + 16))
    {
      v55 = *(v43 + 32);

      goto LABEL_42;
    }

    __break(1u);
LABEL_99:
    swift_once();
  }

  MEMORY[0x26D5ECB50](0, v43);
LABEL_42:

  dispatch thunk of CodeGenListEntry.entry.getter();

  if (v136[0])
  {

    v56 = CodeGenBase.entity.getter();

    v57 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_usoEntity);
    *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_usoEntity) = v56;

    if (dispatch thunk of UsoEntity_common_Attachment.sharedApp.getter())
    {
      v58 = dispatch thunk of UsoEntity_common_App.name.getter();
      v59 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName);
      v60 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName + 8);
      *v59 = v58;
      v59[1] = v61;

      v62 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
      if (v62)
      {
        v63 = Array<A>.firstAppBundleIdentifier.getter(v62);
        v65 = v64;

        if (v65)
        {
          v66 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier);
          v67 = *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier + 8);
          *v66 = v63;
          v66[1] = v65;
        }
      }

      else
      {
      }
    }

    v74 = v1;
    if (!dispatch thunk of UsoEntity_common_Attachment.type.getter())
    {
      goto LABEL_74;
    }

    v132 = v24;
    v134 = v21;
    v75 = v124;
    dispatch thunk of UsoEntity_common_AttachmentType.definedValue.getter();
    v76 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type;
    swift_beginAccess();
    outlined assign with take of UsoEntity_common_AttachmentType.DefinedValues?(v75, v74 + v76);
    swift_endAccess();
    v77 = v125;
    outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v74 + v76, v125);
    v78 = v128;
    v79 = *(v128 + 48);
    v80 = v131;
    if (v79(v77, 1, v131))
    {
      outlined destroy of SharingResponse?(v77, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
    }

    else
    {
      v88 = v122;
      (*(v78 + 16))(v122, v77, v80);
      outlined destroy of SharingResponse?(v77, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
      v89 = v78;
      UsoEntity_common_AttachmentType.DefinedValues.matchingFirstPartyAppBundleID.getter();
      v91 = v90;
      (*(v89 + 8))(v88, v80);
      if (v91)
      {

        v92 = UsoEntity_common_AttachmentType.matchingSpan.getter();
        if (v93)
        {
          v94 = v93;
          v95 = (v74 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_typeMatchingSpan);
          v96 = *(v74 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_typeMatchingSpan + 8);
          v133 = v92;
          *v95 = v92;
          v95[1] = v93;

          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v97 = type metadata accessor for Logger();
          __swift_project_value_buffer(v97, static Logger.default);

          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v98, v99))
          {
            LODWORD(v129) = v99;
            v100 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v136[0] = v125;
            *v100 = 136315394;
            if (one-time initialization token for typeName != -1)
            {
              swift_once();
            }

            *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v136);
            *(v100 + 12) = 2080;
            v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v94, v136);

            *(v100 + 14) = v101;
            _os_log_impl(&dword_266B9E000, v98, v129, "%s: typeMatchingSpan=%s'", v100, 0x16u);
            v102 = v125;
            swift_arrayDestroy();
            MEMORY[0x26D5ED340](v102, -1, -1);
            MEMORY[0x26D5ED340](v100, -1, -1);
          }

          else
          {
          }
        }
      }
    }

    v81 = v126;
    dispatch thunk of UsoEntity_common_AttachmentType.definedValue.getter();

    v82 = v131;
    v83 = v79(v81, 1, v131);
    v21 = v134;
    v24 = v132;
    if (v83 != 1)
    {
      v84 = v123;
      outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v81, v123);
      v85 = v128;
      v86 = (*(v128 + 88))(v84, v82);
      if (v86 == *MEMORY[0x277D5EF40])
      {
        v87 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToScreen;
      }

      else
      {
        if (v86 != *MEMORY[0x277D5EF00])
        {
          (*(v85 + 8))(v84, v82);
          goto LABEL_73;
        }

        v87 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToDisplayedContent;
      }

      *(v74 + v87) = 1;
    }

LABEL_73:
    outlined destroy of SharingResponse?(v81, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
LABEL_74:

    if (dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter())
    {
      v103 = v127;
      dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();
      v104 = v103;

      v105 = type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
      v106 = *(v105 - 8);
      if ((*(v106 + 48))(v104, 1, v105) == 1)
      {
        outlined destroy of SharingResponse?(v104, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      }

      else
      {
        v107 = (*(v106 + 88))(v104, v105);
        v108 = v104;
        v109 = v107;
        v110 = v20;
        v111 = *MEMORY[0x277D5EA28];
        (*(v106 + 8))(v108, v105);
        v112 = v109 == v111;
        v20 = v110;
        if (v112)
        {
          *(v74 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToEverything) = 1;
        }
      }
    }

    v113 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

    if (v113)
    {

      *(v74 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_containsSharingReference) = 1;
    }

    v114 = dispatch thunk of UsoEntity_common_Attachment.collaborationMode.getter();
    v115 = v130;
    if (v114)
    {
      dispatch thunk of UsoEntity_common_CollaborationMode.definedValue.getter();

      v116 = type metadata accessor for UsoEntity_common_CollaborationMode.DefinedValues();
      v117 = *(v116 - 8);
      if ((*(v117 + 48))(v115, 1, v116) == 1)
      {
        outlined destroy of SharingResponse?(v115, &_s12SiriOntology34UsoEntity_common_CollaborationModeC13DefinedValuesOSgMd, &_s12SiriOntology34UsoEntity_common_CollaborationModeC13DefinedValuesOSgMR);
      }

      else
      {
        v118 = (*(v117 + 88))(v115, v116);
        v119 = v115;
        v120 = *MEMORY[0x277D5F1C8];
        (*(v117 + 8))(v119, v116);
        if (v118 == v120)
        {
          *(v74 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isSharePlayRequest) = 1;
        }
      }
    }

    else
    {
    }

    return (*(v21 + 8))(v24, v20);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.default);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = v20;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v136[0] = v73;
    *v72 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v136);
    _os_log_impl(&dword_266B9E000, v69, v70, "%s: CodeGenListEntry<UsoEntity_common_Attachment> missing UsoEntity_common_Attachment entry - file a radar on SiriOntology?", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x26D5ED340](v73, -1, -1);
    MEMORY[0x26D5ED340](v72, -1, -1);

    v20 = v71;
  }

  else
  {
  }

  return (*(v21 + 8))(v24, v20);
}

uint64_t closure #2 in SharingNLv4Intent.processCommonMessage(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCGMR);
  v5 = Transformer.transform.getter();
  v9 = v4;
  v5(&v8, &v9);
  if (v2)
  {

    v7 = 0;
  }

  else
  {

    v7 = v8;
  }

  *a2 = v7;
  return result;
}

uint64_t UsoEntity_common_AttachmentType.matchingSpan.getter()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UtteranceAlignment();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch thunk of CodeGenBase.getUtteranceAlignmentsHelper(attributeName:)();
  if (v10)
  {
    if (*(v10 + 16))
    {
      (*(v6 + 16))(v9, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      type metadata accessor for SiriEnvironment();
      if (static SiriEnvironment.forCurrentTask.getter())
      {
        SiriEnvironment.currentRequest.getter();
        v11 = CurrentRequest.speechPackage.getter();

        if (v11 && (v12 = [v11 recognition], v11, v12))
        {
          v13 = AFSpeechRecognition.extract(alignment:)();
          if (v14)
          {
            v28[0] = v13;
            v28[1] = v14;
            static CharacterSet.whitespaces.getter();
            lazy protocol witness table accessor for type String and conformance String();
            v26 = StringProtocol.trimmingCharacters(in:)();
            v27 = v15;
            (*(v1 + 8))(v4, v0);

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
              v28[0] = v20;
              *v19 = 136315138;
              *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v28);
              _os_log_impl(&dword_266B9E000, v17, v18, "UsoEntity_common_AttachmentType: matchingSpan=%s'", v19, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v20);
              MEMORY[0x26D5ED340](v20, -1, -1);
              MEMORY[0x26D5ED340](v19, -1, -1);
            }

            (*(v6 + 8))(v9, v5);
            return v26;
          }

          (*(v6 + 8))(v9, v5);
        }

        else
        {
          (*(v6 + 8))(v9, v5);
        }
      }

      else
      {
        (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.default);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_266B9E000, v23, v24, "UsoEntity_common_AttachmentType: unable to determine matchingSpan", v25, 2u);
    MEMORY[0x26D5ED340](v25, -1, -1);
  }

  return 0;
}

uint64_t Array<A>.firstAppBundleIdentifier.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v83 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v84 = &v80 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v80 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v89 = &v80 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v19 = &v80 - v18;
  v20 = *(a1 + 16);
  v92 = v16;
  v87 = v10;
  v81 = v20;
  v82 = v17;
  v80 = a1;
  if (v20)
  {
    v90 = *(v17 + 16);
    v91 = (v17 + 16);
    v85 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v21 = a1 + v85;
    v22 = *(v17 + 72);
    v88 = (v17 + 32);
    v86 = (v17 + 8);
    v23 = MEMORY[0x277D84F90];
    (v90)(v19, a1 + v85, v2);
    while (1)
    {
      v24 = UsoIdentifier.namespace.getter();
      if (!v25)
      {
        break;
      }

      if (v24 == 0x64695F6D657469 && v25 == 0xE700000000000000)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          break;
        }
      }

      v27 = *v88;
      (*v88)(v89, v19, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
        v23 = v95;
      }

      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        v23 = v95;
      }

      *(v23 + 16) = v30 + 1;
      v31 = v23 + v85 + v30 * v22;
      v2 = v92;
      v27(v31, v89, v92);
      v10 = v87;
LABEL_4:
      v21 += v22;
      if (!--v20)
      {
        goto LABEL_17;
      }

      (v90)(v19, v21, v2);
    }

    (*v86)(v19, v2);
    goto LABEL_4;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_17:
  v32 = *(v23 + 16);
  if (v32)
  {
    v33 = *(v82 + 16);
    v34 = v23 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v89 = *(v82 + 72);
    v90 = v33;
    v91 = (v82 + 16);
    v35 = (v82 + 8);
    v36 = MEMORY[0x277D84F90];
    do
    {
      v37 = v92;
      (v90)(v15, v34, v92);
      v38 = UsoIdentifier.value.getter();
      v40 = v39;
      (*v35)(v15, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v42 = *(v36 + 2);
      v41 = *(v36 + 3);
      if (v42 >= v41 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v36);
      }

      *(v36 + 2) = v42 + 1;
      v43 = &v36[16 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      v34 += v89;
      --v32;
    }

    while (v32);

    v10 = v87;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v44 = v92;
  if (*(v36 + 2))
  {
    goto LABEL_54;
  }

  v45 = v81;
  if (v81)
  {
    v46 = *(v82 + 16);
    v89 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v47 = v80 + v89;
    v48 = *(v82 + 72);
    v91 = (v82 + 32);
    v90 = MEMORY[0x277D84F90];
    v49 = (v82 + 8);
    v46(v10, v80 + v89, v44);
    while (1)
    {
      v50 = UsoIdentifier.namespace.getter();
      if (!v51)
      {
        break;
      }

      if (v50 == 0x656D614E707061 && v51 == 0xE700000000000000)
      {
      }

      else
      {
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v52 & 1) == 0)
        {
          break;
        }
      }

      v95 = UsoIdentifier.value.getter();
      v96 = v53;
      v93 = 46;
      v94 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v54 = StringProtocol.contains<A>(_:)();

      if ((v54 & 1) == 0)
      {
        break;
      }

      v55 = v10;
      v56 = *v91;
      (*v91)(v83, v55, v44);
      v57 = v90;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v57;
      if ((v58 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 16) + 1, 1);
        v57 = v97;
      }

      v60 = *(v57 + 16);
      v59 = *(v57 + 24);
      if (v60 >= v59 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1);
        v57 = v97;
      }

      *(v57 + 16) = v60 + 1;
      v90 = v57;
      v61 = v57 + v89 + v60 * v48;
      v44 = v92;
      v56(v61, v83, v92);
      v10 = v87;
LABEL_30:
      v47 += v48;
      if (!--v45)
      {
        goto LABEL_44;
      }

      v46(v10, v47, v44);
    }

    (*v49)(v10, v44);
    goto LABEL_30;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_44:
  v62 = *(v90 + 16);
  if (v62)
  {
    v63 = v82 + 16;
    v91 = *(v82 + 16);
    v64 = v90 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v65 = *(v82 + 72);
    v66 = (v82 + 8);
    v36 = MEMORY[0x277D84F90];
    do
    {
      v67 = v84;
      v68 = v92;
      v69 = v63;
      (v91)(v84, v64, v92);
      v70 = UsoIdentifier.value.getter();
      v72 = v71;
      (*v66)(v67, v68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v74 = *(v36 + 2);
      v73 = *(v36 + 3);
      if (v74 >= v73 >> 1)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v36);
        v63 = v69;
        v36 = v76;
      }

      else
      {
        v63 = v69;
      }

      *(v36 + 2) = v74 + 1;
      v75 = &v36[16 * v74];
      *(v75 + 4) = v70;
      *(v75 + 5) = v72;
      v64 += v65;
      --v62;
    }

    while (v62);

    if (*(v36 + 2))
    {
      goto LABEL_54;
    }

LABEL_57:

    return 0;
  }

  v36 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_57;
  }

LABEL_54:
  v77 = *(v36 + 4);
  v78 = *(v36 + 5);

  return v77;
}

uint64_t SharingNLv4Intent.__deallocating_deinit()
{
  outlined destroy of SharingResponse?(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName + 8);

  v2 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_typeMatchingSpan + 8);

  v3 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_recipients);

  v6 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_usoEntity);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for SharingNLv4Intent()
{
  result = type metadata singleton initialization cache for SharingNLv4Intent;
  if (!type metadata singleton initialization cache for SharingNLv4Intent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SharingNLv4Intent()
{
  type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?()
{
  if (!lazy cache variable for type metadata for UsoEntity_common_AttachmentType.DefinedValues?)
  {
    type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UsoEntity_common_AttachmentType.DefinedValues?);
    }
  }
}

uint64_t protocol witness for SharingIntent.type.getter in conformance SharingNLv4Intent@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type;
  swift_beginAccess();
  return outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v3 + v4, a1);
}

uint64_t protocol witness for SharingIntent.type.setter in conformance SharingNLv4Intent(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type;
  swift_beginAccess();
  outlined assign with take of UsoEntity_common_AttachmentType.DefinedValues?(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t protocol witness for SharingIntent.appName.setter in conformance SharingNLv4Intent(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName);
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t protocol witness for SharingIntent.typeMatchingSpan.setter in conformance SharingNLv4Intent(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_typeMatchingSpan);
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t protocol witness for SharingIntent.appIdentifier.setter in conformance SharingNLv4Intent(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier);
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t protocol witness for SharingIntent.appName.getter in conformance SharingNLv4Intent(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

unint64_t instantiation function for generic protocol witness table for SharingNLv4Intent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SharingNLv4Intent and conformance SharingNLv4Intent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SharingNLv4Intent and conformance SharingNLv4Intent()
{
  result = lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent;
  if (!lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent)
  {
    type metadata accessor for SharingNLv4Intent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent);
  }

  return result;
}

uint64_t AFSpeechRecognition.extract(alignment:)()
{
  v1 = type metadata accessor for UtteranceSpan();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = UtteranceAlignment.spans.getter();
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  (*(v2 + 16))(v6, v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  (*(v2 + 32))(v8, v6, v1);
  v10 = [v0 nBestTranscripts];
  if (!v10)
  {
    (*(v2 + 8))(v8, v1);
    return 0;
  }

  v11 = v10;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v12 + 16) <= UtteranceAlignment.asrHypothesisIndex.getter())
  {
LABEL_9:
    (*(v2 + 8))(v8, v1);
LABEL_10:

    return 0;
  }

  UtteranceAlignment.asrHypothesisIndex.getter();
  result = UtteranceAlignment.asrHypothesisIndex.getter();
  if (*(v12 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v14 = v12 + 16 * result;
    v16 = *(v14 + 32);
    v15 = *(v14 + 40);

    UtteranceSpan.startIndex.getter();
    v17 = UtteranceSpan.startIndex.getter();
    if (v17 >= UtteranceSpan.endIndex.getter())
    {
      goto LABEL_9;
    }

    v18 = UtteranceSpan.endIndex.getter();

    v19 = MEMORY[0x26D5EC8C0](v16, v15);

    if (v19 < v18)
    {
      goto LABEL_9;
    }

    UtteranceSpan.startIndex.getter();
    v20 = String.UTF16View.index(_:offsetBy:)();

    UtteranceSpan.endIndex.getter();
    v21 = String.UTF16View.index(_:offsetBy:)();

    if (v21 >> 14 >= v20 >> 14)
    {
      v22 = MEMORY[0x26D5EC8E0](v20, v21, v16, v15);
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v29 = MEMORY[0x26D5EC8F0](v22, v24, v26, v28);
      (*(v2 + 8))(v8, v1);
      return v29;
    }
  }

  __break(1u);
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x277D5E4F0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR, MEMORY[0x277D55FF8]);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay19SiriExpanseInternal7Contact_pGGMd, &_ss23_ContiguousArrayStorageCySay19SiriExpanseInternal7Contact_pGGMR, &_sSay19SiriExpanseInternal7Contact_pGMd, &_sSay19SiriExpanseInternal7Contact_pGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR, &_sSaySSGMd, &_sSaySSGMR);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19SiriExpanseInternal23ConversationParticipant_pGMd, &_ss23_ContiguousArrayStorageCy19SiriExpanseInternal23ConversationParticipant_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal23ConversationParticipant_pMd, &_s19SiriExpanseInternal23ConversationParticipant_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void type metadata completion function for ExpanseUIModel.AppStorePunchoutSnippetModel()
{
  type metadata accessor for Loggable<String>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Loggable<String>()
{
  if (!lazy cache variable for type metadata for Loggable<String>)
  {
    v0 = type metadata accessor for Loggable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Loggable<String>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void type metadata completion function for ExpanseUIModel.BinaryButtonSnippetModel()
{
  type metadata accessor for Loggable<ExpanseUIModel.ButtonModel>(319, &lazy cache variable for type metadata for Loggable<ExpanseUIModel.ButtonModel>, type metadata accessor for ExpanseUIModel.ButtonModel, MEMORY[0x277D637C8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata completion function for ExpanseUIModel()
{
  result = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_266BCD944(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_266BCDA14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for ExpanseUIModel.ButtonModel()
{
  type metadata accessor for Loggable<ExpanseUIModel.ButtonModel>(319, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>, type metadata accessor for SAIntentGroupRunSiriKitExecutor, MEMORY[0x277D63220]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Loggable<ExpanseUIModel.ButtonModel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ExpanseUIModel.AppStorePunchoutSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0) + 20);
    v11[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExpanseUIModel.AppStorePunchoutSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v29 = *(v32 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v28 = *(v30 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = v24 - v10;
  v12 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v12;
  v26 = v15;
  v18 = v28;
  v17 = v29;
  v34 = 0;
  v19 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
  v20 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24[1] = v19;
  v21 = v31;
  v31 = *(v17 + 32);
  (v31)(v26, v21, v32);
  v33 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v11, v20);
  v22 = v26;
  (v31)(&v26[*(v25 + 20)], v7, v32);
  outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(v22, v27, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v22, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
}

uint64_t ExpanseUIModel.BinaryButtonSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMR);
  lazy protocol witness table accessor for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0) + 20);
    v11[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExpanseUIModel.BinaryButtonSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMR);
  v29 = *(v32 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v28 = *(v30 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = v24 - v10;
  v12 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v12;
  v26 = v15;
  v18 = v28;
  v17 = v29;
  v34 = 0;
  v19 = lazy protocol witness table accessor for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>);
  v20 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24[1] = v19;
  v21 = v31;
  v31 = *(v17 + 32);
  (v31)(v26, v21, v32);
  v33 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v11, v20);
  v22 = v26;
  (v31)(&v26[*(v25 + 20)], v7, v32);
  outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(v22, v27, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v22, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
}

uint64_t ExpanseUIModel.ButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO11ButtonModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO11ButtonModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(type metadata accessor for ExpanseUIModel.ButtonModel(0) + 20);
    v15[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ExpanseUIModel.ButtonModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
  v21 = *(v24 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = v19 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO11ButtonModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO11ButtonModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = v19 - v8;
  v10 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = v10;
  v16 = v23;
  v15 = v24;
  v27 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v19[1] = v17;
  v26 = 1;
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v25);
  (*(v21 + 32))(v13 + *(v20 + 20), v6, v15);
  outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(v13, v22, type metadata accessor for ExpanseUIModel.ButtonModel);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v13, type metadata accessor for ExpanseUIModel.ButtonModel);
}

uint64_t ExpanseUIModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO22BinaryButtonCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO22BinaryButtonCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v31 - v4;
  v35 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO26AppStorePunchoutCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO26AppStorePunchoutCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v32 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ExpanseUIModel(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v41);
  v21 = &v31 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(v40, v17, type metadata accessor for ExpanseUIModel);
  v23 = (v18 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v36;
    outlined init with take of ExpanseUIModel(v17, v36, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    v43 = 1;
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys();
    v25 = v37;
    v26 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    v27 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v25, v27);
    outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v24, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    return (*v23)(v21, v26);
  }

  else
  {
    outlined init with take of ExpanseUIModel(v17, v13, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    v42 = 0;
    lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys();
    v29 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel and conformance ExpanseUIModel.AppStorePunchoutSnippetModel, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    v30 = v34;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v30);
    outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v13, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    return (*v23)(v21, v29);
  }
}

uint64_t ExpanseUIModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO22BinaryButtonCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO22BinaryButtonCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v47 = *(v44 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v50 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO26AppStorePunchoutCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO26AppStorePunchoutCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = type metadata accessor for ExpanseUIModel(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v40 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys();
  v24 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v41 = v21;
    v42 = v16;
    v51 = v19;
    v25 = v50;
    v26 = v12;
    v27 = v48;
    v28 = KeyedDecodingContainer.allKeys.getter();
    if (*(v28 + 16) == 1)
    {
      v40[1] = v28;
      v53 = 1;
      lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys();
      v29 = v25;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
      lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
      v30 = v42;
      v31 = v29;
      v32 = v44;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v47 + 8))(v31, v32);
      (*(v27 + 8))(v11, v8);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v39 = v41;
      outlined init with take of ExpanseUIModel(v30, v41, type metadata accessor for ExpanseUIModel);
      outlined init with take of ExpanseUIModel(v39, v43, type metadata accessor for ExpanseUIModel);
    }

    else
    {
      v33 = v11;
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v36 = v26;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v27 + 8))(v33, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys()
{
  if (*v0)
  {
    result = 0x656D614E707061;
  }

  else
  {
    result = 0x614C6E6F74747562;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExpanseUIModel.AppStorePunchoutSnippetModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static Loggable<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return static Loggable<A>.== infix(_:_:)();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys()
{
  if (*v0)
  {
    result = 0x7261646E6F636573;
  }

  else
  {
    result = 0x427972616D697270;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x427972616D697270 && a2 == 0xED00006E6F747475;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F7474754279)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ExpanseUIModel.ButtonModel.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.ButtonModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000266BEF3E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.ButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.ButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.AppStorePunchoutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.AppStorePunchoutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.AppStorePunchoutCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.BinaryButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.BinaryButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ExpanseUIModel.CodingKeys()
{
  if (*v0)
  {
    result = 0x75427972616E6962;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000266BEF3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x75427972616E6962 && a2 == 0xEC0000006E6F7474)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMR);
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel and conformance ExpanseUIModel.ButtonModel, type metadata accessor for ExpanseUIModel.ButtonModel);
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel and conformance ExpanseUIModel.ButtonModel, type metadata accessor for ExpanseUIModel.ButtonModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys);
  }

  return result;
}

uint64_t outlined init with take of ExpanseUIModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ScreenShareAvailability.description.getter(unsigned __int8 a1)
{
  if (a1 == 5)
  {
    return 0xD00000000000001FLL;
  }

  if (a1 == 4)
  {
    return 0xD000000000000021;
  }

  _StringGuts.grow(_:)(47);

  v3 = 0xEA0000000000646CLL;
  v4 = 0x6F486E4F6C6C6163;
  v5 = 0x8000000266BEE350;
  v6 = 0xD000000000000013;
  if (a1 == 2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x8000000266BEE370;
  }

  if (!a1)
  {
    v4 = 0xD000000000000018;
    v3 = 0x8000000266BEE320;
  }

  if (a1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x26D5EC8A0](v7, v8);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD00000000000002CLL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ScreenShareAvailability.UnavailabilityReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ScreenShareAvailability.UnavailabilityReason()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScreenShareAvailability.UnavailabilityReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ScreenShareAvailability.UnavailabilityReason@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ScreenShareAvailability.UnavailabilityReason.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ScreenShareAvailability.UnavailabilityReason(unint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000646CLL;
  v3 = 0x6F486E4F6C6C6163;
  v4 = 0x8000000266BEE350;
  v5 = 0xD000000000000013;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x8000000266BEE370;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000018;
    v2 = 0x8000000266BEE320;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScreenShareAvailability.UnavailabilityReason()
{
  v1 = 0x6F486E4F6C6C6163;
  v2 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScreenShareAvailability(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t getEnumTagSinglePayload for ScreenShareAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type ScreenShareAvailability.UnavailabilityReason and conformance ScreenShareAvailability.UnavailabilityReason()
{
  result = lazy protocol witness table cache variable for type ScreenShareAvailability.UnavailabilityReason and conformance ScreenShareAvailability.UnavailabilityReason;
  if (!lazy protocol witness table cache variable for type ScreenShareAvailability.UnavailabilityReason and conformance ScreenShareAvailability.UnavailabilityReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenShareAvailability.UnavailabilityReason and conformance ScreenShareAvailability.UnavailabilityReason);
  }

  return result;
}

unint64_t specialized ScreenShareAvailability.UnavailabilityReason.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScreenShareAvailability.UnavailabilityReason.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t Call.isFaceTimeCall.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 24))() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 32);

  return v4(a1, a2);
}

uint64_t Call.allowsScreenSharing.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 16))() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 48);

  return v4(a1, a2);
}

uint64_t Call.activeShareSession.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(&v25);
  if (!v26)
  {
    outlined destroy of SharingResponse?(&v25, &_s19SiriExpanseInternal12Conversation_pSgMd, &_s19SiriExpanseInternal12Conversation_pSgMR);
    return 0;
  }

  outlined init with take of ConversationParticipant(&v25, v28);
  v4 = v29;
  v5 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v5 + 16))(&v23, v4, v5);
  if (!v24)
  {
    outlined destroy of SharingResponse?(&v23, &_s19SiriExpanseInternal15ActivitySession_pSgMd, _s19SiriExpanseInternal15ActivitySession_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    return 0;
  }

  outlined init with take of ConversationParticipant(&v23, &v25);
  v6 = v26;
  v7 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, v26);
  LOBYTE(v6) = (*(v7 + 24))(v6, v7);
  v8 = v26;
  v9 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, v26);
  v10 = (*(v9 + 32))(v8, v9);
  if ((v6 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    return 0;
  }

  if ((v10 & 1) == 0)
  {
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    v16 = (*(v15 + 16))(v14, v15);
    v17 = v26;
    v18 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    return v16;
  }

  v11 = (*(a2 + 104))(a1, a2);
  if (!v11)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.default);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266B9E000, v20, v21, "Malformed call - screen sharing activity session is local, yet no screen share attributes are present. File a bug on TU?", v22, 2u);
      MEMORY[0x26D5ED340](v22, -1, -1);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_18;
  }

  v12 = v11;
  if ([v11 isWindowed])
  {
    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    swift_allocError();
    swift_willThrow();

LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return 0;
}

uint64_t Call.isGroupCall.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(v6);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 32))(v2, v3) & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    outlined destroy of SharingResponse?(v6, &_s19SiriExpanseInternal12Conversation_pSgMd, &_s19SiriExpanseInternal12Conversation_pSgMR);
    return 2;
  }

  return v4;
}

uint64_t Call.screenShareAvailability.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  switch(v4)
  {
    case 3:
      if ((*(a2 + 56))(a1, a2))
      {
        v6 = (*(a2 + 144))(a1, a2);
        if (v6)
        {
          v7 = 4;
        }

        else
        {
          v7 = 2;
        }

        if (v6 == 2)
        {
          return 5;
        }

        else
        {
          return v7;
        }
      }

      else
      {
        return 0;
      }

    case 2:
      return (*(a2 + 56))(a1, a2) & 1;
    case 1:
      if ((*(a2 + 56))(a1, a2))
      {
        return 4;
      }

      else
      {
        return 0;
      }

    default:
      return 3;
  }
}

uint64_t Call.isScreenShareSalient.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  result = v4();
  if (result != 1)
  {
    return (v4)(a1, a2) == 3 || (v4)(a1, a2) == 2;
  }

  return result;
}

uint64_t TUCall.setLocalScreenShareAttributes(_:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = v1;
  if ([v4 isMainThread])
  {
    [v6 setScreenShareAttributes_];
  }

  else
  {
    type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v8 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v8);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t TUCall.enableScreenSharing(with:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = v1;
  if ([v4 isMainThread])
  {
    [v6 setSharingScreen:1 attributes:v5];
  }

  else
  {
    type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v8 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v8);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

Swift::Void __swiftcall TUCall.disableScreenSharing()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  v2 = objc_opt_self();
  v3 = v0;
  if ([v2 isMainThread])
  {
    [v3 setSharingScreen_];
  }

  else
  {
    type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v4 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v4);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

id protocol witness for Call.providerIsFaceTime.getter in conformance TUCall()
{
  v1 = [*v0 provider];
  v2 = [v1 isFaceTimeProvider];

  return v2;
}

uint64_t protocol witness for Call.conversation.getter in conformance TUCall@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 activeConversationForCall_];

  if (v5)
  {
    result = type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for TUConversation, 0x277D6EE60);
    v7 = &protocol witness table for TUConversation;
  }

  else
  {
    result = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = result;
  a1[4] = v7;
  return result;
}

id protocol witness for Call.isScreenSharingCapable.getter in conformance TUCall()
{
  result = [objc_opt_self() allowsScreenSharing];
  if (result)
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = [v1 conversationManager];

    v3 = [v2 isScreenSharingAvailable];
    return v3;
  }

  return result;
}

uint64_t protocol witness for Call.activeShareSession.getter in conformance TUCall(uint64_t a1, uint64_t a2)
{
  result = Call.activeShareSession.getter(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

id protocol witness for Call.localScreenShareAttributes.getter in conformance TUCall()
{
  v1 = *v0;
  if ([*v0 isSharingScreen])
  {
    return [v1 screenShareAttributes];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266BD23CC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t partial apply for specialized closure #1 in static OS_dispatch_queue.executeOnMain<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_266BD2448()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t dispatch thunk of DialogExecuting.execute(catId:parameters:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of DialogExecuting.execute(catId:parameters:globals:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DialogExecuting.execute(catId:parameters:globals:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of DialogExecuting.executeAsLabel(catId:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of DialogExecuting.executeAsLabel(catId:parameters:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DialogExecuting.executeAsLabel(catId:parameters:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t specialized Array<A>.containsAtLeastOneOf<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  if (!v4)
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v5 = 0;
  v6 = a2 + 32;
  v7 = a1 + 56;
  while (1)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_4;
    }

    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v11 = *(a1 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(a1 + 32);
    v14 = v12 & ~v13;
    if ((*(v7 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v5 == v4)
    {
      goto LABEL_16;
    }
  }

  v15 = ~v13;
  while (1)
  {
    v16 = (*(a1 + 48) + 16 * v14);
    v17 = *v16 == v10 && v16[1] == v9;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v7 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = specialized Set.subscript.getter(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t RecipientsResolver.resolve(persons:)(uint64_t a1)
{
  v2 = v1;
  v89 = type metadata accessor for ContactHandle();
  v80 = *(v89 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ContactQuery();
  v6 = *(v90 - 8);
  v7 = *(v6 + 8);
  v8 = MEMORY[0x28223BE20](v90);
  i = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v70 - v11;
  if (!a1)
  {
    return 0;
  }

  v79 = v1;
  if (a1 >> 62)
  {
    goto LABEL_94;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    return 0;
  }

LABEL_4:
  v92[0] = MEMORY[0x277D84F90];

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    goto LABEL_100;
  }

  v15 = v92[0];
  v78 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v13; ++i)
    {
      MEMORY[0x26D5ECB50](i, v78);
      INPerson.toContactQuery()();
      swift_unknownObjectRelease();
      v92[0] = v15;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
        v15 = v92[0];
      }

      *(v15 + 16) = v17 + 1;
      (*(v6 + 4))(v15 + ((v6[80] + 32) & ~v6[80]) + *(v6 + 9) * v17, v12, v90);
    }
  }

  else
  {
    v18 = (a1 + 32);
    v12 = v6 + 32;
    do
    {
      v19 = *v18;
      INPerson.toContactQuery()();

      v92[0] = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v15 = v92[0];
      }

      *(v15 + 16) = v21 + 1;
      (*(v6 + 4))(v15 + ((v6[80] + 32) & ~v6[80]) + *(v6 + 9) * v21, i, v90);
      ++v18;
      --v13;
    }

    while (v13);
  }

  v2 = v79;
LABEL_17:
  v22 = *__swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v23 = v76;
  v24 = ContactResolver.findMatches(queries:)(v15);
  v76 = v23;
  if (v23)
  {
  }

  v72 = v24;

  a1 = v72;
  v25 = 0;
  v26 = *(v72 + 2);
  v75 = v72 + 32;
  while (v26 != v25)
  {
    v27 = &v72[8 * v25++];
    if (!*(*(v27 + 4) + 16))
    {
      goto LABEL_63;
    }
  }

  if (v26)
  {
    v95 = MEMORY[0x277D84F90];
    v71 = v26;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v28 = v71;
    v29 = v72;
    v30 = 0;
    v31 = v95;
    v86 = (v80 + 8);
    v87 = v80 + 16;
    while (1)
    {
      if (v30 >= *(v29 + 2))
      {
        goto LABEL_93;
      }

      v32 = *&v75[8 * v30];
      v82 = *(v32 + 16);
      if (v82)
      {
        break;
      }

      v12 = MEMORY[0x277D84F90];
LABEL_53:
      v95 = v31;
      i = *(v31 + 16);
      v55 = *(v31 + 24);
      a1 = i + 1;
      if (i >= v55 >> 1)
      {
        v6 = v30;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), i + 1, 1);
        v30 = v6;
        v28 = v71;
        v29 = v72;
        v31 = v95;
      }

      ++v30;
      *(v31 + 16) = a1;
      *(v31 + 8 * i + 32) = v12;
      if (v30 == v28)
      {
        i = v31;

        goto LABEL_58;
      }
    }

    v73 = v30;
    v74 = v31;
    v81 = v32 + 32;

    v33 = 0;
    v12 = MEMORY[0x277D84F90];
    v77 = v32;
    while (1)
    {
      if (v33 >= *(v32 + 16))
      {
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
LABEL_94:
        v78 = a1;
        result = __CocoaSet.count.getter();
        if (!result)
        {
          return result;
        }

        v13 = __CocoaSet.count.getter();
        a1 = v78;
        if (v13)
        {
          goto LABEL_4;
        }

        v15 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }

      outlined init with copy of ResponseExecuting(v81 + 40 * v33, v92);
      v34 = v93;
      v35 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v36 = (*(v35 + 8))(v34, v35);
      v37 = *(v36 + 16);
      if (v37)
      {
        v84 = v33;
        v85 = v12;
        v91 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
        i = v91;
        v38 = *(v80 + 80);
        v83 = v36;
        v39 = v36 + ((v38 + 32) & ~v38);
        v90 = *(v80 + 72);
        v40 = *(v80 + 16);
        do
        {
          v41 = v88;
          v42 = v89;
          v40(v88, v39, v89);
          v43 = ContactHandle.value.getter();
          v45 = v44;
          (*v86)(v41, v42);
          v91 = i;
          v47 = *(i + 16);
          v46 = *(i + 24);
          if (v47 >= v46 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
            i = v91;
          }

          *(i + 16) = v47 + 1;
          v48 = i + 16 * v47;
          *(v48 + 32) = v43;
          *(v48 + 40) = v45;
          v39 += v90;
          --v37;
        }

        while (v37);

        v2 = v79;
        v33 = v84;
        v12 = v85;
        v32 = v77;
      }

      else
      {

        i = MEMORY[0x277D84F90];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      a1 = *(i + 16);
      v49 = *(v12 + 2);
      v6 = (v49 + a1);
      if (__OFADD__(v49, a1))
      {
        goto LABEL_88;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v6 <= *(v12 + 3) >> 1)
      {
        if (*(i + 16))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v49 <= v6)
        {
          v51 = v49 + a1;
        }

        else
        {
          v51 = v49;
        }

        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v51, 1, v12);
        if (*(i + 16))
        {
LABEL_47:
          if ((*(v12 + 3) >> 1) - *(v12 + 2) < a1)
          {
            goto LABEL_90;
          }

          swift_arrayInitWithCopy();

          if (a1)
          {
            v52 = *(v12 + 2);
            v53 = __OFADD__(v52, a1);
            v54 = v52 + a1;
            if (v53)
            {
              goto LABEL_91;
            }

            *(v12 + 2) = v54;
          }

          goto LABEL_29;
        }
      }

      if (a1)
      {
        goto LABEL_89;
      }

LABEL_29:
      if (++v33 == v82)
      {

        v31 = v74;
        v29 = v72;
        v28 = v71;
        v30 = v73;
        goto LABEL_53;
      }
    }
  }

  i = MEMORY[0x277D84F90];
LABEL_58:
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  a1 = ScreenSharingCallManager.getRemoteCallParticipantHandles()();
  v56 = 0;
  v12 = *(i + 16);
  v57 = i;
  v90 = i + 32;
  while (v12 != v56)
  {
    if (v56 >= *(v57 + 16))
    {
      goto LABEL_92;
    }

    v6 = v56 + 1;
    v58 = *(v57 + 8 * v56 + 32);

    i = specialized Array<A>.containsAtLeastOneOf<A>(_:)(a1, v58);

    v56 = v6;
    if ((i & 1) == 0)
    {

LABEL_63:

      return 1;
    }
  }

  result = v57;
  if (!v12)
  {
    v60 = MEMORY[0x277D84F90];
LABEL_84:

    v69 = specialized Set.isSubset<A>(of:)(v60, a1);

    if ((v69 & 1) == 0)
    {
      return v78;
    }

    return 0;
  }

  v59 = 0;
  v60 = MEMORY[0x277D84F90];
  while (v59 < *(result + 16))
  {
    v61 = *(v90 + 8 * v59);
    v62 = *(v61 + 16);
    v63 = *(v60 + 16);
    v64 = v63 + v62;
    if (__OFADD__(v63, v62))
    {
      goto LABEL_98;
    }

    v65 = *(v90 + 8 * v59);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v64 <= *(v60 + 24) >> 1)
    {
      if (*(v61 + 16))
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (v63 <= v64)
      {
        v66 = v63 + v62;
      }

      else
      {
        v66 = v63;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v66, 1, v60);
      v60 = result;
      if (*(v61 + 16))
      {
LABEL_79:
        if ((*(v60 + 24) >> 1) - *(v60 + 16) < v62)
        {
          goto LABEL_101;
        }

        swift_arrayInitWithCopy();

        result = v57;
        if (v62)
        {
          v67 = *(v60 + 16);
          v53 = __OFADD__(v67, v62);
          v68 = v67 + v62;
          if (v53)
          {
            goto LABEL_102;
          }

          *(v60 + 16) = v68;
        }

        goto LABEL_68;
      }
    }

    result = v57;
    if (v62)
    {
      goto LABEL_99;
    }

LABEL_68:
    if (v12 == ++v59)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

uint64_t specialized Set.isSubset<A>(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = specialized Collection.first.getter(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v7[2] = v8;
      v3 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return specialized _NativeSet.isSubset<A>(of:)(a1, a2);
  }

  return result;
}

uint64_t specialized _NativeSet.isSubset<A>(of:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = specialized closure #1 in _NativeSet.isSubset<A>(of:)(v8, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    partial apply for specialized closure #1 in _NativeSet.isSubset<A>(of:)(v13, &v17);
    v14 = v17;
    MEMORY[0x26D5ED340](v13, -1, -1);
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #1 in _NativeSet.isSubset<A>(of:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized closure #1 in _NativeSet.isSubset<A>(of:)(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.isSubset<A>(of:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = result;
  v23 = 0;
  v4 = 0;
  v5 = *(a2 + 16);
  v25 = v5;
  v26 = a2 + 32;
  v6 = a3 + 56;
  while (v4 != v5)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_27;
      }

      v8 = (v26 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(a3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v12 = Hasher._finalize()();
      v13 = -1 << *(a3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v6 + 8 * (v14 >> 6))) != 0)
      {
        break;
      }

LABEL_5:

LABEL_6:
      v4 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

    v17 = (*(a3 + 48) + 16 * v14);
    v18 = *v17 == v10 && v17[1] == v9;
    if (!v18)
    {
      v19 = ~v13;
      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v14 = (v14 + 1) & v19;
        v15 = v14 >> 6;
        v16 = 1 << v14;
        if (((1 << v14) & *(v6 + 8 * (v14 >> 6))) == 0)
        {
          v5 = v25;
          goto LABEL_5;
        }

        v20 = (*(a3 + 48) + 16 * v14);
        if (*v20 == v10 && v20[1] == v9)
        {
          break;
        }
      }
    }

    v21 = *(v24 + 8 * v15);
    *(v24 + 8 * v15) = v21 | v16;
    if ((v21 & v16) != 0)
    {
      v5 = v25;
      goto LABEL_6;
    }

    v22 = v23 + 1;
    v5 = v25;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_28;
    }

    ++v23;
    v18 = v22 == *(a3 + 16);
    v4 = v7;
    result = 1;
    if (v18)
    {
      return result;
    }
  }

  return 0;
}

id one-time initialization function for fullScreenAttributes()
{
  result = closure #1 in variable initialization expression of static TUCallScreenShareAttributes.fullScreenAttributes();
  static TUCallScreenShareAttributes.fullScreenAttributes = result;
  return result;
}

id closure #1 in variable initialization expression of static TUCallScreenShareAttributes.fullScreenAttributes()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D6EE30]) init];
  [v5 setStyle_];
  [v5 setDeviceFamily_];
  v6 = [objc_opt_self() mainConfiguration];
  [v6 pointScale];
  v8 = v7;

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v5 setDisplayScale_];

  type metadata accessor for NSNumber();
  isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
  [v5 setScaleFactor_];

  [v5 setWindowed_];
  UUID.init()();
  v11 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setWindowUUID_];

  return v5;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.default);
  __swift_project_value_buffer(v0, static Logger.default);
  return Logger.init(subsystem:category:)();
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

void static OS_dispatch_queue.executeOnMain<A>(_:)(void (*a1)(void))
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v2 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v2);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for closure #1 in static OS_dispatch_queue.executeOnMain<A>(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t specialized closure #1 in closure #1 in PromptManaging.executeYesNoConfirmationFlow(withPrompt:confirmationRejectedDialog:flowCancelledDialog:onYes:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v77 = a2;
  v6 = type metadata accessor for SimpleConfirmationResponseProvider();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v72[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v72[-v16];
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v18 = type metadata accessor for ConfirmationResponse();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v20 = v17;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.default);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266B9E000, v22, v23, "PromptGiving: Confirmation response has no value - this should never happen", v24, 2u);
      MEMORY[0x26D5ED340](v24, -1, -1);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    v25 = swift_allocError();
    v26 = *(a4 + 32);
    v79 = *(a4 + 16);
    v80 = v26;
    v81 = *(a4 + 48);
    v82 = *(a4 + 64);
    v27 = v82;
    v28 = *(a4 + 16);
    v29 = *(a4 + 24);
    v30 = *(a4 + 32);
    v31 = *(a4 + 40);
    v32 = *(a4 + 48);
    v33 = *(a4 + 56);
    *(a4 + 16) = v25;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0;
    *(a4 + 64) = 16;
    outlined init with copy of StartSharingConfirmationFlow.State(&v79, v78);
    v34 = v25;
    outlined consume of StartSharingConfirmationFlow.State(v28, v29, v30, v31, v32, v33, v27);
    StartSharingConfirmationFlow.state.didset(&v79);
    outlined destroy of StartSharingConfirmationFlow.State(&v79);

    v35 = v20;
    return outlined destroy of SharingResponse?(v35, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  }

  v74 = v17;
  outlined init with copy of ConfirmationResponse?(v17, v15);
  v36 = (*(v19 + 88))(v15, v18);
  if (v36 == *MEMORY[0x277D5BED8])
  {
    v77();
LABEL_21:
    v35 = v74;
    return outlined destroy of SharingResponse?(v35, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  }

  if (v36 != *MEMORY[0x277D5BED0])
  {
    (*(v19 + 8))(v15, v18);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.default);
    v52 = v75;
    v51 = v76;
    (*(v75 + 16))(v9, a1, v76);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v79 = v77;
      *v55 = 136315138;
      v73 = v54;
      SimpleConfirmationResponseProvider.confirmationResponse.getter();
      v56 = String.init<A>(describing:)();
      v58 = v57;
      (*(v52 + 8))(v9, v51);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v79);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_266B9E000, v53, v73, "PromptGiving: Confirmation response has unknown value %s - add support for it!", v55, 0xCu);
      v60 = v77;
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x26D5ED340](v60, -1, -1);
      MEMORY[0x26D5ED340](v55, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v9, v51);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    v61 = swift_allocError();
    v62 = *(a4 + 32);
    v79 = *(a4 + 16);
    v80 = v62;
    v81 = *(a4 + 48);
    v82 = *(a4 + 64);
    v63 = v82;
    v64 = *(a4 + 16);
    v65 = *(a4 + 24);
    v66 = *(a4 + 32);
    v67 = *(a4 + 40);
    v68 = *(a4 + 48);
    v69 = *(a4 + 56);
    *(a4 + 16) = v61;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0;
    *(a4 + 64) = 16;
    outlined init with copy of StartSharingConfirmationFlow.State(&v79, v78);
    v70 = v61;
    outlined consume of StartSharingConfirmationFlow.State(v64, v65, v66, v67, v68, v69, v63);
    StartSharingConfirmationFlow.state.didset(&v79);
    outlined destroy of StartSharingConfirmationFlow.State(&v79);

    goto LABEL_21;
  }

  v37 = v74;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.default);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_266B9E000, v39, v40, "PromptGiving: User answered negatively to prompt - completing flow", v41, 2u);
    MEMORY[0x26D5ED340](v41, -1, -1);
  }

  v42 = *(a4 + 32);
  v79 = *(a4 + 16);
  v80 = v42;
  v81 = *(a4 + 48);
  v82 = *(a4 + 64);
  v43 = v82;
  v44 = *(a4 + 16);
  v45 = *(a4 + 24);
  v46 = *(a4 + 32);
  v47 = *(a4 + 40);
  v48 = *(a4 + 48);
  v49 = *(a4 + 56);
  *(a4 + 16) = 4;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  *(a4 + 64) = 32;
  outlined init with copy of StartSharingConfirmationFlow.State(&v79, v78);
  outlined consume of StartSharingConfirmationFlow.State(v44, v45, v46, v47, v48, v49, v43);
  StartSharingConfirmationFlow.state.didset(&v79);
  outlined destroy of StartSharingConfirmationFlow.State(&v79);
  v35 = v37;
  return outlined destroy of SharingResponse?(v35, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
}

void specialized PromptManaging.processPromptFlowExitValue<A>(_:onValueReceived:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v97 = a4;
  v98 = a5;
  v96 = a3;
  v99 = a2;
  v6 = type metadata accessor for SimpleConfirmationResponseProvider();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v95 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v95 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v95 - v19;
  v21 = *(v12 + 16);
  v21(&v95 - v19, a1, v11);
  v22 = (*(v12 + 88))(v20, v11);
  if (v22 == *MEMORY[0x277D5BC38])
  {
    (*(v12 + 96))(v20, v11);
    (*(v7 + 32))(v10, v20, v6);
    specialized closure #1 in closure #1 in PromptManaging.executeYesNoConfirmationFlow(withPrompt:confirmationRejectedDialog:flowCancelledDialog:onYes:)(v10, v96, v97, v98);
    (*(v7 + 8))(v10, v6);
    return;
  }

  if (v22 == *MEMORY[0x277D5BC30])
  {
    (*(v12 + 96))(v20, v11);
    v23 = *v20;
    v24 = v20[8];
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.default);
    v26 = v23;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v23;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_266B9E000, v27, v28, "PromptGiving: Error during execution of prompt flow: %@", v29, 0xCu);
      outlined destroy of SharingResponse?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D5ED340](v30, -1, -1);
      MEMORY[0x26D5ED340](v29, -1, -1);
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    if (v24)
    {
      if (v35)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_266B9E000, v33, v34, "PromptGiving: Error already handled - completing flow", v36, 2u);
        MEMORY[0x26D5ED340](v36, -1, -1);
      }

      v37 = v99;
      v38 = *(v99 + 32);
      v101 = *(v99 + 16);
      v102 = v38;
      v103 = *(v99 + 48);
      v104 = *(v99 + 64);
      v39 = v104;
      v41 = *(v99 + 16);
      v40 = *(v99 + 24);
      v42 = *(v99 + 32);
      v43 = *(v99 + 40);
      v44 = *(v99 + 48);
      v45 = *(v99 + 56);
      *(v99 + 16) = 4;
      *(v37 + 24) = 0u;
      *(v37 + 40) = 0u;
      *(v37 + 56) = 0;
      *(v37 + 64) = 32;
      outlined init with copy of StartSharingConfirmationFlow.State(&v101, v100);
      outlined consume of StartSharingConfirmationFlow.State(v41, v40, v42, v43, v44, v45, v39);
      StartSharingConfirmationFlow.state.didset(&v101);
      outlined destroy of StartSharingConfirmationFlow.State(&v101);
    }

    else
    {
      if (v35)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_266B9E000, v33, v34, "PromptGiving: Error not already handled - transitioning to .failedWithUnknownError state", v51, 2u);
        MEMORY[0x26D5ED340](v51, -1, -1);
      }

      v52 = v99;
      v53 = *(v99 + 32);
      v101 = *(v99 + 16);
      v102 = v53;
      v103 = *(v99 + 48);
      v104 = *(v99 + 64);
      v54 = v104;
      v56 = *(v99 + 16);
      v55 = *(v99 + 24);
      v57 = *(v99 + 32);
      v58 = *(v99 + 40);
      v59 = *(v99 + 48);
      v60 = *(v99 + 56);
      *(v99 + 16) = v23;
      *(v52 + 24) = 0u;
      *(v52 + 40) = 0u;
      *(v52 + 56) = 0;
      *(v52 + 64) = 16;
      v61 = v23;
      v62 = v23;
      outlined init with copy of StartSharingConfirmationFlow.State(&v101, v100);
      outlined consume of StartSharingConfirmationFlow.State(v56, v55, v57, v58, v59, v60, v54);
      StartSharingConfirmationFlow.state.didset(&v101);
      outlined destroy of StartSharingConfirmationFlow.State(&v101);
    }

    return;
  }

  if (v22 == *MEMORY[0x277D5BC40])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.default);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_27;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "PromptGiving: User responded to prompt with 'cancel' - completing flow";
LABEL_26:
    _os_log_impl(&dword_266B9E000, v47, v48, v50, v49, 2u);
    MEMORY[0x26D5ED340](v49, -1, -1);
LABEL_27:

    v64 = v99;
    v65 = *(v99 + 32);
    v101 = *(v99 + 16);
    v102 = v65;
    v103 = *(v99 + 48);
    v104 = *(v99 + 64);
    v66 = v104;
    v68 = *(v99 + 16);
    v67 = *(v99 + 24);
    v69 = *(v99 + 32);
    v70 = *(v99 + 40);
    v71 = *(v99 + 48);
    v72 = *(v99 + 56);
    *(v99 + 16) = 4;
    *(v64 + 24) = 0u;
    *(v64 + 40) = 0u;
    *(v64 + 56) = 0;
    *(v64 + 64) = 32;
    outlined init with copy of StartSharingConfirmationFlow.State(&v101, v100);
    outlined consume of StartSharingConfirmationFlow.State(v68, v67, v69, v70, v71, v72, v66);
    StartSharingConfirmationFlow.state.didset(&v101);
    outlined destroy of StartSharingConfirmationFlow.State(&v101);
    return;
  }

  if (v22 == *MEMORY[0x277D5BC28])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.default);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_27;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "PromptGiving: User provided no answer to the prompt - completing flow";
    goto LABEL_26;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  __swift_project_value_buffer(v73, static Logger.default);
  v21(v18, a1, v11);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v101 = v96;
    *v76 = 136315138;
    v77 = v95;
    v21(v95, v18, v11);
    v78 = *(v12 + 8);
    v97 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78(v18, v11);
    lazy protocol witness table accessor for type PromptResult<SharingIntent?> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = v80;
    v98 = v78;
    v78(v77, v11);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v101);

    *(v76 + 4) = v82;
    _os_log_impl(&dword_266B9E000, v74, v75, "PromptGiving: PromptForValueFlow exitValue has unknown value %s - add support for it!", v76, 0xCu);
    v83 = v96;
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x26D5ED340](v83, -1, -1);
    MEMORY[0x26D5ED340](v76, -1, -1);
  }

  else
  {
    v84 = *(v12 + 8);
    v97 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v98 = v84;
    v84(v18, v11);
  }

  lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
  v85 = swift_allocError();
  v86 = v99;
  v87 = *(v99 + 32);
  v101 = *(v99 + 16);
  v102 = v87;
  v103 = *(v99 + 48);
  v104 = *(v99 + 64);
  v88 = v104;
  v89 = *(v99 + 24);
  v96 = *(v99 + 16);
  v90 = *(v99 + 32);
  v91 = *(v99 + 40);
  v92 = *(v99 + 48);
  v93 = *(v99 + 56);
  *(v99 + 16) = v85;
  *(v86 + 24) = 0u;
  *(v86 + 40) = 0u;
  *(v86 + 56) = 0;
  *(v86 + 64) = 16;
  outlined init with copy of StartSharingConfirmationFlow.State(&v101, v100);
  v94 = v85;
  outlined consume of StartSharingConfirmationFlow.State(v96, v89, v90, v91, v92, v93, v88);
  StartSharingConfirmationFlow.state.didset(&v101);
  outlined destroy of StartSharingConfirmationFlow.State(&v101);

  v98(v20, v11);
}

uint64_t specialized PromptManaging.processPromptFlowExitValue<A>(_:onValueReceived:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v77 = a2;
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v9 = *(*(started - 8) + 64);
  v10 = MEMORY[0x28223BE20](started);
  v78 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = (v73 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy0A15ExpanseInternal13SharingIntent_pSgGMd, "^Y");
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v75 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v73 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v73 - v21;
  v23 = *(v14 + 16);
  v23(v73 - v21, a1, v13);
  v24 = (*(v14 + 88))(v22, v13);
  if (v24 == *MEMORY[0x277D5BC38])
  {
    (*(v14 + 96))(v22, v13);
    v25 = *(v22 + 1);
    v80[0] = *v22;
    v80[1] = v25;
    v81 = *(v22 + 4);
    specialized closure #1 in closure #1 in StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)(v80, a3, a4, a5);
    return outlined destroy of SharingResponse?(v80, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  }

  if (v24 == *MEMORY[0x277D5BC30])
  {
    (*(v14 + 96))(v22, v13);
    v27 = *v22;
    v28 = v22[8];
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.default);
    v30 = v27;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v27;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_266B9E000, v31, v32, "PromptGiving: Error during execution of prompt flow: %@", v33, 0xCu);
      outlined destroy of SharingResponse?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D5ED340](v34, -1, -1);
      MEMORY[0x26D5ED340](v33, -1, -1);
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v39 = os_log_type_enabled(v37, v38);
    if (v28)
    {
      if (v39)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_266B9E000, v37, v38, "PromptGiving: Error already handled - completing flow", v40, 2u);
        MEMORY[0x26D5ED340](v40, -1, -1);
      }

      v41 = v79;
      swift_storeEnumTagMultiPayload();
      v42 = v77;
      v43 = *(*v77 + 104);
      swift_beginAccess();
      v44 = v78;
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v42 + v43, v78);
      swift_beginAccess();
    }

    else
    {
      if (v39)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_266B9E000, v37, v38, "PromptGiving: Error not already handled - transitioning to .failedWithUnknownError state", v50, 2u);
        MEMORY[0x26D5ED340](v50, -1, -1);
      }

      v41 = v79;
      *v79 = v27;
      swift_storeEnumTagMultiPayload();
      v42 = v77;
      v43 = *(*v77 + 104);
      swift_beginAccess();
      v44 = v78;
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v42 + v43, v78);
      swift_beginAccess();
      v51 = v27;
    }

    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v41, v42 + v43);
    swift_endAccess();
    specialized SharingFlow.state.didset(v44);

    goto LABEL_28;
  }

  if (v24 == *MEMORY[0x277D5BC40])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.default);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_27;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "PromptGiving: User responded to prompt with 'cancel' - completing flow";
LABEL_26:
    _os_log_impl(&dword_266B9E000, v46, v47, v49, v48, 2u);
    MEMORY[0x26D5ED340](v48, -1, -1);
LABEL_27:

    v41 = v79;
    swift_storeEnumTagMultiPayload();
    v53 = v77;
    v54 = *(*v77 + 104);
    swift_beginAccess();
    v44 = v78;
    outlined init with copy of StartSharingFlow.StartSharingFlowState(v53 + v54, v78);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v41, v53 + v54);
    swift_endAccess();
    specialized SharingFlow.state.didset(v44);
LABEL_28:
    outlined destroy of StartSharingFlow.StartSharingFlowState(v44);
    return outlined destroy of StartSharingFlow.StartSharingFlowState(v41);
  }

  if (v24 == *MEMORY[0x277D5BC28])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.default);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_27;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "PromptGiving: User provided no answer to the prompt - completing flow";
    goto LABEL_26;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.default);
  v23(v20, a1, v13);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v80[0] = v74;
    *v58 = 136315138;
    v59 = v75;
    v23(v75, v20, v13);
    v60 = *(v14 + 8);
    v73[1] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60(v20, v13);
    lazy protocol witness table accessor for type PromptResult<SharingIntent?> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<SharingIntent?> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy0A15ExpanseInternal13SharingIntent_pSgGMd, "^Y");
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v60(v59, v13);
    v64 = v60;
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v80);

    *(v58 + 4) = v65;
    _os_log_impl(&dword_266B9E000, v56, v57, "PromptGiving: PromptForValueFlow exitValue has unknown value %s - add support for it!", v58, 0xCu);
    v66 = v74;
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x26D5ED340](v66, -1, -1);
    v67 = v64;
    MEMORY[0x26D5ED340](v58, -1, -1);
  }

  else
  {
    v67 = *(v14 + 8);
    v67(v20, v13);
  }

  lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
  v68 = swift_allocError();
  v69 = v79;
  *v79 = v68;
  swift_storeEnumTagMultiPayload();
  v70 = v77;
  v71 = *(*v77 + 104);
  swift_beginAccess();
  v72 = v78;
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v70 + v71, v78);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v69, v70 + v71);
  swift_endAccess();
  specialized SharingFlow.state.didset(v72);
  outlined destroy of StartSharingFlow.StartSharingFlowState(v72);
  outlined destroy of StartSharingFlow.StartSharingFlowState(v69);
  return (v67)(v22, v13);
}

uint64_t outlined init with copy of StartSharingFlow.StartSharingFlowState(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t outlined assign with copy of StartSharingFlow.StartSharingFlowState(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  (*(*(started - 8) + 24))(a2, a1, started);
  return a2;
}

uint64_t outlined destroy of StartSharingFlow.StartSharingFlowState(uint64_t a1)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t lazy protocol witness table accessor for type PromptResult<SharingIntent?> and conformance PromptResult<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmScreenShareOrMessageSendFlowStrategy.Decision.description.getter()
{
  outlined init with copy of ConfirmScreenShareOrMessageSendFlowStrategy.Decision(v0, v5);
  if (!v6)
  {
    return 0x436E496572616873;
  }

  if (v6 == 1)
  {
    return 0x4D616956646E6573;
  }

  outlined init with take of SharingResponse(v5, v4);
  _StringGuts.grow(_:)(19);
  MEMORY[0x26D5EC8A0](0xD000000000000010, 0x8000000266BEF510);
  v2 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v3 = *(v2 + 8);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return 0;
}

uint64_t ConfirmScreenShareOrMessageSendFlowStrategy.actionForIntent(_:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if ((*(v5 + 216))(v4, v5))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.default);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v27[0] = v10;
      *v9 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ConfirmScreenShareOrMessageSendFlowStrategy.typeName, unk_2800C0E60, v27);
      _os_log_impl(&dword_266B9E000, v7, v8, "%s: User has opted to send via messages.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x26D5ED340](v10, -1, -1);
      MEMORY[0x26D5ED340](v9, -1, -1);
    }

    memset(v27, 0, 24);
    *(&v27[1] + 8) = xmmword_266BED4B0;
    goto LABEL_28;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 16))(v11, v12);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (!v13)
  {

LABEL_14:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.default);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v27[0] = v19;
      *v18 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ConfirmScreenShareOrMessageSendFlowStrategy.typeName, unk_2800C0E60, v27);
      _os_log_impl(&dword_266B9E000, v16, v17, "%s: User has opted to share in call.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D5ED340](v19, -1, -1);
      MEMORY[0x26D5ED340](v18, -1, -1);
    }

    memset(v27, 0, 40);
    goto LABEL_28;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_14;
  }

LABEL_21:
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.default);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v27[0] = v24;
    *v23 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ConfirmScreenShareOrMessageSendFlowStrategy.typeName, unk_2800C0E60, v27);
    _os_log_impl(&dword_266B9E000, v21, v22, "%s: The user did not directly answer the prompt, but responded with a new sharing intent.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D5ED340](v24, -1, -1);
    MEMORY[0x26D5ED340](v23, -1, -1);
  }

  outlined init with copy of ResponseExecuting(a1, v27);
LABEL_28:
  outlined init with copy of ConfirmScreenShareOrMessageSendFlowStrategy.Decision(v27, v26);
  swift_beginAccess();
  outlined assign with take of ConfirmScreenShareOrMessageSendFlowStrategy.Decision?(v26, v2 + 136);
  swift_endAccess();
  static ActionForInput.handle()();
  return outlined destroy of ConfirmScreenShareOrMessageSendFlowStrategy.Decision(v27);
}

uint64_t ConfirmScreenShareOrMessageSendFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of SharingResponse?(v0 + 56, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  outlined destroy of SharingResponse?(v0 + 136, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMd, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMR);

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t get_enum_tag_for_layout_string_19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ConfirmScreenShareOrMessageSendFlowStrategy.Decision(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConfirmScreenShareOrMessageSendFlowStrategy.Decision(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for ConfirmScreenShareOrMessageSendFlowStrategy.Decision(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.actionForInput(_:) in conformance ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return SharingYesNoPromptFlowStrategy.actionForInput(_:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy;

  return specialized SharingPromptFlowStrategy.parseResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()(a1, a2, WitnessTable);
}

unint64_t instantiation function for generic protocol witness table for ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy()
{
  result = lazy protocol witness table cache variable for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy;
  if (!lazy protocol witness table cache variable for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy)
  {
    type metadata accessor for ConfirmScreenShareOrMessageSendFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy);
  }

  return result;
}

uint64_t outlined assign with take of ConfirmScreenShareOrMessageSendFlowStrategy.Decision?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMd, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of ResponseExecuting.execute(response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return v13(a1, a2, a3, a4);
}

uint64_t type metadata accessor for ButtonLabelsCATsSimple()
{
  result = type metadata singleton initialization cache for ButtonLabelsCATsSimple;
  if (!type metadata singleton initialization cache for ButtonLabelsCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ButtonLabelsCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  outlined init with copy of URL?(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v16;
}

uint64_t ButtonLabelsCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t specialized ShareTargetResolver.resolveShareTargetForStopSharing(target:call:)()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 64))(v2, v3);
  if ((v5 - 1) >= 4)
  {
    outlined consume of ShareSession?(v4, v5);
    LOBYTE(v6) = 2;
  }

  else
  {
    v6 = 0x30101u >> (8 * (v5 - 1));
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t specialized ShareTargetResolver.resolveAppTargetForStartSharing(_:_:errorHandler:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](specialized ShareTargetResolver.resolveAppTargetForStartSharing(_:_:errorHandler:), 0, 0);
}

uint64_t specialized ShareTargetResolver.resolveAppTargetForStartSharing(_:_:errorHandler:)()
{
  v30 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29[0] = v6;
    *v5 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, v29);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v29);
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: Share target is the app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v6, -1, -1);
    MEMORY[0x26D5ED340](v5, -1, -1);
  }

  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v11 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v10, v9, 0);
  if (v11)
  {
    v25 = *(v0 + 32);
    v26 = *(v0 + 24);

    v24 = v25;
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
  }

  else
  {
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    v14 = String.localizedAppDisplayName.getter();
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29[0] = v21;
      *v20 = 136315650;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 16);
      v22 = *(v0 + 24);
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, v29);
      *(v20 + 12) = 2080;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v29);
      *(v20 + 22) = 2080;
      *(v20 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v29);
      _os_log_impl(&dword_266B9E000, v18, v19, "%s: Share target is an uninstalled app appBundleID=%s appName=%s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v21, -1, -1);
      MEMORY[0x26D5ED340](v20, -1, -1);
    }

    v24 = 256;
  }

  v27 = *(v0 + 8);

  return v27(v16, v17, v24);
}

uint64_t specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for ShareTarget();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:), 0, 0);
}

uint64_t specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:)()
{
  v46 = v0;
  v1 = v0[3];
  outlined init with copy of ShareTarget(v0[2], v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v32 = v0[4];
        v13 = *v32;
        v14 = v32[1];
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.default);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v45 = v37;
          *v36 = 136315394;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v45);
          *(v36 + 12) = 2080;
          *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v45);
          _os_log_impl(&dword_266B9E000, v34, v35, "%s: Share target is an uninstalled app '%s' - resolving immediately with unsupported", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5ED340](v37, -1, -1);
          MEMORY[0x26D5ED340](v36, -1, -1);
        }

        v16 = 0;
        v15 = 256;
        goto LABEL_45;
      }

      outlined destroy of ShareTarget(v0[4]);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.default);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v45 = v7;
        *v6 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v45);
        _os_log_impl(&dword_266B9E000, v4, v5, "%s: Reference resolution is unsupported on the current platform.", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x26D5ED340](v7, -1, -1);
        MEMORY[0x26D5ED340](v6, -1, -1);
      }
    }

    else
    {
      v17 = *v0[4];
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.default);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v45 = v22;
        *v21 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v45);
        _os_log_impl(&dword_266B9E000, v19, v20, "%s: Reference resolution is unsupported on the current platform.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x26D5ED340](v22, -1, -1);
        MEMORY[0x26D5ED340](v21, -1, -1);
      }

      v23 = v0[4];
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
      v25 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
      (*(*(v25 - 8) + 8))(v23 + v24, v25);
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
LABEL_45:
    v43 = v0[4];

    v44 = v0[1];

    return v44(v13, v14, v15 | (v16 << 16));
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.default);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v45 = v12;
        *v11 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v45);
        _os_log_impl(&dword_266B9E000, v9, v10, "%s: Share target is the screen - resolving immediately with success", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x26D5ED340](v12, -1, -1);
        MEMORY[0x26D5ED340](v11, -1, -1);
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.default);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v45 = v42;
        *v41 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v45);
        _os_log_impl(&dword_266B9E000, v39, v40, "%s: No target provided - resolving with needsValue", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x26D5ED340](v42, -1, -1);
        MEMORY[0x26D5ED340](v41, -1, -1);
      }

      v13 = 0;
      v14 = 0;
      v16 = 0;
      v15 = 512;
    }

    goto LABEL_45;
  }

  v26 = v0[4];
  v28 = *v26;
  v27 = *(v26 + 8);
  v0[5] = v27;
  v29 = *(v26 + 16);
  v30 = swift_task_alloc();
  v0[6] = v30;
  *v30 = v0;
  v30[1] = specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:);

  return specialized ShareTargetResolver.resolveAppTargetForStartSharing(_:_:errorHandler:)(v28, v27, v29);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);

  v5 = *(v0 + 8);

  return v5(v2, v3, v1 & 0x1FFFF);
}

uint64_t specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *v3;
  v5 = *(*v3 + 48);
  v6 = *(*v3 + 40);
  v8 = *v3;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;

  return MEMORY[0x2822009F8](specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:), 0, 0);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference5MatchVyAA7ContactVAA0D8ResolverC9SignalSetVGGMd, &_sSay13SiriInference5MatchVyAA7ContactVAA0D8ResolverC9SignalSetVGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriExpanseInternal7Contact_pGMd, &_sSay19SiriExpanseInternal7Contact_pGMR);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x26D5ECB50](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for TUConversationParticipant();
        v16 = &protocol witness table for TUConversationParticipant;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of ConversationParticipant(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for TUConversationParticipant();
        v16 = &protocol witness table for TUConversationParticipant;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        outlined init with take of ConversationParticipant(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *ContactResolver.findMatches(queries:)(uint64_t a1)
{
  v24 = a1;
  v23 = type metadata accessor for RecommenderType();
  v1 = *(v23 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SearchSuggestedContacts();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactResolverDomain();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for ContactResolverConfig();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  static ContactResolverDomain.all.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D56148], v22);
  (*(v1 + 104))(v4, *MEMORY[0x277D560D0], v23);
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:)();
  v18 = v25;
  v19 = dispatch thunk of ContactResolver.findMatches(queries:config:)();
  if (v18)
  {
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v20 = v19;
    (*(v14 + 8))(v17, v13);
    v17 = specialized _arrayForceCast<A, B>(_:)(v20);
  }

  return v17;
}

unint64_t type metadata accessor for TUConversationParticipant()
{
  result = lazy cache variable for type metadata for TUConversationParticipant;
  if (!lazy cache variable for type metadata for TUConversationParticipant)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationParticipant);
  }

  return result;
}

unint64_t StartSharingFlow.StartSharingFlowState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ShareTarget();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v64 - v7;
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v10 = *(*(started - 8) + 64);
  v11 = MEMORY[0x28223BE20](started);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v64 - v17);
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v1, &v64 - v17, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x696C616974696E69;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v31 = *v18;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v32 = 0x8000000266BEF810;
      v33 = 0xD000000000000021;
      goto LABEL_9;
    case 2:
      v31 = *v18;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v32 = 0x8000000266BEF7E0;
      v33 = 0xD000000000000022;
      goto LABEL_9;
    case 3:
      v31 = *v18;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v32 = 0x8000000266BEF7B0;
      v33 = 0xD000000000000026;
LABEL_9:
      v66 = v33;
      v67 = v32;
      v65 = v31;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D5EC8A0](v35);
      goto LABEL_32;
    case 4:
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR);
      v42 = *(v18 + v41[12]);
      v43 = *(v18 + v41[16]);
      v44 = *(v18 + v41[20]);
      outlined init with take of ShareTarget(v18, v8);
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      MEMORY[0x26D5EC8A0](0xD000000000000010, 0x8000000266BEF750);
      v45 = ShareTarget.description.getter();
      MEMORY[0x26D5EC8A0](v45);

      MEMORY[0x26D5EC8A0](0x697069636572202CLL, 0xEE00203A73746E65);
      specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v42);

      MEMORY[0x26D5EC8A0](0xD000000000000013, 0x8000000266BEF770);
      v65 = v43;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D5EC8A0](v46);

      MEMORY[0x26D5EC8A0](0xD000000000000018, 0x8000000266BEF790);
      if (v44)
      {
        v47 = 1702195828;
      }

      else
      {
        v47 = 0x65736C6166;
      }

      if (v44)
      {
        v48 = 0xE400000000000000;
      }

      else
      {
        v48 = 0xE500000000000000;
      }

      MEMORY[0x26D5EC8A0](v47, v48);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v49 = v66;
      outlined destroy of ShareTarget(v8, type metadata accessor for ShareTarget);
      return v49;
    case 5:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v51 = v18 + *(v50 + 48);
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = *(v18 + *(v50 + 64));
      v55 = v51[16];
      outlined init with take of ShareTarget(v18, v6);
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      MEMORY[0x26D5EC8A0](0xD000000000000022, 0x8000000266BEF700);
      v56 = ShareTarget.description.getter();
      MEMORY[0x26D5EC8A0](v56);

      MEMORY[0x26D5EC8A0](0xD000000000000012, 0x8000000266BEF730);
      v57 = ResolvedShareTarget.description.getter(v53, v52, v55);
      v59 = v58;

      MEMORY[0x26D5EC8A0](v57, v59);

      MEMORY[0x26D5EC8A0](0x697069636572202CLL, 0xEE00203A73746E65);
      specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v54);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v60 = v66;
      outlined destroy of ShareTarget(v6, type metadata accessor for ShareTarget);
      return v60;
    case 6:
      v36 = *v18;
      v37 = v18[1];
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v66 = 0xD00000000000001CLL;
      v67 = 0x8000000266BEF660;
      v38 = StartSharingFlow.StartSharingFlowError.description.getter(v36, v37);
      v40 = v39;
      outlined consume of StartSharingFlow.StartSharingFlowError(v36, v37);
      MEMORY[0x26D5EC8A0](v38, v40);
      goto LABEL_32;
    case 7:
      v61 = 0xD000000000000010;
      v62 = *v18;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v66 = 0xD000000000000016;
      v67 = 0x8000000266BEF640;
      if (v62 <= 1)
      {
        if (v62)
        {
          v63 = 0x8000000266BEE350;
        }

        else
        {
          v63 = 0xEA0000000000646CLL;
          v61 = 0x6F486E4F6C6C6163;
        }
      }

      else if (v62 == 2)
      {
        v63 = 0xE90000000000006CLL;
        v61 = 0x6C61436E49746F6ELL;
      }

      else if (v62 == 3)
      {
        v63 = 0x8000000266BEE390;
        v61 = 0xD000000000000014;
      }

      else
      {
        v63 = 0x8000000266BEE6B0;
        v61 = 0xD000000000000012;
      }

      MEMORY[0x26D5EC8A0](v61, v63);
LABEL_32:

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      return v66;
    case 8:
      v34 = *v18;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      MEMORY[0x26D5EC8A0](0xD000000000000017, 0x8000000266BEE890);
      v65 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);

      return v66;
    case 9:
      return result;
    case 10:
      v30 = 35;
      goto LABEL_21;
    case 11:
      v30 = 38;
LABEL_21:
      result = v30 | 0xD000000000000010;
      break;
    case 12:
      result = 0x4D616956646E6573;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      v21 = *v18;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
      v23 = swift_projectBox();
      v24 = *(v22 + 48);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v23, v16, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v23 + v24, v13, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      v25 = MEMORY[0x26D5EC8A0](0xD00000000000002ALL, 0x8000000266BEF840);
      v26 = StartSharingFlow.StartSharingFlowState.description.getter(v25);
      MEMORY[0x26D5EC8A0](v26);

      v27 = MEMORY[0x26D5EC8A0](0xD00000000000001FLL, 0x8000000266BEF870);
      v28 = StartSharingFlow.StartSharingFlowState.description.getter(v27);
      MEMORY[0x26D5EC8A0](v28);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v29 = v66;
      outlined destroy of ShareTarget(v13, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v16, type metadata accessor for StartSharingFlow.StartSharingFlowState);

      result = v29;
      break;
  }

  return result;
}

unint64_t StartSharingFlow.StartSharingFlowError.description.getter(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0xD000000000000032;
    case 1:
      return 0xD000000000000031;
    case 2:
      return 0xD00000000000001ELL;
  }

  _StringGuts.grow(_:)(28);

  MEMORY[0x26D5EC8A0](a1, a2);
  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t StartSharingFlow.exitValue.getter@<X0>(char *a1@<X8>)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v4 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v1 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v1 + v7, v6, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  result = swift_getEnumCaseMultiPayload();
  if (result == 12)
  {
    v9 = 1;
  }

  else
  {
    result = outlined destroy of ShareTarget(v6, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t StartSharingFlow.on(input:)(uint64_t a1)
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

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118]);
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

uint64_t StartSharingFlow.execute()(uint64_t a1)
{
  v2[78] = v1;
  v2[77] = a1;
  v2[79] = *v1;
  v3 = *(*(type metadata accessor for ShareTarget() - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v2[82] = started;
  v5 = *(*(started - 8) + 64) + 15;
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](StartSharingFlow.execute(), 0, 0);
}

uint64_t StartSharingFlow.execute()()
{
  v176 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 656);
  v3 = *(v0 + 624);
  v4 = *(*v3 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v3 + v4, v1, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = **(v0 + 680);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 624);
      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logger.default);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v173 = v57;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v175 = v63;
        *v62 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v64 = *(v0 + 624);
        *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v175);
        *(v62 + 12) = 2080;
        v65 = *(*v64 + 112);
        swift_beginAccess();
        outlined init with copy of ResponseExecuting(v64 + v65, v0 + 376);
        v66 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));
        v67 = *(v66 + 8);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v175);

        *(v62 + 14) = v71;
        _os_log_impl(&dword_266B9E000, v60, v61, "%s: Intent before reformation: %s", v62, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v63, -1, -1);
        MEMORY[0x26D5ED340](v62, -1, -1);

        v57 = v173;
      }

      else
      {
      }

      v134 = *(v0 + 624) + *(**(v0 + 624) + 112);
      swift_beginAccess();
      v135 = *(v134 + 24);
      v136 = *(v134 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
      LOBYTE(v135) = (*(v136 + 232))(v135, v136);
      v137 = swift_endAccess();
      specialized SharingFlow.intent.didset(v137);
      if (v135)
      {
        v138 = *(v0 + 624);

        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v175 = v142;
          *v141 = 136315394;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v141 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v175);
          *(v141 + 12) = 2080;
          outlined init with copy of ResponseExecuting(v134, v0 + 336);
          v143 = *(v0 + 368);
          __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
          v144 = *(v143 + 8);
          v145 = dispatch thunk of CustomStringConvertible.description.getter();
          v147 = v146;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
          v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v147, &v175);

          *(v141 + 14) = v148;
          _os_log_impl(&dword_266B9E000, v139, v140, "%s: Intent after reformation: %s", v141, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5ED340](v142, -1, -1);
          MEMORY[0x26D5ED340](v141, -1, -1);
        }
      }

      else
      {
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v175 = v152;
          *v151 = 136315138;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v151 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v175);
          _os_log_impl(&dword_266B9E000, v149, v150, "%s: Intent unchanged by reformation", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v152);
          MEMORY[0x26D5ED340](v152, -1, -1);
          MEMORY[0x26D5ED340](v151, -1, -1);
        }
      }

      v153 = *(v0 + 672);
      v154 = *(v0 + 664);
      v155 = *(v0 + 656);
      v156 = *(v0 + 624);
      v157 = *(v0 + 616);
      *v153 = v57;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v3 + v4, v154, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v153, v3 + v4);
      swift_endAccess();
      specialized SharingFlow.state.didset(v154);
      outlined destroy of ShareTarget(v154, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v153, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      goto LABEL_63;
    case 2u:
      v31 = *(v0 + 632);
      v32 = *(v0 + 624);
      v33 = *(v0 + 616);
      v34 = **(v0 + 680);
      v35 = *(*v32 + 112);
      swift_beginAccess();
      outlined init with copy of ResponseExecuting(v32 + v35, v0 + 296);
      type metadata accessor for ValidateStartSharingIntentFlow();
      v36 = swift_allocObject();
      *(v36 + 16) = 2;
      outlined init with take of ConversationParticipant((v0 + 296), v36 + 24);
      *(v0 + 608) = v36;
      v37 = swift_allocObject();
      v37[2] = v32;
      v37[3] = v34;
      v37[4] = v31;
      lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type ValidateStartSharingIntentFlow and conformance ValidateStartSharingIntentFlow, type metadata accessor for ValidateStartSharingIntentFlow);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_71;
    case 3u:
      v38 = *(v0 + 624);
      StartSharingFlow.validateRecipientsForIntent(needsValueCount:)(**(v0 + 680), *(v0 + 616));
      goto LABEL_71;
    case 4u:
      v13 = *(v0 + 680);
      v14 = *(v0 + 648);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR);
      v16 = *(v13 + *(v15 + 48));
      *(v0 + 688) = v16;
      v17 = *(v13 + *(v15 + 64));
      outlined init with take of ShareTarget(v13, v14);
      v18 = swift_task_alloc();
      *(v0 + 696) = v18;
      *v18 = v0;
      v18[1] = StartSharingFlow.execute();
      v19 = *(v0 + 648);
      v20 = *(v0 + 624);
      v21 = *(v0 + 616);

      return StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)(v21, v19, v16, v17);
    case 5u:
      v72 = *(v0 + 680);
      v73 = *(v0 + 648);
      v74 = *(v0 + 640);
      v167 = v74;
      v75 = *(v0 + 624);
      v174 = *(v0 + 616);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v77 = v72 + *(v76 + 48);
      v169 = *(v77 + 8);
      v170 = *v77;
      v168 = *(v77 + 16);
      v171 = *(v72 + *(v76 + 64));
      outlined init with take of ShareTarget(v72, v73);
      v78 = *(*v75 + 112);
      swift_beginAccess();
      outlined init with copy of ResponseExecuting(v75 + v78, v0 + 96);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v73, v74, type metadata accessor for ShareTarget);
      outlined init with copy of ResponseExecuting(v75 + *(*v75 + 120), v0 + 136);
      outlined init with copy of ResponseExecuting(v75 + *(*v75 + 128), v0 + 176);
      outlined init with copy of ResponseExecuting(v75 + *(*v75 + 136), v0 + 216);
      v79 = *(v0 + 200);
      v80 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v79);
      v81 = *(v79 - 8);
      v82 = *(v81 + 64) + 15;
      v83 = swift_task_alloc();
      (*(v81 + 16))(v83, v80, v79);
      v84 = *v83;
      v85 = type metadata accessor for ResponseExecutor();
      *(v0 + 280) = v85;
      *(v0 + 288) = &protocol witness table for ResponseExecutor;
      *(v0 + 256) = v84;
      started = type metadata accessor for StartSharingConfirmationFlow();
      v87 = *(started + 48);
      v88 = *(started + 52);
      v89 = swift_allocObject();
      v90 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v85);
      v91 = *(v85 - 8);
      v92 = *(v91 + 64) + 15;
      v93 = swift_task_alloc();
      (*(v91 + 16))(v93, v90, v85);
      v94 = *v93;
      v95 = (v89 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_responseExecutor);
      v95[3] = v85;
      v95[4] = &protocol witness table for ResponseExecutor;
      *v95 = v94;
      *(v89 + 32) = 0u;
      *(v89 + 48) = 0u;
      *(v89 + 16) = 0u;
      *(v89 + 64) = 32;
      outlined init with take of ConversationParticipant((v0 + 96), v89 + 72);
      outlined init with take of ShareTarget(v167, v89 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_requestedTarget);
      v96 = v89 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_resolvedTarget;
      *v96 = v170;
      *(v96 + 8) = v169;
      *(v96 + 16) = v168;
      *(v89 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_recipients) = v171;
      outlined init with take of ConversationParticipant((v0 + 136), v89 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_call);
      outlined init with take of ConversationParticipant((v0 + 216), v89 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_outputPublisher);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

      *(v0 + 600) = v89;
      lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type StartSharingConfirmationFlow and conformance StartSharingConfirmationFlow, type metadata accessor for StartSharingConfirmationFlow);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      outlined destroy of ShareTarget(v73, type metadata accessor for ShareTarget);
      goto LABEL_71;
    case 6u:
      v97 = *(v0 + 680);
      v98 = *v97;
      v99 = v97[1];
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      __swift_project_value_buffer(v100, static Logger.default);
      outlined copy of StartSharingFlow.StartSharingFlowError(v98, v99);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      outlined consume of StartSharingFlow.StartSharingFlowError(v98, v99);
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v175 = v104;
        *v103 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v105 = static StartSharingFlow.typeName;
        v106 = qword_2800C0EB0;
        *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v175);
        *(v103 + 12) = 2080;
        *(v103 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, &v175);
        *(v103 + 22) = 2080;
        outlined copy of StartSharingFlow.StartSharingFlowError(v98, v99);
        v107 = StartSharingFlow.StartSharingFlowError.description.getter(v98, v99);
        v109 = v108;
        outlined consume of StartSharingFlow.StartSharingFlowError(v98, v99);
        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v175);

        *(v103 + 24) = v110;
        _os_log_impl(&dword_266B9E000, v101, v102, "%s: %s failed with start sharing error: %s", v103, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v104, -1, -1);
        MEMORY[0x26D5ED340](v103, -1, -1);
      }

      v111 = *(v0 + 624);
      v112 = *(v0 + 616);
      StartSharingFlow.makeResponseForStartSharingError(_:)(v98, v99);
      outlined consume of StartSharingFlow.StartSharingFlowError(v98, v99);
      goto LABEL_71;
    case 7u:
      v39 = **(v0 + 680);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.default);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v175 = v44;
        *v43 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v45 = static StartSharingFlow.typeName;
        v46 = qword_2800C0EB0;
        *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v175);
        *(v43 + 12) = 2080;
        *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v175);
        *(v43 + 22) = 2080;
        if (v39 <= 1)
        {
          if (v39)
          {
            v48 = 0xD000000000000010;
            v47 = 0x8000000266BEE350;
          }

          else
          {
            v47 = 0xEA0000000000646CLL;
            v48 = 0x6F486E4F6C6C6163;
          }
        }

        else if (v39 == 2)
        {
          v47 = 0xE90000000000006CLL;
          v48 = 0x6C61436E49746F6ELL;
        }

        else if (v39 == 3)
        {
          v47 = 0x8000000266BEE390;
          v48 = 0xD000000000000014;
        }

        else
        {
          v47 = 0x8000000266BEE6B0;
          v48 = 0xD000000000000012;
        }

        v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, &v175);

        *(v43 + 24) = v158;
        _os_log_impl(&dword_266B9E000, v41, v42, "%s: %s failed with common error: %s", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v44, -1, -1);
        MEMORY[0x26D5ED340](v43, -1, -1);
      }

      v159 = *(v0 + 624);
      v160 = *(v0 + 616);
      specialized SharingFlow.makeResponseForCommonError(_:)(v39);
      goto LABEL_71;
    case 8u:
      v116 = **(v0 + 680);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v117 = type metadata accessor for Logger();
      __swift_project_value_buffer(v117, static Logger.default);
      v118 = v116;
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v175 = v122;
        *v121 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v123 = static StartSharingFlow.typeName;
        v124 = qword_2800C0EB0;
        *(v121 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v175);
        *(v121 + 12) = 2080;
        *(v121 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v175);
        *(v121 + 22) = 2080;
        *(v0 + 584) = v116;
        v125 = v116;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
        v126 = String.init<A>(describing:)();
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, &v175);

        *(v121 + 24) = v128;
        _os_log_impl(&dword_266B9E000, v119, v120, "%s: %s failed with unknown/unexpected error: %s", v121, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v122, -1, -1);
        MEMORY[0x26D5ED340](v121, -1, -1);
      }

      v129 = *(v0 + 624);
      v130 = *(v0 + 616);
      v131 = type metadata accessor for Responses.Common.GenericError(0);
      *(v0 + 40) = v131;
      *(v0 + 48) = &protocol witness table for Responses.Common.GenericError;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      v133 = boxed_opaque_existential_1 + *(v131 + 20);
      static DialogPhase.completion.getter();
      *boxed_opaque_existential_1 = -112;
      *(boxed_opaque_existential_1 + *(v131 + 24)) = 1;
      specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v0 + 16);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      goto LABEL_71;
    case 9u:
      v23 = *(v0 + 672);
      v24 = *(v0 + 664);
      v25 = *(v0 + 656);
      v26 = *(v0 + 624);
      v172 = *(v0 + 616);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
      v28 = swift_allocBox();
      v29 = *(v27 + 48);
      *v30 = 0;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      *v23 = v28;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v3 + v4, v24, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v23, v3 + v4);
      swift_endAccess();
      specialized SharingFlow.state.didset(v24);
      outlined destroy of ShareTarget(v24, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v23, type metadata accessor for StartSharingFlow.StartSharingFlowState);
LABEL_63:
      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_71;
    case 0xAu:
      v113 = swift_task_alloc();
      *(v0 + 704) = v113;
      *v113 = v0;
      v113[1] = StartSharingFlow.execute();
      v114 = *(v0 + 624);
      v115 = *(v0 + 616);

      return StartSharingFlow.shareTarget(_:)(v115);
    case 0xBu:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.default);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v175 = v10;
        *v9 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v175);
        *(v9 + 12) = 2080;
        *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v175);
        _os_log_impl(&dword_266B9E000, v7, v8, "%s: Successfully shared %s; dismissing Siri and completing flow", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v10, -1, -1);
        MEMORY[0x26D5ED340](v9, -1, -1);
      }

      v11 = *(v0 + 616);
      outlined init with copy of ResponseExecuting(*(v0 + 624) + *(**(v0 + 624) + 136), v0 + 56);
      type metadata accessor for DismissSiriFlow();
      v12 = swift_allocObject();
      outlined init with take of ConversationParticipant((v0 + 56), v12 + 16);
      *(v0 + 592) = v12;
      lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow, type metadata accessor for DismissSiriFlow);
      static ExecuteResponse.complete<A>(next:)();

      goto LABEL_71;
    case 0xCu:
    case 0xDu:
      v5 = *(v0 + 616);
      static ExecuteResponse.complete()();
      goto LABEL_71;
    default:
      v49 = *(v0 + 672);
      v50 = *(v0 + 664);
      v51 = *(v0 + 624);
      v52 = *(v0 + 616);
      v53 = **(v0 + 680);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
      v55 = swift_projectBox();
      v56 = *(v54 + 48);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v55, v49, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v55 + v56, v50, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      specialized SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(v49, v50, v52);
      outlined destroy of ShareTarget(v50, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v49, type metadata accessor for StartSharingFlow.StartSharingFlowState);

LABEL_71:
      v161 = *(v0 + 680);
      v162 = *(v0 + 672);
      v163 = *(v0 + 664);
      v164 = *(v0 + 648);
      v165 = *(v0 + 640);

      v166 = *(v0 + 8);

      return v166();
  }
}

{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 688);
  v4 = *v0;

  return MEMORY[0x2822009F8](StartSharingFlow.execute(), 0, 0);
}

{
  outlined destroy of ShareTarget(v0[81], type metadata accessor for ShareTarget);
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[80];

  v6 = v0[1];

  return v6();
}

{
  v1 = *(*v0 + 704);
  v3 = *v0;

  return MEMORY[0x2822009F8](StartSharingFlow.execute(), 0, 0);
}

{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[80];

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in StartSharingFlow.validateIntent(needsValueCount:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v7 = *(*(started - 8) + 64);
  v8 = MEMORY[0x28223BE20](started);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v31[-v11];
  v13 = *a1;
  if (v13 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.default);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, v32);
      _os_log_impl(&dword_266B9E000, v15, v16, "%s: intent to be handled as a screen sharing or app casting intent", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D5ED340](v18, -1, -1);
      MEMORY[0x26D5ED340](v17, -1, -1);
    }

    *v12 = a3;
  }

  else if (v13)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.default);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, v32);
      _os_log_impl(&dword_266B9E000, v20, v21, "%s: intent should be handled via message sending - sending back to SiriMessages", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D5ED340](v23, -1, -1);
      MEMORY[0x26D5ED340](v22, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.default);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v27 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, v32);
      _os_log_impl(&dword_266B9E000, v25, v26, "%s: intent is a SharePlay request, which is unsupported", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D5ED340](v28, -1, -1);
      MEMORY[0x26D5ED340](v27, -1, -1);
    }

    *v12 = 3;
  }

  swift_storeEnumTagMultiPayload();
  v29 = *(*a2 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v29, v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v12, a2 + v29);
  swift_endAccess();
  specialized SharingFlow.state.didset(v10);
  outlined destroy of ShareTarget(v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  return outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
}

uint64_t StartSharingFlow.validateRecipientsForIntent(needsValueCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26[1] = a2;
  v5 = *v2;
  v6 = *(*v2 + 112);
  swift_beginAccess();
  outlined init with copy of ResponseExecuting(v2 + v6, v29);
  v7 = v30;
  v8 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v9 = (*(v8 + 176))(v7, v8);
  v10 = type metadata accessor for ContactResolver();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v28[3] = v10;
  v28[4] = &protocol witness table for ContactResolver;
  v28[0] = ContactResolver.init()();
  v28[8] = &type metadata for ScreenSharingCallManager;
  v28[9] = &protocol witness table for ScreenSharingCallManager;
  v13 = swift_allocObject();
  v28[5] = v13;
  v14 = [objc_opt_self() sharedInstance];
  v13[5] = type metadata accessor for TUCallCenter();
  v13[6] = &protocol witness table for TUCallCenter;
  v13[2] = v14;
  v27[3] = &type metadata for RecipientsResolver;
  v27[4] = &protocol witness table for RecipientsResolver;
  v27[0] = swift_allocObject();
  outlined init with copy of RecipientsResolver(v28, v27[0] + 16);
  type metadata accessor for ValidateRecipientsFlow();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v27, &type metadata for RecipientsResolver);
  v17 = *(off_2878559D0 + 8);
  MEMORY[0x28223BE20](v16);
  v19 = (v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  *(v15 + 64) = &type metadata for RecipientsResolver;
  *(v15 + 72) = &protocol witness table for RecipientsResolver;
  v21 = swift_allocObject();
  *(v15 + 32) = v9;
  *(v15 + 40) = v21;
  v22 = v19[3];
  v21[3] = v19[2];
  v21[4] = v22;
  v21[5] = v19[4];
  v23 = v19[1];
  v21[1] = *v19;
  v21[2] = v23;
  *(v15 + 16) = 1;
  *(v15 + 24) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  outlined destroy of RecipientsResolver(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  v28[0] = v15;
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = v15;
  v24[4] = a1;
  v24[5] = v5;
  lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type ValidateRecipientsFlow and conformance ValidateRecipientsFlow, type metadata accessor for ValidateRecipientsFlow);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in StartSharingFlow.validateRecipientsForIntent(needsValueCount:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v9 = *(*(started - 8) + 64);
  v10 = MEMORY[0x28223BE20](started);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  if (*a1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.default);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v46[0] = v19;
      *v18 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, v46);
      _os_log_impl(&dword_266B9E000, v16, v17, "%s: recipients validation failed - falling back on SiriMessages sharing", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D5ED340](v19, -1, -1);
      MEMORY[0x26D5ED340](v18, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    v20 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v20, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v14, a2 + v20);
    swift_endAccess();
    specialized SharingFlow.state.didset(v12);
    outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    return outlined destroy of ShareTarget(v14, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.default);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v41 = a4;
    v42 = started;
    v40 = a3;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46[0] = v27;
      *v26 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, v46);
      _os_log_impl(&dword_266B9E000, v23, v24, "%s: recipients validation passed", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x26D5ED340](v27, -1, -1);
      MEMORY[0x26D5ED340](v26, -1, -1);
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR);
    v29 = v28[12];
    v30 = v28[16];
    v31 = v28[20];
    v32 = *(*a2 + 112);
    swift_beginAccess();
    outlined init with copy of ResponseExecuting(a2 + v32, v46);
    v33 = v47;
    v34 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v34 + 192))(v33, v34);
    *&v14[v29] = *(v40 + 24);
    *&v14[v30] = v41;
    outlined init with copy of ResponseExecuting(a2 + v32, v43);
    v35 = v44;
    v36 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v37 = *(v36 + 224);

    v14[v31] = v37(v35, v36) & 1;
    swift_storeEnumTagMultiPayload();
    v38 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v38, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v14, a2 + v38);
    swift_endAccess();
    specialized SharingFlow.state.didset(v12);
    outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    outlined destroy of ShareTarget(v14, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }
}

uint64_t StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v5[36] = started;
  v8 = *(*(started - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v9 = type metadata accessor for Responses.StartSharing.NeedsTarget(0);
  v5[39] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[41] = v11;
  *v11 = v5;
  v11[1] = StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:);

  return specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:)(a2);
}

uint64_t StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *v3;
  v5 = *(*v3 + 328);
  v7 = *v3;
  *(v4 + 336) = a1;
  *(v4 + 344) = a2;
  *(v4 + 352) = a3;

  return MEMORY[0x2822009F8](StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:), 0, 0);
}

uint64_t StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)()
{
  v70 = v0;
  v1 = *(v0 + 352);
  if ((v1 & 0x10000) != 0)
  {
    v10 = *(v0 + 336);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.default);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v69 = v15;
      *v14 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 336);
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v69);
      *(v14 + 12) = 2080;
      *(v0 + 356) = v16 & 1;
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v69);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_266B9E000, v12, v13, "%s: Target resolution failed with error %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v15, -1, -1);
      MEMORY[0x26D5ED340](v14, -1, -1);
    }

    v21 = *(v0 + 296);
    v20 = *(v0 + 304);
    v22 = *(v0 + 280);
    v23 = *(v0 + 288);
    if (v10)
    {
      v24 = *(v0 + 248);
      lazy protocol witness table accessor for type StartSharingTargetResolutionError and conformance StartSharingTargetResolutionError();
      v25 = swift_allocError();
      *v26 = 1;
      *v20 = v25;
      swift_storeEnumTagMultiPayload();
      v27 = *(*v22 + 104);
      swift_beginAccess();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v22 + v27, v21, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v20, v22 + v27);
    }

    else
    {
      v29 = *(v0 + 256);
      v28 = *(v0 + 264);
      v30 = *(v0 + 248);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v32 = v20 + *(v31 + 48);
      v33 = *(v31 + 64);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v29, v20, type metadata accessor for ShareTarget);
      *v32 = xmmword_266BED810;
      v32[16] = 2;
      *(v20 + v33) = v28;
      swift_storeEnumTagMultiPayload();
      v34 = *(*v22 + 104);
      swift_beginAccess();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v22 + v34, v21, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();

      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v20, v22 + v34);
    }

    swift_endAccess();
    specialized SharingFlow.state.didset(v21);
    outlined destroy of ShareTarget(v21, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    outlined destroy of ShareTarget(v20, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    static ExecuteResponse.ongoing(requireInput:)();
  }

  else
  {
    if (!BYTE1(v1))
    {
      v3 = *(v0 + 336);
      v2 = *(v0 + 344);
      v35 = *(v0 + 304);
      v36 = *(v0 + 280);
      v66 = *(v0 + 288);
      v67 = *(v0 + 296);
      v37 = *(v0 + 256);
      v38 = *(v0 + 264);
      v68 = *(v0 + 248);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v40 = v35 + *(v39 + 48);
      v41 = *(v39 + 64);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v37, v35, type metadata accessor for ShareTarget);
      *v40 = v3;
      *(v40 + 8) = v2;
      *(v40 + 16) = v1;
      *(v35 + v41) = v38;
      swift_storeEnumTagMultiPayload();
      v42 = *(*v36 + 104);
      swift_beginAccess();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v36 + v42, v67, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined copy of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v3, v2, v1, 0);
      outlined copy of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v3, v2, v1, 0);

      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v35, v36 + v42);
      swift_endAccess();
      specialized SharingFlow.state.didset(v67);
      outlined destroy of ShareTarget(v67, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v35, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      static ExecuteResponse.ongoing(requireInput:)();
      outlined consume of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v3, v2, v1, 0);
      goto LABEL_16;
    }

    if (BYTE1(v1) == 1)
    {
      v3 = *(v0 + 336);
      v2 = *(v0 + 344);
      v5 = *(v0 + 296);
      v4 = *(v0 + 304);
      v7 = *(v0 + 280);
      v6 = *(v0 + 288);
      v8 = *(v0 + 248);
      *v4 = v3;
      v4[1] = v2;
      swift_storeEnumTagMultiPayload();
      v9 = *(*v7 + 104);
      swift_beginAccess();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v7 + v9, v5, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined copy of StartSharingTargetResolution(v3, v2, v1, 1u);
      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v4, v7 + v9);
      swift_endAccess();
      specialized SharingFlow.state.didset(v5);
      outlined destroy of ShareTarget(v5, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v4, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_16:
      outlined consume of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v3, v2, v1, 0);
      goto LABEL_24;
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.default);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v69);
      _os_log_impl(&dword_266B9E000, v44, v45, "%s: Resolved needs value -> pushing needs value flow", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x26D5ED340](v47, -1, -1);
      MEMORY[0x26D5ED340](v46, -1, -1);
    }

    v48 = *(v0 + 352);
    v50 = *(v0 + 336);
    v49 = *(v0 + 344);
    v52 = *(v0 + 312);
    v51 = *(v0 + 320);
    v54 = *(v0 + 272);
    v53 = *(v0 + 280);
    v55 = *(v0 + 248);
    *v51 = -109;
    v56 = &v51[*(v52 + 20)];
    static DialogPhase.clarification.getter();
    v57 = *(v52 + 24);
    static SharingNLContextProvider.makeNLContextUpdateForShareTargetPrompt()();
    v58 = type metadata accessor for NLContextUpdate();
    (*(*(v58 - 8) + 56))(&v51[v57], 0, 1, v58);
    *(v0 + 40) = v52;
    *(v0 + 48) = &protocol witness table for Responses.StartSharing.NeedsTarget;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    outlined init with copy of StartSharingFlow.StartSharingFlowState(v51, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.NeedsTarget);
    v60 = swift_allocObject();
    *(v60 + 16) = v53;
    *(v60 + 24) = v54;

    StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)(v0 + 16, partial apply for closure #1 in StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:), v60, v55);

    outlined consume of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v50, v49, v48, 0);
    outlined destroy of ShareTarget(v51, type metadata accessor for Responses.StartSharing.NeedsTarget);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

LABEL_24:
  v61 = *(v0 + 320);
  v62 = *(v0 + 296);
  v63 = *(v0 + 304);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t closure #1 in StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v7 = *(*(started - 8) + 64);
  v8 = MEMORY[0x28223BE20](started);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  outlined init with copy of ResponseExecuting(a1, v18);
  v13 = *(*a2 + 112);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a2 + v13), v18);
  v14 = swift_endAccess();
  specialized SharingFlow.intent.didset(v14);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    *v12 = a3 + 1;
    swift_storeEnumTagMultiPayload();
    v16 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v16, v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v12, a2 + v16);
    swift_endAccess();
    specialized SharingFlow.state.didset(v10);
    outlined destroy of ShareTarget(v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    return outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  }

  return result;
}

uint64_t closure #1 in StartSharingFlow.confirmTarget(requestedTarget:resolvedTarget:recipients:)(uint64_t *a1, uint64_t a2)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v5 = *(*(started - 8) + 64);
  v6 = MEMORY[0x28223BE20](started);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  v11 = *a1;
  if (v11 <= 1)
  {
    if (!v11)
    {
      *v10 = 0;
      v10[1] = 0;
      goto LABEL_12;
    }

    if (v11 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v11 == 2)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
    v13 = swift_allocBox();
    v15 = v14;
    v16 = *(v12 + 48);
    swift_storeEnumTagMultiPayload();
    *(v15 + v16) = 2;
    swift_storeEnumTagMultiPayload();
    *v10 = v13;
    goto LABEL_12;
  }

  if (v11 == 3)
  {
    goto LABEL_12;
  }

  if (v11 != 4)
  {
LABEL_14:
    *v10 = v11;
    swift_storeEnumTagMultiPayload();
    v20 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v20, v8, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    v21 = v11;
    v18 = a2 + v20;
    goto LABEL_13;
  }

  *v10 = xmmword_266BED820;
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v17 = *(*a2 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v17, v8, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  v18 = a2 + v17;
LABEL_13:
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v10, v18);
  swift_endAccess();
  specialized SharingFlow.state.didset(v8);
  outlined destroy of ShareTarget(v8, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  return outlined destroy of ShareTarget(v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
}

uint64_t StartSharingFlow.shareTarget(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v2[20] = started;
  v4 = *(*(started - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing(0);
  v2[23] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](StartSharingFlow.shareTarget(_:), 0, 0);
}

uint64_t StartSharingFlow.shareTarget(_:)()
{
  v16 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = __swift_project_value_buffer(v1, static Logger.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v15);
    _os_log_impl(&dword_266B9E000, v2, v3, "%s: Informing user that screen sharing is starting...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D5ED340](v5, -1, -1);
    MEMORY[0x26D5ED340](v4, -1, -1);
  }

  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[19];
  *v6 = -110;
  v9 = &v6[*(v7 + 20)];
  static DialogPhase.confirmed.getter();
  v10 = __swift_project_boxed_opaque_existential_1((v8 + *(*v8 + 128)), *(v8 + *(*v8 + 128) + 24));
  v0[10] = v7;
  v0[11] = &protocol witness table for Responses.StartSharing.InterstitialStartingScreenSharing;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v6, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  v12 = *v10;
  v13 = swift_task_alloc();
  v0[26] = v13;
  *v13 = v0;
  v13[1] = StartSharingFlow.shareTarget(_:);

  return ResponseExecutor.execute(response:)((v0 + 2), (v0 + 7));
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = StartSharingFlow.shareTarget(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
    v4 = StartSharingFlow.shareTarget(_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = (*(v0 + 152) + *(**(v0 + 152) + 136));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D5BF40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *v5 = v0;
  v5[1] = StartSharingFlow.shareTarget(_:);

  return MEMORY[0x2821BB5D0](v0 + 16, v2, v3);
}

{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = StartSharingFlow.shareTarget(_:);
  }

  else
  {
    v3 = StartSharingFlow.shareTarget(_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v33 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[27];
  v2 = v0[25];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = &unk_266BE9000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v7 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v10 = v0[24];
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v32);
    *(v7 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v12;
    *v8 = v12;
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: Error producing or outputting InterstitialStartingScreenSharing dialog: %@", v7, 0x16u);
    outlined destroy of SharingResponse?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x26D5ED340](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D5ED340](v9, -1, -1);
    MEMORY[0x26D5ED340](v7, -1, -1);

    outlined destroy of ShareTarget(v10, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
    v6 = &unk_266BE9000;
  }

  else
  {
    v13 = v0[24];

    outlined destroy of ShareTarget(v13, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.default);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = v6[87];
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v32);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v32);
    _os_log_impl(&dword_266B9E000, v15, v16, "%s: Starting sharing target %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v18, -1, -1);
    MEMORY[0x26D5ED340](v17, -1, -1);
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(1, (v0[19] + *(*v0[19] + 120)));
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v32);
    _os_log_impl(&dword_266B9E000, v19, v20, "%s: Successfully shared target", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D5ED340](v22, -1, -1);
    MEMORY[0x26D5ED340](v21, -1, -1);
  }

  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[22];
  v27 = v0[19];
  v26 = v0[20];
  v28 = v0[18];
  swift_storeEnumTagMultiPayload();
  v29 = *(*v27 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v27 + v29, v24, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v25, v27 + v29);
  swift_endAccess();
  specialized SharingFlow.state.didset(v24);
  outlined destroy of ShareTarget(v24, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined destroy of ShareTarget(v25, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  static ExecuteResponse.ongoing(requireInput:)();

  v30 = v0[1];

  return v30();
}

{
  v1 = *(MEMORY[0x277D857E8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  v2[1] = StartSharingFlow.shareTarget(_:);

  return MEMORY[0x282200480](3000000000);
}

{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = StartSharingFlow.shareTarget(_:);
  }

  else
  {
    v3 = StartSharingFlow.shareTarget(_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v21 = v0;
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of ShareTarget(v1, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v20);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v20);
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: Starting sharing target %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v6, -1, -1);
    MEMORY[0x26D5ED340](v5, -1, -1);
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(1, (v0[19] + *(*v0[19] + 120)));
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v20);
    _os_log_impl(&dword_266B9E000, v7, v8, "%s: Successfully shared target", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D5ED340](v10, -1, -1);
    MEMORY[0x26D5ED340](v9, -1, -1);
  }

  v11 = v0[24];
  v12 = v0[21];
  v13 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[18];
  swift_storeEnumTagMultiPayload();
  v17 = *(*v15 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v15 + v17, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v13, v15 + v17);
  swift_endAccess();
  specialized SharingFlow.state.didset(v12);
  outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined destroy of ShareTarget(v13, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  static ExecuteResponse.ongoing(requireInput:)();

  v18 = v0[1];

  return v18();
}

{
  v33 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[29];
  v2 = v0[25];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = &unk_266BE9000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v7 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v10 = v0[24];
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v32);
    *(v7 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v12;
    *v8 = v12;
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: Error producing or outputting InterstitialStartingScreenSharing dialog: %@", v7, 0x16u);
    outlined destroy of SharingResponse?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x26D5ED340](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D5ED340](v9, -1, -1);
    MEMORY[0x26D5ED340](v7, -1, -1);

    outlined destroy of ShareTarget(v10, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
    v6 = &unk_266BE9000;
  }

  else
  {
    v13 = v0[24];

    outlined destroy of ShareTarget(v13, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.default);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = v6[87];
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v32);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v32);
    _os_log_impl(&dword_266B9E000, v15, v16, "%s: Starting sharing target %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v18, -1, -1);
    MEMORY[0x26D5ED340](v17, -1, -1);
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(1, (v0[19] + *(*v0[19] + 120)));
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v32);
    _os_log_impl(&dword_266B9E000, v19, v20, "%s: Successfully shared target", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D5ED340](v22, -1, -1);
    MEMORY[0x26D5ED340](v21, -1, -1);
  }

  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[22];
  v27 = v0[19];
  v26 = v0[20];
  v28 = v0[18];
  swift_storeEnumTagMultiPayload();
  v29 = *(*v27 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v27 + v29, v24, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v25, v27 + v29);
  swift_endAccess();
  specialized SharingFlow.state.didset(v24);
  outlined destroy of ShareTarget(v24, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined destroy of ShareTarget(v25, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  static ExecuteResponse.ongoing(requireInput:)();

  v30 = v0[1];

  return v30();
}

{
  v33 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[31];
  v2 = v0[25];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = &unk_266BE9000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v7 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v10 = v0[24];
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v32);
    *(v7 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v12;
    *v8 = v12;
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: Error producing or outputting InterstitialStartingScreenSharing dialog: %@", v7, 0x16u);
    outlined destroy of SharingResponse?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x26D5ED340](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D5ED340](v9, -1, -1);
    MEMORY[0x26D5ED340](v7, -1, -1);

    outlined destroy of ShareTarget(v10, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
    v6 = &unk_266BE9000;
  }

  else
  {
    v13 = v0[24];

    outlined destroy of ShareTarget(v13, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.default);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = v6[87];
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v32);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v32);
    _os_log_impl(&dword_266B9E000, v15, v16, "%s: Starting sharing target %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v18, -1, -1);
    MEMORY[0x26D5ED340](v17, -1, -1);
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(1, (v0[19] + *(*v0[19] + 120)));
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v32);
    _os_log_impl(&dword_266B9E000, v19, v20, "%s: Successfully shared target", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D5ED340](v22, -1, -1);
    MEMORY[0x26D5ED340](v21, -1, -1);
  }

  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[22];
  v27 = v0[19];
  v26 = v0[20];
  v28 = v0[18];
  swift_storeEnumTagMultiPayload();
  v29 = *(*v27 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v27 + v29, v24, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v25, v27 + v29);
  swift_endAccess();
  specialized SharingFlow.state.didset(v24);
  outlined destroy of ShareTarget(v24, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined destroy of ShareTarget(v25, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  static ExecuteResponse.ongoing(requireInput:)();

  v30 = v0[1];

  return v30();
}

uint64_t StartSharingFlow.makeResponseForStartSharingError(_:)(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      started = type metadata accessor for Responses.StartSharing.AlreadySharingTarget(0);
      v19 = started;
      v20 = &protocol witness table for Responses.StartSharing.AlreadySharingTarget;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      *boxed_opaque_existential_1 = 0x80;
      v8 = boxed_opaque_existential_1 + *(started + 20);
      static DialogPhase.completion.getter();
      goto LABEL_7;
    case 1:
      started = type metadata accessor for Responses.StartSharing.UnableToStartSharingTarget(0);
      v19 = started;
      v20 = &protocol witness table for Responses.StartSharing.UnableToStartSharingTarget;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      *boxed_opaque_existential_1 = -99;
      v7 = boxed_opaque_existential_1 + *(started + 20);
      static DialogPhase.error.getter();
LABEL_7:
      v9 = boxed_opaque_existential_1 + *(started + 24);
      *v9 = 1;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      break;
    case 2:
      v2 = type metadata accessor for Responses.StartSharing.SingleWindowSharingUnsupported(0);
      v19 = v2;
      v20 = &protocol witness table for Responses.StartSharing.SingleWindowSharingUnsupported;
      v3 = __swift_allocate_boxed_opaque_existential_1(v18);
      *v3 = -100;
      v4 = v3 + *(v2 + 20);
      static DialogPhase.completion.getter();
      break;
    default:
      v12 = type metadata accessor for Responses.StartSharing.AppNotInstalled(0);
      v19 = v12;
      v20 = &protocol witness table for Responses.StartSharing.AppNotInstalled;
      v13 = __swift_allocate_boxed_opaque_existential_1(v18);
      *v13 = -126;
      v14 = v12[5];

      static DialogPhase.completion.getter();
      v15 = (v13 + v12[6]);
      *v15 = a1;
      v15[1] = a2;
      v16 = v13 + v12[7];
      *v16 = 0;
      *(v16 + 1) = a1;
      *(v16 + 2) = a2;
      *(v16 + 3) = 0;

      break;
  }

  specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v18);
  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v41 = a2;
  v42 = a4;
  v8 = *v5;
  started = type metadata accessor for Responses.StartSharing.ShareRequestCancelled(0);
  v10 = *(*(started - 8) + 64);
  v11 = MEMORY[0x28223BE20](started);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = -101;
  v14 = &v13[*(v11 + 20)];
  static DialogPhase.canceled.getter();
  outlined init with copy of ResponseExecuting(a1, v49);
  *(&v47 + 1) = started;
  v48 = &protocol witness table for Responses.StartSharing.ShareRequestCancelled;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v13, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.ShareRequestCancelled);
  outlined init with copy of ResponseExecuting(v5 + *(*v5 + 128), v44);
  v16 = v45;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = type metadata accessor for ResponseExecutor();
  v43[3] = v23;
  v43[4] = &protocol witness table for ResponseExecutor;
  v43[0] = v22;
  type metadata accessor for NeedsShareTargetFlowStrategy();
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v43, v23);
  v26 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  *(v24 + 120) = v23;
  *(v24 + 128) = &protocol witness table for ResponseExecutor;
  *(v24 + 96) = v30;
  *(v24 + 136) = 0u;
  *(v24 + 152) = 0u;
  *(v24 + 168) = 0;
  outlined init with take of ConversationParticipant(v49, v24 + 16);
  v31 = v47;
  *(v24 + 56) = v46;
  *(v24 + 72) = v31;
  *(v24 + 88) = v48;
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  outlined init with copy of ResponseExecuting(v5 + *(*v5 + 136), v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal25PromptForValueFlowWrapperCyAA016NeedsShareTargetG8StrategyCGMd, &_s19SiriExpanseInternal25PromptForValueFlowWrapperCyAA016NeedsShareTargetG8StrategyCGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = v24;
  outlined init with copy of ResponseExecuting(v49, &v46);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy0A15ExpanseInternal13SharingIntent_pSgGMd, _s11SiriKitFlow014PromptForValueC5AsyncCy0A15ExpanseInternal13SharingIntent_pSgGMR);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy, type metadata accessor for NeedsShareTargetFlowStrategy);

  v36 = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  *(v32 + 24) = v36;
  *&v49[0] = v32;
  v37 = swift_allocObject();
  v38 = v41;
  v37[2] = v5;
  v37[3] = v38;
  v37[4] = a3;
  v37[5] = v8;
  lazy protocol witness table accessor for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>();

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  return outlined destroy of ShareTarget(v13, type metadata accessor for Responses.StartSharing.ShareRequestCancelled);
}

uint64_t closure #1 in StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{

  specialized PromptManaging.processPromptFlowExitValue<A>(_:onValueReceived:)(a1, a2, a2, a3, a4);
}

uint64_t StartSharingFlow.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.shareTargetResolver));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.sharer));
  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.sharePlayHelper));
}

uint64_t StartSharingFlow.__deallocating_deinit()
{
  v1 = v0[3];

  outlined destroy of ShareTarget(v0 + *(*v0 + 104), type metadata accessor for StartSharingFlow.StartSharingFlowState);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 112)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 120)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 128)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 136)));
  v2 = direct field offset for StartSharingFlow.shareTargetResolver;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v2));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.sharer));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.sharePlayHelper));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void type metadata completion function for StartSharingFlow.StartSharingFlowState()
{
  type metadata accessor for (needsValueCount: Int)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (ShareTarget, recipients: PermittedRecipients, needsValueCount: Int, isShareInCallRequest: Bool)(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for (requestedTarget: ShareTarget, resolvedTarget: ResolvedShareTarget, recipients: PermittedRecipients)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Error();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for (needsValueCount: Int)()
{
  result = lazy cache variable for type metadata for (needsValueCount: Int);
  if (!lazy cache variable for type metadata for (needsValueCount: Int))
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &lazy cache variable for type metadata for (needsValueCount: Int));
  }

  return result;
}

void type metadata accessor for (ShareTarget, recipients: PermittedRecipients, needsValueCount: Int, isShareInCallRequest: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ShareTarget, recipients: PermittedRecipients, needsValueCount: Int, isShareInCallRequest: Bool))
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for ShareTarget();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (ShareTarget, recipients: PermittedRecipients, needsValueCount: Int, isShareInCallRequest: Bool));
    }
  }
}

void type metadata accessor for (requestedTarget: ShareTarget, resolvedTarget: ResolvedShareTarget, recipients: PermittedRecipients)()
{
  if (!lazy cache variable for type metadata for (requestedTarget: ShareTarget, resolvedTarget: ResolvedShareTarget, recipients: PermittedRecipients))
  {
    type metadata accessor for ShareTarget();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (requestedTarget: ShareTarget, resolvedTarget: ResolvedShareTarget, recipients: PermittedRecipients));
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriExpanseInternal16StartSharingFlowC0deF5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for StartSharingFlow.StartSharingFlowError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StartSharingFlow.StartSharingFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for StartSharingFlow.StartSharingFlowError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for StartSharingFlow.StartSharingFlowState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined consume of StartSharingFlow.StartSharingFlowError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t outlined init with take of ShareTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareTarget();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ShareTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of StartSharingFlow.StartSharingFlowError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t outlined init with copy of StartSharingFlow.StartSharingFlowState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266BDF95C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266BDF9A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t lazy protocol witness table accessor for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>()
{
  result = lazy protocol witness table cache variable for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>;
  if (!lazy protocol witness table cache variable for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriExpanseInternal25PromptForValueFlowWrapperCyAA016NeedsShareTargetG8StrategyCGMd, &_s19SiriExpanseInternal25PromptForValueFlowWrapperCyAA016NeedsShareTargetG8StrategyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v9 = *(*(started - 8) + 64);
  v10 = MEMORY[0x28223BE20](started);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (v30 - v13);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.default);
  outlined init with copy of SharingIntent?(a1, v39);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v30[1] = a4;
    v31 = a3;
    v32 = started;
    v33 = v14;
    v34 = v12;
    v35 = a2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, &v36);
    *(v18 + 12) = 2080;
    outlined init with copy of SharingIntent?(v39, &v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    outlined destroy of SharingResponse?(v39, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v36);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_266B9E000, v16, v17, "%s: needs value flow succeeded with intent %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v19, -1, -1);
    MEMORY[0x26D5ED340](v18, -1, -1);

    v12 = v34;
    a2 = v35;
    v14 = v33;
    a3 = v31;
  }

  else
  {

    outlined destroy of SharingResponse?(v39, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  }

  outlined init with copy of SharingIntent?(a1, &v37);
  if (v38)
  {
    outlined init with take of ConversationParticipant(&v37, v39);
    a3(v39);
    return __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  else
  {
    outlined destroy of SharingResponse?(&v37, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39[0] = v28;
      *v27 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, unk_2800C0EB0, v39);
      _os_log_impl(&dword_266B9E000, v25, v26, "%s: Encountered a nil intent - this should never happen", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D5ED340](v28, -1, -1);
      MEMORY[0x26D5ED340](v27, -1, -1);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    *v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v29 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v29, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v14, a2 + v29);
    swift_endAccess();
    specialized SharingFlow.state.didset(v12);
    outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    return outlined destroy of ShareTarget(v14, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  }
}

uint64_t outlined init with copy of SharingIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of StartSharingTargetResolution(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t outlined consume of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return outlined consume of StartSharingTargetResolution(result, a2, a3, BYTE1(a3));
  }

  return result;
}

uint64_t outlined consume of StartSharingTargetResolution(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t outlined copy of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return outlined copy of StartSharingTargetResolution(result, a2, a3, BYTE1(a3));
  }

  return result;
}

uint64_t sub_266BE0030()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}