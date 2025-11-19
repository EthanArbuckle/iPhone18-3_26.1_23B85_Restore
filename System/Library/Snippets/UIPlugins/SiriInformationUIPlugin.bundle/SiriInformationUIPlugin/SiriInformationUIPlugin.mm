uint64_t KnowledgeFallbackConfirmationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v28 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v28 - v14;
  v16 = type metadata accessor for CommandThrottle();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC23SiriInformationUIPlugin15CommandThrottle__throttling;
  v29 = 0;
  Published.init(initialValue:)();
  (*(v12 + 32))(v19 + v20, v15, v11);
  a6[6] = v19;
  v21 = a5(0);
  v22 = a6 + *(v21 + 32);
  InteractionDelegate.init()();
  v23 = (a6 + *(v21 + 36));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
  *v23 = EnvironmentObject.init()();
  v23[1] = v24;
  *a6 = a1;
  a6[1] = a2;
  v25 = v28;
  a6[2] = a3;
  a6[3] = v25;
  result = static InvocationFactory.makeConfirmAndRejectActions()();
  a6[4] = result;
  a6[5] = v27;
  return result;
}

uint64_t protocol witness for SnippetProviding.init() in conformance SiriInformationUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t protocol witness for SnippetProviding.snippet(for:mode:idiom:) in conformance SiriInformationUIPlugin(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return specialized SiriInformationUIPlugin.snippet(for:mode:idiom:)(v3);
}

uint64_t KnowledgeFallbackConfirmationView.body.getter()
{
  v1 = *(type metadata accessor for KnowledgeFallbackConfirmationView(0) - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  outlined init with copy of KnowledgeFallbackConfirmationView(v0, &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KnowledgeFallbackConfirmationView);
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = swift_allocObject();
  outlined init with take of KnowledgeFallbackConfirmationView(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + v3, type metadata accessor for KnowledgeFallbackConfirmationView);
  type metadata accessor for BinaryButtonView();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, &type metadata accessor for BinaryButtonView);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in KnowledgeFallbackConfirmationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = *(type metadata accessor for KnowledgeFallbackConfirmationView(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v34 = v5;
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_MR);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v32 = *(v12 - 8);
  v13 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v30 - v14;
  v31 = a1;
  v33 = v6;
  outlined init with copy of KnowledgeFallbackConfirmationView(a1, v6, type metadata accessor for KnowledgeFallbackConfirmationView);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  outlined init with take of KnowledgeFallbackConfirmationView(v6, v17 + v16, type metadata accessor for KnowledgeFallbackConfirmationView);
  v39 = a1;
  Button.init(action:label:)();
  v18 = type metadata accessor for ButtonItemButtonStyle.Role();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, enum case for ButtonItemButtonStyle.Role.preferred(_:), v18);
  v23 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Button<Text>, _PaddingLayout>, Button<Text>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  View.buttonRole(_:)();
  (*(v19 + 8))(v22, v18);
  (*(v32 + 8))(v15, v12);
  v41 = v12;
  v42 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v35;
  v25 = View.eraseToAnyView()();
  (*(v36 + 8))(v11, v24);
  v43 = &type metadata for AnyView;
  v44 = &protocol witness table for AnyView;
  v41 = v25;
  v26 = v31;
  v27 = v33;
  outlined init with copy of KnowledgeFallbackConfirmationView(v31, v33, type metadata accessor for KnowledgeFallbackConfirmationView);
  v28 = swift_allocObject();
  outlined init with take of KnowledgeFallbackConfirmationView(v27, v28 + v16, type metadata accessor for KnowledgeFallbackConfirmationView);
  v38 = v26;
  v40[3] = v12;
  v40[4] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Button<Text>, _PaddingLayout>, Button<Text>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  __swift_allocate_boxed_opaque_existential_1(v40);
  Button.init(action:label:)();
  return BinaryButtonView.init(primaryButton:secondaryButton:)();
}

uint64_t protocol witness for View.body.getter in conformance KnowledgeFallbackConfirmationView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  outlined init with copy of KnowledgeFallbackConfirmationView(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KnowledgeFallbackConfirmationView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of KnowledgeFallbackConfirmationView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for KnowledgeFallbackConfirmationView);
  type metadata accessor for BinaryButtonView();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, &type metadata accessor for BinaryButtonView);
  return ComponentStack.init(content:)();
}

