id BaseIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseIntentHandler.__deallocating_deinit()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BaseIntentHandler();
  return objc_msgSendSuper2(&v5, sel_dealloc, v2, v3, v4);
}

void @objc BaseIntentHandler.__ivar_destroyer(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + direct field offset for BaseIntentHandler.contactService));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + direct field offset for BaseIntentHandler.contactResolver));
  v2 = *(a1 + direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard);

  outlined consume of CNContact??(v2);
}

void outlined consume of CNContact??(id a1)
{
  if (a1 != 1)
  {
  }
}

id specialized BaseIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return specialized BaseIntentHandler.init(contactService:contactResolver:)(a1, a2, a3, a4, a5, a6, a7, &_s19SiriContactsIntents17BaseIntentHandlerCyAA019GetContactAttributeE0CAA0ghiE8ResponseCAA0ghiA23MatchesResolutionResultCGMd, &_s19SiriContactsIntents17BaseIntentHandlerCyAA019GetContactAttributeE0CAA0ghiE8ResponseCAA0ghiA23MatchesResolutionResultCGMR);
}

{
  return specialized BaseIntentHandler.init(contactService:contactResolver:)(a1, a2, a3, a4, a5, a6, a7, &_s19SiriContactsIntents17BaseIntentHandlerCyAA010GetContactE0CAA0ghE8ResponseCAA0ghA23MatchesResolutionResultCGMd, &_s19SiriContactsIntents17BaseIntentHandlerCyAA010GetContactE0CAA0ghE8ResponseCAA0ghA23MatchesResolutionResultCGMR);
}

{
  return specialized BaseIntentHandler.init(contactService:contactResolver:)(a1, a2, a3, a4, a5, a6, a7, &_s19SiriContactsIntents17BaseIntentHandlerCyAA022ModifyContactAttributeE0CAA0ghiE8ResponseCAA0ghi7RelatedA23MatchesResolutionResultCGMd, &_s19SiriContactsIntents17BaseIntentHandlerCyAA022ModifyContactAttributeE0CAA0ghiE8ResponseCAA0ghi7RelatedA23MatchesResolutionResultCGMR);
}

id specialized BaseIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v28[3] = a4;
  v28[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v27[3] = a5;
  v27[4] = a7;
  v17 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a5 - 8) + 32))(v17, a2, a5);
  *&a3[direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard] = 1;
  outlined init with copy of DeviceState(v28, &a3[direct field offset for BaseIntentHandler.contactService]);
  outlined init with copy of DeviceState(v27, &a3[direct field offset for BaseIntentHandler.contactResolver]);
  a3[direct field offset for BaseIntentHandler.passedPrereqs] = 0;
  v26.receiver = a3;
  v26.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v18 = objc_msgSendSuper2(&v26, sel_init);
  v19 = one-time initialization token for siriContacts;
  v20 = v18;
  if (v19 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriContacts);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26686A000, v22, v23, "Constructed ContactsIntentHandler.", v24, 2u);
    MEMORY[0x26D5E3300](v24, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  return v20;
}

uint64_t getEnumTagSinglePayload for SiriKitContactUnsupportedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriKitContactUnsupportedReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriKitContactUnsupportedReason and conformance SiriKitContactUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type SiriKitContactUnsupportedReason and conformance SiriKitContactUnsupportedReason;
  if (!lazy protocol witness table cache variable for type SiriKitContactUnsupportedReason and conformance SiriKitContactUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitContactUnsupportedReason and conformance SiriKitContactUnsupportedReason);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchViews(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for WatchViews(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WatchViews.buildGetSnippet(contact:localeString:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for Signpost.OpenSignpost();
  v5 = OUTLINED_FUNCTION_10_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v39 = v10;
  v11 = v10 + *(v4 + 20);
  *v11 = "BuildGetSnippetWatchOS";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v42 = WatchViews.buildContactHeader(contact:)(a1);
  v12 = [a1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = Array<A>.toContactAttributes.getter(v13);

  v15 = CNContact.formattedFullName.getter();
  v17 = v16;
  v18 = [a1 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = WatchViews.buildPhoneAttributeSnippet(phoneNumbers:formattedFullName:localeString:contactIdentifier:)(v14, v15, v17, a2, a3, v19, v21);

  if (v22)
  {
    result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v22);
    if (!result)
    {
      __break(1u);
      goto LABEL_20;
    }

    specialized Array.append<A>(contentsOf:)(result);
  }

  v24 = [a1 emailAddresses];
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = Array<A>.toContactAttributes.getter(v25);

  v27 = CNContact.formattedFullName.getter();
  v29 = WatchViews.buildEmailAttributeSnippet(emailAddresses:formattedFullName:localeString:)(v26, v27, v28, a2, a3);

  if (!v29)
  {
    goto LABEL_9;
  }

  result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v29);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  specialized Array.append<A>(contentsOf:)(result);

LABEL_9:
  v30 = [a1 postalAddresses];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = WatchViews.buildAddressAttributeSnippet(postalAddresses:contact:localeString:)(v31, a1, a2, a3);

  if (v32)
  {
    result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v32);
    if (result)
    {
      specialized Array.append<A>(contentsOf:)(result);

      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_12:
  v33 = WatchViews.buildContactRelationsSnippet(contact:)(a1);
  if (v33)
  {
    v34 = outlined bridged method (ob) of @objc SASTItemGroup.templateItems.getter(v33);
    if (v34)
    {
      specialized Array.append<A>(contentsOf:)(v34);
    }
  }

  v35 = WatchViews.buildBirthdayAttributeSnippet(contact:)();
  if (!v35)
  {
    goto LABEL_18;
  }

  v36 = v35;
  result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v35);
  if (result)
  {
    specialized Array.append<A>(contentsOf:)(result);

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v37 = OUTLINED_FUNCTION_4_21();
    *(v37 + 16) = xmmword_266966A40;
    v38 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v42, v38, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
    *(v37 + 32) = v38;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_18_2();
    outlined destroy of Signpost.OpenSignpost(v39);
    return v37;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t WatchViews.buildContactHeader(contact:)(void *a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v6 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = &v5[*(v2 + 20)];
  *v7 = "BuildContactHeaderWatchOS";
  *(v7 + 1) = 25;
  v7[16] = 2;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
  v8 = CNContact.formattedFullName.getter();
  v10 = SAUIDecoratedText.init(text:regions:)(v8, v9, 0);
  result = outlined bridged method (pb) of @objc SAUIDecoratedText.text.getter(v10);
  if (v12)
  {
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTHeaderItem, 0x277D47778);
    v13 = v10;
    v14 = SASTHeaderItem.init(header:text:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_266966A40;
    *(v15 + 32) = v14;
    v37 = v15;
    v36 = v14;
    v16 = [a1 nickname];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTLineDetailItem, 0x277D47788);
      v21 = [a1 nickname];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = SAUIDecoratedText.init(text:regions:)(v22, v24, 0);
      SASTLineDetailItem.init(title:)(v25);
      MEMORY[0x26D5E25E0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v37;
    }

    v26 = [a1 organizationName];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTLineDetailItem, 0x277D47788);
      v31 = [a1 organizationName];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = SAUIDecoratedText.init(text:regions:)(v32, v34, 0);
      SASTLineDetailItem.init(title:)(v35);
      MEMORY[0x26D5E25E0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v37;
    }

    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v5);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WatchViews.buildPhoneAttributeSnippet(phoneNumbers:formattedFullName:localeString:contactIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v135 = a7;
  v134 = a6;
  v164 = a4;
  v165 = a2;
  v166 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v149 = v128 - v11;
  v145 = type metadata accessor for AceOutput();
  *&v171 = *(v145 - 8);
  v12 = *(v171 + 64);
  MEMORY[0x28223BE20](v145);
  v161 = v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for BehaviorAfterSpeaking();
  v170 = *(v148 - 8);
  v14 = *(v170 + 8);
  MEMORY[0x28223BE20](v148);
  v147 = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for TemplatingResult();
  v16 = *(v144 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v144);
  v169 = v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v153 = v128 - v21;
  v167 = type metadata accessor for TemplatingText();
  v22 = *(*(v167 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v167);
  v146 = v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v152 = v128 - v25;
  v133 = type metadata accessor for CharacterSet();
  v26 = *(v133 - 8);
  v27 = *(v26 + 8);
  MEMORY[0x28223BE20](v133);
  v132 = v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v29 = *(*(v163 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v163);
  v151 = v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v150 = v128 - v32;
  v33 = type metadata accessor for Signpost.OpenSignpost();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_50:
    swift_once();
  }

  v37 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v128[1] = v37;
  os_signpost(_:dso:log:name:signpostID:)();
  v38 = *(v33 + 20);
  v129 = v36;
  v39 = (v36 + v38);
  *v39 = "BuildPhoneAttributeSnippetWatchOS";
  *(v39 + 1) = 33;
  v39[16] = 2;
  v40 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  v41 = MEMORY[0x277D84F90];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(MEMORY[0x277D84F90], v40, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  v42 = specialized Array._getCount()(a1);
  v33 = v167;
  v155 = v42;
  if (!v42)
  {
LABEL_47:
    static os_signpost_type_t.end.getter();
    v127 = v129;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v127);
    return v40;
  }

  v36 = 0;
  v154 = a1 & 0xC000000000000001;
  v130 = a1 & 0xFFFFFFFFFFFFFF8;
  v131 = (v26 + 8);
  v141 = *MEMORY[0x277D5BF60];
  v140 = (v170 + 104);
  v137 = (v171 + 8);
  v136 = v16 + 1;
  v143 = xmmword_266966ED0;
  v171 = xmmword_266966A40;
  v139 = a5;
  v138 = a1;
  v142 = v40;
  while (1)
  {
    if (v154)
    {
      v43 = MEMORY[0x26D5E29D0](v36, a1);
    }

    else
    {
      if (v36 >= *(v130 + 16))
      {
        goto LABEL_49;
      }

      v43 = *(a1 + 8 * v36 + 32);
    }

    v44 = v43;
    v26 = (v36 + 1);
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v45 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v43);
    if (v46)
    {
      break;
    }

LABEL_44:
    ++v36;
    if (v26 == v155)
    {
      goto LABEL_47;
    }
  }

  v159 = v45;
  v160 = v46;
  v157 = (v36 + 1);
  v158 = v36;
  v174 = v41;
  v47 = *v162;
  v48 = v150;
  ContactsLabelCATs.call()();
  v49 = Result<>.firstPrint.getter();
  v51 = v50;
  outlined destroy of Result<TemplatingResult, Error>(v48, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v170 = v44;
  if (v51)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.siriContacts);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26686A000, v53, v54, "[WatchViews] Building Call button for phone attribute view", v55, 2u);
      MEMORY[0x26D5E3300](v55, -1, -1);
    }

    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
    v56 = SAUIDecoratedText.init(text:regions:)(v49, v51, 0);
    v57 = static ContactsDirectInvocations.startCall(fullName:phoneHandle:contactIdentifier:)(v165, v166, v44, v134, v135);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v58 = swift_allocObject();
    *(v58 + 16) = v171;
    *(v58 + 32) = v57;
    v59 = objc_allocWithZone(MEMORY[0x277D47770]);
    v60 = v57;
    v61 = [v59 init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v58, v61, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTButtonItem, 0x277D47760);
    v62 = v61;
    v63 = v56;
    SASTButtonItem.init(action:centered:decoratedLabel:)(v62, 0, v63);
    MEMORY[0x26D5E25E0]();
    if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v64 = v174;

    v33 = v167;
    v44 = v170;
  }

  else
  {
    v64 = v41;
  }

  v65 = v151;
  ContactsLabelCATs.message()();
  v66 = Result<>.firstPrint.getter();
  v68 = v67;
  outlined destroy of Result<TemplatingResult, Error>(v65, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (v68)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.siriContacts);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_26686A000, v70, v71, "[WatchViews] Building Message button for phone attribute view", v72, 2u);
      MEMORY[0x26D5E3300](v72, -1, -1);
    }

    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
    v73 = SAUIDecoratedText.init(text:regions:)(v66, v68, 0);
    v74 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v44);
    v76 = static ContactsDirectInvocations.sendMessage(contactName:contactPhoneNumber:)(v165, v166, v74, v75);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v77 = swift_allocObject();
    *(v77 + 16) = v171;
    *(v77 + 32) = v76;
    v78 = objc_allocWithZone(MEMORY[0x277D47770]);
    v79 = v76;
    v80 = [v78 init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v77, v80, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTButtonItem, 0x277D47760);
    v81 = v80;
    v82 = v73;
    SASTButtonItem.init(action:centered:decoratedLabel:)(v81, 0, v82);
    MEMORY[0x26D5E25E0]();
    if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v64 = v174;

    v33 = v167;
    v44 = v170;
  }

  v168 = v64;
  v83 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v44);
  v85 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v83, v84, v164, a5, 2, v47);
  v87 = v86;

  v88 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v88 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v88)
  {
    v89 = v132;
    CharacterSet.init(charactersIn:)();
    *&v172[0] = v85;
    *(&v172[0] + 1) = v87;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    if (v90)
    {
      v91 = String.formattedForCNLabelConversion.getter(v85, v87);
      *&v172[0] = 1008804959;
      *(&v172[0] + 1) = 0xE400000000000000;
      MEMORY[0x26D5E2570](v91);

      MEMORY[0x26D5E2570](1596203326, 0xE400000000000000);

      v92 = *(&v172[0] + 1);
      v85 = *&v172[0];
      (*v131)(v89, v133);

      v87 = v92;
    }

    else
    {
      (*v131)(v89, v133);
    }
  }

  *&v172[0] = v85;
  *(&v172[0] + 1) = v87;
  lazy protocol witness table accessor for type String and conformance String();
  v93 = StringProtocol.capitalized.getter();
  v95 = v94;

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
  v156 = v95;
  v96 = MEMORY[0x26D5E2470](v93, v95);
  static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  v97 = String.sanitizeCNLabel.getter();
  v99 = v98;

  v100 = SAUIDecoratedText.init(text:regions:)(v97, v99, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
  v101 = *(type metadata accessor for TemplatingSection() - 8);
  v102 = *(v101 + 72);
  v103 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  *(swift_allocObject() + 16) = v143;
  static String.EMPTY.getter();

  TemplatingText.init(text:speakableTextOverride:)();
  v104 = v153;
  __swift_storeEnumTagSinglePayload(v153, 1, 1, v33);
  TemplatingSection.init(id:content:caption:spokenOnly:)();
  static String.EMPTY.getter();
  result = outlined bridged method (pb) of @objc SAUIDecoratedText.text.getter(v100);
  if (!v106)
  {
    goto LABEL_52;
  }

  TemplatingText.init(text:speakableTextOverride:)();
  __swift_storeEnumTagSinglePayload(v104, 1, 1, v33);
  TemplatingSection.init(id:content:caption:spokenOnly:)();
  static String.EMPTY.getter();
  (*v140)(v147, v141, v148);

  TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v107 = swift_allocObject();
  *(v107 + 16) = v171;
  v108 = v168;
  if (v168 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
    v109 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v109 = v108;
  }

  v110 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v109, v110, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  *(v107 + 32) = v110;
  v111 = type metadata accessor for NLContextUpdate();
  v112 = v149;
  __swift_storeEnumTagSinglePayload(v149, 1, 1, v111);
  v173 = 0;
  memset(v172, 0, sizeof(v172));
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Result<TemplatingResult, Error>(v172, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Result<TemplatingResult, Error>(v112, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAStartLocalRequest, 0x277D47940);
  v113 = AceOutput.commands.getter();
  v114 = specialized _arrayConditionalCast<A, B>(_:)(v113);

  v115 = SAStartLocalRequest.init(clientBoundCommands:)(v114);
  v116 = swift_allocObject();
  *(v116 + 16) = v171;
  *(v116 + 32) = v115;
  v117 = objc_allocWithZone(MEMORY[0x277D47770]);
  v118 = v115;
  v119 = [v117 init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v116, v119, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTColumnDataListItem, 0x277D47768);
  v120 = swift_allocObject();
  *(v120 + 16) = v171;
  v121 = v100;
  v122 = v160;

  *(v120 + 32) = SAUIDecoratedText.init(text:regions:)(v159, v122, 0);
  v16 = v119;
  v123 = SASTColumnDataListItem.init(title:decoratedRows:action:)(v121, v120, v119);
  v40 = v142;
  result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v142);
  *&v172[0] = result;
  if (result)
  {

    v124 = v123;
    MEMORY[0x26D5E25E0]();
    v125 = v170;
    if (*((*&v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v172[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    a1 = v138;
    if (*&v172[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
      v126.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v126.super.isa = 0;
    }

    v33 = v167;
    [v40 setTemplateItems_];

    (*v137)(v161, v145);
    (*v136)(v169, v144);
    a5 = v139;
    v41 = MEMORY[0x277D84F90];
    v36 = v158;
    v26 = v157;
    goto LABEL_44;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t WatchViews.buildEmailAttributeSnippet(emailAddresses:formattedFullName:localeString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v62 = a4;
  v58 = type metadata accessor for CharacterSet();
  v6 = *(v58 - 8);
  v7 = *(v6 + 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = type metadata accessor for Signpost.OpenSignpost();
  v11 = *(*(isa - 1) + 64);
  MEMORY[0x28223BE20](isa);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_36:
    swift_once();
  }

  v14 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v54 = v14;
  os_signpost(_:dso:log:name:signpostID:)();
  v15 = isa[5];
  v55 = v13;
  v16 = (v13 + v15);
  *v16 = "BuildEmailAttributeSnippetWatchOS";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v17 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(MEMORY[0x277D84F90], v17, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  v66 = specialized Array._getCount()(a1);
  if (!v66)
  {
LABEL_33:
    static os_signpost_type_t.end.getter();
    v53 = v55;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v53);
    return v17;
  }

  v13 = 0;
  v64 = a1 & 0xC000000000000001;
  v56 = a1 & 0xFFFFFFFFFFFFFF8;
  v57 = (v6 + 8);
  v65 = xmmword_266966A40;
  v59 = v9;
  v60 = a1;
  v61 = v17;
  while (1)
  {
    if (v64)
    {
      v18 = MEMORY[0x26D5E29D0](v13, a1);
    }

    else
    {
      if (v13 >= *(v56 + 16))
      {
        goto LABEL_35;
      }

      v18 = *(a1 + 8 * v13 + 32);
    }

    isa = v18;
    v6 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v19 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v18);
    if (v20)
    {
      break;
    }

LABEL_32:
    ++v13;
    if (v6 == v66)
    {
      goto LABEL_33;
    }
  }

  v21 = v19;
  v22 = v20;
  v68 = isa;
  v23 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(isa);
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    CharacterSet.init(charactersIn:)();
    v69 = v25;
    v70 = v26;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    if (v28)
    {
      v29 = String.formattedForCNLabelConversion.getter(v25, v26);
      v69 = 1008804959;
      v70 = 0xE400000000000000;
      MEMORY[0x26D5E2570](v29);

      MEMORY[0x26D5E2570](1596203326, 0xE400000000000000);

      v25 = v69;
      v30 = v70;
      (*v57)(v9, v58);

      v26 = v30;
    }

    else
    {
      (*v57)(v9, v58);
    }
  }

  v69 = v25;
  v70 = v26;
  lazy protocol witness table accessor for type String and conformance String();
  v31 = StringProtocol.capitalized.getter();
  v33 = v32;

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
  v34 = MEMORY[0x26D5E2470](v31, v33);
  static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  v35 = String.sanitizeCNLabel.getter();
  v37 = v36;

  v38 = SAUIDecoratedText.init(text:regions:)(v35, v37, 0);
  v69 = v21;
  v70 = v22;

  v39 = String.init<A>(_:)();
  v41 = SAUIDecoratedText.init(text:regions:)(v39, v40, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTColumnDataListItem, 0x277D47768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v42 = swift_allocObject();
  *(v42 + 16) = v65;
  *(v42 + 32) = v41;
  v43 = v38;
  v67 = v41;
  v44 = SASTColumnDataListItem.init(title:decoratedRows:action:)(v43, v42, 0);
  AppUtil.buildPunchoutFor(emailAddress:)();
  if (v45)
  {
    v46 = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = v65;
    *(v47 + 32) = v46;
    v48 = objc_allocWithZone(MEMORY[0x277D47770]);
    v49 = v46;
    v50 = [v48 init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v47, v50, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
    [v44 setAction_];
  }

  v17 = v61;
  result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v61);
  v69 = result;
  if (result)
  {

    v52 = v44;
    MEMORY[0x26D5E25E0]();
    v9 = v59;
    if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v69)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }

    [v17 setTemplateItems_];

    a1 = v60;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t WatchViews.buildAddressAttributeSnippet(postalAddresses:contact:localeString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a2;
  v62 = a3;
  v8 = type metadata accessor for Signpost.OpenSignpost();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_26:
    swift_once();
  }

  v12 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v53 = v12;
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = v8[5];
  v54 = v11;
  v14 = &v11[v13];
  *v14 = "BuildAddressAttributeSnippetWatchOS";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v15 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(MEMORY[0x277D84F90], v15, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  v60 = specialized Array._getCount()(a1);
  if (v60)
  {
    v57 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
    v56 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTColumnDataListItem, 0x277D47768);
    v59 = a1 & 0xC000000000000001;
    v16 = 4;
    v63 = xmmword_266966A40;
    v58 = v15;
    v55 = a1;
    while (1)
    {
      v17 = v59;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v16 - 4, v59 == 0, a1);
      if (v17)
      {
        v18 = MEMORY[0x26D5E29D0](v16 - 4, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v16);
      }

      v8 = v18;
      if (__OFADD__(v16 - 4, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      v66 = v16 - 3;
      v19 = [v18 label];
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = static String.EMPTY.getter();
        v23 = v24;
      }

      v25 = MEMORY[0x26D5E2470](v21, v23);

      v26 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      v28 = v27;

      v29 = SAUIDecoratedText.init(text:regions:)(v26, v28, 0);
      v30 = CNLabeledValue<>.formattedString.getter();
      v32 = SAUIDecoratedText.init(text:regions:)(v30, v31, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v33 = swift_allocObject();
      *(v33 + 16) = v63;
      *(v33 + 32) = v32;
      v34 = v29;
      v64 = v32;
      v65 = v34;
      v35 = SASTColumnDataListItem.init(title:decoratedRows:action:)(v34, v33, 0);
      AppUtil.buildPunchoutFor(labeledAddress:contact:)();
      if (v36)
      {
        v37 = v36;
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Logger.siriContacts);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = a4;
          v42 = v5;
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_26686A000, v39, v40, "#buildAddressAttributeSnippet Built action to launch Maps with address", v43, 2u);
          v44 = v43;
          v5 = v42;
          a4 = v41;
          MEMORY[0x26D5E3300](v44, -1, -1);
        }

        v45 = swift_allocObject();
        *(v45 + 16) = v63;
        *(v45 + 32) = v37;
        v46 = objc_allocWithZone(MEMORY[0x277D47770]);
        v47 = v37;
        v48 = [v46 init];
        outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v45, v48, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
        [v35 setAction_];

        a1 = v55;
      }

      v15 = v58;
      result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v58);
      v67 = result;
      if (!result)
      {
        break;
      }

      v50 = v35;
      MEMORY[0x26D5E25E0]();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = v67;
      if (v67)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
        v51.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v51.super.isa = 0;
      }

      [v15 setTemplateItems_];

      ++v16;
      if (v66 == v60)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    static os_signpost_type_t.end.getter();
    v52 = v54;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v52);
    return v15;
  }

  return result;
}

uint64_t WatchViews.buildContactRelationsSnippet(contact:)(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = &v66 - v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v5 = OUTLINED_FUNCTION_10_1(v74);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v73 = &v66 - v8;
  v9 = type metadata accessor for Signpost.OpenSignpost();
  v10 = OUTLINED_FUNCTION_10_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v15 = (v14 - v13);
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_30:
    OUTLINED_FUNCTION_30_2();
  }

  v16 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v17 = &v15[v9[5]];
  *v17 = "BuildContactRelationsSnippetWatchOS";
  *(v17 + 1) = 35;
  v17[16] = 2;
  a1 = [a1 contactRelations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = specialized Array._getCount()(v18);
  if (v82)
  {
    v66 = v16;
    v67 = v15;
    v19 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(MEMORY[0x277D84F90], v19, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
    v20 = 0;
    v81 = v18 & 0xC000000000000001;
    v21 = *MEMORY[0x277D487C0];
    v69 = v18 & 0xFFFFFFFFFFFFFF8;
    v70 = v21;
    *&v22 = 136315138;
    v68 = v22;
    v83 = xmmword_266966A40;
    v71 = v19;
    v72 = v18;
    while (1)
    {
      if (v81)
      {
        v23 = MEMORY[0x26D5E29D0](v20, v18);
      }

      else
      {
        if (v20 >= *(v69 + 16))
        {
          goto LABEL_29;
        }

        v23 = *(v18 + 8 * v20 + 32);
      }

      v24 = v23;
      a1 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v25 = [v23 label];
      if (v25)
      {
        v26 = v25;
        v27 = v19;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = *v76;

        static Dictionary<>.nlSemantic(forCNLabel:)(v28, v30);

        v15 = v75;
        SpeakableString.init(print:speak:)();
        v32 = type metadata accessor for SpeakableString();
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v32);
        v33 = v73;
        ContactsLabelCATs.relationship(relationship:)(v15);
        outlined destroy of Result<TemplatingResult, Error>(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        v9 = v33;
        v34 = Result<>.firstPrint.getter();
        v36 = v35;
        outlined destroy of Result<TemplatingResult, Error>(v33, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
        if (v36)
        {
          v78 = v30;
          if (one-time initialization token for siriContacts != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          __swift_project_value_buffer(v37, static Logger.siriContacts);

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.debug.getter();

          v40 = os_log_type_enabled(v38, v39);
          v79 = (v20 + 1);
          if (v40)
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v84 = v42;
            *v41 = v68;
            *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v84);
            _os_log_impl(&dword_26686A000, v38, v39, "[WatchViews] Building snippet for relationship label: %s", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v42);
            MEMORY[0x26D5E3300](v42, -1, -1);
            MEMORY[0x26D5E3300](v41, -1, -1);
          }

          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SATextDecorationRegion, 0x277D479C8);
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
          isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
          String.count.getter();
          v44 = Int._bridgeToObjectiveC()().super.super.isa;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = SATextDecorationRegion.init(start:length:property:)(isa, v44, v45, v46);
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v48 = OUTLINED_FUNCTION_4_21();
          *(v48 + 16) = v83;
          *(v48 + 32) = v47;

          v77 = v47;
          v80 = SAUIDecoratedText.init(text:regions:)(v34, v36, v48);
          v49 = OUTLINED_FUNCTION_4_21();
          *(v49 + 16) = v83;
          v50 = [v24 value];
          v51 = [v50 name];

          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          *(v49 + 32) = SAUIDecoratedText.init(text:regions:)(v52, v54, 0);
          v55 = [v24 value];
          v56 = [v55 name];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = static ContactsDirectInvocations.getContact(contactName:)();

          v58 = OUTLINED_FUNCTION_4_21();
          *(v58 + 16) = v83;
          *(v58 + 32) = v57;
          v59 = objc_allocWithZone(MEMORY[0x277D47770]);
          v60 = v57;
          v61 = [v59 init];
          outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v58, v61, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTColumnDataListItem, 0x277D47768);
          v15 = v80;

          v62 = v61;
          v63 = SASTColumnDataListItem.init(title:decoratedRows:action:)(v15, v49, v61);
          v19 = v71;
          result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v71);
          v84 = result;
          if (!result)
          {
            __break(1u);
            return result;
          }

          v65 = v63;
          MEMORY[0x26D5E25E0]();
          if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v84)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
            v9 = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v9 = 0;
          }

          [v19 setTemplateItems_];

          v18 = v72;
          a1 = v79;
        }

        else
        {

          v19 = v27;
          v18 = v72;
        }
      }

      else
      {
      }

      ++v20;
      if (a1 == v82)
      {

        v15 = v67;
        goto LABEL_27;
      }
    }
  }

  v19 = 0;
