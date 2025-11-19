uint64_t sub_266BFE678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_266BFE6E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_266BFE754(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for AppStorePunchoutButtonViewModel();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_266BFE80C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for AppStorePunchoutButtonViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266BFE8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_266BFE968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_266BFEAC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_266BFEB7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266BFEC50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for BinaryButtonSnippetViewModel();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_266BFED08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for BinaryButtonSnippetViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t protocol witness for SnippetProviding.init() in conformance SiriExpanseInternalUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t specialized SiriExpanseInternalUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  v2 = type metadata accessor for BinaryButtonSnippetView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(*(type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppStorePunchoutButtonView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*(type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(type metadata accessor for ExpanseUIModel(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ExpanseUIModel(a1, v18, type metadata accessor for ExpanseUIModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of ExpanseUIModel.BinaryButtonSnippetModel(v18, v8, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    outlined init with copy of ExpanseUIModel(v8, v5 + *(v2 + 20), type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F60]);
    *v5 = EnvironmentObject.init()();
    v5[1] = v19;
    lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type BinaryButtonSnippetView and conformance BinaryButtonSnippetView, type metadata accessor for BinaryButtonSnippetView);
    v20 = View.eraseToAnyView()();
    outlined destroy of BinaryButtonSnippetView(v5, type metadata accessor for BinaryButtonSnippetView);
    v21 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel;
    v22 = v8;
  }

  else
  {
    outlined init with take of ExpanseUIModel.BinaryButtonSnippetModel(v18, v15, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    outlined init with copy of ExpanseUIModel(v15, v12 + *(v9 + 20), type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F60]);
    *v12 = EnvironmentObject.init()();
    v12[1] = v23;
    lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type AppStorePunchoutButtonView and conformance AppStorePunchoutButtonView, type metadata accessor for AppStorePunchoutButtonView);
    v20 = View.eraseToAnyView()();
    outlined destroy of BinaryButtonSnippetView(v12, type metadata accessor for AppStorePunchoutButtonView);
    v21 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel;
    v22 = v15;
  }

  outlined destroy of BinaryButtonSnippetView(v22, v21);
  return v20;
}

uint64_t outlined init with take of ExpanseUIModel.BinaryButtonSnippetModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ExpanseUIModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of BinaryButtonSnippetView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BinaryButtonSnippetViewModel()
{
  result = type metadata singleton initialization cache for BinaryButtonSnippetViewModel;
  if (!type metadata singleton initialization cache for BinaryButtonSnippetViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for BinaryButtonSnippetViewModel()
{
  result = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AppStorePunchoutButtonView()
{
  result = type metadata singleton initialization cache for AppStorePunchoutButtonView;
  if (!type metadata singleton initialization cache for AppStorePunchoutButtonView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AppStorePunchoutButtonView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppStorePunchoutButtonViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for EnvironmentObject<Context>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<Context>)
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context();
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<Context>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Context and conformance Context()
{
  result = lazy protocol witness table cache variable for type Context and conformance Context;
  if (!lazy protocol witness table cache variable for type Context and conformance Context)
  {
    type metadata accessor for Context();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Context and conformance Context);
  }

  return result;
}

uint64_t closure #1 in AppStorePunchoutButtonView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for ButtonItemButtonStyle.Role();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for AppStorePunchoutButtonView() - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = v18 - v13;
  outlined init with copy of AppStorePunchoutButtonView(a1, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStorePunchoutButtonView);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  outlined init with take of AppStorePunchoutButtonView(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v18[4] = a1;
  Button.init(action:label:)();
  (*(v4 + 104))(v7, *MEMORY[0x277D63A88], v3);
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  View.buttonRole(_:)();
  (*(v4 + 8))(v7, v3);
  return (*(v11 + 8))(v14, v10);
}

uint64_t AppStorePunchoutButtonView.onButtonTapped()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v0 + *(type metadata accessor for AppStorePunchoutButtonView() + 20);
    v11 = type metadata accessor for Context();
    v12 = &protocol witness table for Context;
    v10[0] = v1;
    v3 = *(type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0) + 20);
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    Loggable.wrappedValue.getter();
    v5 = AppStorePunchoutButtonViewModel.makeAppStorePunchout(appName:)();

    v6 = *__swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = v5;
    dispatch thunk of Context.perform(aceCommand:)();

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = *(v0 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AppStorePunchoutButtonView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for AppStorePunchoutButtonViewModel() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppStorePunchoutButtonView();
  outlined init with copy of AppStorePunchoutButtonView(a1 + *(v7 + 20), v6, type metadata accessor for AppStorePunchoutButtonViewModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  v8 = v14;
  v9 = v15;
  outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v6);
  v14 = v8;
  v15 = v9;
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance AppStorePunchoutButtonView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  outlined init with copy of AppStorePunchoutButtonView(v1, v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStorePunchoutButtonView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of AppStorePunchoutButtonView(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_MR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v7 = lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v9[0] = v6;
  v9[1] = v7;
  swift_getOpaqueTypeConformance2();
  return ComponentStack.init(content:)();
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

uint64_t outlined init with take of AppStorePunchoutButtonView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStorePunchoutButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in AppStorePunchoutButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppStorePunchoutButtonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in AppStorePunchoutButtonView.body.getter(v4, a1);
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

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for AppStorePunchoutButtonView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  v7(v5 + *(v8 + 20), v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in closure #1 in AppStorePunchoutButtonView.body.getter()
{
  v1 = *(type metadata accessor for AppStorePunchoutButtonView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return AppStorePunchoutButtonView.onButtonTapped()();
}

uint64_t outlined init with copy of AppStorePunchoutButtonView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(uint64_t a1)
{
  v2 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for AppStorePunchoutButtonViewModel()
{
  result = type metadata singleton initialization cache for AppStorePunchoutButtonViewModel;
  if (!type metadata singleton initialization cache for AppStorePunchoutButtonViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AppStorePunchoutButtonViewModel()
{
  result = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id AppStorePunchoutButtonViewModel.makeAppStorePunchout(appName:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v18 - v1;
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  MEMORY[0x26D5ED440](0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  v8 = *(type metadata accessor for URLQueryItem() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_266C059F0;
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLComponents.queryItems.setter();
  v11 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  URLComponents.url.getter();
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v2, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(v13 + 8))(v2, v12);
  }

  [v11 setPunchOutUri_];

  (*(v4 + 8))(v7, v3);
  return v11;
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

uint64_t ExpanseUIModel.AppStorePunchoutSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
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

uint64_t ExpanseUIModel.AppStorePunchoutSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v29 = *(v32 - 8);
  v4 = *(v29 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
  v28 = *(v30 - 8);
  v9 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
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
    return __swift_destroy_boxed_opaque_existential_1(a1);
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
  _s21SiriExpanseInternalUI0B7UIModelOWOcTm_0(v22, v27, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of ExpanseUIModel.BinaryButtonSnippetModel(v22, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
}

uint64_t ExpanseUIModel.BinaryButtonSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMR);
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

uint64_t ExpanseUIModel.BinaryButtonSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMR);
  v29 = *(v32 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
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
    return __swift_destroy_boxed_opaque_existential_1(a1);
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
  _s21SiriExpanseInternalUI0B7UIModelOWOcTm_0(v22, v27, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of ExpanseUIModel.BinaryButtonSnippetModel(v22, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
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

uint64_t ExpanseUIModel.ButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ExpanseUIModel.ButtonModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v21 = *(v24 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = v19 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelV10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
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
    return __swift_destroy_boxed_opaque_existential_1(a1);
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
  _s21SiriExpanseInternalUI0B7UIModelOWOcTm_0(v13, v22, type metadata accessor for ExpanseUIModel.ButtonModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of ExpanseUIModel.BinaryButtonSnippetModel(v13, type metadata accessor for ExpanseUIModel.ButtonModel);
}

uint64_t ExpanseUIModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO22BinaryButtonCodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO22BinaryButtonCodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v31 - v4;
  v35 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO26AppStorePunchoutCodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO26AppStorePunchoutCodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
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
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedEncodingContainerVy21SiriExpanseInternalUI0E7UIModelO10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v41);
  v21 = &v31 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  _s21SiriExpanseInternalUI0B7UIModelOWOcTm_0(v40, v17, type metadata accessor for ExpanseUIModel);
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
    lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    v27 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v25, v27);
    outlined destroy of ExpanseUIModel.BinaryButtonSnippetModel(v24, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    return (*v23)(v21, v26);
  }

  else
  {
    outlined init with take of ExpanseUIModel(v17, v13, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    v42 = 0;
    lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys();
    v29 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel and conformance ExpanseUIModel.AppStorePunchoutSnippetModel, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    v30 = v34;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v30);
    outlined destroy of ExpanseUIModel.BinaryButtonSnippetModel(v13, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    return (*v23)(v21, v29);
  }
}

uint64_t ExpanseUIModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO22BinaryButtonCodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO22BinaryButtonCodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
  v47 = *(v44 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v50 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO26AppStorePunchoutCodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO26AppStorePunchoutCodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMd, &_ss22KeyedDecodingContainerVy21SiriExpanseInternalUI0E7UIModelO10CodingKeys33_659599656A0F78707B98C5A55CC056F0LLOGMR);
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
      lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
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

  return __swift_destroy_boxed_opaque_existential_1(v52);
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

  else if (a1 == 0xD000000000000010 && 0x8000000266C06530 == a2)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExpanseUIModel.AppStorePunchoutCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5ED6C0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExpanseUIModel.AppStorePunchoutCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5ED6C0](0);
  return Hasher._finalize()();
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D5ED6C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D5ED6C0](v1);
  return Hasher._finalize()();
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
  if (a1 == 0xD000000000000010 && 0x8000000266C06510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t outlined destroy of ExpanseUIModel.BinaryButtonSnippetModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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

uint64_t type metadata accessor for ExpanseUIModel(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
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

unint64_t type metadata accessor for SAIntentGroupRunSiriKitExecutor()
{
  result = lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor;
  if (!lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpanseUIModel.AppStorePunchoutCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ExpanseUIModel.AppStorePunchoutCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
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

uint64_t _s21SiriExpanseInternalUI0B7UIModelOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t lazy protocol witness table accessor for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMR);
    lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel and conformance ExpanseUIModel.ButtonModel, type metadata accessor for ExpanseUIModel.ButtonModel);
    lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel and conformance ExpanseUIModel.ButtonModel, type metadata accessor for ExpanseUIModel.ButtonModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpanseUIModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExpanseUIModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for BinaryButtonSnippetView()
{
  result = type metadata singleton initialization cache for BinaryButtonSnippetView;
  if (!type metadata singleton initialization cache for BinaryButtonSnippetView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for BinaryButtonSnippetView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BinaryButtonSnippetViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t closure #1 in BinaryButtonSnippetView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = type metadata accessor for ButtonItemButtonStyle.Role();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BinaryButtonSnippetView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_MR);
  v36 = *(v35 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v15 = &v30 - v14;
  v34 = type metadata accessor for BinaryButtonSnippetView;
  v30 = a1;
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BinaryButtonSnippetView(a1, v31, type metadata accessor for BinaryButtonSnippetView);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  outlined init with take of BinaryButtonSnippetView(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v41 = a1;
  Button.init(action:label:)();
  v18 = v33;
  v19 = v37;
  (*(v3 + 104))(v33, *MEMORY[0x277D63A90], v37);
  v20 = lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  View.buttonRole(_:)();
  (*(v3 + 8))(v18, v19);
  v21 = *(v39 + 8);
  v39 += 8;
  v21(v12, v9);
  v45 = v9;
  v46 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v35;
  v23 = View.eraseToAnyView()();
  (*(v36 + 8))(v15, v22);
  v24 = MEMORY[0x277D63A60];
  v47 = MEMORY[0x277CE11C8];
  v48 = MEMORY[0x277D63A60];
  v45 = v23;
  v25 = v30;
  v26 = v31;
  outlined init with copy of BinaryButtonSnippetView(v30, v31, v34);
  v27 = swift_allocObject();
  outlined init with take of BinaryButtonSnippetView(v26, v27 + v16);
  v40 = v25;
  Button.init(action:label:)();
  v28 = View.eraseToAnyView()();
  v21(v12, v9);
  v44 = v24;
  v43 = MEMORY[0x277CE11C8];
  v42 = v28;
  return BinaryButtonView.init(primaryButton:secondaryButton:)();
}

uint64_t BinaryButtonSnippetView.onPrimaryButtonTapped()()
{
  v1 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*v0)
  {
    v6 = *(type metadata accessor for BinaryButtonSnippetView() + 20);
    v16 = type metadata accessor for Context();
    v17 = &protocol witness table for Context;
    v15[0] = v5;
    v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMR);
    Loggable.wrappedValue.getter();
    v9 = *(v1 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v10 = CodableAceObject.wrappedValue.getter();
    _s21SiriExpanseInternalUI0B7UIModelO24BinaryButtonSnippetModelVWOhTm_0(v4, type metadata accessor for ExpanseUIModel.ButtonModel);
    v11 = *v7;
    dispatch thunk of Context.perform(directInvocation:)();

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = *(v0 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F60]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in BinaryButtonSnippetView.primaryButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for BinaryButtonSnippetViewModel();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BinaryButtonSnippetView();
  outlined init with copy of BinaryButtonSnippetView(a1 + *(v12 + 20), v11, type metadata accessor for BinaryButtonSnippetViewModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMR);
  Loggable.wrappedValue.getter();
  _s21SiriExpanseInternalUI0B7UIModelO24BinaryButtonSnippetModelVWOhTm_0(v11, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
  v14 = *v7;
  v13 = v7[1];

  _s21SiriExpanseInternalUI0B7UIModelO24BinaryButtonSnippetModelVWOhTm_0(v7, type metadata accessor for ExpanseUIModel.ButtonModel);
  v19[0] = v14;
  v19[1] = v13;
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v18;
  return result;
}

uint64_t BinaryButtonSnippetView.onSecondaryButtonTapped()()
{
  v1 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*v0)
  {
    v6 = v0 + *(type metadata accessor for BinaryButtonSnippetView() + 20);
    v17 = type metadata accessor for Context();
    v18 = &protocol witness table for Context;
    v16[0] = v5;
    v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v8 = *(type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0) + 20);
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMR);
    Loggable.wrappedValue.getter();
    v10 = *(v1 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v11 = CodableAceObject.wrappedValue.getter();
    _s21SiriExpanseInternalUI0B7UIModelO24BinaryButtonSnippetModelVWOhTm_0(v4, type metadata accessor for ExpanseUIModel.ButtonModel);
    v12 = *v7;
    dispatch thunk of Context.perform(directInvocation:)();

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = *(v0 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F60]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in BinaryButtonSnippetView.secondaryButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for BinaryButtonSnippetViewModel();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BinaryButtonSnippetView();
  outlined init with copy of BinaryButtonSnippetView(a1 + *(v12 + 20), v11, type metadata accessor for BinaryButtonSnippetViewModel);
  LODWORD(a1) = *(type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMR);
  Loggable.wrappedValue.getter();
  _s21SiriExpanseInternalUI0B7UIModelO24BinaryButtonSnippetModelVWOhTm_0(v11, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
  v14 = *v7;
  v13 = v7[1];

  _s21SiriExpanseInternalUI0B7UIModelO24BinaryButtonSnippetModelVWOhTm_0(v7, type metadata accessor for ExpanseUIModel.ButtonModel);
  v19[0] = v14;
  v19[1] = v13;
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v18;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance BinaryButtonSnippetView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of BinaryButtonSnippetView(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BinaryButtonSnippetView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of BinaryButtonSnippetView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  type metadata accessor for BinaryButtonView();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, MEMORY[0x277D63C38]);
  return ComponentStack.init(content:)();
}

uint64_t outlined init with take of BinaryButtonSnippetView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BinaryButtonSnippetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in BinaryButtonSnippetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BinaryButtonSnippetView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in BinaryButtonSnippetView.body.getter(v4, a1);
}

uint64_t lazy protocol witness table accessor for type Context and conformance Context(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for BinaryButtonSnippetView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy21SiriExpanseInternalUI0E7UIModelO11ButtonModelVGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  v7(v5 + *(v8 + 20), v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with copy of BinaryButtonSnippetView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21SiriExpanseInternalUI0B7UIModelO24BinaryButtonSnippetModelVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}