uint64_t KnowledgeFallbackConfirmationView.snippetModel.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  return v1;
}

uint64_t variable initialization expression of KnowledgeFallbackConfirmationView.commandThrottle()
{
  v0 = type metadata accessor for CommandThrottle();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  return v3;
}

uint64_t variable initialization expression of KnowledgeFallbackConfirmationView._context()
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
  return EnvironmentObject.init()();
}

uint64_t DisableConfirmRequestsConfirmationView.body.getter()
{
  v1 = type metadata accessor for DisableConfirmRequestsConfirmationView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  outlined init with copy of KnowledgeFallbackConfirmationView(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisableConfirmRequestsConfirmationView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of KnowledgeFallbackConfirmationView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for DisableConfirmRequestsConfirmationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AJtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AJtGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Button<Text>, _PaddingLayout>, Button<Text>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Text>, _PaddingLayout>, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AJtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AJtGMR);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in DisableConfirmRequestsConfirmationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = *(type metadata accessor for DisableConfirmRequestsConfirmationView(0) - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR) - 8);
  v33 = *(*v5 + 64);
  (__chkstk_darwin)();
  v34 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v30 - v34;
  v32 = &v30 - v34;
  outlined init with copy of KnowledgeFallbackConfirmationView(a1, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisableConfirmRequestsConfirmationView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  outlined init with take of KnowledgeFallbackConfirmationView(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DisableConfirmRequestsConfirmationView);
  v37 = a1;
  Button.init(action:label:)();
  LOBYTE(v3) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v10 = &v7[v5[11]];
  *v10 = v3;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v16 = *(v15 - 8);
  v17 = v16[8];
  (__chkstk_darwin)();
  v31 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v30 - v31;
  outlined init with copy of KnowledgeFallbackConfirmationView(a1, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisableConfirmRequestsConfirmationView);
  v19 = swift_allocObject();
  outlined init with take of KnowledgeFallbackConfirmationView(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v8, type metadata accessor for DisableConfirmRequestsConfirmationView);
  v36 = a1;
  v20 = Button.init(action:label:)();
  __chkstk_darwin(v20);
  v21 = &v30 - v34;
  v22 = v32;
  v23 = outlined init with copy of ModifiedContent<Button<Text>, _PaddingLayout>(v32, &v30 - v34);
  __chkstk_darwin(v23);
  v24 = &v30 - v31;
  v25 = v16[2];
  v25(&v30 - v31, v18, v15);
  v26 = v35;
  outlined init with copy of ModifiedContent<Button<Text>, _PaddingLayout>(v21, v35);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AHtMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AHtMR);
  v25((v26 + *(v27 + 48)), v24, v15);
  v28 = v16[1];
  v28(v18, v15);
  outlined destroy of ModifiedContent<Button<Text>, _PaddingLayout>(v22);
  v28(v24, v15);
  return outlined destroy of ModifiedContent<Button<Text>, _PaddingLayout>(v21);
}

uint64_t closure #1 in closure #1 in KnowledgeFallbackConfirmationView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  lazy protocol witness table accessor for type String and conformance String();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in KnowledgeFallbackConfirmationView.body.getter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = *(a2(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = *(a1 + 48);
  outlined init with copy of KnowledgeFallbackConfirmationView(a1, &v16 - v10, a3);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  outlined init with take of KnowledgeFallbackConfirmationView(v11, v14 + v13, a3);
  (*(*v12 + 136))(a5, v14);
}