LABEL_27:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v15);
  return v19;
}

uint64_t WatchViews.buildBirthdayAttributeSnippet(contact:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Signpost.OpenSignpost();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v12 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = &v11[*(v8 + 20)];
  *v13 = "BuildBirthdayAttributeSnippetWatchOS";
  *(v13 + 1) = 36;
  v13[16] = 2;
  CNContact.timezonedBirthdate.getter(v7);
  v14 = type metadata accessor for Date();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v14);
  outlined destroy of Result<TemplatingResult, Error>(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (EnumTagSinglePayload == 1 || (v16 = *v39, ContactsLabelCATs.birthday()(), v17 = Result<>.firstPrint.getter(), v19 = v18, outlined destroy of Result<TemplatingResult, Error>(v3, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR), !v19))
  {
    v38 = 0;
    goto LABEL_8;
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);

  v20 = SAUIDecoratedText.init(text:regions:)(v17, v19, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v21.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  result = outlined bridged method (pb) of @objc SAUIDecoratedText.text.getter(v20);
  if (v23)
  {

    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SATextDecorationRegion, 0x277D479C8);
    String.count.getter();

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v25 = *MEMORY[0x277D487C0];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = SATextDecorationRegion.init(start:length:property:)(v21.super.super.isa, isa, v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v29 = swift_allocObject();
    v39 = xmmword_266966A40;
    *(v29 + 16) = xmmword_266966A40;
    *(v29 + 32) = v28;
    v30 = v28;
    outlined bridged method (mbnn) of @objc SAUIDecoratedText.regions.setter(v29, v20);
    v31 = CNContact.formattedBirthdateString.getter();
    v33 = SAUIDecoratedText.init(text:regions:)(v31, v32, 0);
    v34 = swift_allocObject();
    *(v34 + 16) = v39;
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTPropertyListItem, 0x277D47790);
    v35 = swift_allocObject();
    *(v35 + 16) = v39;
    *(v35 + 32) = v33;
    v36 = v20;
    v37 = v33;
    *(v34 + 32) = SASTPropertyListItem.init(decoratedTitle:decoratedValues:)(v36, v35);
    v38 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v34, v38, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);

LABEL_8:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v11);
    return v38;
  }

  __break(1u);
  return result;
}

uint64_t WatchViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v8 = type metadata accessor for Signpost.OpenSignpost();
  v9 = OUTLINED_FUNCTION_10_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v15 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v16 = v14 + *(v8 + 20);
  *v16 = "BuildGetAttributeSnippetWatchOS";
  *(v16 + 8) = 31;
  *(v16 + 16) = 2;
  switch([a3 contactAttributeType])
  {
    case 1uLL:
      if (!a1 || !specialized Array._getCount()(a1))
      {
        goto LABEL_15;
      }

      v19 = CNContact.formattedFullName.getter();
      v17 = WatchViews.buildEmailAttributeSnippet(emailAddresses:formattedFullName:localeString:)(a1, v19, v20, a4, a5);
      goto LABEL_14;
    case 2uLL:
      if (!a1 || !specialized Array._getCount()(a1))
      {
        goto LABEL_15;
      }

      v21 = CNContact.formattedFullName.getter();
      v23 = v22;
      v24 = [a2 identifier];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v17 = WatchViews.buildPhoneAttributeSnippet(phoneNumbers:formattedFullName:localeString:contactIdentifier:)(a1, v21, v23, a4, a5, v25, v27);

      goto LABEL_14;
    case 3uLL:
      if (!a1 || !specialized Array._getCount()(a1))
      {
        goto LABEL_15;
      }

      Array<A>.toCNPostalAddresses.getter(a1);
      v17 = WatchViews.buildAddressAttributeSnippet(postalAddresses:contact:localeString:)(v18, a2, a4, a5);
LABEL_14:

      break;
    case 4uLL:
    case 5uLL:
      v17 = WatchViews.buildBirthdayAttributeSnippet(contact:)();
      break;
    default:
LABEL_15:
      v17 = 0;
      break;
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2();
  outlined destroy of Signpost.OpenSignpost(v14);
  return v17;
}

id specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  specialized Array._getCount()(a1);
  specialized ContiguousArray.reserveCapacity(_:)();
  result = specialized Array._getCount()(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v7;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D5E29D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (!swift_dynamicCastObjCProtocolConditional())
    {

      return 0;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v6 = *(v7 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a5];
}

uint64_t outlined bridged method (pb) of @objc SAUIDecoratedText.text.getter(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(void *a1)
{
  v1 = [a1 templateItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SAUIDecoratedText.regions.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SATextDecorationRegion, 0x277D479C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setRegions_];
}

uint64_t outlined bridged method (ob) of @objc SASTItemGroup.templateItems.getter(void *a1)
{
  v2 = [a1 templateItems];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of Result<TemplatingResult, Error>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return swift_allocObject();
}

uint64_t ContactNLv3Intent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266969B60;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  v5 = static ContactNLv3Intent.personNode;
  v6 = type metadata accessor for NonTerminalOntologyNode();
  v7 = MEMORY[0x277D5E210];
  *(v4 + 56) = v6;
  *(v4 + 64) = v7;
  *(v4 + 32) = v5;
  v8 = one-time initialization token for contactId;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static ContactNLv3Intent.contactId;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v4 + 96) = v10;
  OUTLINED_FUNCTION_1_28();
  v12 = lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(v11, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v4 + 104) = v12;
  *(v4 + 72) = v9;
  v13 = one-time initialization token for contactType;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v14 = static ContactNLv3Intent.contactType;
  *(v4 + 136) = v10;
  *(v4 + 144) = v12;
  *(v4 + 112) = v14;
  v15 = one-time initialization token for contactReference;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v16 = static ContactNLv3Intent.contactReference;
  v17 = OUTLINED_FUNCTION_47();
  *(v4 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 184) = OUTLINED_FUNCTION_55_4(v19);
  *(v4 + 152) = v16;
  v20 = one-time initialization token for contactAttributes;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_8_11();
  }

  v21 = static ContactNLv3Intent.contactAttributes;
  v22 = OUTLINED_FUNCTION_47();
  *(v4 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 224) = OUTLINED_FUNCTION_55_4(v24);
  *(v4 + 192) = v21;
  v25 = one-time initialization token for contactVerb;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_3_10();
  }

  v26 = static ContactNLv3Intent.contactVerb;
  v27 = OUTLINED_FUNCTION_47();
  *(v4 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 264) = OUTLINED_FUNCTION_55_4(v29);
  *(v4 + 232) = v26;
  v30 = one-time initialization token for contactNoun;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_35_6();
  }

  v31 = static ContactNLv3Intent.contactNoun;
  v32 = OUTLINED_FUNCTION_47();
  *(v4 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 304) = OUTLINED_FUNCTION_55_4(v34);
  *(v4 + 272) = v31;
  v35 = one-time initialization token for contactConfirmation;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_10_20();
  }

  v36 = static ContactNLv3Intent.contactConfirmation;
  v37 = OUTLINED_FUNCTION_47();
  *(v4 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 344) = OUTLINED_FUNCTION_55_4(v39);
  *(v4 + 312) = v36;
  v40 = one-time initialization token for contactAgeDate;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = static ContactNLv3Intent.contactAgeDate;
  v42 = OUTLINED_FUNCTION_47();
  *(v4 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 384) = OUTLINED_FUNCTION_55_4(v44);
  *(v4 + 352) = v41;
  v45 = one-time initialization token for setNickName;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_6_13();
  }

  v46 = static ContactNLv3Intent.setNickName;
  *(v4 + 416) = v10;
  *(v4 + 424) = v12;
  *(v4 + 392) = v46;
  v47 = one-time initialization token for setRelationship;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = static ContactNLv3Intent.setRelationship;
  *(v4 + 456) = v10;
  *(v4 + 464) = v12;
  *(v4 + 432) = v48;
  v49 = one-time initialization token for removeRelationship;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = static ContactNLv3Intent.removeRelationship;
  *(v4 + 496) = v10;
  *(v4 + 504) = v12;
  *(v4 + 472) = v50;
  v51 = type metadata accessor for DomainOntologyNode();
  OUTLINED_FUNCTION_2_6(v51);

  *a2 = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  v52 = type metadata accessor for ContactNLv3Intent();
  *(a2 + *(v52 + 24)) = &outlined read-only object #0 of ContactNLv3Intent.init(intent:);
  v53 = *(v52 + 20);
  v54 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_10_1(v54);
  v56 = *(v55 + 32);

  return v56(a2 + v53, a1);
}

void ContactNLv3Intent.person.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_18_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for NonTerminalIntentNode();
  v31 = OUTLINED_FUNCTION_1_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v39, v40);
  OUTLINED_FUNCTION_47();
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  OUTLINED_FUNCTION_57(v29, 1, v30);
  if (v41)
  {
    outlined destroy of Result<TemplatingResult, Error>(v29, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v49 = 1;
  }

  else
  {
    v42 = *(v33 + 32);
    v43 = OUTLINED_FUNCTION_43();
    v44(v43);
    v45 = *(v33 + 16);
    v46 = OUTLINED_FUNCTION_44_3();
    v47(v46);
    v48 = type metadata accessor for PersonOntologyNode();
    OUTLINED_FUNCTION_2_6(v48);
    PersonOntologyNode.init(name:multicardinal:)();
    PersonIntentNode.init(intentNode:ontologyNode:)();
    (*(v33 + 8))(v38, v30);
    v49 = 0;
  }

  v50 = type metadata accessor for PersonIntentNode();
  __swift_storeEnumTagSinglePayload(v23, v49, 1, v50);
  OUTLINED_FUNCTION_14();
}

void ContactNLv3Constants.rawValue.getter()
{
  switch(*v0)
  {
    case 5:
    case 0xC:
    case 0xE:
      OUTLINED_FUNCTION_21_11();
      break;
    case 0x15:
      OUTLINED_FUNCTION_57_2();
      break;
    default:
      return;
  }
}

uint64_t ContactNLv3Intent.hasFreshVerb.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_18_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13OriginalValueVSgMd, &_s12SiriOntology15TerminalElementV13OriginalValueVSgMR);
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v18, v19);
  OUTLINED_FUNCTION_43();
  IntentNodeTraversable.intentNode<A>(forOntologyNode:)();
  type metadata accessor for TerminalIntentNode();
  OUTLINED_FUNCTION_14_14(v5);
  if (v29)
  {
    v20 = &_s12SiriOntology18TerminalIntentNodeVSgMd;
    v21 = &_s12SiriOntology18TerminalIntentNodeVSgMR;
    v22 = v5;
LABEL_12:
    outlined destroy of Result<TemplatingResult, Error>(v22, v20, v21);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriContacts);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      v43 = 0;
      goto LABEL_18;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_26686A000, v39, v40, "#hasFreshVerb no isFresh, return false", v41, 2u);
    v43 = 0;
    goto LABEL_16;
  }

  v23 = TerminalIntentNode.elements.getter();
  OUTLINED_FUNCTION_12_11();
  v25 = *(v24 + 8);
  v26 = OUTLINED_FUNCTION_44_3();
  v27(v26);
  specialized BidirectionalCollection.last.getter(v23, v11);

  v28 = type metadata accessor for TerminalElement();
  OUTLINED_FUNCTION_57(v11, 1, v28);
  if (v29)
  {
    v20 = &_s12SiriOntology15TerminalElementVSgMd;
    v21 = &_s12SiriOntology15TerminalElementVSgMR;
    v22 = v11;
    goto LABEL_12;
  }

  TerminalElement.originalValue.getter();
  OUTLINED_FUNCTION_52(v28);
  v31 = *(v30 + 8);
  v32 = OUTLINED_FUNCTION_25_8();
  v33(v32);
  v34 = type metadata accessor for TerminalElement.OriginalValue();
  v35 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_57(v35, v36, v34);
  if (v37)
  {
    v20 = &_s12SiriOntology15TerminalElementV13OriginalValueVSgMd;
    v21 = &_s12SiriOntology15TerminalElementV13OriginalValueVSgMR;
    v22 = v17;
    goto LABEL_12;
  }

  v43 = TerminalElement.OriginalValue.isFresh.getter();
  OUTLINED_FUNCTION_52(v34);
  (*(v44 + 8))(v17, v34);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.siriContacts);
  v39 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v46))
  {
    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = v43 & 1;
    _os_log_impl(&dword_26686A000, v39, v46, "#hasFreshVerb isFresh: %{BOOL}d", v41, 8u);
LABEL_16:
    MEMORY[0x26D5E3300](v41, -1, -1);
  }

LABEL_18:

  return v43 & 1;
}

uint64_t ContactNLv3Intent.isModifyOtherContactNickname.getter()
{
  v6[0] = 44;
  if (!ContactNLv3Intent.containsAttribute(_:)(v6))
  {
    if (one-time initialization token for setNickName != -1)
    {
      OUTLINED_FUNCTION_6_13();
    }

    type metadata accessor for ContactNLv3Intent();
    OUTLINED_FUNCTION_0_34();
    _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1);
    OUTLINED_FUNCTION_22_0();
    IntentNodeTraversable.value<A>(forNode:)();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3);
  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v6[0] == 17 || (specialized == infix<A>(_:_:)(v6[0], 4) & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  v4 = ContactNLv3Intent.isMeCardRequest.getter() ^ 1;
  return v4 & 1;
}

uint64_t ContactNLv3Intent.hasAddressAttribute.getter()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v2 = 0xE700000000000000;
    v3 = 0x73736572646461;
    switch(outlined read-only object #0 of static ContactNLIntent.ContactIntentAddressAttributes.allCases.getter[v0 + 32])
    {
      case 1:
        v4 = 544829025;
        goto LABEL_6;
      case 2:
        v4 = 544045415;
LABEL_6:
        v3 = v4 | 0x7264646100000000;
        v2 = 0xEB00000000737365;
        break;
      case 3:
        v5 = 1701670760;
        goto LABEL_8;
      case 4:
        v5 = 1802661751;
LABEL_8:
        v3 = v5 | 0x6464612000000000;
        v2 = 0xEC00000073736572;
        break;
      case 5:
        v3 = 0x61206C6F6F686373;
        v2 = 0xEE00737365726464;
        break;
      default:
        break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
      v1 = v9;
    }

    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 > 1, v7 + 1, 1, v1);
      v1 = v10;
    }

    ++v0;
    *(v1 + 16) = v7 + 1;
    v8 = v1 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v2;
  }

  while (v0 != 6);
  ContactNLv3Intent.containsAttribute(_:)();
  v12 = v11;

  return v12 & 1;
}

BOOL ContactNLv3Intent.hasEmailAttribute.getter()
{
  ContactNLv3Intent.containsAttribute(_:)();
  if (v0)
  {
    return 1;
  }

  return ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for emailAttributes);
}

BOOL ContactNLv3Intent.hasPhoneAttribute.getter()
{
  ContactNLv3Intent.containsAttribute(_:)();
  if (v0)
  {
    return 1;
  }

  return ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for phoneAttributes);
}

uint64_t ContactNLv3Intent.isShowContactCard.getter()
{
  if (one-time initialization token for contactNoun != -1)
  {
    OUTLINED_FUNCTION_35_6();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1);
  OUTLINED_FUNCTION_2_18();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v6 != 2)
  {
    v3 = specialized == infix<A>(_:_:)(v6 & 1);
    v2 = 0;
    if ((v3 & 1) == 0)
    {
      return v2 & 1;
    }

    if (one-time initialization token for contactVerb != -1)
    {
      OUTLINED_FUNCTION_3_10();
    }

    OUTLINED_FUNCTION_2_18();
    IntentNodeTraversable.value<A>(forNode:)();
    if (v5 != 17)
    {
      v2 = specialized == infix<A>(_:_:)(v5, 0);
      return v2 & 1;
    }
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t ContactNLv3Intent.isMeCardRequest.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_18_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  v5 = &v30[-1] - v4;
  v6 = type metadata accessor for NonTerminalIntentNode();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v14, v15);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  OUTLINED_FUNCTION_57(v5, 1, v6);
  if (v28)
  {
    outlined destroy of Result<TemplatingResult, Error>(v5, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    if (one-time initialization token for contactReference != -1)
    {
      OUTLINED_FUNCTION_4_22();
    }

    IntentNodeTraversable.value<A>(forNode:)();
    if (LOBYTE(v30[0]) != 38)
    {
      v16 = specialized == infix<A>(_:_:)(LOBYTE(v30[0]), 35);
      return v16 & 1;
    }

LABEL_17:
    v16 = 0;
    return v16 & 1;
  }

  v17 = *(v9 + 32);
  v18 = OUTLINED_FUNCTION_25_8();
  v19(v18);
  v20 = *(NonTerminalIntentNode.childNodes.getter() + 16);

  if (v20 != 1)
  {
    (*(v9 + 8))(v13, v6);
    goto LABEL_17;
  }

  result = NonTerminalIntentNode.childNodes.getter();
  if (*(result + 16))
  {
    outlined init with copy of DeviceState(result + 32, v30);

    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    OUTLINED_FUNCTION_44_3();
    v22 = dispatch thunk of IntentNode.ontologyNodeName.getter();
    v24 = v23;
    type metadata accessor for PersonOntologyNode();
    static PersonOntologyNode.personSelfReferenceNode.getter();
    v25 = TerminalOntologyNode.name.getter();
    v27 = v26;

    v28 = v22 == v25 && v24 == v27;
    if (v28)
    {
      v16 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v9 + 8))(v13, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    return v16 & 1;
  }

  __break(1u);
  return result;
}

uint64_t ContactNLv3Intent.hasModifyVerb.getter()
{
  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1);
  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v7 == 17)
  {
LABEL_10:
    v2 = 0;
    return v2 & 1;
  }

  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v6 == 17 || (specialized == infix<A>(_:_:)(v6, 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_22_0();
    IntentNodeTraversable.value<A>(forNode:)();
    if (v5 == 17 || (specialized == infix<A>(_:_:)(v5, 15) & 1) == 0)
    {
      OUTLINED_FUNCTION_22_0();
      IntentNodeTraversable.value<A>(forNode:)();
      if (v4 != 17)
      {
        v2 = specialized == infix<A>(_:_:)(v4, 13);
        return v2 & 1;
      }

      goto LABEL_10;
    }
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t ContactNLv3Intent.isPronounceName.getter(uint64_t a1)
{
  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3);
  OUTLINED_FUNCTION_25_8();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v7 == 17 || (OUTLINED_FUNCTION_25_8(), IntentNodeTraversable.value<A>(forNode:)(), v6 == 17))
  {
    v4 = 0;
  }

  else
  {
    v4 = specialized == infix<A>(_:_:)(v6, a1);
  }

  return v4 & 1;
}

unint64_t ContactNLv3Constants.canonicalName.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(20);

  ContactNLv3Constants.rawValue.getter();
  v3 = v2;
  v5 = v4;

  specialized Collection.prefix(_:)(1);
  v6 = Substring.uppercased()();

  specialized Collection.dropFirst(_:)(1uLL, v3, v5);
  lazy protocol witness table accessor for type Substring and conformance Substring();

  String.append<A>(contentsOf:)();

  MEMORY[0x26D5E2570](v6._countAndFlagsBits, v6._object);

  return 0xD000000000000012;
}

void ContactNLv3Intent.NLContactVerbValue.rawValue.getter()
{
  switch(*v0)
  {
    case 6:
      OUTLINED_FUNCTION_21_11();
      break;
    default:
      return;
  }
}

uint64_t ContactNLv3Intent.requestedContactAttribute.getter()
{
  if (ContactNLv3Intent.hasFullNameAttribute.getter())
  {
    return 9;
  }

  if (OUTLINED_FUNCTION_51_2(41))
  {
    return 7;
  }

  v6[0] = 44;
  if (ContactNLv3Intent.containsAttribute(_:)(v6))
  {
    return 6;
  }

  v5 = 43;
  if (ContactNLv3Intent.containsAttribute(_:)(&v5))
  {
    return 8;
  }

  if (ContactNLv3Intent.hasAddressAttribute.getter())
  {
    return 3;
  }

  v4 = 52;
  if (ContactNLv3Intent.containsAttribute(_:)(&v4))
  {
    return 4;
  }

  v3 = 51;
  if (ContactNLv3Intent.containsAttribute(_:)(&v3))
  {
    return 5;
  }

  ContactNLv3Intent.containsAttribute(_:)();
  if ((v1 & 1) != 0 || ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for emailAttributes))
  {
    return 1;
  }

  ContactNLv3Intent.containsAttribute(_:)();
  if (v2)
  {
    return 2;
  }

  if (ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for phoneAttributes))
  {
    return 2;
  }

  return 0;
}

uint64_t ContactNLv3Intent.requestedContactAttributeLabel.getter()
{
  if (one-time initialization token for contactType != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    type metadata accessor for ContactNLv3Intent();
    OUTLINED_FUNCTION_0_34();
    _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1);
    OUTLINED_FUNCTION_2_18();
    IntentNodeTraversable.value<A>(forNode:)();
    if (!v12)
    {
      goto LABEL_17;
    }

    if (v11 != 0x656E6F6870 || v12 != 0xE500000000000000)
    {
      OUTLINED_FUNCTION_53_3();
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11 == 0x6C69616D65 && v12 == 0xE500000000000000;
      v5 = v4;
      if ((v3 & 1) == 0 && !v5)
      {
        OUTLINED_FUNCTION_53_3();
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return OUTLINED_FUNCTION_53_3();
        }
      }
    }

LABEL_17:
    if (one-time initialization token for contactAttributes != -1)
    {
      OUTLINED_FUNCTION_8_11();
    }

    OUTLINED_FUNCTION_2_18();
    v6 = IntentNodeTraversable.values<A>(forNode:)();
    v7 = 0;
    v8 = *(v6 + 16);
    while (1)
    {
      if (v8 == v7)
      {

        return OUTLINED_FUNCTION_53_3();
      }

      if (v7 >= *(v6 + 16))
      {
        break;
      }

      v9 = *(v6 + v7++ + 32);
      if (!specialized Sequence<>.contains(_:)(v9, &outlined read-only object #0 of one-time initialization function for nonHandleLabelAttributes))
      {

        ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
        return OUTLINED_FUNCTION_53_3();
      }
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_7_7();
  }
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v15 = *v3;
    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    v7 = v6;
    v9 = v8;
    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    if (v7 == v11 && v9 == v10)
    {

      return v4 != 0;
    }

    OUTLINED_FUNCTION_61_1();
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v3;
  }

  while ((v13 & 1) == 0);
  return v4 != 0;
}

