uint64_t one-time initialization function for siriContacts()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriContacts);
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.siriContacts.unsafeMutableAddressor()
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for siriContacts);
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.siriContacts);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.siriContacts.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for siriContacts);
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.siriContacts);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return _swift_once(a1, one-time initialization function for siriContacts);
}

uint64_t ContactsFlowUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  v1 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v45 = v3;
  v46 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel();
  v10 = OUTLINED_FUNCTION_0_0(ContactAttributeSnippetModel);
  v44 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel();
  v18 = OUTLINED_FUNCTION_0_0(ContactSnippetModel);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = type metadata accessor for ContactsSnippetPluginModel();
  v27 = OUTLINED_FUNCTION_0_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_1_0();
  v34 = v33 - v32;
  (*(v29 + 16))(v33 - v32, a1, v26);
  v35 = (*(v29 + 88))(v34, v26);
  if (v35 == enum case for ContactsSnippetPluginModel.getContact(_:))
  {
    v36 = OUTLINED_FUNCTION_10();
    v37(v36);
    (*(v20 + 32))(v25, v34, ContactSnippetModel);
    v38 = ContactsFlowUIPlugin.makeGetContactView(for:)();
    (*(v20 + 8))(v25, ContactSnippetModel);
    return v38;
  }

  if (v35 == enum case for ContactsSnippetPluginModel.getContactAttribute(_:))
  {
    v39 = OUTLINED_FUNCTION_10();
    v40(v39);
    (*(v44 + 32))(v16, v34, ContactAttributeSnippetModel);
    v38 = ContactsFlowUIPlugin.makeGetContactAttributeView(for:)();
    (*(v44 + 8))(v16, ContactAttributeSnippetModel);
    return v38;
  }

  if (v35 == enum case for ContactsSnippetPluginModel.modifyContactAttribute(_:))
  {
    v41 = OUTLINED_FUNCTION_10();
    v42(v41);
    (*(v45 + 32))(v8, v34, v46);
    v38 = ContactsFlowUIPlugin.makeModifyContactAttributeView(for:)(v8);
    (*(v45 + 8))(v8, v46);
    return v38;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t ContactsFlowUIPlugin.makeGetContactView(for:)()
{
  v74 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_0_0(v74);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  ContactView = type metadata accessor for GetContactView();
  v7 = OUTLINED_FUNCTION_0_0(ContactView);
  v75 = v8;
  v76 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR) - 8) + 64);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_7();
  v71 = v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
  OUTLINED_FUNCTION_2(v72);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_7();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E17setHostBackgroundyQrAD0fG0OSgFQOyAA15ModifiedContentVy012SiriContactsB0010GetContactC0OAA01_G13StyleModifierVyAA8GradientVGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E17setHostBackgroundyQrAD0fG0OSgFQOyAA15ModifiedContentVy012SiriContactsB0010GetContactC0OAA01_G13StyleModifierVyAA8GradientVGG_Qo_MR);
  OUTLINED_FUNCTION_0_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_7();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  OUTLINED_FUNCTION_0_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_18();
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel();
  v28 = OUTLINED_FUNCTION_0_0(ContactSnippetModel);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_1_0();
  v33 = OUTLINED_FUNCTION_21();
  v34 = OUTLINED_FUNCTION_0_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_1_0();
  v41 = (v40 - v39);
  GetContactSnippetModel.flowState.getter();
  v42 = OUTLINED_FUNCTION_16();
  v44 = v43(v42);
  if (v44 == enum case for ContactsSnippetFlowState.confirm(_:))
  {
    (*(v36 + 8))(v41, v33);
    Logger.siriContacts.unsafeMutableAddressor();
    v45 = OUTLINED_FUNCTION_6();
    v46(v45);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23(&dword_0, v49, v50, "#ContactsFlowUIPlugin makeGetContactView called for confirmation state, no view expected");
    }

    (*(v1 + 8))(v0, v13);
    return View.eraseToAnyView()();
  }

  if (v44 == enum case for ContactsSnippetFlowState.intentHandled(_:))
  {
    v51 = OUTLINED_FUNCTION_5();
    v41(v51);
    GetContactSnippetModel.contact.getter();
    CodableContact.wrappedValue.getter();
    v52 = OUTLINED_FUNCTION_12();
    v53(v52);
    v54 = outlined bridged method (ob) of @objc CNContact.thumbnailImageData.getter(v2);
    v56 = v55;
    static ContactsFlowImageColorGenerator.colors(for:)();
    outlined consume of Data?(v54, v56);
    static ContactsFlowImageColorGenerator.shouldDisplayLightText(against:)();
    GetContactSnippetModel.shouldDisplayLightText.setter();
    v57 = OUTLINED_FUNCTION_17();
    v41(v57);
    (*(v75 + 104))(v2, enum case for GetContactView.intentHandled(_:), v76);
    Gradient.init(colors:)();
    v58 = static Edge.Set.all.getter();
    *v71 = OUTLINED_FUNCTION_14(v58);
    v24 = enum case for HostBackground.color(_:);
    v59 = type metadata accessor for HostBackground();
    OUTLINED_FUNCTION_2(v59);
    (*(v60 + 104))(v71, v24, v59);
    OUTLINED_FUNCTION_20();
    Contact = lazy protocol witness table accessor for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_8(Contact);
    outlined destroy of HostBackground?(v71, &_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
    outlined destroy of HostBackground?(v2, &_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_22();
    v62 = OUTLINED_FUNCTION_13();
    v63(v62);
    (*(v30 + 8))(v0, v36);
    return v24;
  }

  if (v44 == enum case for ContactsSnippetFlowState.unsupported(_:))
  {
    v64 = OUTLINED_FUNCTION_15();
    v65(v64);
    v66 = OUTLINED_FUNCTION_11();
    v67(v66);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type GetContactView and conformance GetContactView, &type metadata accessor for GetContactView);
    View.eraseToAnyView()();
    v68 = OUTLINED_FUNCTION_19();
    v69(v68);
    return v24;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t ContactsFlowUIPlugin.makeGetContactAttributeView(for:)()
{
  v74 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_0_0(v74);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  ContactAttributeView = type metadata accessor for GetContactAttributeView();
  v7 = OUTLINED_FUNCTION_0_0(ContactAttributeView);
  v75 = v8;
  v76 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR) - 8) + 64);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_7();
  v71 = v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
  OUTLINED_FUNCTION_2(v72);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_7();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E17setHostBackgroundyQrAD0fG0OSgFQOyAA15ModifiedContentVy012SiriContactsB0019GetContactAttributeC0OAA01_G13StyleModifierVyAA8GradientVGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E17setHostBackgroundyQrAD0fG0OSgFQOyAA15ModifiedContentVy012SiriContactsB0019GetContactAttributeC0OAA01_G13StyleModifierVyAA8GradientVGG_Qo_MR);
  OUTLINED_FUNCTION_0_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_7();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  OUTLINED_FUNCTION_0_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_18();
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel();
  v28 = OUTLINED_FUNCTION_0_0(ContactAttributeSnippetModel);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_1_0();
  v33 = OUTLINED_FUNCTION_21();
  v34 = OUTLINED_FUNCTION_0_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_1_0();
  v41 = (v40 - v39);
  GetContactAttributeSnippetModel.flowState.getter();
  v42 = OUTLINED_FUNCTION_16();
  v44 = v43(v42);
  if (v44 == enum case for ContactsSnippetFlowState.confirm(_:))
  {
    (*(v36 + 8))(v41, v33);
    Logger.siriContacts.unsafeMutableAddressor();
    v45 = OUTLINED_FUNCTION_6();
    v46(v45);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23(&dword_0, v49, v50, "#ContactsFlowUIPlugin makeGetContactAttributeView called for confirmation state, no view expected");
    }

    (*(v1 + 8))(v0, v13);
    return View.eraseToAnyView()();
  }

  if (v44 == enum case for ContactsSnippetFlowState.intentHandled(_:))
  {
    v51 = OUTLINED_FUNCTION_5();
    v41(v51);
    GetContactAttributeSnippetModel.contact.getter();
    CodableContact.wrappedValue.getter();
    v52 = OUTLINED_FUNCTION_12();
    v53(v52);
    v54 = outlined bridged method (ob) of @objc CNContact.thumbnailImageData.getter(v2);
    v56 = v55;
    static ContactsFlowImageColorGenerator.colors(for:)();
    outlined consume of Data?(v54, v56);
    static ContactsFlowImageColorGenerator.shouldDisplayLightText(against:)();
    GetContactAttributeSnippetModel.shouldDisplayLightText.setter();
    v57 = OUTLINED_FUNCTION_17();
    v41(v57);
    (*(v75 + 104))(v2, enum case for GetContactAttributeView.intentHandled(_:), v76);
    Gradient.init(colors:)();
    v58 = static Edge.Set.all.getter();
    *v71 = OUTLINED_FUNCTION_14(v58);
    v24 = enum case for HostBackground.color(_:);
    v59 = type metadata accessor for HostBackground();
    OUTLINED_FUNCTION_2(v59);
    (*(v60 + 104))(v71, v24, v59);
    OUTLINED_FUNCTION_20();
    ContactAttribute = lazy protocol witness table accessor for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_8(ContactAttribute);
    outlined destroy of HostBackground?(v71, &_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
    outlined destroy of HostBackground?(v2, &_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_22();
    v62 = OUTLINED_FUNCTION_13();
    v63(v62);
    (*(v30 + 8))(v0, v36);
    return v24;
  }

  if (v44 == enum case for ContactsSnippetFlowState.unsupported(_:))
  {
    v64 = OUTLINED_FUNCTION_15();
    v65(v64);
    v66 = OUTLINED_FUNCTION_11();
    v67(v66);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type GetContactAttributeView and conformance GetContactAttributeView, &type metadata accessor for GetContactAttributeView);
    View.eraseToAnyView()();
    v68 = OUTLINED_FUNCTION_19();
    v69(v68);
    return v24;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t ContactsFlowUIPlugin.makeModifyContactAttributeView(for:)(uint64_t a1)
{
  v3 = type metadata accessor for ModifyContactAttributeView();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  v9 = type metadata accessor for ContactsSnippetFlowState();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  ModifyContactAttributeSnippetModel.flowState.getter();
  v18 = (*(v12 + 88))(v17, v9);
  if (v18 == enum case for ContactsSnippetFlowState.confirm(_:))
  {
    (*(v12 + 8))(v17, v9);
    v19 = type metadata accessor for ModifyContactAttributeSnippetModel();
    OUTLINED_FUNCTION_2(v19);
    (*(v20 + 16))(v1, a1);
    v21 = &enum case for ModifyContactAttributeView.confirm(_:);
LABEL_5:
    (*(v6 + 104))(v1, *v21, v3);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type ModifyContactAttributeView and conformance ModifyContactAttributeView, &type metadata accessor for ModifyContactAttributeView);
    v24 = View.eraseToAnyView()();
    (*(v6 + 8))(v1, v3);
    return v24;
  }

  if (v18 == enum case for ContactsSnippetFlowState.intentHandled(_:))
  {
    v22 = type metadata accessor for ModifyContactAttributeSnippetModel();
    OUTLINED_FUNCTION_2(v22);
    (*(v23 + 16))(v1, a1);
    v21 = &enum case for ModifyContactAttributeView.intentHandled(_:);
    goto LABEL_5;
  }

  if (v18 == enum case for ContactsSnippetFlowState.unsupported(_:))
  {
    return View.eraseToAnyView()();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for SnippetProviding.init() in conformance ContactsFlowUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsFlowUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
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

uint64_t outlined bridged method (ob) of @objc CNContact.thumbnailImageData.getter(void *a1)
{
  v2 = [a1 thumbnailImageData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type GetContactView and conformance GetContactView, &type metadata accessor for GetContactView);
    lazy protocol witness table accessor for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>);
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

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8GradientVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA8GradientVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type GetContactAttributeView and conformance GetContactAttributeView, &type metadata accessor for GetContactAttributeView);
    lazy protocol witness table accessor for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of HostBackground?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;

  return _swift_getOpaqueTypeConformance2(v2 - 96, &opaque type descriptor for <<opaque return type of View.setHostBackground(_:)>>, 1);
}

uint64_t OUTLINED_FUNCTION_5()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{
  v2 = *(*(v1 - 136) + 16);
  result = v0;
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1)
{
  v5 = *(v3 - 176);

  return View.setHostBackground(_:)(v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_11()
{
  v2 = *(v1 - 104);
  v3 = *(*(v1 - 112) + 104);
  return v0;
}

uint64_t OUTLINED_FUNCTION_14(char a1)
{
  v5 = v2 + *(*(v3 - 160) + 36);
  *v5 = v1;
  *(v5 + 8) = a1;

  return static Color.clear.getter();
}

uint64_t OUTLINED_FUNCTION_15()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_20()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_21()
{

  return type metadata accessor for ContactsSnippetFlowState();
}

uint64_t OUTLINED_FUNCTION_22()
{
  v2 = *(v0 - 144);

  return View.eraseToAnyView()();
}

void OUTLINED_FUNCTION_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}