uint64_t closure #2 in closure #1 in KnowledgeFallbackConfirmationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  lazy protocol witness table accessor for type String and conformance String();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t closure #1 in KnowledgeFallbackConfirmationView.yesAction()(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for Command();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2(0);
  v10 = a1 + *(v9 + 36);
  v11 = *v10;
  if (*v10)
  {
    v12 = v9;
    v33[1] = "NO_BUTTON_TAPPED";
    v13 = *(a1 + 32);
    *v8 = v13;
    v8[8] = 0;
    (*(v5 + 104))(v8, enum case for Command.directInvocation(_:), v4);
    v14 = *(*(type metadata accessor for InteractionType() - 8) + 64);
    __chkstk_darwin();
    (*(v16 + 104))(v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
    v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI13ComponentTypeVSgMd, &_s9SnippetUI13ComponentTypeVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin();
    v19 = v33 - v18;
    v20 = v11;
    v21 = v13;
    static ComponentType.customCanvas.getter();
    v22 = type metadata accessor for ComponentType();
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
    v23 = objc_allocWithZone(type metadata accessor for RFInteractionPerformed());
    v24 = RFInteractionPerformed.init(actionName:command:interactionType:componentType:componentName:componentIndex:)();
    dispatch thunk of Context.emit(_:)();

    v25 = type metadata accessor for InteractionDelegateWrapper();
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    __chkstk_darwin();
    v29 = v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = a1 + *(v12 + 32);
    InteractionDelegate.wrappedValue.getter();
    InteractionDelegateWrapper.perform(directInvocation:)();
    return (*(v26 + 8))(v29, v25);
  }

  else
  {
    v32 = *(v10 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in KnowledgeFallbackConfirmationView.noAction()(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for Command();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2(0);
  v10 = a1 + *(v9 + 36);
  v11 = *v10;
  if (*v10)
  {
    v12 = v9;
    v33[1] = "iriInformationUIPlugin";
    v13 = *(a1 + 40);
    *v8 = v13;
    v8[8] = 0;
    (*(v5 + 104))(v8, enum case for Command.directInvocation(_:), v4);
    v14 = *(*(type metadata accessor for InteractionType() - 8) + 64);
    __chkstk_darwin();
    (*(v16 + 104))(v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
    v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI13ComponentTypeVSgMd, &_s9SnippetUI13ComponentTypeVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin();
    v19 = v33 - v18;
    v20 = v11;
    v21 = v13;
    static ComponentType.customCanvas.getter();
    v22 = type metadata accessor for ComponentType();
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
    v23 = objc_allocWithZone(type metadata accessor for RFInteractionPerformed());
    v24 = RFInteractionPerformed.init(actionName:command:interactionType:componentType:componentName:componentIndex:)();
    dispatch thunk of Context.emit(_:)();

    v25 = type metadata accessor for InteractionDelegateWrapper();
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    __chkstk_darwin();
    v29 = v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = a1 + *(v12 + 32);
    InteractionDelegate.wrappedValue.getter();
    InteractionDelegateWrapper.perform(directInvocation:)();
    return (*(v26 + 8))(v29, v25);
  }

  else
  {
    v32 = *(v10 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance DisableConfirmRequestsConfirmationView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  outlined init with copy of KnowledgeFallbackConfirmationView(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisableConfirmRequestsConfirmationView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of KnowledgeFallbackConfirmationView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for DisableConfirmRequestsConfirmationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AJtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AJtGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Button<Text>, _PaddingLayout>, Button<Text>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Text>, _PaddingLayout>, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AJtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AJtGMR);
  return ComponentStack.init(content:)();
}

uint64_t specialized SiriInformationUIPlugin.snippet(for:mode:idiom:)(__int128 *a1)
{
  v2 = type metadata accessor for DisableConfirmRequestsConfirmationView(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin();
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v44[-v9 - 8];
  v11 = *(*(type metadata accessor for KnowledgeFallbackConfirmationView(0) - 8) + 64);
  v12 = __chkstk_darwin();
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = a1[1];
  if (a1[2])
  {
    v46 = *a1;
    v47 = v15;
    v16 = a1[1];
    v48 = v46;
    v49 = v16;
    v17 = type metadata accessor for CommandThrottle();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = OBJC_IVAR____TtC23SiriInformationUIPlugin15CommandThrottle__throttling;
    v45 = 0;
    outlined init with copy of String(&v48, v44);
    outlined init with copy of String(&v49, v44);
    Published.init(initialValue:)();
    (*(v7 + 32))(v20 + v21, v10, v6);
    *(v5 + 6) = v20;
    v22 = &v5[*(v2 + 32)];
    InteractionDelegate.init()();
    v23 = &v5[*(v2 + 36)];
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
    *v23 = EnvironmentObject.init()();
    v23[1] = v24;
    v25 = v47;
    *v5 = v46;
    *(v5 + 1) = v25;
    *(v5 + 4) = static InvocationFactory.makeConfirmAndRejectActions()();
    *(v5 + 5) = v26;
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationView and conformance DisableConfirmRequestsConfirmationView(&lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationView and conformance DisableConfirmRequestsConfirmationView, type metadata accessor for DisableConfirmRequestsConfirmationView);
    v27 = View.eraseToAnyView()();
    v28 = v5;
    v29 = type metadata accessor for DisableConfirmRequestsConfirmationView;
  }

  else
  {
    v46 = *a1;
    v47 = v15;
    v30 = a1[1];
    v48 = v46;
    v49 = v30;
    v31 = v12;
    v32 = type metadata accessor for CommandThrottle();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v35 = swift_allocObject();
    v36 = OBJC_IVAR____TtC23SiriInformationUIPlugin15CommandThrottle__throttling;
    v45 = 0;
    outlined init with copy of String(&v48, v44);
    outlined init with copy of String(&v49, v44);
    Published.init(initialValue:)();
    (*(v7 + 32))(v35 + v36, v10, v6);
    *(v14 + 6) = v35;
    v37 = &v14[*(v31 + 32)];
    InteractionDelegate.init()();
    v38 = &v14[*(v31 + 36)];
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
    *v38 = EnvironmentObject.init()();
    v38[1] = v39;
    v40 = v47;
    *v14 = v46;
    *(v14 + 1) = v40;
    *(v14 + 4) = static InvocationFactory.makeConfirmAndRejectActions()();
    *(v14 + 5) = v41;
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationView and conformance DisableConfirmRequestsConfirmationView(&lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationView and conformance KnowledgeFallbackConfirmationView, type metadata accessor for KnowledgeFallbackConfirmationView);
    v27 = View.eraseToAnyView()();
    v28 = v14;
    v29 = type metadata accessor for KnowledgeFallbackConfirmationView;
  }

  outlined destroy of DisableConfirmRequestsConfirmationView(v28, v29);
  return v27;
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

uint64_t type metadata accessor for KnowledgeFallbackConfirmationView(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

uint64_t outlined init with copy of KnowledgeFallbackConfirmationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v1 + v4 + 8);

  v7 = *(v1 + v4 + 24);

  v8 = *(v1 + v4 + 48);

  v9 = v2[10];
  v10 = type metadata accessor for InteractionDelegate();
  (*(*(v10 - 8) + 8))(v1 + v4 + v9, v10);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t outlined init with take of KnowledgeFallbackConfirmationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in KnowledgeFallbackConfirmationView.body.getter(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
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

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels and conformance SiriInformationDataModels()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels);
  }

  return result;
}

void type metadata completion function for KnowledgeFallbackConfirmationView()
{
  type metadata completion function for KnowledgeFallbackConfirmationView();
}

{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CommandThrottle();
    if (v1 <= 0x3F)
    {
      type metadata accessor for InteractionDelegate();
      if (v2 <= 0x3F)
      {
        type metadata accessor for EnvironmentObject<Context>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
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

void type metadata accessor for EnvironmentObject<Context>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<Context>)
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<Context>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for InteractionDelegate();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InteractionDelegate();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<Button<Text>, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<Button<Text>, _PaddingLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
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

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Button<Text>, _PaddingLayout>, Button<Text>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationView and conformance DisableConfirmRequestsConfirmationView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of DisableConfirmRequestsConfirmationView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SiriInformationDataModels.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000022;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriInformationDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x800000000000BCD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000022 && 0x800000000000BCF0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriInformationDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriInformationDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SiriInformationDataModels.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMd, "0\v");
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMd, &_ss22KeyedEncodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMR);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO10CodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMd, &_ss22KeyedEncodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO10CodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v2[2])
  {
    LOBYTE(v27) = 1;
    lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v2[1];
    v27 = *v2;
    v28 = v18;
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload();
    v19 = v26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v25 + 8))(v7, v19);
  }

  else
  {
    LOBYTE(v27) = 0;
    lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v2[1];
    v27 = *v2;
    v28 = v20;
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload();
    v21 = v24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v11, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload);
  }

  return result;
}

double SiriInformationDataModels.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized SiriInformationDataModels.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t _s23SiriInformationUIPlugin41DisableConfirmRequestsConfirmationPayloadV10CodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOs0I3KeyAAsAGP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    result = 0x6C6562614C6F6ELL;
  }

  else
  {
    result = 0x6C6562614C736579;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KnowledgeFallbackConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KnowledgeFallbackConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriInformationDataModels.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriInformationDataModels.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KnowledgeFallbackConfirmationPayload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562614C736579 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisableConfirmRequestsConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisableConfirmRequestsConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KnowledgeFallbackConfirmationPayload.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v16, v17, v18);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v19 = v21[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v19)
  {
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t KnowledgeFallbackConfirmationPayload.init(from:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = specialized KnowledgeFallbackConfirmationPayload.init(from:)(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance KnowledgeFallbackConfirmationPayload@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = specialized KnowledgeFallbackConfirmationPayload.init(from:)(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t specialized SiriInformationDataModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMd, &_ss22KeyedDecodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMR);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v3);
  v6 = &v31[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMd, &_ss22KeyedDecodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMR);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v31[-v9];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO10CodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMd, &_ss22KeyedDecodingContainerVy23SiriInformationUIPlugin0dE10DataModelsO10CodingKeys33_9A93F6922B35FFDE2E1D7355C1655B3FLLOGMR);
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v36);
  v14 = &v31[-v13];
  v16 = a1[3];
  v15 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();
  v17 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v37 = v11;
  v18 = v35;
  v19 = KeyedDecodingContainer.allKeys.getter();
  if (*(v19 + 16) != 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v27 = &type metadata for SiriInformationDataModels;
    v29 = v36;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v37 + 8))(v14, v29);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v20 = v36;
  v32 = *(v19 + 32);
  if (v32)
  {
    LOBYTE(v38) = 1;
    lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v34 + 8))(v6, v3);
    (*(v37 + 8))(v14, v20);
    swift_unknownObjectRelease();
    v21 = v38;
    v22 = v39;
    v23 = v40;
    v24 = v41;
    v18 = v35;
  }

  else
  {
    LOBYTE(v38) = 0;
    lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v7);
    (*(v37 + 8))(v14, v20);
    swift_unknownObjectRelease();
    v21 = v38;
    v22 = v39;
    v23 = v40;
    v24 = v41;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v42);
  *v18 = v21;
  *(v18 + 8) = v22;
  *(v18 + 16) = v23;
  *(v18 + 24) = v24;
  *(v18 + 32) = v32;
  return result;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