Swift::Int_optional __swiftcall ContactNLv3Intent.arrayIndexForReference(arrayLength:)(Swift::Int arrayLength)
{
  if (one-time initialization token for contactReference != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_25_8();
  IntentNodeTraversable.value<A>(forNode:)();
  v4 = v6;
  v5 = 0;
  switch(v6)
  {
    case 0u:
      break;
    case 1u:
      v5 = 0;
      v4 = 1;
      break;
    case 2u:
      v5 = 0;
      v4 = 2;
      break;
    case 3u:
      v5 = 0;
      v4 = 3;
      break;
    case 4u:
      v5 = 0;
      v4 = 4;
      break;
    case 5u:
      v5 = 0;
      v4 = 5;
      break;
    case 6u:
      v5 = 0;
      v4 = 6;
      break;
    case 7u:
      v5 = 0;
      v4 = 7;
      break;
    case 8u:
      v5 = 0;
      v4 = 8;
      break;
    case 9u:
      v5 = 0;
      v4 = 9;
      break;
    case 0xAu:
      v5 = 0;
      v4 = 10;
      break;
    case 0xBu:
      v5 = 0;
      v4 = 11;
      break;
    case 0xCu:
      v5 = 0;
      v4 = 12;
      break;
    case 0xDu:
      v5 = 0;
      v4 = 13;
      break;
    case 0xEu:
      v5 = 0;
      v4 = 14;
      break;
    case 0xFu:
      v5 = 0;
      v4 = 15;
      break;
    case 0x10u:
      v5 = 0;
      v4 = 16;
      break;
    case 0x11u:
      v5 = 0;
      v4 = 17;
      break;
    case 0x12u:
      v5 = 0;
      v4 = 18;
      break;
    case 0x13u:
      v5 = 0;
      v4 = 19;
      break;
    case 0x14u:
      v5 = 0;
      v4 = 20;
      break;
    case 0x15u:
      goto LABEL_14;
    case 0x16u:
      v5 = 0;
      v4 = 22;
      break;
    case 0x17u:
      v5 = 0;
      v4 = 23;
      break;
    case 0x18u:
      v5 = 0;
      v4 = 24;
      break;
    case 0x19u:
      goto LABEL_35;
    case 0x1Du:
      v4 = arrayLength - 2;
      if (!__OFSUB__(arrayLength, 2))
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_35:
      v4 = arrayLength - 1;
      if (__OFSUB__(arrayLength, 1))
      {
        __break(1u);
      }

      else
      {
LABEL_36:
        v5 = 0;
      }

      break;
    case 0x1Eu:
      v4 = arrayLength - 3;
      if (!__OFSUB__(arrayLength, 3))
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_14:
      v5 = 0;
      v4 = 21;
      break;
    default:
      v4 = 0;
      v5 = 1;
      break;
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
    v12 = v9;
    v10 = a1(&v12);
    if (v3)
    {
      break;
    }
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

{
  return sub_26686CE4C(a1, a2, a3);
}

SiriContactsIntents::ContactNLv3Constants_optional __swiftcall ContactNLv3Constants.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_46_4();
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v4 = 0;
  v5 = 6;
  switch(v2)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v4 = 1;
      goto LABEL_18;
    case 2:
      v4 = 2;
      goto LABEL_18;
    case 3:
      v4 = 3;
      goto LABEL_18;
    case 4:
      v4 = 4;
      goto LABEL_18;
    case 5:
      v4 = 5;
LABEL_18:
      v5 = v4;
      break;
    case 6:
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    default:
      v5 = 24;
      break;
  }

  *v1 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Constants(void *a1@<X8>)
{
  ContactNLv3Constants.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t one-time initialization function for personNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266966D90;
  v1 = type metadata accessor for PersonOntologyNode();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = PersonOntologyNode.init(name:multicardinal:)();
  v5 = MEMORY[0x277D5E210];
  *(v0 + 56) = v1;
  *(v0 + 64) = v5;
  *(v0 + 32) = v4;
  v6 = type metadata accessor for NonTerminalOntologyNode();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static ContactNLv3Intent.personNode = result;
  return result;
}

uint64_t one-time initialization function for contactReference()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV23NLContactReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV23NLContactReferenceValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_62_0();
  result = OUTLINED_FUNCTION_67_1();
  static ContactNLv3Intent.contactReference = result;
  return result;
}

uint64_t one-time initialization function for contactAttributes()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV24NLContactAttributesValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV24NLContactAttributesValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_62_0();
  result = OUTLINED_FUNCTION_67_1();
  static ContactNLv3Intent.contactAttributes = result;
  return result;
}

uint64_t one-time initialization function for contactVerb()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV18NLContactVerbValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV18NLContactVerbValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_30_7();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static ContactNLv3Intent.contactVerb = result;
  return result;
}

uint64_t one-time initialization function for contactNoun()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV18NLContactNounValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV18NLContactNounValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_30_7();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static ContactNLv3Intent.contactNoun = result;
  return result;
}

uint64_t one-time initialization function for contactConfirmation()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV26NLContactConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV26NLContactConfirmationValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_62_0();
  result = OUTLINED_FUNCTION_67_1();
  static ContactNLv3Intent.contactConfirmation = result;
  return result;
}

uint64_t one-time initialization function for contactAgeDate()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMd, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_30_7();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static ContactNLv3Intent.contactAgeDate = result;
  return result;
}

uint64_t one-time initialization function for contactId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_2_6(v5);
  result = TerminalOntologyNode.init(name:multicardinal:)();
  *a4 = result;
  return result;
}

uint64_t one-time initialization function for removeRelationship()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_62_0();
  result = OUTLINED_FUNCTION_67_1();
  static ContactNLv3Intent.removeRelationship = result;
  return result;
}

uint64_t ContactNLv3Intent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactNLv3Intent() + 20);
  v4 = type metadata accessor for NLIntent();
  v5 = OUTLINED_FUNCTION_10_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ContactNLv3Intent.intent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactNLv3Intent() + 20);
  v4 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_10_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t ContactNLv3Intent.NLContactAttributesValue.attributeTypeAndLabel()()
{
  result = 2;
  switch(*v0)
  {
    case 0:
      return 2;
    case 1:
      return 2;
    case 2:
    case 3:
    case 4:
    case 0xC:
    case 0xE:
    case 0x10:
      return 2;
    case 5:
    case 6:
    case 7:
    case 8:
      ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
      return 2;
    case 9:
      OUTLINED_FUNCTION_64_0();
      return 2;
    case 0xA:
      return result;
    case 0xB:
      OUTLINED_FUNCTION_33_4();
      return 2;
    case 0x1E:
      return 1;
    case 0x1F:
      return 1;
    case 0x20:
      return 1;
    case 0x21:
      OUTLINED_FUNCTION_64_0();
      return 1;
    case 0x22:
      OUTLINED_FUNCTION_33_4();
      return 1;
    case 0x23:
      return 3;
    case 0x24:
      return 3;
    case 0x25:
      OUTLINED_FUNCTION_33_4();
      goto LABEL_10;
    case 0x26:
    case 0x30:
LABEL_10:
      result = 3;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void ContactNLv3Intent.NLContactAttributesValue.rawValue.getter()
{
  switch(*v0)
  {
    case 9:
    case 0xE:
      OUTLINED_FUNCTION_57_2();
      break;
    case 0x11:
    case 0x12:
      OUTLINED_FUNCTION_21_11();
      break;
    case 0x1E:
      OUTLINED_FUNCTION_54_2(28005);
      break;
    case 0x32:
      OUTLINED_FUNCTION_42_5(0x6F63u);
      break;
    case 0x33:
      OUTLINED_FUNCTION_43_5(0x6962u);
      break;
    case 0x34:
      OUTLINED_FUNCTION_56_3(0x6761u);
      break;
    case 0x35:
      OUTLINED_FUNCTION_41_6(0x6E61u);
      break;
    default:
      return;
  }
}

SiriContactsIntents::ContactNLv3Intent::NLContactAttributesValue_optional __swiftcall ContactNLv3Intent.NLContactAttributesValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_46_4();
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v4 = 0;
  v5 = 52;
  switch(v2)
  {
    case 0:
      goto LABEL_69;
    case 1:
      v4 = 1;
      goto LABEL_69;
    case 2:
      v4 = 2;
      goto LABEL_69;
    case 3:
      v4 = 3;
      goto LABEL_69;
    case 4:
      v4 = 4;
      goto LABEL_69;
    case 5:
      v4 = 5;
      goto LABEL_69;
    case 6:
      v4 = 6;
      goto LABEL_69;
    case 7:
      v4 = 7;
      goto LABEL_69;
    case 8:
      v4 = 8;
      goto LABEL_69;
    case 9:
      v4 = 9;
      goto LABEL_69;
    case 10:
      v4 = 10;
      goto LABEL_69;
    case 11:
      v4 = 11;
      goto LABEL_69;
    case 12:
      v4 = 12;
      goto LABEL_69;
    case 13:
      v4 = 13;
      goto LABEL_69;
    case 14:
      v4 = 14;
      goto LABEL_69;
    case 15:
      v4 = 15;
      goto LABEL_69;
    case 16:
      v4 = 16;
      goto LABEL_69;
    case 17:
      v4 = 17;
      goto LABEL_69;
    case 18:
      v4 = 18;
      goto LABEL_69;
    case 19:
      v4 = 19;
      goto LABEL_69;
    case 20:
      v4 = 20;
      goto LABEL_69;
    case 21:
      v4 = 21;
      goto LABEL_69;
    case 22:
      v4 = 22;
      goto LABEL_69;
    case 23:
      v4 = 23;
      goto LABEL_69;
    case 24:
      v4 = 24;
      goto LABEL_69;
    case 25:
      v4 = 25;
      goto LABEL_69;
    case 26:
      v4 = 26;
      goto LABEL_69;
    case 27:
      v4 = 27;
      goto LABEL_69;
    case 28:
      v4 = 28;
      goto LABEL_69;
    case 29:
      v4 = 29;
      goto LABEL_69;
    case 30:
      v4 = 30;
      goto LABEL_69;
    case 31:
      v4 = 31;
      goto LABEL_69;
    case 32:
      v4 = 32;
      goto LABEL_69;
    case 33:
      v4 = 33;
      goto LABEL_69;
    case 34:
      v4 = 34;
      goto LABEL_69;
    case 35:
      v4 = 35;
      goto LABEL_69;
    case 36:
      v4 = 36;
      goto LABEL_69;
    case 37:
      v4 = 37;
      goto LABEL_69;
    case 38:
      v4 = 38;
      goto LABEL_69;
    case 39:
      v4 = 39;
      goto LABEL_69;
    case 40:
      v4 = 40;
      goto LABEL_69;
    case 41:
      v4 = 41;
      goto LABEL_69;
    case 42:
      v4 = 42;
      goto LABEL_69;
    case 43:
      v4 = 43;
      goto LABEL_69;
    case 44:
      v4 = 44;
      goto LABEL_69;
    case 45:
      v4 = 45;
      goto LABEL_69;
    case 46:
      v4 = 46;
      goto LABEL_69;
    case 47:
      v4 = 47;
      goto LABEL_69;
    case 48:
      v4 = 48;
      goto LABEL_69;
    case 49:
      v4 = 49;
      goto LABEL_69;
    case 50:
      v4 = 50;
      goto LABEL_69;
    case 51:
      v4 = 51;
LABEL_69:
      v5 = v4;
      break;
    case 52:
      break;
    case 53:
      v5 = 53;
      break;
    case 54:
      v5 = 54;
      break;
    case 55:
      v5 = 55;
      break;
    case 56:
      v5 = 56;
      break;
    case 57:
      v5 = 57;
      break;
    case 58:
      v5 = 58;
      break;
    case 59:
      v5 = 59;
      break;
    case 60:
      v5 = 60;
      break;
    case 61:
      v5 = 61;
      break;
    case 62:
      v5 = 62;
      break;
    case 63:
      v5 = 63;
      break;
    case 64:
      v5 = 64;
      break;
    case 65:
      v5 = 65;
      break;
    case 66:
      v5 = 66;
      break;
    case 67:
      v5 = 67;
      break;
    case 68:
      v5 = 68;
      break;
    case 69:
      v5 = 69;
      break;
    default:
      v5 = 70;
      break;
  }

  *v1 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactAttributesValue(void *a1@<X8>)
{
  ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriContactsIntents::ContactNLv3Intent::NLContactVerbValue_optional __swiftcall ContactNLv3Intent.NLContactVerbValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_11();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  result.value = OUTLINED_FUNCTION_69_1();
  v4 = 17;
  if (v2 < 0x11)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactVerbValue(void *a1@<X8>)
{
  ContactNLv3Intent.NLContactVerbValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriContactsIntents::ContactNLv3Intent::NLContactNounValue_optional __swiftcall ContactNLv3Intent.NLContactNounValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_11();
  v4._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactNLv3Intent.NLContactNounValue.init(rawValue:), v4);
  result.value = OUTLINED_FUNCTION_69_1();
  if (v3 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v3)
  {
    v6 = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t ContactNLv3Intent.NLContactNounValue.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656C706F6570;
  }

  else
  {
    result = 0x746361746E6F63;
  }

  *v0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactNounValue@<X0>(uint64_t *a1@<X8>)
{
  result = ContactNLv3Intent.NLContactNounValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ContactNLv3Intent.NLContactConfirmationValue.rawValue.getter()
{
  result = 7562617;
  switch(*v0)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x206D7269666E6F63;
      break;
    case 4:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

SiriContactsIntents::ContactNLv3Intent::NLContactConfirmationValue_optional __swiftcall ContactNLv3Intent.NLContactConfirmationValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_11();
  v4._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactNLv3Intent.NLContactConfirmationValue.init(rawValue:), v4);
  result.value = OUTLINED_FUNCTION_69_1();
  v6 = 5;
  if (v3 < 5)
  {
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactConfirmationValue@<X0>(uint64_t *a1@<X8>)
{
  result = ContactNLv3Intent.NLContactConfirmationValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriContactsIntents::ContactNLv3Intent::NLContactAttribute_optional __swiftcall ContactNLv3Intent.NLContactAttribute.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_11();
  v4._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactNLv3Intent.NLContactAttribute.init(rawValue:), v4);
  result.value = OUTLINED_FUNCTION_69_1();
  v6 = 9;
  if (v3 < 9)
  {
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

unint64_t ContactNLv3Intent.NLContactAttribute.rawValue.getter()
{
  result = 0x73736572646441;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_56_3(0x6741u);
      break;
    case 2:
      result = OUTLINED_FUNCTION_41_6(0x6E41u);
      break;
    case 3:
      result = OUTLINED_FUNCTION_43_5(0x6942u);
      break;
    case 4:
      result = 1685217603;
      break;
    case 5:
      result = OUTLINED_FUNCTION_42_5(0x6F43u);
      break;
    case 6:
      result = OUTLINED_FUNCTION_54_2(27973);
      break;
    case 7:
      result = 1701667150;
      break;
    case 8:
      result = 0x656E6F6850;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactAttribute@<X0>(unint64_t *a1@<X8>)
{
  result = ContactNLv3Intent.NLContactAttribute.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriContactsIntents::ContactNLv3Intent::NLContactReferenceValue_optional __swiftcall ContactNLv3Intent.NLContactReferenceValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_46_4();
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v4 = 0;
  v5 = 20;
  switch(v2)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v4 = 1;
      goto LABEL_34;
    case 2:
      v4 = 2;
      goto LABEL_34;
    case 3:
      v4 = 3;
      goto LABEL_34;
    case 4:
      v4 = 4;
      goto LABEL_34;
    case 5:
      v4 = 5;
      goto LABEL_34;
    case 6:
      v4 = 6;
      goto LABEL_34;
    case 7:
      v4 = 7;
      goto LABEL_34;
    case 8:
      v4 = 8;
      goto LABEL_34;
    case 9:
      v4 = 9;
      goto LABEL_34;
    case 10:
      v4 = 10;
      goto LABEL_34;
    case 11:
      v4 = 11;
      goto LABEL_34;
    case 12:
      v4 = 12;
      goto LABEL_34;
    case 13:
      v4 = 13;
      goto LABEL_34;
    case 14:
      v4 = 14;
      goto LABEL_34;
    case 15:
      v4 = 15;
      goto LABEL_34;
    case 16:
      v4 = 16;
      goto LABEL_34;
    case 17:
      v4 = 17;
      goto LABEL_34;
    case 18:
      v4 = 18;
      goto LABEL_34;
    case 19:
      v4 = 19;
LABEL_34:
      v5 = v4;
      break;
    case 20:
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    case 32:
      v5 = 32;
      break;
    case 33:
      v5 = 33;
      break;
    case 34:
      v5 = 34;
      break;
    case 35:
      v5 = 35;
      break;
    case 36:
      v5 = 36;
      break;
    case 37:
      v5 = 37;
      break;
    default:
      v5 = 38;
      break;
  }

  *v1 = v5;
  return result;
}

uint64_t ContactNLv3Intent.NLContactReferenceValue.rawValue.getter()
{
  result = 0x7473726966;
  switch(*v0)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      v6 = 1920298854;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v4 = 1952868710;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v4 = 1954048371;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v3 = 0x746E65766573;
      return v3 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v6 = 1751607653;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v4 = 1953391988;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 0xA:
      return 0x68746E6576656C65;
    case 0xB:
      v3 = 0x74666C657774;
      return v3 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 0xC:
      v5 = 1919510644;
      return v5 | 0x6E65657400000000;
    case 0xD:
      v5 = 1920298854;
      return v5 | 0x6E65657400000000;
    case 0xE:
      v2 = 1952868710;
      return v2 | 0x746E656500000000;
    case 0xF:
      v2 = 1954048371;
      return v2 | 0x746E656500000000;
    case 0x10:
      return 0x6565746E65766573;
    case 0x11:
      v5 = 1751607653;
      return v5 | 0x6E65657400000000;
    case 0x12:
      v5 = 1701734766;
      return v5 | 0x6E65657400000000;
    case 0x13:
      return 0x746569746E657774;
    case 0x14:
    case 0x17:
    case 0x18:
      return 0x662079746E657774;
    case 0x15:
      return 0x732079746E657774;
    case 0x16:
      v7 = 0x79746E657774;
      goto LABEL_41;
    case 0x19:
      return 1953718636;
    case 0x1A:
      return 0x656C6464696DLL;
    case 0x1B:
      return 1954047342;
    case 0x1C:
      return 0x73756F6976657270;
    case 0x1D:
      v7 = 0x646E6F636573;
LABEL_41:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x7420000000000000;
      break;
    case 0x1E:
      result = 0x6F74206472696874;
      break;
    case 0x1F:
      result = 6647407;
      break;
    case 0x20:
      result = 2037277037;
      break;
    case 0x21:
      result = 25960;
      break;
    case 0x22:
      result = OUTLINED_FUNCTION_56_3(0x6873u);
      break;
    case 0x23:
      result = 31085;
      break;
    case 0x24:
      result = 7958113;
      break;
    case 0x25:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactReferenceValue@<X0>(uint64_t *a1@<X8>)
{
  result = ContactNLv3Intent.NLContactReferenceValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance ContactNLv3Intent.NLContactAttributesValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(void))
{
  v8 = a4();
  v9 = a5();
  a6();
  v10 = OUTLINED_FUNCTION_53_3();

  return MEMORY[0x2821C21F8](v10, v11, v8, v9, v12);
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for TerminalElement();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for TerminalElement();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

BOOL ContactNLv3Intent.containsAttribute(_:)(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for contactAttributes != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_8_11();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3);
  OUTLINED_FUNCTION_22_0();
  v4 = IntentNodeTraversable.values<A>(forNode:)();
  v5 = 0;
  v6 = *(v4 + 16);
  do
  {
    v7 = v5;
    if (v6 == v5)
    {
      break;
    }

    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    v17 = *(v4 + v5 + 32);
    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    v9 = v8;
    v11 = v10;
    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    if (v9 == v13 && v11 == v12)
    {

      break;
    }

    ++v5;
    OUTLINED_FUNCTION_61_1();
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v15 & 1) == 0);

  return v6 != v7;
}

uint64_t ContactNLv3Intent.isForgetNickname.getter()
{
  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v4 == 17)
  {
    v2 = 0;
  }

  else
  {
    v2 = specialized == infix<A>(_:_:)(v4, 15);
  }

  return v2 & 1;
}

uint64_t ContactNLv3Intent.hasNameAttribute.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContactNLv3Intent() + 24));
  ContactNLv3Intent.containsAttribute(_:)();
  if (v2)
  {
    return 1;
  }

  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10();
  }

  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v4, v5);
  OUTLINED_FUNCTION_61_1();
  IntentNodeTraversable.value<A>(forNode:)();
  if (LOBYTE(v11[0]) == 17)
  {
    return 0;
  }

  OUTLINED_FUNCTION_61_1();
  result = IntentNodeTraversable.value<A>(forNode:)();
  if (v13 != 17)
  {
    v12 = v13;
    ContactNLv3Intent.NLContactVerbValue.rawValue.getter();
    v11[0] = v7;
    v11[1] = v8;
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_50_4();
    *(v9 - 16) = v11;
    v3 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v10, v1);

    return v3;
  }

  __break(1u);
  return result;
}

void ContactNLv3Intent.containsAttribute(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  if (one-time initialization token for contactAttributes != -1)
  {
LABEL_8:
    OUTLINED_FUNCTION_8_11();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3);
  OUTLINED_FUNCTION_25_8();
  v4 = IntentNodeTraversable.values<A>(forNode:)();
  v5 = 0;
  v6 = *(v4 + 16);
  do
  {
    v7 = v5;
    if (v6 == v5)
    {
      break;
    }

    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    ++v5;
    v14 = *(v4 + v7 + 32);
    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    v13[0] = v8;
    v13[1] = v9;
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_50_4();
    *(v10 - 16) = v13;
    v12 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v11, v1);
  }

  while (!v12);

  OUTLINED_FUNCTION_14();
}

BOOL ContactNLv3Intent.hasFullNameAttribute.getter()
{
  v7 = 40;
  if (ContactNLv3Intent.containsAttribute(_:)(&v7))
  {
    return 1;
  }

  else
  {
    if (one-time initialization token for contactVerb != -1)
    {
      OUTLINED_FUNCTION_3_10();
    }

    type metadata accessor for ContactNLv3Intent();
    OUTLINED_FUNCTION_0_34();
    _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v1, v2);
    OUTLINED_FUNCTION_22_0();
    IntentNodeTraversable.value<A>(forNode:)();
    if (v6 == 17)
    {
      return 0;
    }

    OUTLINED_FUNCTION_22_0();
    IntentNodeTraversable.value<A>(forNode:)();
    if (v5 == 17 || (specialized == infix<A>(_:_:)(v5, 14) & 1) == 0)
    {
      return 0;
    }

    else
    {
      v4 = 44;
      return !ContactNLv3Intent.containsAttribute(_:)(&v4);
    }
  }
}

Swift::Bool __swiftcall ContactNLv3Intent.containsContactType(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for contactType != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3);
  OUTLINED_FUNCTION_25_8();
  v4 = IntentNodeTraversable.value<A>(forNode:)();
  if (v9[1])
  {
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_50_4();
    *(v5 - 16) = v9;
    v7 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v6, a1._rawValue);
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t ContactNLv3Intent.confirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for contactConfirmation != -1)
  {
    OUTLINED_FUNCTION_10_20();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_25_8();
  IntentNodeTraversable.value<A>(forNode:)();
  if (((1 << v12) & 0x16) != 0)
  {
    v4 = MEMORY[0x277D5BED0];
  }

  else
  {
    if (((1 << v12) & 9) == 0)
    {
      type metadata accessor for ConfirmationResponse();
      v8 = OUTLINED_FUNCTION_36_5();
      return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
    }

    v4 = MEMORY[0x277D5BED8];
  }

  v5 = *v4;
  v6 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_10_1(v6);
  (*(v7 + 104))(a1, v5, v6);
  v8 = a1;
  v9 = 0;
  v10 = v6;
  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

void ContactNLv3Intent.isRejection.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for ConfirmationResponse();
  v24 = OUTLINED_FUNCTION_1_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR) - 8);
  v32 = *(*v31 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v37 = OUTLINED_FUNCTION_18_0(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_4();
  v42 = v40 - v41;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &a9 - v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_27_8();
  ContactNLv3Intent.confirmationResponse.getter(v47);
  (*(v26 + 104))(v46, *MEMORY[0x277D5BED0], v23);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v23);
  v48 = v31[14];
  outlined init with copy of ConfirmationResponse?(v20, v35);
  outlined init with copy of ConfirmationResponse?(v46, &v35[v48]);
  OUTLINED_FUNCTION_57(v35, 1, v23);
  if (!v49)
  {
    outlined init with copy of ConfirmationResponse?(v35, v42);
    OUTLINED_FUNCTION_57(&v35[v48], 1, v23);
    if (!v49)
    {
      (*(v26 + 32))(v30, &v35[v48], v23);
      _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, MEMORY[0x277D5BEE0]);
      OUTLINED_FUNCTION_53_3();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v26 + 8);
      v50(v30, v23);
      outlined destroy of Result<TemplatingResult, Error>(v46, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      outlined destroy of Result<TemplatingResult, Error>(v20, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v50(v42, v23);
      v51 = OUTLINED_FUNCTION_25_8();
      outlined destroy of Result<TemplatingResult, Error>(v51, v52, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_68_2(v46);
    OUTLINED_FUNCTION_68_2(v20);
    (*(v26 + 8))(v42, v23);
LABEL_9:
    outlined destroy of Result<TemplatingResult, Error>(v35, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_68_2(v46);
  OUTLINED_FUNCTION_68_2(v20);
  OUTLINED_FUNCTION_57(&v35[v48], 1, v23);
  if (!v49)
  {
    goto LABEL_9;
  }

  outlined destroy of Result<TemplatingResult, Error>(v35, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_10:
  OUTLINED_FUNCTION_14();
}

uint64_t ContactNLv3Intent.isContactDomain.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_18_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = v0 + *(type metadata accessor for ContactNLv3Intent() + 20);
  NLIntent.domainNode.getter();
  v8 = type metadata accessor for NonTerminalIntentNode();
  v9 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_57(v9, v10, v8);
  if (v16)
  {
    outlined destroy of Result<TemplatingResult, Error>(v6, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v11 = 0;
  }

  else
  {
    v12 = NonTerminalIntentNode.ontologyNodeName.getter();
    v14 = v13;
    OUTLINED_FUNCTION_52(v8);
    (*(v15 + 8))(v6, v8);
    v16 = v12 == 0x746361746E6F63 && v14 == 0xE700000000000000;
    if (v16)
    {

      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v11 & 1;
}

BOOL ContactNLv3Intent.isCancel.getter()
{
  if (one-time initialization token for contactConfirmation != -1)
  {
    OUTLINED_FUNCTION_10_20();
  }

  type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  return v3 - 1 < 2;
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance ContactNLv3Intent(uint64_t a1)
{
  v2 = _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance ContactNLv3Intent(uint64_t a1)
{
  v2 = _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactNLv3Intent(uint64_t a1)
{
  v2 = _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent);

  return MEMORY[0x2821C0C70](a1, v2);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMR);
  OUTLINED_FUNCTION_29_7();
  v9 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_39_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5BAF8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMR);
  OUTLINED_FUNCTION_29_7();
  v9 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_39_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5BCB0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR);
  OUTLINED_FUNCTION_29_7();
  v9 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_39_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5FEB0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  OUTLINED_FUNCTION_29_7();
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_39_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5DB80], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayI0VGMd, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayI0VGMR);
  OUTLINED_FUNCTION_29_7();
  ContactAttributeSnippet = type metadata accessor for GetContactAttributeSnippetModel.DisplayAttribute();
  OUTLINED_FUNCTION_39_5(ContactAttributeSnippet);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D55A90], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
  OUTLINED_FUNCTION_29_7();
  v9 = type metadata accessor for TemplatingSection();
  OUTLINED_FUNCTION_39_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5BDD8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy13SiriInference13ContactHandleVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference13ContactHandleVGMR);
  OUTLINED_FUNCTION_29_7();
  v9 = type metadata accessor for ContactHandle();
  OUTLINED_FUNCTION_39_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D56040], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy13SiriInference7ContactVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference7ContactVGMR);
  OUTLINED_FUNCTION_29_7();
  v9 = type metadata accessor for Contact();
  OUTLINED_FUNCTION_39_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D56178], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_49_3();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_3();
    }
  }

  else
  {
    v8 = a2;
  }

  OUTLINED_FUNCTION_47_4(v8);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v4;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v4] <= v13)
    {
      memmove(v13, v14, 16 * v4);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4);
}

{
  if (a3)
  {
    OUTLINED_FUNCTION_49_3();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_3();
    }
  }

  else
  {
    v8 = a2;
  }

  OUTLINED_FUNCTION_47_4(v8);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v4;
    *(v13 + 3) = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[v4] <= v15)
    {
      memmove(v15, v16, v4);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v4);
  }
}

uint64_t type metadata accessor for ContactNLv3Intent()
{
  result = type metadata singleton initialization cache for ContactNLv3Intent;
  if (!type metadata singleton initialization cache for ContactNLv3Intent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_49_3();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_3();
    }
  }

  else
  {
    v8 = a2;
  }

  OUTLINED_FUNCTION_47_4(v8);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v4;
    v11[3] = 2 * ((v12 - 32) / 32);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[4 * v4 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_43();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    OUTLINED_FUNCTION_43();
    swift_arrayInitWithCopy();
  }
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow11DisplayHintV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_29_7();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D5E4F0]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D5BCB0]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D5DD60]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D56178]);
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)()
{
  OUTLINED_FUNCTION_63_1();
  if (v3 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR), result = OUTLINED_FUNCTION_10_1(v4), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      v7 = OUTLINED_FUNCTION_15_11();

      return MEMORY[0x2821FE820](v7);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
    v8 = OUTLINED_FUNCTION_15_11();

    return MEMORY[0x2821FE828](v8);
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_20_8(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_20_8(a3, result);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_63_1();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_10_1(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v12 = OUTLINED_FUNCTION_15_11();

      return MEMORY[0x2821FE820](v12);
    }
  }

  else
  {
    a4(0);
    v13 = OUTLINED_FUNCTION_15_11();

    return MEMORY[0x2821FE828](v13);
  }

  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t outlined init with copy of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Constants and conformance ContactNLv3Constants()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Constants and conformance ContactNLv3Constants;
  if (!lazy protocol witness table cache variable for type ContactNLv3Constants and conformance ContactNLv3Constants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Constants and conformance ContactNLv3Constants);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactAttribute and conformance ContactNLv3Intent.NLContactAttribute()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttribute and conformance ContactNLv3Intent.NLContactAttribute;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttribute and conformance ContactNLv3Intent.NLContactAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttribute and conformance ContactNLv3Intent.NLContactAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactNLv3Constants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Constants(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for ContactNLv3Intent()
{
  type metadata accessor for DomainOntologyNode();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NLIntent();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t getEnumTagSinglePayload for ContactNLv3Intent.NLContactAttributesValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xBB)
  {
    if (a2 + 69 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 69) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 70;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x46;
  v5 = v6 - 70;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactAttributesValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 69 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 69) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xBB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xBA)
  {
    v6 = ((a2 - 187) >> 8) + 1;
    *result = a2 + 69;
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
          *result = a2 + 69;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactNLv3Intent.NLContactVerbValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactVerbValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactNounValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContactNLv3Intent.NLContactConfirmationValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactConfirmationValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContactNLv3Intent.NLContactReferenceValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactReferenceValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_10()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_18_9@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_35_6()
{

  return swift_once();
}

void OUTLINED_FUNCTION_47_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

BOOL OUTLINED_FUNCTION_51_2@<W0>(char a1@<W8>)
{
  *(v1 - 1) = a1;

  return ContactNLv3Intent.containsAttribute(_:)((v1 - 1));
}

size_t OUTLINED_FUNCTION_52_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow11DisplayHintV_Tt1g5Tm(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_55_4(unint64_t *a1)
{

  return lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_67_1()
{

  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t OUTLINED_FUNCTION_68_2(uint64_t a1)
{

  return outlined destroy of Result<TemplatingResult, Error>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_69_1()
{
}

uint64_t PluginPrewarmProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  PluginPrewarmProvider.init()();
  return v0;
}

void *PluginPrewarmProvider.init()()
{
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = OUTLINED_FUNCTION_1_0(v18);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_8();
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInteractive.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_ss23_ContiguousArrayStorageCySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v14 = *(v10 + 72);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_266966D90;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v8, *MEMORY[0x277D85260], v18);
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v16;
  return v0;
}

Swift::Void __swiftcall PluginPrewarmProvider.prewarm(refId:)(Swift::String refId)
{
  v2 = v1;
  object = refId._object;
  countAndFlagsBits = refId._countAndFlagsBits;
  v5 = *(v1 + 32);
  if (v5 && (*(v2 + 24) == refId._countAndFlagsBits ? (v6 = v5 == refId._object) : (v6 = 0), v6 || (OUTLINED_FUNCTION_47_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriContacts);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v9 = 136315138;
      v10 = OUTLINED_FUNCTION_47_0();
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
      _os_log_impl(&dword_26686A000, oslog, v8, "[PluginPrewarmProvider] refId: %s already prewarmed", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    *(v2 + 24) = countAndFlagsBits;
    *(v2 + 32) = object;

    v13 = one-time initialization token for siriContacts;

    if (v13 != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriContacts);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v17 = 136315138;
      v18 = OUTLINED_FUNCTION_47_0();
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v20);
      _os_log_impl(&dword_26686A000, v15, v16, "[PluginPrewarmProvider] for refId: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    PluginPrewarmProvider.prewarm()();
  }
}

uint64_t PluginPrewarmProvider.prewarm()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v7 = type metadata accessor for DispatchQoS();
  v24 = OUTLINED_FUNCTION_1_0(v7);
  v25 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v23 = *(v0 + 16);
  v30 = closure #1 in PluginPrewarmProvider.prewarm();
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v29 = &block_descriptor_0;
  v14 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_15();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = OUTLINED_FUNCTION_5_25();
  MEMORY[0x26D5E2760](v15);
  _Block_release(v14);
  v16 = *(v4 + 8);
  v17 = OUTLINED_FUNCTION_47_0();
  v16(v17);
  v18 = *(v25 + 8);
  v18(v13, v24);
  v30 = closure #2 in PluginPrewarmProvider.prewarm();
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v29 = &block_descriptor_7;
  v19 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_3_15();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = OUTLINED_FUNCTION_5_25();
  MEMORY[0x26D5E2760](v20);
  _Block_release(v19);
  v21 = OUTLINED_FUNCTION_47_0();
  v16(v21);
  return (v18)(v13, v24);
}

uint64_t closure #1 in PluginPrewarmProvider.prewarm()()
{
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26686A000, v1, v2, "[PluginPrewarmProvider] ContactResolver.refreshSharedCache()", v3, 2u);
    MEMORY[0x26D5E3300](v3, -1, -1);
  }

  type metadata accessor for ContactResolver();
  return static ContactResolver.refreshSharedCache()();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t closure #2 in PluginPrewarmProvider.prewarm()()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Signpost.OpenSignpost();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v5 = &v3[*(v0 + 20)];
  *v5 = "PrewarmVision";
  *(v5 + 1) = 13;
  v5[16] = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriContacts);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26686A000, v7, v8, "[PluginPrewarmProvider] prewarmVision", v9, 2u);
    MEMORY[0x26D5E3300](v9, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CE2D00]) init];
  [v10 setRevision_];
  v11 = [objc_opt_self() globalSession];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_266966A40;
  *(v12 + 32) = v10;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for VNRequest, 0x277CE2DF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29[0] = 0;
  v14 = [v11 prepareForPerformingRequests:isa error:v29];

  if (v14)
  {
    v15 = v29[0];
  }

  else
  {
    v16 = v29[0];
    v17 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v29);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_26686A000, v19, v20, "[PluginPrewarmProvider] prewarmVision encountered error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x26D5E3300](v22, -1, -1);
      MEMORY[0x26D5E3300](v21, -1, -1);
    }

    else
    {
    }
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  result = outlined destroy of Signpost.OpenSignpost(v3);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PluginPrewarmProvider.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t PluginPrewarmProvider.__deallocating_deinit()
{
  PluginPrewarmProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t GenericViews.buildConfirmationViewForMacAndCarPlay(contactAttributeType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  v17 = xmmword_266966A40;
  *(v6 + 16) = xmmword_266966A40;
  v7 = swift_allocObject();
  *(v7 + 16) = v17;
  *(v7 + 32) = static ContactsDirectInvocations.confirm()();
  v8 = GenericViews.getConfirmText(forAttribute:)(a1);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v17;
  *(v11 + 32) = static ContactsDirectInvocations.deny()();
  ContactsLabelCATs.cancel()();
  v12 = Result<>.firstPrint.getter();
  v14 = v13;
  outlined destroy of Result<TemplatingResult, Error>(v5);
  if (!v14)
  {
    v12 = static String.EMPTY.getter();
    v14 = v15;
  }

  type metadata accessor for SAUIConfirmationView();
  *(v6 + 32) = SAUIConfirmationView.init(confirmCommands:confirmText:denyCommands:denyText:)(v7, v8, v10, v11, v12, v14);
  return v6;
}

uint64_t GenericViews.getConfirmText(forAttribute:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  if (a1 == 6)
  {
    ContactsLabelCATs.save()();
    v9 = Result<>.firstPrint.getter();
    v11 = v13;
    v12 = v6;
  }

  else
  {
    if (a1 != 10)
    {
      return static String.EMPTY.getter();
    }

    ContactsLabelCATs.yes()();
    v9 = Result<>.firstPrint.getter();
    v11 = v10;
    v12 = v8;
  }

  outlined destroy of Result<TemplatingResult, Error>(v12);
  if (!v11)
  {
    return static String.EMPTY.getter();
  }

  return v9;
}

unint64_t type metadata accessor for SAUIConfirmationView()
{
  result = lazy cache variable for type metadata for SAUIConfirmationView;
  if (!lazy cache variable for type metadata for SAUIConfirmationView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAUIConfirmationView);
  }

  return result;
}