uint64_t specialized KnowledgeFallbackConfirmationPayload.init(from:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriInformationDataModels(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriInformationDataModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for KnowledgeFallbackConfirmationPayload(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for KnowledgeFallbackConfirmationPayload(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisableConfirmRequestsConfirmationPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DisableConfirmRequestsConfirmationPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t CommandThrottle.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  return v3;
}

uint64_t key path getter for CommandThrottle.throttling : CommandThrottle@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t CommandThrottle.throttling.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CommandThrottle.throttling.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*CommandThrottle.throttling.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CommandThrottle.throttling.modify;
}

void CommandThrottle.throttling.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for CommandThrottle.$throttling : CommandThrottle(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 120))(v7);
}

uint64_t CommandThrottle.$throttling.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CommandThrottle.$throttling.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CommandThrottle.$throttling.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23SiriInformationUIPlugin15CommandThrottle__throttling;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CommandThrottle.$throttling.modify;
}

void CommandThrottle.$throttling.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

void CommandThrottle.throttle(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v34[1] = a2;
  v35 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  isa = v4[-1].isa;
  v40 = v4;
  v5 = *(isa + 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v34 - v17;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSThread, NSThread_ptr);
  v19 = objc_opt_self();
  v20 = [v19 currentThread];
  v21 = [v19 mainThread];
  LOBYTE(v19) = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.information);
    v40 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v40, v23))
    {
      goto LABEL_12;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "CommandThrottle action called from background thread.";
    goto LABEL_11;
  }

  if (((*(*v3 + 88))() & 1) == 0)
  {
    v28 = (*(*v3 + 96))(1);
    v35(v28);
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v35 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v29 = *(v36 + 8);
    v29(v16, v12);
    v30 = v29;
    aBlock[4] = partial apply for closure #1 in CommandThrottle.throttle(_:);
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor;
    v31 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v32 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v35;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v31);

    (*(isa + 1))(v7, v32);
    (*(v37 + 8))(v11, v38);
    v30(v18, v12);
    return;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.information);
  v40 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "CommandThrottle action dropped due to throttling state.";