uint64_t DialogLocationAddress.init(postalAddress:localeString:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a1)
  {
    v8 = type metadata accessor for DialogLocationAddress.Builder();
    OUTLINED_FUNCTION_2_6(v8);
    v9 = a1;
    DialogLocationAddress.Builder.init()();
    type metadata accessor for ContactsLabelCATs();
    static CATOption.defaultMode.getter();
    v10 = CATWrapper.__allocating_init(options:globals:)();
    v11 = outlined bridged method (pb) of @objc PostalAddress.handleLabel.getter(v9);
    if (v12)
    {
      v11 = String.sanitizeCNLabel.getter();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v17 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v11, v14, a2, a3, 3, v10);

    dispatch thunk of DialogLocationAddress.Builder.withName(print:speak:)();

    outlined bridged method (pb) of @objc PostalAddress.country.getter(v9);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v17)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withCountry(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.isoCountryCode.getter(v9);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v17)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withCountryCode(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.state.getter(v9);
    Optional<A>.emptyToNil.getter();
    v19 = v18;

    if (v19)
    {
      OUTLINED_FUNCTION_3_16();
      dispatch thunk of DialogLocationAddress.Builder.withAdministrativeArea(print:speak:)();
      OUTLINED_FUNCTION_3_16();
      dispatch thunk of DialogLocationAddress.Builder.withAdministrativeAreaCode(print:speak:)();
    }

    outlined bridged method (pb) of @objc PostalAddress.subAdministrativeArea.getter(v9);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v19)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withSubAdministrativeArea(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.city.getter(v9);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v19)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withLocality(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.postalCode.getter(v9);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v19)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withPostCode(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.street.getter(v9);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v19)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withThoroughfare(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    v20 = dispatch thunk of DialogLocationAddress.__allocating_init(builder:)();

    return v20;
  }

  else
  {

    v15 = type metadata accessor for DialogLocationAddress.Builder();
    OUTLINED_FUNCTION_2_6(v15);
    DialogLocationAddress.Builder.init()();

    return dispatch thunk of DialogLocationAddress.__allocating_init(builder:)();
  }
}

uint64_t DialogLocation.init(locationAddress:)()
{
  v0 = type metadata accessor for DialogLocation.Builder();
  OUTLINED_FUNCTION_2_6(v0);
  DialogLocation.Builder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_266966A40;
  v2 = type metadata accessor for DialogLocationValue.Builder();
  OUTLINED_FUNCTION_2_6(v2);
  DialogLocationValue.Builder.init()();

  dispatch thunk of DialogLocationValue.Builder.withAddress(_:)();

  v3 = dispatch thunk of DialogLocationValue.Builder.build()();

  *(v1 + 32) = v3;
  dispatch thunk of DialogLocation.Builder.withValues(_:)();

  v4 = dispatch thunk of DialogLocation.__allocating_init(builder:)();

  return v4;
}

uint64_t OUTLINED_FUNCTION_1_29()
{
}

uint64_t OUTLINED_FUNCTION_2_32()
{
}

id GetContactIntentHandler.__allocating_init(contactService:contactResolver:)(uint64_t *a1, uint64_t *a2)
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
  v21 = specialized GetContactIntentHandler.init(contactService:contactResolver:)(v12, v19, v6, v8, v14, v7, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v21;
}

uint64_t GetContactIntentHandler.resolveSiriMatches(for:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Signpost.OpenSignpost();
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](GetContactIntentHandler.resolveSiriMatches(for:), 0, 0);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_3_17();
  v6 = v1 + *(v2 + 20);
  *v6 = "ResolveSiriMatchesGetContact";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = specialized BaseIntentHandler.resolveSiriMatches(for:)(v4);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_3_17();
  outlined destroy of Signpost.OpenSignpost(v1);

  v8 = v0[1];

  return v8(v7);
}

uint64_t @objc closure #1 in GetContactIntentHandler.resolveSiriMatches(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in GetContactIntentHandler.resolveSiriMatches(for:);

  return GetContactIntentHandler.resolveSiriMatches(for:)();
}

uint64_t @objc closure #1 in GetContactIntentHandler.resolveSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  type metadata accessor for GetContactSiriMatchesResolutionResult();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t GetContactIntentHandler.confirm(intent:)()
{
  return MEMORY[0x2822009F8](GetContactIntentHandler.confirm(intent:), 0, 0);
}

{
  OUTLINED_FUNCTION_4();
  objc_allocWithZone(type metadata accessor for GetContactIntentResponse());
  v1 = GetContactIntentResponse.init(code:userActivity:)(4, 0);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc closure #1 in GetContactIntentHandler.confirm(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in GetContactIntentHandler.confirm(intent:);

  return GetContactIntentHandler.confirm(intent:)();
}

uint64_t GetContactIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v2 = type metadata accessor for Signpost.OpenSignpost();
  v0[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](GetContactIntentHandler.handle(intent:), 0, 0);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v2 = v0[3];
    v1 = v0[4];
    static Signpost.contactsLog;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v3 = v1 + *(v2 + 20);
    *v3 = "HandleGetContact";
    *(v3 + 8) = 16;
    *(v3 + 16) = 2;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriContacts);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[2];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_26686A000, v7, v8, "[GetContactIntent] Handling intent: %@", v10, 0xCu);
      outlined destroy of NSObject?(v11);
      MEMORY[0x26D5E3300](v11, -1, -1);
      MEMORY[0x26D5E3300](v10, -1, -1);
    }

    v13 = v0[2];

    Contact = outlined bridged method (pb) of @objc GetContactIntent.siriMatches.getter(v13);
    if (!Contact)
    {
      break;
    }

    v15 = Contact;
    v16 = specialized Array._getCount()(Contact);
    v17 = 0;
    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v16 == v17)
      {

        v30 = v35;
        goto LABEL_22;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D5E29D0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = outlined bridged method (pb) of @objc INObject.identifier.getter(v18);
      v23 = v22;

      ++v17;
      if (v23)
      {
        v24 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1, v35);
          v24 = v28;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v35 = v24;
        if (v26 >= v25 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v24);
          v35 = v29;
        }

        *(v35 + 16) = v26 + 1;
        v27 = v35 + 16 * v26;
        *(v27 + 32) = v21;
        *(v27 + 40) = v23;
        v17 = v20;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_30_2();
  }

  v30 = 0;
LABEL_22:
  v31 = v0[4];
  type metadata accessor for GetContactIntentResponse();
  v32 = GetContactIntentResponse.__allocating_init(contactIdentifiers:code:)(v30, 4);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v31);

  v33 = v0[1];

  return v33(v32);
}

uint64_t @objc GetContactIntentHandler.resolveSiriMatches(for:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return _runTaskForBridgedAsyncMethod(_:)(a6, v10);
}

uint64_t @objc closure #1 in GetContactIntentHandler.handle(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in GetContactIntentHandler.handle(intent:);

  return GetContactIntentHandler.handle(intent:)();
}

uint64_t @objc closure #1 in GetContactIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_0();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  v9 = *(v7 + 8);

  return v9();
}

id GetContactIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetContactIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetContactIntentHandler()
{
  result = type metadata singleton initialization cache for GetContactIntentHandler;
  if (!type metadata singleton initialization cache for GetContactIntentHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for @objc closure #1 in GetContactIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_0_36(v5);

  return v7(v6);
}

uint64_t partial apply for @objc closure #1 in GetContactIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_0_36(v5);

  return v7(v6);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in GetContactIntentHandler.resolveSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_0_36(v5);

  return v7(v6);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

id specialized GetContactIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t ContactsAgeInfo.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  return result;
}

uint64_t ContactsAgeInfo.Builder.withAge(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ContactsAgeInfo.Builder.withPastAge(_:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t ContactsAgeInfo.Builder.withFutureAge(_:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t ContactsAgeInfo.Builder.withRequestedDate(_:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void *ContactsAgeInfo.Builder.deinit()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t ContactsAgeInfo.Builder.__deallocating_deinit()
{
  ContactsAgeInfo.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t ContactsAgeInfo.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v2 = *(a1 + 32);
  *(v1 + 32) = *(a1 + 24);
  *(v1 + 40) = v2;
  *(v1 + 48) = *(a1 + 40);
  *(v1 + 56) = *(a1 + 48);
  v3 = *(a1 + 56);

  *(v1 + 64) = v3;
  return v1;
}

double ContactsAgeInfo.getProperty(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (!v5 && (OUTLINED_FUNCTION_5_26() & 1) == 0)
  {
    v11 = a1 == 0xD000000000000013 && 0x800000026696E8A0 == a2;
    if (v11 || (OUTLINED_FUNCTION_5_26() & 1) != 0)
    {
      if ((*(v3 + 40) & 1) == 0)
      {
        result = *(v3 + 32);
        *(a3 + 24) = MEMORY[0x277D839F8];
        *a3 = result;
        return result;
      }
    }

    else
    {
      v12 = a1 == 0x65674174736170 && a2 == 0xE700000000000000;
      if (v12 || (OUTLINED_FUNCTION_5_26() & 1) != 0)
      {
        v8 = *(v3 + 48);
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = a1 == 0x6741657275747566 && a2 == 0xE900000000000065;
        if (v13 || (OUTLINED_FUNCTION_5_26() & 1) != 0)
        {
          v8 = *(v3 + 56);
          if (v8)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v15 = a1 == OUTLINED_FUNCTION_6_22() && a2 == v14;
          if (v15 || (OUTLINED_FUNCTION_5_26() & 1) != 0)
          {
            v8 = *(v3 + 64);
            if (v8)
            {
              v9 = type metadata accessor for DialogCalendar();
              goto LABEL_8;
            }
          }
        }
      }
    }

LABEL_17:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = *(v3 + 24);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_7:
  v9 = type metadata accessor for DialogDuration();
LABEL_8:
  *(a3 + 24) = v9;
  *a3 = v8;

  return result;
}

SiriContactsIntents::ContactsAgeInfo::CodingKeys_optional __swiftcall ContactsAgeInfo.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsAgeInfo.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t ContactsAgeInfo.CodingKeys.stringValue.getter(char a1)
{
  result = 6645601;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x65674174736170;
      break;
    case 3:
      result = 0x6741657275747566;
      break;
    case 4:
      result = OUTLINED_FUNCTION_6_22();
      break;
    default:
      return result;
  }

  return result;
}

SiriContactsIntents::ContactsAgeInfo::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsAgeInfo.CodingKeys@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::ContactsAgeInfo::CodingKeys_optional *a2@<X8>)
{
  result.value = ContactsAgeInfo.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsAgeInfo.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsAgeInfo.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsAgeInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsAgeInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsAgeInfo.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return v0;
}

uint64_t ContactsAgeInfo.__deallocating_deinit()
{
  ContactsAgeInfo.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t ContactsAgeInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E7AgeInfoC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E7AgeInfoC10CodingKeysOGMR);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *(v3 + 24);
  HIBYTE(v21) = 0;
  type metadata accessor for DialogDuration();
  OUTLINED_FUNCTION_4_23();
  lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(v14, 255, v15);
  OUTLINED_FUNCTION_1_30();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 48);
    HIBYTE(v21) = 2;
    OUTLINED_FUNCTION_1_30();
    v22 = *(v3 + 56);
    HIBYTE(v21) = 3;
    OUTLINED_FUNCTION_1_30();
    v22 = *(v3 + 64);
    HIBYTE(v21) = 4;
    type metadata accessor for DialogCalendar();
    OUTLINED_FUNCTION_3_18();
    lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(v18, 255, v19);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t ContactsAgeInfo.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ContactsAgeInfo.init(from:)(a1);
  return v2;
}

uint64_t ContactsAgeInfo.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E7AgeInfoC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E7AgeInfoC10CodingKeysOGMR);
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsAgeInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DialogDuration();
    OUTLINED_FUNCTION_4_23();
    lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(v9, 255, v10);
    OUTLINED_FUNCTION_0_37();
    *(v1 + 24) = v17;
    LOBYTE(v17) = 1;
    *(v1 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 40) = v12 & 1;
    OUTLINED_FUNCTION_0_37();
    *(v1 + 48) = v17;
    OUTLINED_FUNCTION_0_37();
    *(v1 + 56) = v17;
    type metadata accessor for DialogCalendar();
    OUTLINED_FUNCTION_3_18();
    lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(v13, 255, v14);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v15 = OUTLINED_FUNCTION_2_33();
    v16(v15);
    *(v1 + 64) = v17;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsAgeInfo@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsAgeInfo.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactsAgeInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_5_26()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[55] = v2;
  v1[56] = v0;
  v1[54] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[57] = OUTLINED_FUNCTION_10_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  v1[58] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for TemplatingResult();
  v1[59] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[60] = v11;
  v13 = *(v12 + 64) + 15;
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  v1[66] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v1[67] = v15;
  v17 = *(v16 + 64);
  v1[68] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  v89 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 440);
  v3 = ParameterResolutionRecord.result.getter();
  v4 = [v3 unsupportedReason];

  LOBYTE(v5) = SiriKitContactUnsupportedReason.init(rawValue:)(v4);
  v6 = v5;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v7 = OUTLINED_FUNCTION_62_1();
  __swift_project_value_buffer(v7, static Logger.siriContacts);
  v8 = OUTLINED_FUNCTION_58_2();
  v9(v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 528);
  if (v12)
  {
    swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_74_1();
    v88 = swift_slowAlloc();
    *v6 = 136315650;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, &v88);
    OUTLINED_FUNCTION_65_2(v17);
    *(v0 + 680) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
    v19 = Optional.debugDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v88);

    v21 = OUTLINED_FUNCTION_64_1();
    v22 = OUTLINED_FUNCTION_36_6();
    v23(v22);
    *(v6 + 24) = v21;
    *v16 = v21;
    OUTLINED_FUNCTION_80_0(&dword_26686A000, v24, v25, "#ContactsUnsupportedValueStrategyAsync<%s> Processing unsupported reason: %s in intentResolutionResult: %@");
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_6();
    LOBYTE(v6) = v87;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v27 = OUTLINED_FUNCTION_36_6();
    v26 = v28(v27);
  }

  v29 = *(v0 + 448);
  if (specialized ContactsStrategy.isSmartEnabled.getter(v26))
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v31))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v32, v33, "#ContactsUnsupportedValueStrategy makeIntentHandledResponse SMART enabled but not yet implemented for the intent");
      OUTLINED_FUNCTION_6();
    }
  }

  switch(v6)
  {
    case 0:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 592) = v34;
      *v34 = v35;
      v34[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v36 = *(v0 + 512);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedAuthFailed()();
      break;
    case 1:
      v69 = *(v0 + 528);
      v70 = *(v0 + 440);
      v71 = *(v0 + 448);
      v72 = *(v71 + 96);
      v73 = *(v71 + 104);
      outlined init with copy of DeviceState(v71 + 16, v0 + 352);
      *(v0 + 681) = *(v71 + 112);

      v74 = ParameterResolutionRecord.intent.getter();
      v75 = [v74 isMe];

      if (v75)
      {
        [v75 BOOLValue];
      }

      v80 = *(v0 + 432);
      v81 = type metadata accessor for AceOutput();
      v82 = MEMORY[0x277D5C1D8];
      v80[3] = v81;
      v80[4] = v82;
      *(v0 + 608) = __swift_allocate_boxed_opaque_existential_1(v80);
      outlined init with copy of DeviceState(v0 + 352, v0 + 104);
      *(v0 + 176) = &type metadata for InstalledAppsProvider;
      *(v0 + 184) = &protocol witness table for InstalledAppsProvider;
      *(v0 + 144) = v73;
      specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
      *(v0 + 616) = v83;
      outlined destroy of MissingMeCardViewBuilder(v0 + 104);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 624) = v84;
      *v84 = v85;
      OUTLINED_FUNCTION_61_2(v84);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)();
      break;
    case 2:
      v43 = *(v0 + 528);
      v44 = *(v0 + 432);
      v45 = *(v0 + 440);
      *(v0 + 552) = ParameterResolutionRecord.intent.getter();
      v46 = type metadata accessor for AceOutput();
      v47 = MEMORY[0x277D5C1D8];
      v44[3] = v46;
      v44[4] = v47;
      __swift_allocate_boxed_opaque_existential_1(v44);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 560) = v48;
      *v48 = v49;
      OUTLINED_FUNCTION_25_2(v48);
      OUTLINED_FUNCTION_10_9();

      result = specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)(v50, v51);
      break;
    case 3:
      v53 = *(v0 + 528);
      v55 = *(v0 + 440);
      v54 = *(v0 + 448);
      v56 = ParameterResolutionRecord.intent.getter();
      *(v0 + 640) = v56;
      swift_getObjectType();
      dynamic_cast_existential_1_unconditional(v56);
      v58 = v57;
      v59 = *(v54 + 96);
      ObjectType = swift_getObjectType();
      (*(v58 + 40))(ObjectType, v58);
      if (!v61)
      {
        static String.EMPTY.getter();
      }

      OUTLINED_FUNCTION_75_0();
      type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_67_2();
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 648) = v66;
      *v66 = v67;
      OUTLINED_FUNCTION_59_4(v66);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedCompanyNotFound(requestedCompany:)();
      break;
    case 4:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 576) = v39;
      *v39 = v40;
      v39[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v41 = *(v0 + 520);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedRelationshipNotFound()();
      break;
    default:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 664) = v76;
      *v76 = v77;
      v76[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v78 = *(v0 + 488);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedAction()();
      break;
  }

  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 600) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 624);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 632) = v0;

  if (v0)
  {
    v9 = *(v3 + 616);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 648);
  v6 = *(v4 + 456);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v9 + 656) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 664);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 672) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v93 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 440);
  v3 = ParameterResolutionRecord.result.getter();
  v4 = [v3 unsupportedReason];

  LOBYTE(v5) = SiriKitContactUnsupportedReason.init(rawValue:)(v4);
  v6 = v5;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v7 = OUTLINED_FUNCTION_62_1();
  __swift_project_value_buffer(v7, static Logger.siriContacts);
  v8 = OUTLINED_FUNCTION_58_2();
  v9(v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 528);
  if (v12)
  {
    swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_74_1();
    v92 = swift_slowAlloc();
    *v6 = 136315650;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, &v92);
    OUTLINED_FUNCTION_65_2(v17);
    *(v0 + 704) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
    v19 = Optional.debugDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v92);

    v21 = OUTLINED_FUNCTION_64_1();
    v22 = OUTLINED_FUNCTION_36_6();
    v23(v22);
    *(v6 + 24) = v21;
    *v16 = v21;
    OUTLINED_FUNCTION_80_0(&dword_26686A000, v24, v25, "#ContactsUnsupportedValueStrategyAsync<%s> Processing unsupported reason: %s in intentResolutionResult: %@");
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_6();
    LOBYTE(v6) = v91;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v27 = OUTLINED_FUNCTION_36_6();
    v26 = v28(v27);
  }

  v29 = *(v0 + 448);
  if (specialized ContactsStrategy.isSmartEnabled.getter(v26))
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v31))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v32, v33, "#ContactsUnsupportedValueStrategy makeIntentHandledResponse SMART enabled but not yet implemented for the intent");
      OUTLINED_FUNCTION_6();
    }
  }

  switch(v6)
  {
    case 0:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 600) = v34;
      *v34 = v35;
      v34[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v36 = *(v0 + 512);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedAuthFailed()();
      break;
    case 1:
      v65 = *(v0 + 528);
      v66 = *(v0 + 440);
      v67 = *(v0 + 448);
      v68 = *(v0 + 432);
      v69 = *(v67 + 96);
      v70 = *(v67 + 104);
      outlined init with copy of DeviceState(v67 + 16, v0 + 352);
      *(v0 + 705) = *(v67 + 112);

      type metadata accessor for NSNumber();
      isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
      [(objc_class *)isa BOOLValue];

      v72 = type metadata accessor for AceOutput();
      *(v0 + 616) = OUTLINED_FUNCTION_82_1(v72, MEMORY[0x277D5C1D8]);
      outlined init with copy of DeviceState(v0 + 352, v0 + 104);
      *(v0 + 176) = &type metadata for InstalledAppsProvider;
      *(v0 + 184) = &protocol witness table for InstalledAppsProvider;
      *(v0 + 144) = v70;
      specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
      *(v0 + 624) = v73;
      outlined destroy of MissingMeCardViewBuilder(v0 + 104);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 632) = v74;
      *v74 = v75;
      OUTLINED_FUNCTION_61_2(v74);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)();
      break;
    case 2:
      v43 = *(v0 + 528);
      v44 = *(v0 + 432);
      v45 = *(v0 + 440);
      *(v0 + 552) = ParameterResolutionRecord.intent.getter();
      v46 = type metadata accessor for AceOutput();
      v47 = MEMORY[0x277D5C1D8];
      v44[3] = v46;
      v44[4] = v47;
      __swift_allocate_boxed_opaque_existential_1(v44);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 560) = v48;
      *v48 = v49;
      OUTLINED_FUNCTION_25_2(v48);
      goto LABEL_31;
    case 3:
      v50 = *(v0 + 528);
      v51 = *(v0 + 440);
      v52 = ParameterResolutionRecord.intent.getter();
      *(v0 + 576) = v52;
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v52))
      {
        v54 = v53;
        v55 = *(*(v0 + 448) + 96);
        ObjectType = swift_getObjectType();
        (*(v54 + 40))(ObjectType, v54);
        if (!v57)
        {
          static String.EMPTY.getter();
        }

        OUTLINED_FUNCTION_75_0();
        type metadata accessor for SpeakableString();
        OUTLINED_FUNCTION_67_2();
        OUTLINED_FUNCTION_50();
        __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 672) = v62;
        *v62 = v63;
        OUTLINED_FUNCTION_59_4(v62);
        OUTLINED_FUNCTION_10_9();

        result = ContactsCommonCATs.unsupportedCompanyNotFound(requestedCompany:)();
      }

      else
      {
        v81 = *(v0 + 528);
        v83 = *(v0 + 432);
        v82 = *(v0 + 440);

        *(v0 + 648) = ParameterResolutionRecord.intent.getter();
        v84 = type metadata accessor for AceOutput();
        v85 = MEMORY[0x277D5C1D8];
        v83[3] = v84;
        v83[4] = v85;
        __swift_allocate_boxed_opaque_existential_1(v83);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 656) = v86;
        *v86 = v87;
        OUTLINED_FUNCTION_25_2(v86);
LABEL_31:
        OUTLINED_FUNCTION_10_9();

        result = specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)(v88, v89);
      }

      break;
    case 4:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 584) = v39;
      *v39 = v40;
      v39[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v41 = *(v0 + 520);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedRelationshipNotFound()();
      break;
    default:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 688) = v77;
      *v77 = v78;
      v77[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v79 = *(v0 + 488);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedAction()();
      break;
  }

  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
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
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 600);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 608) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 640) = v0;

  if (v0)
  {
    v9 = *(v3 + 624);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 672);
  v6 = *(v4 + 456);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v9 + 680) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 688);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 696) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  OUTLINED_FUNCTION_5_3();
  *v14 = v13;
  v16 = *(v15 + 560);
  v17 = *v11;
  OUTLINED_FUNCTION_0();
  *v18 = v17;
  *(v13 + 568) = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_35_7();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_8_6();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = v10[54];
  __swift_destroy_boxed_opaque_existential_0Tm(v10 + 44);
  __swift_deallocate_boxed_opaque_existential_1(v11);
  v12 = v10[79];
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 432);

  __swift_deallocate_boxed_opaque_existential_1(v11);
  v12 = *(v10 + 568);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  v11 = *(v10 + 656);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 584);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 600);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 672);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  OUTLINED_FUNCTION_5_3();
  *v14 = v13;
  v16 = *(v15 + 560);
  v17 = *v11;
  OUTLINED_FUNCTION_0();
  *v18 = v17;
  *(v13 + 568) = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_35_7();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_8_6();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = v10[54];
  __swift_destroy_boxed_opaque_existential_0Tm(v10 + 44);
  __swift_deallocate_boxed_opaque_existential_1(v11);
  v12 = v10[80];
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  OUTLINED_FUNCTION_5_3();
  *v14 = v13;
  v16 = *(v15 + 656);
  v17 = *v11;
  OUTLINED_FUNCTION_0();
  *v18 = v17;
  *(v13 + 664) = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_35_7();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_8_6();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  v11 = *(v10 + 680);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 432);

  __swift_deallocate_boxed_opaque_existential_1(v11);
  v12 = *(v10 + 664);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 592);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 608);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 696);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_39();
  v17 = *(v14 + 616);
  v18 = *(v14 + 608);
  v19 = *(v14 + 681);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_44_4();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 392, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v16 + 8))(v13, v12);
  __swift_destroy_boxed_opaque_existential_0Tm((v14 + 352));
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_28_4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v14 = *(v13 + 640);
  v15 = OUTLINED_FUNCTION_50_5();
  v16 = OUTLINED_FUNCTION_13_6(v15);
  *(v13 + 312) = 0u;
  *(v13 + 328) = 0u;
  *(v13 + 344) = 0;
  OUTLINED_FUNCTION_82_1(v16, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_22_9();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v13 + 312, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v17 = OUTLINED_FUNCTION_18_5();
  v18(v17);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v13 + 312, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_39();
  v13 = *(v12 + 520);
  v14 = *(v12 + 472);
  v15 = *(v12 + 480);
  v16 = *(v12 + 464);
  v17 = *(v12 + 432);
  v18 = *(*(v12 + 448) + 112);
  v19 = type metadata accessor for NLContextUpdate();
  v20 = OUTLINED_FUNCTION_13_6(v19);
  *(v12 + 272) = 0u;
  *(v12 + 288) = 0u;
  *(v12 + 304) = 0;
  OUTLINED_FUNCTION_82_1(v20, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_22_9();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v12 + 272, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v21 = OUTLINED_FUNCTION_18_5();
  v22(v21);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_28_4();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v12 + 272, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_39();
  v14 = *(v12 + 480);
  v13 = *(v12 + 488);
  v16 = *(v12 + 464);
  v15 = *(v12 + 472);
  v17 = *(v12 + 432);
  v18 = *(*(v12 + 448) + 112);
  v19 = type metadata accessor for NLContextUpdate();
  v20 = OUTLINED_FUNCTION_13_6(v19);
  *(v12 + 208) = 0u;
  *(v12 + 224) = 0;
  *(v12 + 192) = 0u;
  v21 = MEMORY[0x277D5C1D8];
  v17[3] = v20;
  v17[4] = v21;
  __swift_allocate_boxed_opaque_existential_1(v17);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v12 + 192, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v22 = OUTLINED_FUNCTION_18_5();
  v23(v22);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_28_4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v12 + 192, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_39();
  v17 = *(v14 + 624);
  v18 = *(v14 + 616);
  v19 = *(v14 + 705);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_44_4();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 392, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v16 + 8))(v13, v12);
  __swift_destroy_boxed_opaque_existential_0Tm((v14 + 352));
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_28_4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v14 = *(v13 + 576);
  v15 = OUTLINED_FUNCTION_50_5();
  v16 = OUTLINED_FUNCTION_13_6(v15);
  *(v13 + 312) = 0u;
  *(v13 + 328) = 0u;
  *(v13 + 344) = 0;
  OUTLINED_FUNCTION_82_1(v16, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_22_9();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v13 + 312, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v17 = OUTLINED_FUNCTION_18_5();
  v18(v17);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v13 + 312, a10, a11, a12);
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 512);
  v16 = *(v14 + 480);
  v37 = *(v14 + 472);
  v17 = *(v14 + 464);
  v18 = *(v14 + 448);
  v19 = *(v14 + 432);
  v20 = *(v18 + 112);
  outlined init with copy of DeviceState(v18 + 16, v14 + 16);
  v21 = *(v18 + 104);
  *(v14 + 88) = &type metadata for InstalledAppsProvider;
  *(v14 + 96) = &protocol witness table for InstalledAppsProvider;
  *(v14 + 56) = v21;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of ErrorViewBuilder(v14 + 16);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = type metadata accessor for AceOutput();
  *(v14 + 248) = 0u;
  *(v14 + 264) = 0;
  *(v14 + 232) = 0u;
  v27 = MEMORY[0x277D5C1D8];
  v19[3] = v26;
  v19[4] = v27;
  __swift_allocate_boxed_opaque_existential_1(v19);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 232, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v17, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v16 + 8))(v15, v37);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_13_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v14 + 232, a10, v37, a12, a13, a14);
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[55] = a2;
  v3[56] = v2;
  v3[54] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v3[59] = v6;
  v7 = *(v6 - 8);
  v3[60] = v7;
  v8 = *(v7 + 64) + 15;
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  v3[66] = v9;
  v10 = *(v9 - 8);
  v3[67] = v10;
  v11 = *(v10 + 64) + 15;
  v3[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
}

uint64_t specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:), 0, 0);
}

{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:), 0, 0);
}