LABEL_11:
    _os_log_impl(&dword_0, v40, v23, v25, v24, 2u);
  }

LABEL_12:
  v27 = v40;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t CommandThrottle.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriInformationUIPlugin15CommandThrottle__throttling;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CommandThrottle.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23SiriInformationUIPlugin15CommandThrottle__throttling;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t CommandThrottle.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC23SiriInformationUIPlugin15CommandThrottle__throttling;
  v8[15] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t sub_7A00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CommandThrottle@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CommandThrottle();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t type metadata accessor for NSThread(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for CommandThrottle()
{
  result = type metadata singleton initialization cache for CommandThrottle;
  if (!type metadata singleton initialization cache for CommandThrottle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CommandThrottle()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t one-time initialization function for informationLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.informationLog = result;
  return result;
}

uint64_t one-time initialization function for information()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.information);
  __swift_project_value_buffer(v0, static Logger.information);
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v1 = static Logger.informationLog;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for videoSnippet()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.videoSnippet);
  __swift_project_value_buffer(v0, static Logger.videoSnippet);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v30[-v16];
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, v7, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  outlined init with copy of Logger?(v17, v15);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    outlined destroy of Logger?(v15);
  }

  else
  {
    v34 = a1;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = a3;
      v23 = v22;
      v32 = swift_slowAlloc();
      v36 = v32;
      *v23 = 136315650;
      v24 = StaticString.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v36);
      v31 = v21;
      v27 = v26;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      v28 = v34;
      *(v23 + 14) = v35;
      *(v23 + 22) = 2080;
      *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, a2, &v36);
      _os_log_impl(&dword_0, v20, v31, "FatalError at %s:%lu - %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    (*(v19 + 8))(v15, v18);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Logger.generateSignpostID()()
{
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v0 = static Logger.informationLog;

  return OSSignpostID.init(log:)();
}

uint64_t static Logger.begin(_:)()
{
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v0 = static Logger.informationLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.end(_:_:)()
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t Logger.event(_:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t one-time initialization function for information(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return OSSignposter.init(logger:)();
}

uint64_t Logger.information.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static Logger.information.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t OSSignposter.withIntervalSignpost<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = type metadata accessor for OSSignpostID();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(OSSignposter.withIntervalSignpost<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpost<A>(_:id:around:)()
{
  v1 = *(v0 + 72);
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v8, v5, "", v7, 2u);

        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 56);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  v10 = type metadata accessor for OSSignpostIntervalState();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 104) = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = (v9 + *v9);
  v13 = v9[1];
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = OSSignposter.withIntervalSignpost<A>(_:id:around:);
  v15 = *(v0 + 64);
  v16 = *(v0 + 24);

  return v17(v16);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = OSSignposter.withIntervalSignpost<A>(_:id:around:);
  }

  else
  {
    v3 = OSSignposter.withIntervalSignpost<A>(_:id:around:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v3 = *(v0 + 8);
  v4 = *(v0 + 120);

  return v3();
}

uint64_t OSSignposter.beginIntervalTelemetryEnabled(_:id:)(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v12, v13, v16, a1, "enableTelemetry=YES", v15, 2u);

LABEL_10:

      (*(v8 + 16))(v11, a4, v7);
      v17 = type metadata accessor for OSSignpostIntervalState();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      return OSSignpostIntervalState.init(id:isOpen:)();
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(const char *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (a1 >> 16 > 0x10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = &v11;
LABEL_8:
  v10 = swift_slowAlloc();
  *v10 = 0;
  closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(v10, 2u, v5, a4, v9, "enableTelemetry=YES", a5);
  if (!v6)
  {
  }
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return _swift_task_switch(OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 48);
  *(v2 + 72) = OSSignposter.beginIntervalTelemetryEnabled(_:id:)(*(v2 + 24), a2, *(v2 + 96), *(v2 + 40));
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:);
  v7 = *(v2 + 56);
  v8 = *(v2 + 16);

  return v10(v8);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:);
  }

  else
  {
    v3 = OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 72);
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 72);
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

uint64_t $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v22 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v9, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v15, v22, v20, v17, v18, v19, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, void (*a7)(void))
{
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = static os_signpost_type_t.end.getter();
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v11, v14, v15, a5, a6, v16, a2);
  }
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
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

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}