uint64_t specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v1 = v0[10];
  v2 = *(v0[11] + 96);
  GetContactAttributeIntent.requestedName.getter();
  if (v3)
  {
    v4 = v0[13];
    v5 = v0[11];
    String.sanitizeHomophones.getter();

    OUTLINED_FUNCTION_52_4();
    v6 = type metadata accessor for Locale();
    OUTLINED_FUNCTION_26_4(v6);
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.capitalized(with:)();
    OUTLINED_FUNCTION_70_1();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  else
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_54_3();
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_26_4(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[18] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_60_3(v8);
  OUTLINED_FUNCTION_34();

  return ContactsCommonCATs.unsupportedContactNotFound(requestedContact:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v9 + 152) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];

  OUTLINED_FUNCTION_3();
  v6 = v0[19];

  return v5();
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v1 = v0[10];
  v2 = *(v0[11] + 96);
  ModifyContactAttributeIntent.requestedName.getter();
  if (v3)
  {
    v4 = v0[13];
    v5 = v0[11];
    String.sanitizeHomophones.getter();

    OUTLINED_FUNCTION_52_4();
    v6 = type metadata accessor for Locale();
    OUTLINED_FUNCTION_26_4(v6);
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.capitalized(with:)();
    OUTLINED_FUNCTION_70_1();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  else
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_54_3();
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_26_4(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[18] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_60_3(v8);
  OUTLINED_FUNCTION_34();

  return ContactsCommonCATs.unsupportedContactNotFound(requestedContact:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v9 + 152) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v16 = *(v14 + 128);
  v15 = *(v14 + 136);
  v17 = *(v14 + 112);
  v18 = *(v14 + 120);
  v19 = *(v14 + 96);
  v38 = *(v14 + 104);
  v20 = *(v14 + 72);
  v21 = *(*(v14 + 88) + 112);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *(v14 + 48) = 0;
  *(v14 + 32) = 0u;
  *(v14 + 16) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v19, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v26 = *(v16 + 8);
  v27 = OUTLINED_FUNCTION_43();
  v28(v27);

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_13_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v14 + 16, a10, v38, a12, a13, a14);
}

uint64_t ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[61] = v2;
  v1[62] = v0;
  v1[60] = v3;
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[63] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[64] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[65] = v8;
  v10 = *(v9 + 64);
  v1[66] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for ContactsSnippetPluginModel();
  v1[67] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[68] = v12;
  v14 = *(v13 + 64);
  v1[69] = OUTLINED_FUNCTION_10_0();
  v15 = type metadata accessor for ContactsSnippetFlowState();
  v1[70] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v1[71] = v16;
  v18 = *(v17 + 64);
  v1[72] = OUTLINED_FUNCTION_10_0();
  v19 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[73] = v19;
  OUTLINED_FUNCTION_1_1(v19);
  v1[74] = v20;
  v22 = *(v21 + 64);
  v1[75] = OUTLINED_FUNCTION_10_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  OUTLINED_FUNCTION_18_0(v23);
  v25 = *(v24 + 64);
  v1[76] = OUTLINED_FUNCTION_10_0();
  v26 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v1[77] = v26;
  OUTLINED_FUNCTION_1_1(v26);
  v1[78] = v27;
  v29 = *(v28 + 64);
  v1[79] = OUTLINED_FUNCTION_10_0();
  v30 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v30);
  v32 = *(v31 + 64);
  v1[80] = OUTLINED_FUNCTION_10_0();
  v33 = type metadata accessor for SpeakableString();
  v1[81] = v33;
  OUTLINED_FUNCTION_1_1(v33);
  v1[82] = v34;
  v36 = *(v35 + 64);
  v1[83] = OUTLINED_FUNCTION_10_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v37);
  v39 = *(v38 + 64) + 15;
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v40 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_18_0(v40);
  v42 = *(v41 + 64);
  v1[91] = OUTLINED_FUNCTION_10_0();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v43);
  v45 = *(v44 + 64);
  v1[92] = OUTLINED_FUNCTION_10_0();
  v46 = type metadata accessor for TemplatingResult();
  v1[93] = v46;
  OUTLINED_FUNCTION_1_1(v46);
  v1[94] = v47;
  v49 = *(v48 + 64) + 15;
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v50 = type metadata accessor for ParameterIdentifier();
  v1[100] = v50;
  OUTLINED_FUNCTION_1_1(v50);
  v1[101] = v51;
  v53 = *(v52 + 64);
  v1[102] = OUTLINED_FUNCTION_10_0();
  v54 = type metadata accessor for Signpost.OpenSignpost();
  v1[103] = v54;
  OUTLINED_FUNCTION_18_0(v54);
  v56 = *(v55 + 64);
  v1[104] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v57, v58, v59);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v153 = *(v0 + 800);
  v5 = *(v0 + 488);
  v6 = static Signpost.contactsLog;
  *(v0 + 840) = static Signpost.contactsLog;
  v6;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_25_9();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = v1 + *(v2 + 20);
  *v7 = "MakeModifyContactAttributeUnsupportedValueOutput";
  *(v7 + 8) = 48;
  *(v7 + 16) = 2;
  *(v0 + 848) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v8 = ParameterIdentifier.name.getter();
  v10 = v9;
  (*(v4 + 8))(v3, v153);

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  value = ModifyContactAttributeSlots.init(rawValue:)(v11).value;
  if (value == 2)
  {
    v67 = *(v0 + 488);

    v68 = ParameterResolutionRecord.result.getter();
    v69 = [v68 unsupportedReason];

    v70 = ModifyContactAttributeModifyRelationshipUnsupportedReason.init(rawValue:)(v69);
    v71 = v70;
    v73 = v72;
    if ((v72 & 1) == 0)
    {
      if (v70 == 2)
      {
        v120 = *(v0 + 728);
        v121 = *(v0 + 488);
        v122 = *(v0 + 496);
        v123 = ParameterResolutionRecord.intent.getter();
        v124 = _s19SiriContactsIntents39ModifyContactAttributeStrategyProvidingPAAE010getRelatedE06intent14contactServiceSo9CNContactCAA0deF6IntentC_AA0eM8Protocol_ptFAA0def16UnsupportedValueG0C_Tt1g5(v123, v122 + 7);
        *(v0 + 1080) = v124;

        v125 = v122[12];
        type metadata accessor for DialogPerson();
        v126 = v122[6];
        __swift_project_boxed_opaque_existential_1(v122 + 2, v122[5]);
        v127 = v124;
        dispatch thunk of DeviceState.siriLocale.getter();
        *(v0 + 1088) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v127, 1, v120, 0);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 1096) = v128;
        *v128 = v129;
        v128[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
        v130 = *(v0 + 760);
        OUTLINED_FUNCTION_19_8();

        return ModifyContactAttributeCATs.relationshipNotFound(contact:)(v131, v132);
      }

      if (v70 == 1)
      {
        v74 = *(*(v0 + 496) + 96);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 1064) = v75;
        *v75 = v76;
        v75[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
        v77 = *(v0 + 768);
        OUTLINED_FUNCTION_19_8();

        return ModifyContactAttributeCATs.relationshipExists()();
      }
    }

    v83 = *(v0 + 832);
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_4_15();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_1(v84, v85);
    OUTLINED_FUNCTION_7_1();
    v87 = v86;
    *(v0 + 448) = v71;
    *(v0 + 456) = v73 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents022ModifyContactAttributeD29RelationshipUnsupportedReasonOSgMd, &_s19SiriContactsIntents022ModifyContactAttributeD29RelationshipUnsupportedReasonOSgMR);
LABEL_24:
    *v87 = Optional.debugDescription.getter();
    v87[1] = v92;
    swift_storeEnumTagMultiPayload();
    goto LABEL_25;
  }

  if (value != 3)
  {
    if (value == 4)
    {
      v13 = *(v0 + 488);

      v14 = ParameterResolutionRecord.result.getter();
      v15 = [v14 unsupportedReason];

      if (SiriKitContactUnsupportedReason.init(rawValue:)(v15).value != SiriContactsIntents_SiriKitContactUnsupportedReason_missingMeCard)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 888) = v101;
        *v101 = v102;
        v101[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
        v103 = *(v0 + 488);
        v104 = *(v0 + 496);
        v105 = *(v0 + 480);
        OUTLINED_FUNCTION_19_8();

        __asm { BR              X2 }
      }

      v16 = *(v0 + 496);
      v17 = *(v0 + 480);
      v18 = *(v16 + 96);
      v19 = *(v16 + 104);
      *(v0 + 457) = *(v16 + 112);
      v20 = type metadata accessor for AceOutput();
      v21 = MEMORY[0x277D5C1D8];
      v17[3] = v20;
      v17[4] = v21;
      *(v0 + 856) = __swift_allocate_boxed_opaque_existential_1(v17);

      outlined init with copy of DeviceState(v16 + 16, v0 + 200);
      *(v0 + 272) = &type metadata for InstalledAppsProvider;
      *(v0 + 280) = &protocol witness table for InstalledAppsProvider;
      *(v0 + 240) = v19;
      specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
      *(v0 + 864) = v22;
      outlined destroy of MissingMeCardViewBuilder(v0 + 200);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 872) = v23;
      *v23 = v24;
      v23[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      v25 = *(v0 + 792);
      goto LABEL_32;
    }

    v79 = *(v0 + 832);
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_4_15();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_1(v80, v81);
    swift_allocError();
    *v82 = v8;
    v82[1] = v10;
    swift_storeEnumTagMultiPayload();
LABEL_25:
    swift_willThrow();
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_25_9();
    os_signpost(_:dso:log:name:signpostID:)();
    v93 = *(v0 + 832);
    v94 = *(v0 + 816);
    v95 = *(v0 + 792);
    OUTLINED_FUNCTION_11_14();
    v96 = *(v0 + 760);
    v97 = *(v0 + 736);
    v98 = *(v0 + 728);
    OUTLINED_FUNCTION_0_38();
    v146 = *(v0 + 576);
    v148 = *(v0 + 552);
    v150 = *(v0 + 528);
    v152 = *(v0 + 504);
    outlined destroy of Signpost.OpenSignpost(v93);

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19_8();

    __asm { BRAA            X1, X16 }
  }

  v26 = *(v0 + 488);

  v27 = ParameterResolutionRecord.result.getter();
  v28 = [v27 unsupportedReason];

  v29 = ModifyContactAttributeModifyNickNameUnsupportedReason.init(rawValue:)(v28);
  v30 = v29;
  v32 = v31;
  *(v0 + 904) = v29;
  if ((v31 & 1) != 0 || (v29 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v88 = *(v0 + 832);
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_4_15();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_1(v89, v90);
    OUTLINED_FUNCTION_7_1();
    v87 = v91;
    *(v0 + 464) = v30;
    *(v0 + 472) = v32 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents022ModifyContactAttributeD25NickNameUnsupportedReasonOSgMd, &_s19SiriContactsIntents022ModifyContactAttributeD25NickNameUnsupportedReasonOSgMR);
    goto LABEL_24;
  }

  v33 = *(v0 + 496);
  v34 = v33[10];
  v35 = v33[11];
  __swift_project_boxed_opaque_existential_1(v33 + 7, v34);
  v36 = (*(v35 + 24))(v34, v35);
  *(v0 + 912) = v36;
  if (!v36)
  {
    v108 = *(v0 + 640);
    v109 = *(v0 + 496);
    v110 = *(v0 + 480);
    type metadata accessor for ContactsLabelCATs();
    static CATOption.defaultMode.getter();
    v111 = CATWrapper.__allocating_init(options:globals:)();
    *(v0 + 1024) = v111;
    v112 = *(v109 + 96);
    *(v0 + 458) = *(v109 + 112);
    v113 = type metadata accessor for AceOutput();
    v114 = MEMORY[0x277D5C1D8];
    v110[3] = v113;
    v110[4] = v114;
    *(v0 + 1032) = __swift_allocate_boxed_opaque_existential_1(v110);
    outlined init with copy of DeviceState(v109 + 16, v0 + 112);
    *(v0 + 184) = &type metadata for InstalledAppsProvider;
    *(v0 + 192) = &protocol witness table for InstalledAppsProvider;
    *(v0 + 152) = v111;

    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
    *(v0 + 1040) = v115;
    outlined destroy of MissingMeCardViewBuilder(v0 + 112);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 1048) = v116;
    *v116 = v117;
    v116[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v118 = *(v0 + 776);
LABEL_32:
    OUTLINED_FUNCTION_19_8();

    return ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)();
  }

  v37 = v36;
  v38 = *(v0 + 728);
  v147 = *(v0 + 720);
  v154 = *(v0 + 664);
  v39 = *(v0 + 496);
  v149 = *(v0 + 712);
  v151 = *(v0 + 488);
  type metadata accessor for DialogPerson();
  v40 = v39[6];
  __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
  v41 = v37;
  dispatch thunk of DeviceState.siriLocale.getter();
  v42 = v39[15];
  v43 = v42;
  *(v0 + 920) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v41, 0, v38, v42);
  DialogPerson.nickname.getter();
  dispatch thunk of DialogPerson.fullName.getter();
  v44 = ParameterResolutionRecord.intent.getter();
  v45 = [v44 modifyOperation];

  ModifyOperation.stringify.getter(v45);
  v46 = SpeakableString.init(print:speak:)();
  v47 = specialized ContactsStrategy.isSmartEnabled.getter(v46);
  v48 = *(v0 + 664);
  v49 = *(v0 + 656);
  v50 = *(v0 + 648);
  if (v47)
  {
    v51 = *(v0 + 704);
    v52 = *(v0 + 696);
    v53 = *(v0 + 640);
    type metadata accessor for ModifyContactAttributeCATsModern();
    static CATOption.defaultMode.getter();
    *(v0 + 928) = CATWrapperSimple.__allocating_init(options:globals:)();
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v50);
    (*(v49 + 16))(v52, v48, v50);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v50);
    v60 = swift_task_alloc();
    *(v0 + 936) = v60;
    *v60 = v0;
    v60[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v61 = *(v0 + 720);
    v62 = *(v0 + 712);
    v63 = *(v0 + 704);
    v64 = *(v0 + 696);
    OUTLINED_FUNCTION_19_8();

    return ModifyContactAttributeCATsModern.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)();
  }

  else
  {
    v134 = *(v0 + 680);
    v135 = *(v0 + 672);
    v136 = *(*(v0 + 496) + 96);
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v50);
    (*(v49 + 16))(v135, v48, v50);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v50);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 1008) = v143;
    *v143 = v144;
    OUTLINED_FUNCTION_21_12(v143);
    OUTLINED_FUNCTION_19_8();

    return ModifyContactAttributeCATs.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)();
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 872);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 880) = v0;

  if (v0)
  {
    v9 = *(v3 + 864);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 888);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 896) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[117];
  v6 = *v1;
  OUTLINED_FUNCTION_9_6();
  *v7 = v6;
  *(v9 + 944) = v8;
  *(v9 + 952) = v0;

  v10 = v2[116];
  v11 = v2[88];
  v12 = v2[87];

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  v1 = v0[113];
  v2 = v0[106];
  v3 = v0[61];
  v4 = v0[62];
  v0[120] = ParameterResolutionRecord.intent.getter();
  outlined init with copy of DeviceState(v4 + 56, (v0 + 41));
  if (v1 != 1)
  {
    goto LABEL_4;
  }

  v5 = v0[86];
  v6 = v0[81];
  outlined init with copy of SpeakableString?(v0[90], v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  v8 = v0[86];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[86], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_4:
    v9 = static String.EMPTY.getter();
    v11 = v10;
    goto LABEL_6;
  }

  v12 = v0[82];
  v13 = v0[81];
  v14 = v0[86];
  v9 = SpeakableString.print.getter();
  v11 = v15;
  v16 = *(v12 + 8);
  v17 = OUTLINED_FUNCTION_43();
  v18(v17);
LABEL_6:
  v19 = v0[80];
  v20 = v0[75];
  v21 = v0[74];
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[71];
  v25 = v0[70];
  *v20 = v9;
  v20[1] = v11;
  v26 = *MEMORY[0x277D55AB8];
  (*(v21 + 104))();
  (*(v24 + 104))(v23, *MEMORY[0x277D55970], v25);
  type metadata accessor for ContactsLabelCATsModern();
  static CATOption.defaultMode.getter();
  v0[121] = CATWrapperSimple.__allocating_init(options:globals:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[122] = v27;
  *v27 = v28;
  v27[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v29 = v0[76];
  v30 = v0[75];
  v31 = v0[72];
  OUTLINED_FUNCTION_8_6();

  return static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)();
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v5 = v4[122];
  v6 = v4[121];
  v7 = v4[120];
  v8 = v4[75];
  v9 = v4[74];
  v10 = v4[73];
  v11 = v4[72];
  v12 = v4[71];
  v13 = v4[70];
  v14 = *v0;
  OUTLINED_FUNCTION_0();
  *v15 = v14;

  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 328));
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_22_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v5 = v4[125];
  v6 = v4[124];
  v7 = v4[123];
  v8 = *v0;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 368));
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[126];
  *v4 = *v1;
  v3[127] = v0;

  v6 = v2[85];
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v2[84], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 1048);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 1056) = v0;

  if (v0)
  {
    v9 = *(v3 + 1040);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 1064);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 1072) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 1096);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 1104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 1088);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}