uint64_t OUTLINED_FUNCTION_3_6()
{
  v2 = *(v0 - 368);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

__n128 OUTLINED_FUNCTION_5_2()
{
  *(v3 - 168) = v1;
  *(v3 - 160) = v2;
  result = *(v0 + 16);
  v5 = *(v0 + 32);
  *(v3 - 152) = result;
  *(v3 - 136) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1()
{
  v2 = *(v0 - 256);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

__n128 OUTLINED_FUNCTION_13_0()
{
  v1 = *(v0 - 208);
  v2 = *(v0 - 200);
  v3 = *(v0 - 184);
  result = *(v0 - 160);
  *(v0 - 240) = *(v0 - 176);
  *(v0 - 224) = v2;
  v5 = *(v0 - 144);
  *(v0 - 128) = result;
  *(v0 - 112) = v5;
  return result;
}

unint64_t OUTLINED_FUNCTION_14()
{
  v3 = *(v0 + 64);
  *(v1 - 120) = *(v0 + 48);
  *(v1 - 104) = v3;

  return lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_unknownObjectRelease();
}

uint64_t CustomIntentConfirmationView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CustomIntentConfirmationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#CustomIntentConfirmationView", v8, 2u);
  }

  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  outlined init with take of CustomIntentConfirmationView(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AD024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AD024ConfirmationBinaryButtonD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(CustomIntentView, ConfirmationBinaryButtonView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AD024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AD024ConfirmationBinaryButtonD0VtGMR);
  return ComponentStack.init(content:)();
}

uint64_t type metadata accessor for CustomIntentConfirmationView()
{
  result = type metadata singleton initialization cache for CustomIntentConfirmationView;
  if (!type metadata singleton initialization cache for CustomIntentConfirmationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in CustomIntentConfirmationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for ConfirmationBinaryButtonView();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for CustomIntentView();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v32 - v17;
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(a1, &v32 + *(v16 + 28) - v17);
  ActionHandler.init()();
  v19 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  v20 = *(v19 + 24);
  v21 = (a1 + *(v19 + 20));
  v23 = *v21;
  v22 = v21[1];
  v25 = *(a1 + v20);
  v24 = *(a1 + v20 + 8);
  v26 = v4[9];

  static ButtonStyle<>.buttonItemStandard.getter();
  ActionHandler.init()();
  v27 = &v10[v4[7]];
  *v27 = v23;
  *(v27 + 1) = v22;
  v28 = &v10[v4[8]];
  *v28 = v25;
  *(v28 + 1) = v24;
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v18, v15);
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v10, v8);
  v29 = v33;
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v15, v33);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin16CustomIntentViewV_AA024ConfirmationBinaryButtonF0VtMd, &_s16SiriLinkUIPlugin16CustomIntentViewV_AA024ConfirmationBinaryButtonF0VtMR);
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v8, v29 + *(v30 + 48));
  _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(v10, type metadata accessor for ConfirmationBinaryButtonView);
  _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(v18, type metadata accessor for CustomIntentView);
  _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(v8, type metadata accessor for ConfirmationBinaryButtonView);
  return _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(v15, type metadata accessor for CustomIntentView);
}

uint64_t sub_19260()
{
  v1 = *(type metadata accessor for CustomIntentConfirmationView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v9 = v8[5];
  v10 = type metadata accessor for CodableINInteraction();
  OUTLINED_FUNCTION_0_1(v10);
  (*(v11 + 8))(v0 + v3 + v9);
  v12 = v8[6];
  v13 = type metadata accessor for VisualProperty();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v12, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  v14 = *(v5 + v8[7] + 8);

  v15 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  v16 = *(v5 + *(v15 + 20) + 8);

  v17 = *(v5 + *(v15 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in CustomIntentConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomIntentConfirmationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in CustomIntentConfirmationView.body.getter(v4, a1);
}

uint64_t outlined init with take of CustomIntentConfirmationView(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_19544(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_1959C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t type metadata completion function for CustomIntentConfirmationView()
{
  result = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t AutoShortcutFirstRunComponentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  v4 = v1[10];
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA08_PaddingG0VG_Qo__AA7DividerVAPyAPyAA6HStackVyAIyAkLEAmNQrSb_tFQOyAPyAPy16SiriLinkUIPlugin04IconD0VA_GA_G_Qo__AkLEAmNQrSb_tFQOyAA0F0VyAIyARSg_AA7ForEachVys10ArraySliceVySSGSSARGAPyAA4LinkVyARGATyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGA_GAA010_FixedSizeG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA08_PaddingG0VG_Qo__AA7DividerVAPyAPyAA6HStackVyAIyAkLEAmNQrSb_tFQOyAPyAPy16SiriLinkUIPlugin04IconD0VA_GA_G_Qo__AkLEAmNQrSb_tFQOyAA0F0VyAIyARSg_AA7ForEachVys10ArraySliceVySSGSSARGAPyAA4LinkVyARGATyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGA_GAA010_FixedSizeG0VGtGGMR);
  closure #1 in AutoShortcutFirstRunComponentView.body.getter(v1, (a1 + *(v5 + 44)));
  v6 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGMR) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGAWGMR);
  v26 = a1 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t closure #1 in AutoShortcutFirstRunComponentView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyALy16SiriLinkUIPlugin04IconE0VAA14_PaddingLayoutVGAQG_Qo__AgHEAiJQrSb_tFQOyAA6VStackVyAEyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGALyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyALy16SiriLinkUIPlugin04IconE0VAA14_PaddingLayoutVGAQG_Qo__AgHEAiJQrSb_tFQOyAA6VStackVyAEyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGALyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v89 = (&v83 - v5);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGMR);
  v6 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v87 = &v83 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGAA010_FixedSizeT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGAA010_FixedSizeT0VGMR);
  v8 = *(*(v86 - 8) + 64);
  v9 = __chkstk_darwin(v86);
  v100 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v85 = &v83 - v12;
  __chkstk_darwin(v11);
  v99 = &v83 - v13;
  v14 = type metadata accessor for Divider();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = *(v91 + 64);
  v16 = __chkstk_darwin(v14);
  v98 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v83 - v21;
  v23 = type metadata accessor for Font.TextStyle();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo_MR);
  v97 = *(v84 - 8);
  v28 = v97[8];
  v29 = __chkstk_darwin(v84);
  v96 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v94 = &v83 - v31;
  v90 = a1;
  memcpy(v104, a1, sizeof(v104));
  __dst[0] = v104[4];
  __dst[1] = v104[5];
  lazy protocol witness table accessor for type String and conformance String();

  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  (*(v24 + 104))(v27, enum case for Font.TextStyle.headline(_:), v23);
  v37 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v37);
  static Font.Weight.semibold.getter();
  static Font.system(_:design:weight:)();
  outlined destroy of StandardActionHandler?(v22, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v24 + 8))(v27, v23);
  v38 = Text.font(_:)();
  v40 = v39;
  LOBYTE(v27) = v41;
  v43 = v42;

  outlined consume of Text.Storage(v32, v34, v36 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v32) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v103 = v27 & 1;
  v102 = 0;
  v101[0] = v38;
  v101[1] = v40;
  LOBYTE(v101[2]) = v27 & 1;
  v101[3] = v43;
  v101[4] = KeyPath;
  v101[5] = 0x4014000000000000;
  LOBYTE(v101[6]) = v32;
  v101[7] = v45;
  v101[8] = v46;
  v101[9] = v47;
  v101[10] = v48;
  LOBYTE(v101[11]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Divider, ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>, _PaddingLayout>, _FixedSizeLayout>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  v49 = v94;
  View.ambientDrawable(renderWithDrawingGroup:)();
  memcpy(__dst, v101, 0x59uLL);
  outlined destroy of StandardActionHandler?(__dst, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMR);
  v50 = v95;
  Divider.init()();
  v51 = *(AutoShortcutAppPhrasesViewModel.displayPhrases.getter() + 2);

  if (v51 == 1)
  {
    v52 = static VerticalAlignment.center.getter();
  }

  else
  {
    v52 = static VerticalAlignment.top.getter();
  }

  v54 = v89;
  v53 = v90;
  v55 = v90[10];
  *v89 = v52;
  v54[1] = v55;
  *(v54 + 16) = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAPy16SiriLinkUIPlugin04IconD0VAA08_PaddingG0VGAUG_Qo__AkLEAmNQrSb_tFQOyAA6VStackVyAIyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSA0_GAPyAA0S0VyA0_GAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAPy16SiriLinkUIPlugin04IconD0VAA08_PaddingG0VGAUG_Qo__AkLEAmNQrSb_tFQOyAA6VStackVyAIyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSA0_GAPyAA0S0VyA0_GAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGMR);
  closure #1 in closure #1 in AutoShortcutFirstRunComponentView.body.getter(v53, v54 + *(v56 + 44));
  LOBYTE(v53) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v87;
  outlined init with take of HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>();
  v66 = &v65[*(v88 + 36)];
  *v66 = v53;
  *(v66 + 1) = v58;
  *(v66 + 2) = v60;
  *(v66 + 3) = v62;
  *(v66 + 4) = v64;
  v66[40] = 0;
  v67 = v85;
  outlined init with take of HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>();
  *&v67[*(v86 + 36)] = 256;
  outlined init with take of HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>();
  v68 = v96;
  v69 = v97[2];
  v70 = v84;
  v69(v96, v49, v84);
  v71 = v91;
  v72 = *(v91 + 16);
  v73 = v50;
  v74 = v92;
  v72(v98, v73, v92);
  sub_1BF14();
  v75 = v93;
  v69(v93, v68, v70);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVAHyAHyAA6HStackVyAA05TupleC0VyAcDEAeFQrSb_tFQOyAHyAHy16SiriLinkUIPlugin04IconC0VASGASG_Qo__AcDEAeFQrSb_tFQOyAA6VStackVyA_yAJSg_AA7ForEachVys10ArraySliceVySSGSSAJGAHyAA4LinkVyAJGALyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGASGAA010_FixedSizeV0VGtMd, &_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVAHyAHyAA6HStackVyAA05TupleC0VyAcDEAeFQrSb_tFQOyAHyAHy16SiriLinkUIPlugin04IconC0VASGASG_Qo__AcDEAeFQrSb_tFQOyAA6VStackVyA_yAJSg_AA7ForEachVys10ArraySliceVySSGSSAJGAHyAA4LinkVyAJGALyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGASGAA010_FixedSizeV0VGtMR);
  v77 = v98;
  v72(&v75[*(v76 + 48)], v98, v74);
  v78 = *(v76 + 64);
  v79 = v100;
  sub_1BF14();
  sub_1BF78(v99);
  v80 = *(v71 + 8);
  v80(v95, v74);
  v81 = v97[1];
  v81(v94, v70);
  sub_1BF78(v79);
  v80(v77, v74);
  return (v81)(v96, v70);
}

uint64_t closure #1 in closure #1 in AutoShortcutFirstRunComponentView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAGGAA15ModifiedContentVyAA4LinkVyAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAGGAA15ModifiedContentVyAA4LinkVyAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMR);
  v3 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v5 = &v50 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA6VStackVyAA05TupleC0VyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSALGAA15ModifiedContentVyAA4LinkVyALGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA6VStackVyAA05TupleC0VyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSALGAA15ModifiedContentVyAA4LinkVyALGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_MR);
  v56 = *(v58 - 8);
  v6 = *(v56 + 64);
  v7 = __chkstk_darwin(v58);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHy16SiriLinkUIPlugin04IconC0VAA14_PaddingLayoutVGAMG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHy16SiriLinkUIPlugin04IconC0VAA14_PaddingLayoutVGAMG_Qo_MR);
  v11 = *(v55 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v55);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = a1[3];
  v54 = a1[2];
  v19 = a1;

  v20 = static Edge.Set.leading.getter();
  v21 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v21 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  __dst[112] = 0;
  v30 = static Edge.Set.top.getter();
  v31 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  __dst[120] = 0;
  __src[0] = v54;
  __src[1] = v18;
  LOBYTE(__src[2]) = v21;
  __src[3] = v23;
  __src[4] = v25;
  __src[5] = v27;
  __src[6] = v29;
  LOBYTE(__src[7]) = 0;
  LOBYTE(__src[8]) = v31;
  __src[9] = v32;
  __src[10] = v33;
  __src[11] = v34;
  __src[12] = v35;
  LOBYTE(__src[13]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy16SiriLinkUIPlugin8IconViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy16SiriLinkUIPlugin8IconViewVAA14_PaddingLayoutVGAHGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Divider, ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>, _PaddingLayout>, _FixedSizeLayout>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IconView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy16SiriLinkUIPlugin8IconViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy16SiriLinkUIPlugin8IconViewVAA14_PaddingLayoutVGAHGMR, lazy protocol witness table accessor for type ModifiedContent<IconView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  v53 = v17;
  View.ambientDrawable(renderWithDrawingGroup:)();
  memcpy(__dst, __src, 0x69uLL);
  outlined destroy of StandardActionHandler?(__dst, &_s7SwiftUI15ModifiedContentVyACy16SiriLinkUIPlugin8IconViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy16SiriLinkUIPlugin8IconViewVAA14_PaddingLayoutVGAHGMR);
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4010000000000000;
  v5[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAKGAA15ModifiedContentVyAA4LinkVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAKGAA15ModifiedContentVyAA4LinkVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMR);
  closure #1 in closure #1 in closure #1 in AutoShortcutFirstRunComponentView.body.getter(v19, &v5[*(v36 + 44)]);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text?, ForEach<ArraySlice<String>, String, Text>, ModifiedContent<Link<Text>, _EnvironmentKeyWritingModifier<Font?>>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAGGAA15ModifiedContentVyAA4LinkVyAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAGGAA15ModifiedContentVyAA4LinkVyAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMR);
  v51 = v10;
  View.ambientDrawable(renderWithDrawingGroup:)();
  outlined destroy of StandardActionHandler?(v5, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAGGAA15ModifiedContentVyAA4LinkVyAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAGGAA15ModifiedContentVyAA4LinkVyAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMR);
  v37 = v11[2];
  v52 = v15;
  v38 = v55;
  v37(v15, v17, v55);
  v39 = v56;
  v40 = *(v56 + 16);
  v41 = v10;
  v42 = v58;
  v40(v60, v41, v58);
  v43 = v59;
  v37(v59, v15, v38);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHy16SiriLinkUIPlugin04IconC0VAA14_PaddingLayoutVGAMG_Qo__AcDEAeFQrSb_tFQOyAA6VStackVyAA05TupleC0VyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAVGAHyAA0N0VyAVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtMd, &_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHy16SiriLinkUIPlugin04IconC0VAA14_PaddingLayoutVGAMG_Qo__AcDEAeFQrSb_tFQOyAA6VStackVyAA05TupleC0VyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAVGAHyAA0N0VyAVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtMR);
  v45 = v60;
  v40(&v43[*(v44 + 48)], v60, v42);
  v46 = &v43[*(v44 + 64)];
  *v46 = 0;
  v46[8] = 1;
  v47 = *(v39 + 8);
  v47(v51, v42);
  v48 = v11[1];
  v48(v53, v38);
  v47(v45, v42);
  return (v48)(v52, v38);
}

uint64_t closure #1 in closure #1 in closure #1 in AutoShortcutFirstRunComponentView.body.getter@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  v116 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v3 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v108 = &v100 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v100 - v7;
  v9 = type metadata accessor for URL();
  v107 = *(v9 - 8);
  v10 = *(v107 + 64);
  v11 = __chkstk_darwin(v9);
  v105 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v119 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v120 = &v100 - v18;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVys10ArraySliceVySSGSSAA4TextVGMd, &_s7SwiftUI7ForEachVys10ArraySliceVySSGSSAA4TextVGMR);
  v114 = *(v118 - 8);
  v19 = *(v114 + 64);
  v20 = __chkstk_darwin(v118);
  v117 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v121 = &v100 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v100 - v25;
  v27 = type metadata accessor for Font.TextStyle();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, sizeof(__dst));
  v32 = AutoShortcutAppPhrasesViewModel.displayPhrases.getter();
  v33 = v32[2];
  v104 = v27;
  v103 = v26;
  v102 = v28;
  v101 = v31;
  if (v33)
  {
    v109 = v8;
    v34 = v32[4];
    v35 = v32[5];

    v122 = v34;
    v123 = v35;
    lazy protocol witness table accessor for type String and conformance String();
    v36 = Text.init<A>(_:)();
    v38 = v37;
    v100 = v9;
    v40 = v39;
    v113 = v41;
    (*(v28 + 104))(v31, enum case for Font.TextStyle.title3(_:), v27);
    v42 = v28;
    v43 = enum case for Font.Design.rounded(_:);
    v44 = v31;
    v45 = type metadata accessor for Font.Design();
    (*(*(v45 - 8) + 104))(v26, v43, v45);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v45);
    static Font.Weight.medium.getter();
    static Font.system(_:design:weight:)();
    outlined destroy of StandardActionHandler?(v26, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    (*(v42 + 8))(v44, v27);
    v46 = Text.font(_:)();
    v48 = v47;
    LOBYTE(v42) = v49;

    v50 = v40 & 1;
    v9 = v100;
    outlined consume of Text.Storage(v36, v38, v50);

    static Color.primary.getter();
    v51 = Text.foregroundColor(_:)();
    v53 = v52;
    LOBYTE(v44) = v54;

    v55 = v42 & 1;
    v8 = v109;
    outlined consume of Text.Storage(v46, v48, v55);

    LODWORD(v122) = static HierarchicalShapeStyle.primary.getter();
    v56 = Text.foregroundStyle<A>(_:)();
    v58 = v57;
    LOBYTE(v38) = v59;
    v61 = v60;
    outlined consume of Text.Storage(v51, v53, v44 & 1);

    v113 = v56;
    v112 = v58;
    v110 = v38 & 1;
    outlined copy of Text.Storage(v56, v58, v38 & 1);
    v111 = v61;
  }

  else
  {

    v113 = 0;
    v112 = 0;
    v110 = 0;
    v111 = 0;
  }

  v62 = AutoShortcutAppPhrasesViewModel.displayPhrases.getter();
  v63 = 1;
  v64 = specialized Collection.dropFirst(_:)(1, v62);
  v122 = v64;
  v123 = v65;
  v124 = v66;
  v125 = v67;
  swift_getKeyPath();
  v109 = v64;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>, &_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
  ForEach<>.init(_:id:content:)();
  v68 = __dst[7];
  if (__dst[7])
  {
    v69 = __dst[6];

    AutoShortcutAppPhrasesViewModel.punchoutURL.getter();
    URL.init(string:)();

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      v71 = v107;
      v72 = v106;
      v73 = v9;
      (*(v107 + 32))(v106, v8, v9);
      v122 = v69;
      v123 = v68;
      (*(v71 + 16))(v105, v72, v9);
      lazy protocol witness table accessor for type String and conformance String();
      v74 = v108;
      Link<>.init<A>(_:destination:)();
      v75 = v102;
      v76 = v101;
      v77 = v104;
      (*(v102 + 104))(v101, enum case for Font.TextStyle.title3(_:), v104);
      v78 = enum case for Font.Design.rounded(_:);
      v79 = type metadata accessor for Font.Design();
      v80 = v103;
      (*(*(v79 - 8) + 104))(v103, v78, v79);
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v79);
      static Font.Weight.medium.getter();
      v81 = static Font.system(_:design:weight:)();
      outlined destroy of StandardActionHandler?(v80, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
      (*(v75 + 8))(v76, v77);
      (*(v71 + 8))(v72, v73);
      KeyPath = swift_getKeyPath();
      v70 = v115;
      v83 = (v74 + *(v115 + 36));
      *v83 = KeyPath;
      v83[1] = v81;
      outlined init with take of ModifiedContent<Link<Text>, _EnvironmentKeyWritingModifier<Font?>>(v74, v120);
      v63 = 0;
      goto LABEL_9;
    }

    outlined destroy of StandardActionHandler?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v63 = 1;
  }

  v70 = v115;
LABEL_9:
  v84 = v120;
  __swift_storeEnumTagSinglePayload(v120, v63, 1, v70);
  v85 = v114;
  v86 = *(v114 + 16);
  v87 = v117;
  v86(v117, v121, v118);
  outlined init with copy of ModifiedContent<Link<Text>, _EnvironmentKeyWritingModifier<Font?>>?(v84, v119);
  v88 = v116;
  v89 = v113;
  v90 = v112;
  *v116 = v113;
  v88[1] = v90;
  v91 = v110;
  v92 = v111;
  v88[2] = v110;
  v88[3] = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSg_AA7ForEachVys10ArraySliceVySSGSSACGAA15ModifiedContentVyAA4LinkVyACGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtMd, &_s7SwiftUI4TextVSg_AA7ForEachVys10ArraySliceVySSGSSACGAA15ModifiedContentVyAA4LinkVyACGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtMR);
  v94 = v87;
  v95 = v118;
  v86(v88 + *(v93 + 48), v94, v118);
  v96 = v88 + *(v93 + 64);
  v97 = v119;
  outlined init with copy of ModifiedContent<Link<Text>, _EnvironmentKeyWritingModifier<Font?>>?(v119, v96);
  outlined copy of Text?(v89, v90, v91, v92);
  outlined consume of Text?(v89, v90, v91, v92);
  swift_unknownObjectRelease();
  outlined destroy of StandardActionHandler?(v120, &_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
  v98 = *(v85 + 8);
  v98(v121, v95);
  outlined destroy of StandardActionHandler?(v97, &_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
  v98(v117, v95);
  return outlined consume of Text?(v89, v90, v91, v92);
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = specialized Array.subscript.getter(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AutoShortcutFirstRunComponentView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v37 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v38 = v12;
  v39 = v13;
  lazy protocol witness table accessor for type String and conformance String();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  (*(v8 + 104))(v11, enum case for Font.TextStyle.title3(_:), v7);
  v19 = enum case for Font.Design.rounded(_:);
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 104))(v6, v19, v20);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v20);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  outlined destroy of StandardActionHandler?(v6, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v8 + 8))(v11, v7);
  v21 = Text.font(_:)();
  v23 = v22;
  LOBYTE(v6) = v24;

  outlined consume of Text.Storage(v14, v16, v18 & 1);

  static Color.secondary.getter();
  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  LOBYTE(v16) = v28;

  outlined consume of Text.Storage(v21, v23, v6 & 1);

  LODWORD(v38) = static HierarchicalShapeStyle.secondary.getter();
  v29 = Text.foregroundStyle<A>(_:)();
  v31 = v30;
  LOBYTE(v23) = v32;
  v34 = v33;
  outlined consume of Text.Storage(v25, v27, v16 & 1);

  v36 = v37[0];
  *v37[0] = v29;
  *(v36 + 8) = v31;
  *(v36 + 16) = v23 & 1;
  *(v36 + 24) = v34;
  return result;
}

void *AutoShortcutFirstRunComponentView.init(model:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  result = memcpy(a2, __src, 0x50uLL);
  a2[10] = 0x4028000000000000;
  return result;
}

uint64_t IconView.bundleIdentifier.getter()
{
  OUTLINED_FUNCTION_1_10();

  return v0;
}

double IconView.body.getter()
{
  OUTLINED_FUNCTION_1_10();
  v3 = v2;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  *(v3 + 32) = v7;
  *(v3 + 40) = v8;
  result = *&v9;
  *(v3 + 48) = v9;
  return result;
}

double protocol witness for View.body.getter in conformance IconView()
{
  v1 = *v0;
  v2 = v0[1];
  return IconView.body.getter();
}

uint64_t getEnumTagSinglePayload for AutoShortcutFirstRunComponentView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AutoShortcutFirstRunComponentView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Divider, ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>, _PaddingLayout>, _FixedSizeLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Divider, ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>, _PaddingLayout>, _FixedSizeLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Divider, ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>, _PaddingLayout>, _FixedSizeLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Divider, ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>, _PaddingLayout>, _FixedSizeLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyALyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVALyALyAA6HStackVyAEyAgHEAiJQrSb_tFQOyALyALy16SiriLinkUIPlugin04IconE0VAWGAWG_Qo__AgHEAiJQrSb_tFQOyACyAEyANSg_AA7ForEachVys10ArraySliceVySSGSSANGALyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyALyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVALyALyAA6HStackVyAEyAgHEAiJQrSb_tFQOyALyALy16SiriLinkUIPlugin04IconE0VAWGAWG_Qo__AgHEAiJQrSb_tFQOyACyAEyANSg_AA7ForEachVys10ArraySliceVySSGSSANGALyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Divider, ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>, _PaddingLayout>, _FixedSizeLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StackIconView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StackIconView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StackIconView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy16SiriLinkUIPlugin13StackIconView33_AA89D888F96718077F023AF0E8B146E0LLVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy16SiriLinkUIPlugin13StackIconView33_AA89D888F96718077F023AF0E8B146E0LLVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type StackIconView and conformance StackIconView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StackIconView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackIconView and conformance StackIconView()
{
  result = lazy protocol witness table cache variable for type StackIconView and conformance StackIconView;
  if (!lazy protocol witness table cache variable for type StackIconView and conformance StackIconView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackIconView and conformance StackIconView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackIconView and conformance StackIconView;
  if (!lazy protocol witness table cache variable for type StackIconView and conformance StackIconView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackIconView and conformance StackIconView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for IconView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id StackIconView.makeUIView(context:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for WFApertureIconView();

  result = WFApertureIconView.__allocating_init(applicationBundleIdentifier:)();
  if (!result)
  {
    if (one-time initialization token for linkUI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.linkUI);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v12);
      _os_log_impl(&dword_0, v7, v8, "AutoShortcutFirstRunComponentView could not create WFApertureStackView from %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }

    v11 = objc_allocWithZone(UIView);

    return [v11 init];
  }

  return result;
}

id WFApertureIconView.__allocating_init(applicationBundleIdentifier:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithApplicationBundleIdentifier:v1];

  return v2;
}

uint64_t protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance StackIconView(Swift::String bundleIdentifier)
{
  v2 = *v1;
  v3 = v1[1];
  return IconView.init(bundleIdentifier:)(bundleIdentifier).bundleIdentifier._countAndFlagsBits;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance StackIconView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type StackIconView and conformance StackIconView();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance StackIconView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type StackIconView and conformance StackIconView();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance StackIconView()
{
  lazy protocol witness table accessor for type StackIconView and conformance StackIconView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t type metadata accessor for WFApertureIconView()
{
  result = lazy cache variable for type metadata for WFApertureIconView;
  if (!lazy cache variable for type metadata for WFApertureIconView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for WFApertureIconView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Divider, ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>, _PaddingLayout>, _FixedSizeLayout>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>()
{
  OUTLINED_FUNCTION_1_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1BF14()
{
  OUTLINED_FUNCTION_1_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGAA010_FixedSizeT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGAA010_FixedSizeT0VGMR);
  OUTLINED_FUNCTION_0_1(v2);
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1BF78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGAA010_FixedSizeT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGAA010_FixedSizeT0VGMR);
  OUTLINED_FUNCTION_0_1(v2);
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type IconView and conformance IconView()
{
  result = lazy protocol witness table cache variable for type IconView and conformance IconView;
  if (!lazy protocol witness table cache variable for type IconView and conformance IconView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IconView and conformance IconView);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<Link<Text>, _EnvironmentKeyWritingModifier<Font?>>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined consume of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Link<Text>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4LinkVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t ConfirmActionView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConfirmActionView() + 20);

  return outlined init with copy of WorkflowDataModels.ConfirmActionModel(v3, a1);
}

uint64_t type metadata accessor for ConfirmActionView()
{
  result = type metadata singleton initialization cache for ConfirmActionView;
  if (!type metadata singleton initialization cache for ConfirmActionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmActionView.body.getter()
{
  v1 = type metadata accessor for ConfirmActionView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  outlined init with copy of ConfirmActionView(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmActionView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of ConfirmActionView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for ConfirmActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_16SiriLinkUIPlugin08ArchivedD0VSgAH024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_16SiriLinkUIPlugin08ArchivedD0VSgAH024ConfirmationBinaryButtonD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SimpleItemRichView?, ArchivedView?, ConfirmationBinaryButtonView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_16SiriLinkUIPlugin08ArchivedD0VSgAH024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_16SiriLinkUIPlugin08ArchivedD0VSgAH024ConfirmationBinaryButtonD0VtGMR);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in ConfirmActionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for ButtonItemButtonStyle();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  __chkstk_darwin(v3);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ConfirmationBinaryButtonView();
  v6 = *(*(v70 - 8) + 64);
  v7 = __chkstk_darwin(v70);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v64 - v10;
  __chkstk_darwin(v9);
  v13 = &v64 - v12;
  v67 = type metadata accessor for ArchivedView();
  v14 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v65 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin12ArchivedViewVSgMd, &_s16SiriLinkUIPlugin12ArchivedViewVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v68 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v64 - v20;
  v22 = type metadata accessor for SimpleItemRichView();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v69 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v64 - v31;
  v33 = (a1 + *(type metadata accessor for ConfirmActionView() + 20));
  v34 = v33[12];
  if (v34)
  {
    v35 = v33[11];
    v103 = &type metadata for String;
    v104 = &protocol witness table for String;
    v100 = v35;
    v101 = v34;
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v78 = 0;
    v76 = 0u;
    v77 = 0u;

    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    (*(v23 + 32))(v32, v26, v22);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = 1;
  v38 = v32;
  __swift_storeEnumTagSinglePayload(v32, v36, 1, v22);
  v39 = v33[9];
  if (v39 >> 60 != 15)
  {
    v40 = v33[2];
    v41 = v33[3];
    v42 = *v33;
    v43 = v33[1];
    v100 = v33[8];
    v101 = v39;
    v102 = v42;
    v103 = v43;
    v104 = v40;
    v105 = v41;
    outlined copy of Data?(v100, v39);

    v44 = v65;
    ArchivedView.init(model:)(&v100, v65);
    outlined init with take of ConfirmActionView(v44, v21, type metadata accessor for ArchivedView);
    v37 = 0;
  }

  v45 = v21;
  __swift_storeEnumTagSinglePayload(v21, v37, 1, v67);
  v47 = v33[4];
  v46 = v33[5];
  v49 = v33[6];
  v48 = v33[7];
  v50 = *(v33 + 80);

  if (v50 == 1)
  {
    v51 = v72;
    static ButtonStyle<>.buttonItemPreferredAndDestructive.getter();
  }

  else
  {
    v51 = v72;
    static ButtonStyle<>.buttonItemPreferred.getter();
  }

  ActionHandler.init()();
  v52 = v70;
  v53 = &v11[*(v70 + 20)];
  *v53 = v47;
  *(v53 + 1) = v46;
  v54 = &v11[*(v52 + 24)];
  *v54 = v49;
  *(v54 + 1) = v48;
  (*(v73 + 32))(&v11[*(v52 + 28)], v51, v74);
  outlined init with take of ConfirmActionView(v11, v13, type metadata accessor for ConfirmationBinaryButtonView);
  v66 = v38;
  v55 = v69;
  outlined init with copy of SimpleItemRichView?(v38, v69, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v56 = v45;
  v57 = v68;
  outlined init with copy of SimpleItemRichView?(v45, v68, &_s16SiriLinkUIPlugin12ArchivedViewVSgMd, &_s16SiriLinkUIPlugin12ArchivedViewVSgMR);
  v58 = v71;
  outlined init with copy of ConfirmActionView(v13, v71, type metadata accessor for ConfirmationBinaryButtonView);
  v59 = v13;
  v60 = v58;
  v61 = v75;
  outlined init with copy of SimpleItemRichView?(v55, v75, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSg_16SiriLinkUIPlugin08ArchivedF0VSgAE024ConfirmationBinaryButtonF0VtMd, &_s9SnippetUI18SimpleItemRichViewVSg_16SiriLinkUIPlugin08ArchivedF0VSgAE024ConfirmationBinaryButtonF0VtMR);
  outlined init with copy of SimpleItemRichView?(v57, v61 + *(v62 + 48), &_s16SiriLinkUIPlugin12ArchivedViewVSgMd, &_s16SiriLinkUIPlugin12ArchivedViewVSgMR);
  outlined init with copy of ConfirmActionView(v60, v61 + *(v62 + 64), type metadata accessor for ConfirmationBinaryButtonView);
  outlined destroy of ConfirmationBinaryButtonView(v59);
  outlined destroy of StandardActionHandler?(v56, &_s16SiriLinkUIPlugin12ArchivedViewVSgMd, &_s16SiriLinkUIPlugin12ArchivedViewVSgMR);
  outlined destroy of StandardActionHandler?(v66, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  outlined destroy of ConfirmationBinaryButtonView(v60);
  outlined destroy of StandardActionHandler?(v57, &_s16SiriLinkUIPlugin12ArchivedViewVSgMd, &_s16SiriLinkUIPlugin12ArchivedViewVSgMR);
  return outlined destroy of StandardActionHandler?(v55, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
}

uint64_t sub_1CB0C()
{
  v1 = (type metadata accessor for ConfirmActionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = (v0 + v3 + v1[7]);
  v8 = v7[1];

  v9 = v7[3];

  v10 = v7[5];

  v11 = v7[7];

  v12 = v7[9];
  if (v12 >> 60 != 15)
  {
    outlined consume of Data._Representation(v7[8], v12);
  }

  v13 = v7[12];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in ConfirmActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmActionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in ConfirmActionView.body.getter(v4, a1);
}

void *ConfirmActionView.init(model:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = (a2 + *(type metadata accessor for ConfirmActionView() + 20));

  return memcpy(v4, a1, 0x68uLL);
}

uint64_t sub_1CD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1CDE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for ConfirmActionView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of ConfirmActionView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of ConfirmationBinaryButtonView(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationBinaryButtonView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ConfirmActionView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16SiriLinkUIPlugin20InputCompletionStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InputCompletionState(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for InputCompletionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for InputCompletionState(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_0_8();
}

uint64_t VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:)()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_opt_self() standardClient];
  v0[21] = v3;
  v4 = String._bridgeToObjectiveC()();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:);
  OUTLINED_FUNCTION_17();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
  OUTLINED_FUNCTION_6_2(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_5_3();
  [v3 getVoiceShortcutWithPhrase:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_3_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_2_11();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  OUTLINED_FUNCTION_7_2();
  v4 = *(v0 + 184) == 0;

  return v3(v4);
}

{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_7_2();
  v5 = v0[23] == 0;

  return v4(v5);
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned VCVoiceShortcut?, @unowned NSError?) -> () with result type VCVoiceShortcut(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, a3);
  }

  if (a2)
  {
    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0_8();
}

uint64_t VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:)()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = [objc_opt_self() standardClient];
  v0[22] = v4;
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v0[23] = v6;
  v8 = String._bridgeToObjectiveC()();
  v0[24] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:);
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned VCVoiceShortcut?, @unowned NSError?) -> () with result type VCVoiceShortcut;
  v0[13] = &block_descriptor_3;
  v0[14] = v9;
  [v4 importTopLevelShortcutFromURL:v7 withName:v8 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_3_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_10_1();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);

  OUTLINED_FUNCTION_11_1();

  return v4();
}

{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  swift_willThrow();

  OUTLINED_FUNCTION_11_1();
  v6 = v0[25];

  return v5();
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_0_8();
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)()
{
  OUTLINED_FUNCTION_9_1();
  if (v0[20])
  {
    v1 = v0[19];
    v2 = [objc_opt_self() standardClient];
    v0[21] = v2;
    v3 = String._bridgeToObjectiveC()();
    v0[22] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:);
    v4 = OUTLINED_FUNCTION_17();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned VCVoiceShortcut?, @unowned NSError?) -> () with result type VCVoiceShortcut;
    v0[13] = &block_descriptor_7;
    v0[14] = v4;
    [v2 getVoiceShortcutWithPhrase:v3 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_7_2();

    return v5(0);
  }
}

{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_3_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_2_11();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_7_2();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_7_2();

  return v4(0);
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_8();
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)()
{
  OUTLINED_FUNCTION_2_11();
  v0[4] = [objc_opt_self() standardClient];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:);
  v2 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_2();

  return _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_();
}

{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_5();
  v5 = v4;
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    v9 = VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:);
  }

  else
  {
    *(v5 + 56) = v3;
    v9 = VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = [v1 shortcutName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  OUTLINED_FUNCTION_12_1();

  return v7(v4, v6);
}

{
  v22 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  v8 = v0[4];
  if (v6)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v21);
    OUTLINED_FUNCTION_16_0(v14);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    OUTLINED_FUNCTION_15_0(&dword_0, v16, v17, "voiceShortcut NOT found from identifier=%s; error: %@");
    outlined destroy of NSObject?(v12);
    OUTLINED_FUNCTION_7_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_1();
  v18 = OUTLINED_FUNCTION_2();

  return v19(v18);
}

uint64_t static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:)()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v0[2] = v3;
  v0[3] = v1;
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:);

  return v9(v4, v2);
}

{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_5();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {
    v9 = static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:);
  }

  else
  {
    *(v5 + 48) = v3;
    v9 = static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_10_1();
  v1 = *(v0 + 48);
  v2 = [v1 shortcutName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  OUTLINED_FUNCTION_12_1();

  return v6(v3, v5);
}

{
  v21 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v20);
    OUTLINED_FUNCTION_16_0(v13);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    OUTLINED_FUNCTION_15_0(&dword_0, v15, v16, "voiceShortcut NOT found from identifier=%s; error: %@");
    outlined destroy of NSObject?(v11);
    OUTLINED_FUNCTION_7_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_1();
  v17 = OUTLINED_FUNCTION_2();

  return v18(v17);
}

uint64_t _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_()
{
  OUTLINED_FUNCTION_2_11();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[22] = v5;
  v0[23] = v7;

  return _swift_task_switch(_s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TY0_, v5, v7);
}

uint64_t _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TY0_()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = String._bridgeToObjectiveC()();
  v0[24] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TQ1_;
  OUTLINED_FUNCTION_17();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
  OUTLINED_FUNCTION_6_2(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_5_3();
  [v2 getVoiceShortcutWithIdentifier:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TQ1_()
{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_3_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 200) = v4;
  v5 = v3[23];
  v6 = v3[22];
  if (v4)
  {
    v7 = _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TY3_;
  }

  else
  {
    v7 = _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TY2_;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TY2_()
{
  OUTLINED_FUNCTION_2_11();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_7_2();

  return v2(v1);
}

uint64_t _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TY3_()
{
  OUTLINED_FUNCTION_10_1();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_willThrow();

  OUTLINED_FUNCTION_11_1();
  v4 = *(v0 + 200);

  return v3();
}

uint64_t _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TR()
{
  OUTLINED_FUNCTION_10_1();
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTQ0_;
  v4 = OUTLINED_FUNCTION_2();

  return v6(v4);
}

uint64_t _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTQ0_()
{
  OUTLINED_FUNCTION_2_11();
  v3 = v2;
  OUTLINED_FUNCTION_4_5();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v7 = v6;

  OUTLINED_FUNCTION_7_2();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

void VoiceShortcutClientWrapper.getSiriAutoShortcutsEnablement(forBundleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() standardClient];
  v7 = String._bridgeToObjectiveC()();
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_12;
  v8 = _Block_copy(v9);

  [v6 getSiriAutoShortcutsEnablementForBundleIdentifier:v7 completion:v8];
  _Block_release(v8);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  *(v3 + 184) = a1;
  return OUTLINED_FUNCTION_0_8();
}

uint64_t VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_9_1();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 184);
  v4 = [objc_opt_self() standardClient];
  *(v0 + 160) = v4;
  v5 = String._bridgeToObjectiveC()();
  *(v0 + 168) = v5;
  *(v0 + 16) = v0;
  *(v0 + 24) = VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:);
  v6 = OUTLINED_FUNCTION_17();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  *(v0 + 104) = &block_descriptor_15;
  *(v0 + 112) = v6;
  [v4 setSiriAutoShortcutsEnablement:v3 forBundleIdentifier:v5 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_3_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_2_11();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_11_1();

  return v2();
}

{
  OUTLINED_FUNCTION_10_1();
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  OUTLINED_FUNCTION_11_1();
  v5 = v0[22];

  return v4();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(*v3, a2);
  }

  v5 = *v3;

  return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)();
}

uint64_t protocol witness for VoiceShortcutClientWrapping.isVoiceShortcutInstalled(voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for VoiceShortcutClientWrapping.isVoiceShortcutInstalled(voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper;

  return VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:)(a1, a2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.isVoiceShortcutInstalled(voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper()
{
  OUTLINED_FUNCTION_2_11();
  v2 = v1;
  OUTLINED_FUNCTION_4_5();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v6 = v5;

  OUTLINED_FUNCTION_7_2();

  return v7(v2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.installVoiceShortcut(url:voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for VoiceShortcutClientWrapping.installVoiceShortcut(url:voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper;

  return VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:)(a1, a2, a3);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.getVoiceShortcut(voiceCommandName:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for VoiceShortcutClientWrapping.isVoiceShortcutInstalled(voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper;

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(a1, a2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.getVoiceShortcutName(voiceCommandId:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for VoiceShortcutClientWrapping.getVoiceShortcutName(voiceCommandId:) in conformance VoiceShortcutClientWrapper;

  return VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)(a1, a2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.getVoiceShortcutName(voiceCommandId:) in conformance VoiceShortcutClientWrapper()
{
  OUTLINED_FUNCTION_2_11();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_4_5();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v8 = v7;

  OUTLINED_FUNCTION_12_1();

  return v9(v4, v2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:) in conformance VoiceShortcutClientWrapper(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for VoiceShortcutClientWrapping.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:) in conformance VoiceShortcutClientWrapper;

  return VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:)(a1, a2, a3);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:) in conformance VoiceShortcutClientWrapper()
{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_4_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v4 = v3;

  OUTLINED_FUNCTION_11_1();

  return v5();
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_5_3()
{
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned VCVoiceShortcut?, @unowned NSError?) -> () with result type VCVoiceShortcut;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_continuation_init();
}

uint64_t AutoShortcutFirstRunView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ConfirmationBinaryButtonView();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  memcpy(v18, v1, sizeof(v18));
  v11 = v1[5];
  v16 = v1[6];
  v17 = v11;
  v12 = v4[9];
  outlined init with copy of AutoShortcutAppPhrasesViewModel(v18, __dst);
  outlined init with copy of String(&v17, __dst);
  outlined init with copy of String(&v16, __dst);
  static ButtonStyle<>.buttonItemPreferred.getter();
  ActionHandler.init()();
  v13 = v16;
  *&v10[v4[7]] = v17;
  *&v10[v4[8]] = v13;
  outlined init with copy of ConfirmationBinaryButtonView(v10, v8);
  memcpy(v19, v1, 0x50uLL);
  v19[10] = 0x4028000000000000;
  memcpy(a1, v19, 0x58uLL);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin33AutoShortcutFirstRunComponentViewV_AA024ConfirmationBinaryButtonI0VtMd, &_s16SiriLinkUIPlugin33AutoShortcutFirstRunComponentViewV_AA024ConfirmationBinaryButtonI0VtMR);
  outlined init with copy of ConfirmationBinaryButtonView(v8, a1 + *(v14 + 48));
  outlined init with copy of AutoShortcutFirstRunComponentView(v19, __dst);
  outlined destroy of ConfirmationBinaryButtonView(v10);
  outlined destroy of ConfirmationBinaryButtonView(v8);
  memcpy(__dst, v1, sizeof(__dst));
  v21 = 0x4028000000000000;
  return outlined destroy of AutoShortcutFirstRunComponentView(__dst);
}

uint64_t getEnumTagSinglePayload for AutoShortcutFirstRunView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for AutoShortcutFirstRunView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(AutoShortcutFirstRunComponentView, ConfirmationBinaryButtonView)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(AutoShortcutFirstRunComponentView, ConfirmationBinaryButtonView)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(AutoShortcutFirstRunComponentView, ConfirmationBinaryButtonView)> and conformance TupleView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin029AutoShortcutFirstRunComponentD0V_AD024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin029AutoShortcutFirstRunComponentD0V_AD024ConfirmationBinaryButtonD0VtGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(AutoShortcutFirstRunComponentView, ConfirmationBinaryButtonView)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t WorkflowDataModels.LinkActionModel.renderModel.getter()
{
  if (!v0[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_120();
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x50uLL);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21ArchiveRenderingModelCySo8LNActionCGMd, &_s9SnippetUI21ArchiveRenderingModelCySo8LNActionCGMR);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  outlined init with copy of CodableAction<LNAction>();
  v5 = OUTLINED_FUNCTION_118();
  outlined init with copy of WorkflowDataModels.LinkActionModel(v5, v6);
  return ArchiveRenderingModel.init(source:snippetEnvironmentProvider:)();
}

uint64_t WorkflowDataModels.LinkActionModel.archivedViewModel.getter@<X0>(uint64_t **a1@<X8>)
{
  v9 = v1[6];
  v8 = v1[7];
  if (v8 >> 60 == 15)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v4 = *v1;
    v2 = v1[1];
    v5 = v1[2];
    v3 = v1[3];

    v1 = v9;
    v6 = v8;
  }

  result = outlined copy of Data?(v9, v8);
  *a1 = v1;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v2;
  a1[4] = v5;
  a1[5] = v3;
  return result;
}

uint64_t WorkflowDataModels.ConfirmActionModel.archivedViewModel.getter@<X0>(uint64_t **a1@<X8>)
{
  v9 = v1[8];
  v8 = v1[9];
  if (v8 >> 60 == 15)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v4 = *v1;
    v2 = v1[1];
    v5 = v1[2];
    v3 = v1[3];

    v1 = v9;
    v6 = v8;
  }

  result = outlined copy of Data?(v9, v8);
  *a1 = v1;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v2;
  a1[4] = v5;
  a1[5] = v3;
  return result;
}

uint64_t AutoShortcutAppPhrasesViewModel.moreShortcutsLabel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.ShowAlertModel.asSnippetPluginModel()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  v3 = v1[3];
  a1[2] = v1[2];
  a1[3] = v3;
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  v4 = OUTLINED_FUNCTION_118();
  return outlined init with copy of WorkflowDataModels.ShowAlertModel(v4, v5);
}

uint64_t WorkflowDataModels.ShowAlertModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t WorkflowDataModels.ShowAlertModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x4C6D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x614C6C65636E6163;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.ShowAlertModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.ShowAlertModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.ShowAlertModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.ShowAlertModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ShowAlertModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ShowAlertModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.ShowAlertModel.encode(to:)()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_27();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_11_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    OUTLINED_FUNCTION_130();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v14 = OUTLINED_FUNCTION_25();
  v15(v14);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_172();
}

void __swiftcall WorkflowDataModels.ShowAlertModel.init(confirmLabel:cancelLabel:title:message:)(SiriLinkUIPlugin::WorkflowDataModels::ShowAlertModel *__return_ptr retstr, Swift::String confirmLabel, Swift::String cancelLabel, Swift::String_optional title, Swift::String message)
{
  retstr->confirmLabel = confirmLabel;
  retstr->cancelLabel = cancelLabel;
  retstr->title = title;
  retstr->message = message;
}

void WorkflowDataModels.ShowAlertModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_43();
  v12 = v3[4];
  OUTLINED_FUNCTION_52(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();
  OUTLINED_FUNCTION_129();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_112();
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v14;
    OUTLINED_FUNCTION_112();
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v16;
    v24 = v15;
    LOBYTE(v32[0]) = 2;
    OUTLINED_FUNCTION_112();
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v17;
    OUTLINED_FUNCTION_112();
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    (*(v8 + 8))(v1, v6);
    *&v28 = v13;
    *(&v28 + 1) = v27;
    *&v29 = v24;
    *(&v29 + 1) = v26;
    *&v30 = v23;
    *(&v30 + 1) = v25;
    *&v31 = v18;
    *(&v31 + 1) = v20;
    outlined init with copy of WorkflowDataModels.ShowAlertModel(&v28, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    v32[0] = v13;
    v32[1] = v27;
    v32[2] = v24;
    v32[3] = v26;
    v32[4] = v23;
    v32[5] = v25;
    v32[6] = v18;
    v32[7] = v20;
    outlined destroy of WorkflowDataModels.ShowAlertModel(v32);
    v21 = v29;
    *v5 = v28;
    v5[1] = v21;
    v22 = v31;
    v5[2] = v30;
    v5[3] = v22;
  }

  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_76();
}

uint64_t protocol witness for SnippetPluginModelProviding.asSnippetPluginModel() in conformance WorkflowDataModels.ShowAlertModel@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return WorkflowDataModels.ShowAlertModel.asSnippetPluginModel()(a1);
}

double protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.ShowAlertModel@<D0>(_OWORD *a1@<X8>)
{
  WorkflowDataModels.ShowAlertModel.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t WorkflowDataModels.EnableTCCModel.asSnippetPluginModel()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v8 = *v1;
  v6 = v1[2];
  v3 = v6;
  v7 = v2;
  *a1 = v8;
  a1[1] = v2;
  a1[2] = v3;
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of String(&v8, v5);
  outlined init with copy of String(&v7, v5);
  return outlined init with copy of CodableAction<LNAction>();
}

uint64_t WorkflowDataModels.EnableTCCModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t WorkflowDataModels.EnableTCCModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x4C6D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x614C6C65636E6163;
  }

  return 0x74706D6F7270;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.EnableTCCModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.EnableTCCModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.EnableTCCModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.EnableTCCModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.EnableTCCModel.encode(to:)()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_27();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_11_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v12 = OUTLINED_FUNCTION_25();
  v13(v12);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_172();
}

void WorkflowDataModels.EnableTCCModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_56();
  v9 = v2[4];
  OUTLINED_FUNCTION_52(v2, v2[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();
  OUTLINED_FUNCTION_166();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v11;
    OUTLINED_FUNCTION_49();
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v12;
    OUTLINED_FUNCTION_85();
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = OUTLINED_FUNCTION_83();
    v16 = v15;
    v17(v14, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    *v4 = v10;
    v4[1] = v20;
    v4[2] = v18;
    v4[3] = v19;
    v4[4] = v13;
    v4[5] = v16;
  }

  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_76();
}

double protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.EnableTCCModel@<D0>(_OWORD *a1@<X8>)
{
  WorkflowDataModels.EnableTCCModel.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t WorkflowDataModels.WatchModel.viewType.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = OUTLINED_FUNCTION_163();
  outlined copy of WatchViewType(v5, v6);
  return OUTLINED_FUNCTION_163();
}

uint64_t WorkflowDataModels.WatchModel.confirmLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AutoShortcutAppPhrasesViewModel.footnoteLabel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.WatchModel.cancelLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t WorkflowDataModels.WatchModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  memcpy(v1, v2, 0x50uLL);
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_118();
  return outlined init with copy of WorkflowDataModels.WatchModel(v3, v4);
}

uint64_t WorkflowDataModels.WatchModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756374726F6873 && a2 == 0xEC000000656D614ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795477656976 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t WorkflowDataModels.WatchModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74756374726F6873;
  switch(a1)
  {
    case 1:
      result = 0x6570795477656976;
      break;
    case 2:
      result = 0x4C6D7269666E6F63;
      break;
    case 3:
      result = 0x614C6C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.WatchModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.WatchModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.WatchModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.WatchModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.WatchModel.encode(to:)()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_27();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_11_2();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    v14 = *(v1 + 1);
    v15 = *(v1 + 2);
    lazy protocol witness table accessor for type WatchViewType and conformance WatchViewType();
    OUTLINED_FUNCTION_38();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8 = v1[6];
    v9 = v1[7];
    OUTLINED_FUNCTION_9_2(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[8];
    v11 = v1[9];
    OUTLINED_FUNCTION_9_2(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v12 = OUTLINED_FUNCTION_25();
  v13(v12);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_172();
}

void WorkflowDataModels.WatchModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_42();
  v12 = v3[4];
  OUTLINED_FUNCTION_52(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_131();
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v14;
    LOBYTE(v30[0]) = 1;
    lazy protocol witness table accessor for type WatchViewType and conformance WatchViewType();
    OUTLINED_FUNCTION_57();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v32;
    v27 = v33;
    LOBYTE(v31[0]) = 2;
    OUTLINED_FUNCTION_131();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_131();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v1;
    v18 = v17;
    (*(v8 + 8))(v16, v6);
    v30[0] = v13;
    v30[1] = v29;
    OUTLINED_FUNCTION_156();
    v30[2] = v20;
    v30[3] = v19;
    v30[4] = v32;
    v30[5] = v33;
    OUTLINED_FUNCTION_155();
    v30[6] = v22;
    v30[7] = v21;
    v30[8] = v15;
    v30[9] = v18;
    outlined init with copy of WorkflowDataModels.WatchModel(v30, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    v31[0] = v13;
    v31[1] = v29;
    OUTLINED_FUNCTION_156();
    v32 = v24;
    v33 = v23;
    v34 = v28;
    v35 = v27;
    OUTLINED_FUNCTION_155();
    v36 = v26;
    v37 = v25;
    v38 = v15;
    v39 = v18;
    outlined destroy of WorkflowDataModels.WatchModel(v31);
    memcpy(v5, v30, 0x50uLL);
  }

  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_76();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.WatchModel(void *a1@<X8>)
{
  WorkflowDataModels.WatchModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, v3, 0x50uLL);
  }
}

uint64_t WorkflowDataModels.CustomIntentModel.appPunchOut.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_0_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_2_8();

  return v4(v3);
}

uint64_t WorkflowDataModels.CustomIntentModel.interaction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkflowDataModels.CustomIntentModel(0) + 20);
  v4 = type metadata accessor for CodableINInteraction();
  v5 = OUTLINED_FUNCTION_0_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t WorkflowDataModels.CustomIntentModel.title.getter()
{
  v0 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_137(*(v0 + 28));
  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.CustomIntentModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074754FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t WorkflowDataModels.CustomIntentModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      result = 0x7463617265746E69;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 0x656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentModel.encode(to:)()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_27();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  v5 = OUTLINED_FUNCTION_51();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_19();
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v7);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_38();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v8 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    v9 = v8[5];
    OUTLINED_FUNCTION_49();
    type metadata accessor for CodableINInteraction();
    OUTLINED_FUNCTION_66();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v10);
    OUTLINED_FUNCTION_23();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v8[6];
    OUTLINED_FUNCTION_85();
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v12);
    OUTLINED_FUNCTION_23();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_150(v8[7]);
    OUTLINED_FUNCTION_130();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_172();
}

uint64_t WorkflowDataModels.CustomIntentModel.init(appPunchOut:interaction:image:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_40();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_0_1(v10);
  v12 = *(v11 + 32);
  v13 = OUTLINED_FUNCTION_78();
  v14(v13);
  v15 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v16 = v15[5];
  v17 = type metadata accessor for CodableINInteraction();
  OUTLINED_FUNCTION_0_1(v17);
  (*(v18 + 32))(v9 + v16, v6);
  v19 = v15[6];
  result = outlined init with take of VisualProperty?();
  v21 = (v9 + v15[7]);
  *v21 = v5;
  v21[1] = a5;
  return result;
}

void WorkflowDataModels.CustomIntentModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_136();
  v46 = type metadata accessor for CodableINInteraction();
  v7 = OUTLINED_FUNCTION_2_0(v46);
  v44 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_2_0(v14);
  v45 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_11_0();
  v47 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_13_1();
  v24 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v25 = OUTLINED_FUNCTION_0_1(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_3_5();
  v30 = v29 - v28;
  v31 = v2[4];
  OUTLINED_FUNCTION_52(v2, v2[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_22();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v32);
    OUTLINED_FUNCTION_115();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v45 + 32))(v30, v47);
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_66();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v33);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v44 + 32))(v30 + v24[5], v13, v46);
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v34);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v24[6];
    outlined init with take of VisualProperty?();
    OUTLINED_FUNCTION_130();
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v37;
    v38 = v36;
    v39 = OUTLINED_FUNCTION_126();
    v40(v39);
    v41 = (v30 + v24[7]);
    *v41 = v38;
    v41[1] = v43;
    OUTLINED_FUNCTION_72();
    outlined init with copy of WorkflowDataModels.CustomIntentModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_21();
    outlined destroy of WorkflowDataModels.CustomIntentModel(v30, v42);
  }

  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_76();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.cancelLabel.getter()
{
  v0 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  OUTLINED_FUNCTION_137(*(v0 + 24));
  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.asSnippetPluginModel()()
{
  return WorkflowDataModels.CustomIntentConfirmationModel.asSnippetPluginModel()();
}

{
  outlined init with copy of WorkflowDataModels.CustomIntentModel();
  type metadata accessor for WorkflowDataModels(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D746E65746E69 && a2 == 0xEB000000006C6564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4D746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x4C6D7269666E6F63;
  }

  return 0x614C6C65636E6163;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentConfirmationModel.encode(to:)()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_27();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_6_3();
  lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v5);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_23();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v6 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    OUTLINED_FUNCTION_150(*(v6 + 20));
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_150(*(v6 + 24));
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v7 = OUTLINED_FUNCTION_25();
  v8(v7);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_172();
}

void WorkflowDataModels.CustomIntentConfirmationModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v2 = v1;
  v3 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v4 = OUTLINED_FUNCTION_0_1(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v7);
  v31 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_43();
  v12 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  v13 = OUTLINED_FUNCTION_0_1(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3_5();
  v18 = v17 - v16;
  v19 = v2[4];
  OUTLINED_FUNCTION_52(v2, v2[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_129();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v20);
    OUTLINED_FUNCTION_115();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_1_12();
    outlined init with take of WorkflowDataModels.CustomIntentModel();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_112();
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = (v18 + *(v12 + 20));
    *v22 = v21;
    v22[1] = v23;
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v25;
    v26 = v24;
    v27 = *(v31 + 8);
    v28 = OUTLINED_FUNCTION_82();
    v29(v28);
    v30 = (v18 + *(v12 + 24));
    *v30 = v26;
    v30[1] = v32;
    outlined init with copy of WorkflowDataModels.CustomIntentModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    outlined destroy of WorkflowDataModels.CustomIntentModel(v18, type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel);
  }

  OUTLINED_FUNCTION_76();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.init(intentModel:confirmLabel:cancelLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_40();
  v8 = v7;
  OUTLINED_FUNCTION_1_12();
  outlined init with take of WorkflowDataModels.CustomIntentModel();
  v9 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  result = OUTLINED_FUNCTION_164(v9);
  v12 = (v8 + v11);
  *v12 = v5;
  v12[1] = a5;
  return result;
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.confirmLabel.getter(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_137(*(v1 + 20));
  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.CustomIntentHandledModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D746E65746E69 && a2 == 0xEB000000006C6564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74747542656E6F64 && a2 == 0xEF6C6562614C6E6FLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x800000000004B810 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x800000000004B830 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.CustomIntentHandledModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6F4D746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x74747542656E6F64;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentHandledModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentHandledModel.encode(to:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_27();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_6_3();
  lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v8);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_23();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v9 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
    OUTLINED_FUNCTION_150(v9[5]);
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v9[6];
    OUTLINED_FUNCTION_85();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
    OUTLINED_FUNCTION_19();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v11);
    OUTLINED_FUNCTION_38();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v1 + v9[7]);
    OUTLINED_FUNCTION_130();
    OUTLINED_FUNCTION_38();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v13 = *(v4 + 8);
  v14 = OUTLINED_FUNCTION_53();
  v15(v14);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_76();
}

void WorkflowDataModels.CustomIntentHandledModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v10 = OUTLINED_FUNCTION_0_1(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3_5();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v32);
  v31 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_43();
  v17 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  v18 = OUTLINED_FUNCTION_0_1(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_91();
  v21 = v4[4];
  OUTLINED_FUNCTION_52(v4, v4[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();
  OUTLINED_FUNCTION_129();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v22);
    OUTLINED_FUNCTION_115();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_1_12();
    outlined init with take of WorkflowDataModels.CustomIntentModel();
    OUTLINED_FUNCTION_49();
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = (v1 + v17[5]);
    *v24 = v23;
    v24[1] = v25;
    v26 = OUTLINED_FUNCTION_51();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_22();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v28);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v17[6];
    outlined init with take of VisualProperty?();
    OUTLINED_FUNCTION_130();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v31 + 8))(v2, v32);
    *(v1 + v17[7]) = v30 & 1;
    outlined init with copy of WorkflowDataModels.CustomIntentModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    outlined destroy of WorkflowDataModels.CustomIntentModel(v1, type metadata accessor for WorkflowDataModels.CustomIntentHandledModel);
  }

  OUTLINED_FUNCTION_76();
}

uint64_t WorkflowDataModels.CustomIntentHandledModel.init(intentModel:doneButtonLabel:doneButtonCommand:shouldShowDoneButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_40();
  v7 = v6;
  OUTLINED_FUNCTION_1_12();
  outlined init with take of WorkflowDataModels.CustomIntentModel();
  v8 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  OUTLINED_FUNCTION_164(v8);
  result = outlined init with take of VisualProperty?();
  *(v7 + *(v8 + 28)) = a5;
  return result;
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.appPunchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  v5 = OUTLINED_FUNCTION_0_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000000004B850 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074754FLL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x68636E7550707061;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentErrorModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.CustomIntentErrorModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentErrorModel.encode(to:)()
{
  OUTLINED_FUNCTION_75();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v0;
  v10 = v0[1];
  OUTLINED_FUNCTION_157();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
    OUTLINED_FUNCTION_49();
    v12 = OUTLINED_FUNCTION_51();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_19();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_76();
}

void WorkflowDataModels.CustomIntentErrorModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v4 = v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_2_0(v22);
  v21 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_44();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v23);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_43();
  v12 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  v13 = OUTLINED_FUNCTION_0_1(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_91();
  v16 = v4[4];
  OUTLINED_FUNCTION_52(v4, v4[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_151();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    *v1 = KeyedDecodingContainer.decode(_:forKey:)();
    v1[1] = v17;
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_22();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v18);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = OUTLINED_FUNCTION_122();
    v20(v19);
    (*(v21 + 32))(v1 + *(v12 + 20), v2, v22);
    outlined init with copy of WorkflowDataModels.CustomIntentModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    outlined destroy of WorkflowDataModels.CustomIntentModel(v1, type metadata accessor for WorkflowDataModels.CustomIntentErrorModel);
  }

  OUTLINED_FUNCTION_76();
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.init(openAppButtonLabel:appPunchOut:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_0_1(v7);
  v9 = *(v8 + 32);

  return v9(&a4[v6], a3);
}

uint64_t WorkflowDataModels.ConfirmActionModel.archivedViewData.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = OUTLINED_FUNCTION_2_8();
  outlined copy of Data?(v3, v4);
  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.ConfirmActionModel.prompt.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.ConfirmActionModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  memcpy(v1, v2, 0x68uLL);
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.ConfirmActionModel(v3, v4);
}

uint64_t WorkflowDataModels.ConfirmActionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000000004B870 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7572747365447369 && a2 == 0xED00006576697463;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.ConfirmActionModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x6C70736944707061;
      break;
    case 2:
      result = 0x4C6D7269666E6F63;
      break;
    case 3:
      result = 0x6C6562614C6F6ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7572747365447369;
      break;
    case 6:
      result = 0x74706D6F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.ConfirmActionModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.ConfirmActionModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.ConfirmActionModel.encode(to:)()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_168();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_12_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_9_2(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_9_2(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    OUTLINED_FUNCTION_9_2(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v1 + 4);
    outlined init with copy of CodableAction<LNAction>();
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_48();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v19, *(&v19 + 1));
    v14 = *(v1 + 80);
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v1[11];
    v16 = v1[12];
    OUTLINED_FUNCTION_9_2(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v17 = OUTLINED_FUNCTION_25();
  v18(v17);
  OUTLINED_FUNCTION_172();
}

uint64_t WorkflowDataModels.ConfirmActionModel.init(appBundleId:appDisplayName:confirmLabel:noLabel:archivedViewData:isDestructive:prompt:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  return result;
}

void WorkflowDataModels.ConfirmActionModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_44();
  v12 = v3[4];
  OUTLINED_FUNCTION_52(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();
  OUTLINED_FUNCTION_151();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v34) = 0;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    OUTLINED_FUNCTION_32(1);
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v16;
    OUTLINED_FUNCTION_32(2);
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v13;
    v31 = v17;
    OUTLINED_FUNCTION_32(3);
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v19;
    v26 = v18;
    LOBYTE(v33[0]) = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v34;
    v24 = v35;
    OUTLINED_FUNCTION_32(5);
    v20 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v22;
    (*(v8 + 8))(v1, v6);
    v33[0] = v28;
    v33[1] = v15;
    v33[2] = v30;
    v33[3] = v32;
    v33[4] = v27;
    v33[5] = v31;
    v33[6] = v26;
    v33[7] = v29;
    v33[8] = v34;
    v33[9] = v35;
    LOBYTE(v33[10]) = v20;
    v33[11] = v21;
    v33[12] = v23;
    outlined init with copy of WorkflowDataModels.ConfirmActionModel(v33, &v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    v34 = v28;
    v35 = v15;
    v36 = v30;
    v37 = v32;
    v38 = v27;
    v39 = v31;
    v40 = v26;
    v41 = v29;
    v42 = v25;
    v43 = v24;
    v44 = v20;
    v45 = v21;
    v46 = v23;
    outlined destroy of WorkflowDataModels.ConfirmActionModel(&v34);
    memcpy(v5, v33, 0x68uLL);
  }

  OUTLINED_FUNCTION_76();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.ConfirmActionModel(void *a1@<X8>)
{
  WorkflowDataModels.ConfirmActionModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x68uLL);
  }
}

uint64_t WorkflowDataModels.DisambiguateItemsModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  return WorkflowDataModels.DisambiguateItemsModel.asSnippetPluginModel()(a1, a2, a3, a4);
}

{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  type metadata accessor for WorkflowDataModels(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t _s16SiriLinkUIPlugin18WorkflowDataModelsO33DisambiguateSmartPromptItemsModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLO11stringValueSSvg_0(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t _s16SiriLinkUIPlugin18WorkflowDataModelsO33DisambiguateSmartPromptItemsModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOs0L3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.DisambiguateItemsModel.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.DisambiguateItemsModel.encode(to:)()
{
  WorkflowDataModels.DisambiguateItemsModel.encode(to:)();
}

{
  OUTLINED_FUNCTION_75();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_1();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  OUTLINED_FUNCTION_151();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_157();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_49();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    OUTLINED_FUNCTION_69();
    lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v14);
    OUTLINED_FUNCTION_23();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v15 = *(v9 + 8);
  v16 = OUTLINED_FUNCTION_53();
  v17(v16);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_76();
}

void WorkflowDataModels.DisambiguateItemsModel.init(from:)()
{
  WorkflowDataModels.DisambiguateItemsModel.init(from:)();
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0;
  v3 = v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2_0(v13);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_88();
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_166();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_67();
  lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v10);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = OUTLINED_FUNCTION_54();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_76();
}

void protocol witness for Encodable.encode(to:) in conformance WorkflowDataModels.DisambiguateItemsModel()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  WorkflowDataModels.DisambiguateItemsModel.encode(to:)();
}

uint64_t WorkflowDataModels.DisambiguateItemsModel.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_1_10();
  v3 = v1 == 0x74706D6F7270 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_84() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x736D657469 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_175();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkflowDataModels.InvocationCommand.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x800000000004B890 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x800000000004B8B0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7165527472617473 && a2 == 0xEC00000074736575)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t WorkflowDataModels.InvocationCommand.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x7165527472617473;
}

uint64_t WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_175();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t _s16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06Directg4WithE10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLO11stringValueSSvg_0(char a1)
{
  if (a1)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 25705;
  }
}

uint64_t WorkflowDataModels.InvocationCommand.StartRequestCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.DisambiguateItemsModel@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void protocol witness for Encodable.encode(to:) in conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  WorkflowDataModels.DisambiguateSmartPromptItemsModel.encode(to:)();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.InvocationCommand.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.InvocationCommand.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06Directg4WithE10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOs0K3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.InvocationCommand.StartRequestCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();

  return CodingKey.description.getter(a1, started);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();

  return CodingKey.debugDescription.getter(a1, started);
}

void WorkflowDataModels.InvocationCommand.encode(to:)()
{
  OUTLINED_FUNCTION_75();
  v53 = v2;
  v51 = v3;
  v45 = v4;
  v52 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  v9 = OUTLINED_FUNCTION_2_0(v8);
  v47 = v10;
  v48 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_42();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06DirectJ20WithStringCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06DirectJ20WithStringCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  v15 = OUTLINED_FUNCTION_2_0(v14);
  v49 = v16;
  v50 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_56();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06Directj4WithH10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06Directj4WithH10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v20);
  v46 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v24);
  v26 = &v45 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v27);
  v54 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_13_1();
  v32 = *(v7 + 24);
  v33 = *(v7 + 32);
  v34 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_52(v34, v35);
  lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v51)
  {
    if (v51 != 1)
    {
      lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();
      OUTLINED_FUNCTION_89();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      v41 = *(v47 + 8);
      v42 = OUTLINED_FUNCTION_63();
      v43(v42);
      v44 = *(v54 + 8);
      v38 = OUTLINED_FUNCTION_53();
      goto LABEL_11;
    }

    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();
    OUTLINED_FUNCTION_89();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v36 = v50;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v0)
    {
      HIBYTE(v55) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
      OUTLINED_FUNCTION_165();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v49 + 8))(v1, v36);
  }

  else
  {
    v37 = v46;
    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();
    OUTLINED_FUNCTION_89();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v0)
    {
      HIBYTE(v55) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
      lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v37 + 8))(v26, v20);
  }

  v38 = OUTLINED_FUNCTION_98();
  v40 = v27;
LABEL_11:
  v39(v38, v40);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_76();
}

void WorkflowDataModels.InvocationCommand.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v3);
  v61 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_11_0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06DirectJ20WithStringCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06DirectJ20WithStringCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v63);
  v60 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_13_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06Directj4WithH10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO06Directj4WithH10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v12);
  v62 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_45();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_56();
  v23 = v2[4];
  v64 = v2;
  OUTLINED_FUNCTION_52(v2, v2[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_10;
  }

  v59 = v19;
  v24 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLO_Tt1g5(v24, 0);
  if (v26 == v25 >> 1)
  {
LABEL_9:
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v38 = &type metadata for WorkflowDataModels.InvocationCommand;
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_110();
    OUTLINED_FUNCTION_41(v36);
    (*(v40 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v59 + 8);
    v42 = OUTLINED_FUNCTION_134();
    v43(v42);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    OUTLINED_FUNCTION_76();
    return;
  }

  OUTLINED_FUNCTION_121();
  if (v30 < (v29 >> 1))
  {
    v31 = *(v28 + v27);
    specialized ArraySlice.subscript.getter(v27 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      if (v31)
      {
        if (v31 == 1)
        {
          lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();
          OUTLINED_FUNCTION_132();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          KeyedDecodingContainer.decode(_:forKey:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
          lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
          OUTLINED_FUNCTION_116();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v48 = *(v60 + 8);
          v49 = OUTLINED_FUNCTION_99();
          v50(v49);
          v51 = *(v59 + 8);
        }

        else
        {
          lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();
          OUTLINED_FUNCTION_132();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          KeyedDecodingContainer.decode(_:forKey:)();
          swift_unknownObjectRelease();
          v44 = *(v61 + 8);
          v45 = OUTLINED_FUNCTION_58();
          v46(v45);
          v47 = *(v59 + 8);
        }

        v52 = OUTLINED_FUNCTION_133();
        v53(v52);
      }

      else
      {
        lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
        lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B]);
        OUTLINED_FUNCTION_116();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v54 = *(v62 + 8);
        v55 = OUTLINED_FUNCTION_78();
        v56(v55);
        v57 = OUTLINED_FUNCTION_98();
        v58(v57, v17);
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  __break(1u);
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.InvocationCommand(uint64_t a1@<X8>)
{
  WorkflowDataModels.InvocationCommand.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

void protocol witness for Encodable.encode(to:) in conformance WorkflowDataModels.InvocationCommand()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  WorkflowDataModels.InvocationCommand.encode(to:)();
}

uint64_t WorkflowDataModels.DisambiguationItemModel.invocationCommand.getter()
{
  v1 = v0 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand;
  v2 = *(v0 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand);
  v3 = *(v0 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = OUTLINED_FUNCTION_2_8();
  outlined copy of WorkflowDataModels.InvocationCommand(v6, v7, v4, v5);
  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.DisambiguationItemModel.__allocating_init(title:subtitle:thumbnail:invocationCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v20;
}

void *WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  outlined init with take of VisualProperty?();
  v13 = v9 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand;
  *v13 = a6;
  *(v13 + 1) = a7;
  *(v13 + 2) = a8;
  v13[24] = a9;
  return v9;
}

uint64_t WorkflowDataModels.DisambiguationItemModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x800000000004B7F0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.DisambiguationItemModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x69616E626D756874;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.DisambiguationItemModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkflowDataModels.DisambiguationItemModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  outlined destroy of StandardActionHandler?(v0 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_thumbnail, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  outlined consume of WorkflowDataModels.InvocationCommand(*(v0 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand), *(v0 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 8), *(v0 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 16), *(v0 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24));
  return v0;
}

uint64_t WorkflowDataModels.DisambiguationItemModel.__deallocating_deinit()
{
  WorkflowDataModels.DisambiguationItemModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void WorkflowDataModels.DisambiguationItemModel.encode(to:)()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_27();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  v6 = v1[2];
  v7 = v1[3];
  OUTLINED_FUNCTION_11_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[4];
    v9 = v1[5];
    OUTLINED_FUNCTION_9_2(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v10);
    OUTLINED_FUNCTION_23();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v1 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand);
    v14 = *(v1 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 16);
    v15 = *(v1 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24);
    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand();
    OUTLINED_FUNCTION_38();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v11 = OUTLINED_FUNCTION_25();
  v12(v11);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_172();
}

uint64_t WorkflowDataModels.DisambiguationItemModel.__allocating_init(from:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  WorkflowDataModels.DisambiguationItemModel.init(from:)();
  return v3;
}

void WorkflowDataModels.DisambiguationItemModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_88();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_56();
  v15 = v4[4];
  OUTLINED_FUNCTION_52(v4, v4[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();
  OUTLINED_FUNCTION_109();
  if (v1)
  {
    type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
    v19 = *(*v2 + 48);
    v20 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_165();
    v2[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v2[3] = v16;
    OUTLINED_FUNCTION_165();
    v2[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v2[5] = v17;
    type metadata accessor for VisualProperty();
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v18);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of VisualProperty?();
    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand();
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_165();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = *(v11 + 8);
    v22 = OUTLINED_FUNCTION_50();
    v23(v22);
    v24 = v2 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand;
    *v24 = v25;
    *(v24 + 2) = v26;
    v24[24] = v27;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_76();
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkflowDataModels.DisambiguationItemModel@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.DisambiguationItemModel@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t key path setter for WorkflowDataModels.LinkMultiChoiceModel.options : WorkflowDataModels.LinkMultiChoiceModel(uint64_t *a1)
{
  v1 = *a1;

  return WorkflowDataModels.LinkMultiChoiceModel.options.setter(v2);
}

uint64_t WorkflowDataModels.LinkMultiChoiceModel.options.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t WorkflowDataModels.LinkMultiChoiceModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  memcpy(v1, v2, 0x58uLL);
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel(v3, v4);
}

uint64_t _s16SiriLinkUIPlugin18WorkflowDataModelsO0B19PromptForValueModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLO06stringI0SSvg_0(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x65646F4D6B6E696CLL;
  }
}

uint64_t _s16SiriLinkUIPlugin18WorkflowDataModelsO0B19PromptForValueModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOs0K3KeyAAsAIP06stringI0xSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.LinkMultiChoiceModel.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkMultiChoiceModel.encode(to:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_168();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_45();
  v9 = v0[4];
  OUTLINED_FUNCTION_52(v0, v0[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();
  OUTLINED_FUNCTION_166();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_174(v22);
  OUTLINED_FUNCTION_174(&v21);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v22, v20);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
  OUTLINED_FUNCTION_138();
  v10 = OUTLINED_FUNCTION_152();
  memcpy(v10, v11, v12);
  outlined destroy of WorkflowDataModels.LinkActionModel(v20);
  if (!v1)
  {
    v19 = *(v2 + 80);
    OUTLINED_FUNCTION_49();
    v13 = OUTLINED_FUNCTION_134();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_101();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v15);
    OUTLINED_FUNCTION_162();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v16 = *(v5 + 8);
  v17 = OUTLINED_FUNCTION_58();
  v18(v17);
  OUTLINED_FUNCTION_76();
}

void WorkflowDataModels.LinkMultiChoiceModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_124();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v16);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_42();
  v8 = v1[4];
  OUTLINED_FUNCTION_52(v1, v1[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();
  OUTLINED_FUNCTION_109();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
    OUTLINED_FUNCTION_57();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v20, v19, sizeof(v20));
    v9 = OUTLINED_FUNCTION_134();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_101();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v11);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = *(v4 + 8);
    v13 = OUTLINED_FUNCTION_64();
    v14(v13);
    v15 = v18[11];
    OUTLINED_FUNCTION_113(v17);
    v17[10] = v15;
    outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel(v17, v18);
    OUTLINED_FUNCTION_90();
    v18[10] = v15;
    outlined destroy of WorkflowDataModels.LinkMultiChoiceModel(v18);
    memcpy(v2, v17, 0x58uLL);
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_76();
}

void *WorkflowDataModels.LinkPromptForValueModel.init(linkModel:options:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = OUTLINED_FUNCTION_141(a1, a2);
  *(v3 + 80) = v2;
  return result;
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkMultiChoiceModel(void *a1@<X8>)
{
  WorkflowDataModels.LinkMultiChoiceModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x58uLL);
  }
}

uint64_t WorkflowDataModels.LinkActionModel.archivedViewData.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_2_8();
  outlined copy of Data?(v3, v4);
  return OUTLINED_FUNCTION_2_8();
}

void *WorkflowDataModels.LinkActionModel.snippetAction.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void key path setter for WorkflowDataModels.LinkActionModel.snippetAction : WorkflowDataModels.LinkActionModel(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkflowDataModels.LinkActionModel.snippetAction.setter(v1);
}

void *WorkflowDataModels.LinkActionModel.environment.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void key path setter for WorkflowDataModels.LinkActionModel.environment : WorkflowDataModels.LinkActionModel(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkflowDataModels.LinkActionModel.environment.setter(v1);
}

uint64_t closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter()
{
  if (*(*(v0 + 16) + 72))
  {
    v1 = *(*(v0 + 16) + 72);
  }

  else
  {
    v1 = [objc_allocWithZone(LNSnippetEnvironment) init];
  }

  OUTLINED_FUNCTION_11_1();
  v6 = v2;
  v4 = v3;

  return v6(v1);
}

uint64_t sub_274EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 64), v4);
  }

  OUTLINED_FUNCTION_120();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter()
{
  OUTLINED_FUNCTION_2_11();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter;

  return closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter(v0 + 16);
}

{
  OUTLINED_FUNCTION_2_11();
  v2 = v1;
  OUTLINED_FUNCTION_4_5();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

uint64_t outlined copy of WatchViewType(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchViewType and conformance WatchViewType()
{
  result = lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType;
  if (!lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType;
  if (!lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType);
  }

  return result;
}

uint64_t outlined consume of WatchViewType(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(uint64_t a1)
{
  result = OUTLINED_FUNCTION_135(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentModel()
{
  OUTLINED_FUNCTION_1_10();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2_8();
  v6(v5);
  return v0;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of WorkflowDataModels.CustomIntentModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of CodableAction<LNAction>()
{
  OUTLINED_FUNCTION_1_10();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_2_8();
  v7(v6);
  return v0;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for WorkflowDataModels(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_135(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_40();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v2);
    OUTLINED_FUNCTION_99();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

uint64_t WorkflowDataModels.LinkActionModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  memcpy(v1, v2, 0x50uLL);
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_118();
  return outlined init with copy of WorkflowDataModels.LinkActionModel(v3, v4);
}

uint64_t WorkflowDataModels.LinkActionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000000004B870 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4174657070696E73 && a2 == 0xED00006E6F697463;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.LinkActionModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x6C70736944707061;
      break;
    case 2:
      result = 0x74706D6F7270;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x4174657070696E73;
      break;
    case 5:
      result = 0x6D6E6F7269766E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.LinkActionModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.LinkActionModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkActionModel.encode(to:)()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_168();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_12_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_9_2(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_9_2(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v1 + 3);
    outlined init with copy of CodableAction<LNAction>();
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_48();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v20, *(&v20 + 1));
    v21 = v1[8];
    v12 = OUTLINED_FUNCTION_51();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_101();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v14);
    OUTLINED_FUNCTION_161();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v1[9];
    v15 = OUTLINED_FUNCTION_134();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    OUTLINED_FUNCTION_101();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v17);
    OUTLINED_FUNCTION_161();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v18 = OUTLINED_FUNCTION_25();
  v19(v18);
  OUTLINED_FUNCTION_172();
}

void WorkflowDataModels.LinkActionModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_44();
  v19 = v12[4];
  OUTLINED_FUNCTION_52(v12, v12[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();
  OUTLINED_FUNCTION_151();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    OUTLINED_FUNCTION_127();
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v21;
    OUTLINED_FUNCTION_127();
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v23;
    v31 = v22;
    LOBYTE(v36) = 2;
    OUTLINED_FUNCTION_127();
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v24;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v36;
    v28 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin13CodableActionVySo8LNActionCGMd, &_s16SiriLinkUIPlugin13CodableActionVySo8LNActionCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAction<LNAction> and conformance CodableAction<A>);
    OUTLINED_FUNCTION_147();
    v27 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin18CodableEnvironmentVySo09LNSnippetE0CGMd, &_s16SiriLinkUIPlugin18CodableEnvironmentVySo09LNSnippetE0CGMR);
    v46 = 5;
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableEnvironment<LNSnippetEnvironment> and conformance CodableEnvironment<A>);
    OUTLINED_FUNCTION_147();
    v25 = OUTLINED_FUNCTION_36();
    v26(v25);
    v35[0] = v20;
    v35[1] = v34;
    v35[2] = v31;
    v35[3] = v33;
    v35[4] = v30;
    v35[5] = v32;
    v35[6] = v36;
    v35[7] = v37;
    v35[8] = v36;
    v35[9] = a10;
    outlined init with copy of WorkflowDataModels.LinkActionModel(v35, &v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v36 = v20;
    v37 = v34;
    v38 = v31;
    v39 = v33;
    v40 = v30;
    v41 = v32;
    v42 = v29;
    v43 = v28;
    v44 = v27;
    v45 = a10;
    outlined destroy of WorkflowDataModels.LinkActionModel(&v36);
    memcpy(v14, v35, 0x50uLL);
  }

  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_76();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkActionModel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  WorkflowDataModels.LinkActionModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0x50uLL);
  }
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.confirmLabel.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.cancelLabel.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_2_8();
}

uint64_t WorkflowDataModels.LinkConfirmationModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  memcpy(v1, v2, 0x71uLL);
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.LinkConfirmationModel(v3, v4);
}

uint64_t WorkflowDataModels.LinkConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D6B6E696CLL && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7572747365447369 && a2 == 0xED00006576697463)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t WorkflowDataModels.LinkConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65646F4D6B6E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x4C6D7269666E6F63;
      break;
    case 2:
      result = 0x614C6C65636E6163;
      break;
    case 3:
      result = 0x7572747365447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.LinkConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkConfirmationModel.encode(to:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_27();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_176(v18);
  OUTLINED_FUNCTION_176(&v17);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v18, v16);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
  OUTLINED_FUNCTION_38();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v6 = OUTLINED_FUNCTION_159();
  if (v0)
  {
    memcpy(v6, v7, v8);
    outlined destroy of WorkflowDataModels.LinkActionModel(v16);
  }

  else
  {
    memcpy(v6, v7, v8);
    outlined destroy of WorkflowDataModels.LinkActionModel(v16);
    v9 = *(v1 + 80);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v1 + 96);
    v12 = *(v1 + 104);
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v1 + 112);
    OUTLINED_FUNCTION_38();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v14 = OUTLINED_FUNCTION_25();
  v15(v14);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_76();
}

void WorkflowDataModels.LinkConfirmationModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_124();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v18);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_43();
  v6 = v0[4];
  OUTLINED_FUNCTION_52(v0, v0[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_129();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v23, v22, sizeof(v23));
    OUTLINED_FUNCTION_160(1);
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v8;
    v16 = v7;
    OUTLINED_FUNCTION_160(2);
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v15 = v9;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = OUTLINED_FUNCTION_81();
    v14(v13);
    v12 &= 1u;
    OUTLINED_FUNCTION_113(v19);
    v19[10] = v16;
    v19[11] = v17;
    v19[12] = v15;
    v19[13] = v11;
    LOBYTE(v19[14]) = v12;
    outlined init with copy of WorkflowDataModels.LinkConfirmationModel(v19, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    OUTLINED_FUNCTION_113(v20);
    v20[10] = v16;
    v20[11] = v17;
    v20[12] = v15;
    v20[13] = v11;
    v21 = v12;
    outlined destroy of WorkflowDataModels.LinkConfirmationModel(v20);
    memcpy(v2, v19, 0x71uLL);
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_76();
}

void *WorkflowDataModels.LinkConfirmationModel.init(linkModel:confirmLabel:cancelLabel:isDestructive:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  result = memcpy(a7, __src, 0x50uLL);
  *(a7 + 80) = a2;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkConfirmationModel(void *a1@<X8>)
{
  WorkflowDataModels.LinkConfirmationModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x71uLL);
  }
}

uint64_t WorkflowDataModels.LinkPromptForValueModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  memcpy(v1, v2, 0x58uLL);
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.LinkPromptForValueModel(v3, v4);
}

uint64_t WorkflowDataModels.LinkMultiChoiceModel.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_1_10();
  v3 = v1 == 0x65646F4D6B6E696CLL && v2 == 0xE90000000000006CLL;
  if (v3 || (OUTLINED_FUNCTION_84() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x736E6F6974706FLL && v0 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_175();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkPromptForValueModel.encode(to:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_168();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_45();
  v9 = v0[4];
  OUTLINED_FUNCTION_52(v0, v0[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();
  OUTLINED_FUNCTION_166();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_174(v20);
  OUTLINED_FUNCTION_174(&v19);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v20, v18);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
  OUTLINED_FUNCTION_138();
  v10 = OUTLINED_FUNCTION_152();
  memcpy(v10, v11, v12);
  outlined destroy of WorkflowDataModels.LinkActionModel(v18);
  if (!v1)
  {
    v17 = *(v2 + 80);
    OUTLINED_FUNCTION_49();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    OUTLINED_FUNCTION_69();
    lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v13);
    OUTLINED_FUNCTION_162();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_58();
  v16(v15);
  OUTLINED_FUNCTION_76();
}

void WorkflowDataModels.LinkPromptForValueModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_124();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v14);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_42();
  v8 = v1[4];
  OUTLINED_FUNCTION_52(v1, v1[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();
  OUTLINED_FUNCTION_109();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
    OUTLINED_FUNCTION_89();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v18, v17, sizeof(v18));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_67();
    lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v9);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = *(v4 + 8);
    v11 = OUTLINED_FUNCTION_63();
    v12(v11);
    v13 = v16[11];
    OUTLINED_FUNCTION_113(v15);
    v15[10] = v13;
    outlined init with copy of WorkflowDataModels.LinkPromptForValueModel(v15, v16);
    OUTLINED_FUNCTION_90();
    v16[10] = v13;
    outlined destroy of WorkflowDataModels.LinkPromptForValueModel(v16);
    memcpy(v2, v15, 0x58uLL);
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_76();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkPromptForValueModel(void *a1@<X8>)
{
  WorkflowDataModels.LinkPromptForValueModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x58uLL);
  }
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  memcpy(v1, v2, 0x70uLL);
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_118();
  return outlined init with copy of WorkflowDataModels.AutoShortcutFirstRunModel(v3, v4);
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x65646F4D77656976;
  }

  if (a1 == 1)
  {
    return 0x4C6D7269666E6F63;
  }

  return 0x614C6C65636E6163;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys(uint64_t a1)
{
  Run = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();

  return CodingKey.description.getter(a1, Run);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys(uint64_t a1)
{
  Run = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, Run);
}

void WorkflowDataModels.AutoShortcutFirstRunModel.encode(to:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_27();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_176(v17);
  OUTLINED_FUNCTION_176(&v16);
  outlined init with copy of AutoShortcutAppPhrasesViewModel(v17, v15);
  lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
  OUTLINED_FUNCTION_38();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v6 = OUTLINED_FUNCTION_159();
  if (v0)
  {
    memcpy(v6, v7, v8);
    outlined destroy of AutoShortcutAppPhrasesViewModel(v15);
  }

  else
  {
    memcpy(v6, v7, v8);
    outlined destroy of AutoShortcutAppPhrasesViewModel(v15);
    v9 = v1[10];
    v10 = v1[11];
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v1[12];
    v12 = v1[13];
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_76();
}

void WorkflowDataModels.AutoShortcutFirstRunModel.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v3 = v2;
  v5 = v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v18);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_42();
  v11 = v3[4];
  OUTLINED_FUNCTION_52(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
    OUTLINED_FUNCTION_57();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v26, v25, sizeof(v26));
    v20[0] = 1;
    OUTLINED_FUNCTION_131();
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v12;
    OUTLINED_FUNCTION_131();
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    (*(v7 + 8))(v1, v18);
    OUTLINED_FUNCTION_113(v19);
    v19[10] = v16;
    v19[11] = v17;
    v19[12] = v13;
    v19[13] = v15;
    outlined init with copy of WorkflowDataModels.AutoShortcutFirstRunModel(v19, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_113(v20);
    v21 = v16;
    v22 = v17;
    v23 = v13;
    v24 = v15;
    outlined destroy of WorkflowDataModels.AutoShortcutFirstRunModel(v20);
    memcpy(v5, v19, 0x70uLL);
  }

  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_76();
}

void __swiftcall WorkflowDataModels.AutoShortcutFirstRunModel.init(viewModel:confirmLabel:cancelLabel:)(SiriLinkUIPlugin::WorkflowDataModels::AutoShortcutFirstRunModel *__return_ptr retstr, SiriLinkUIPlugin::AutoShortcutAppPhrasesViewModel *viewModel, Swift::String confirmLabel, Swift::String cancelLabel)
{
  object = cancelLabel._object;
  OUTLINED_FUNCTION_40();
  v9 = v8;
  memcpy(v8, v10, 0x50uLL);
  v9[10] = v6;
  v9[11] = v5;
  v9[12] = v4;
  v9[13] = object;
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.AutoShortcutFirstRunModel(void *a1@<X8>)
{
  WorkflowDataModels.AutoShortcutFirstRunModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t static WorkflowDataModels.getThumbnail(shortcutName:defaultAppIdentifier:)()
{
  OUTLINED_FUNCTION_2_11();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[4] = v5;
  v6 = type metadata accessor for ImageElement.ImageStyle();
  v0[9] = v6;
  v7 = *(v6 - 8);
  v0[10] = v7;
  v8 = *(v7 + 64) + 15;
  v0[11] = swift_task_alloc();
  v9 = type metadata accessor for ImageElement();
  v0[12] = v9;
  v10 = *(v9 - 8);
  v0[13] = v10;
  v11 = *(v10 + 64) + 15;
  v0[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
  OUTLINED_FUNCTION_4(v12);
  v14 = *(v13 + 64) + 15;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_102();

  return _swift_task_switch(v15, v16, v17);
}

{
  if (!v3[6])
  {
    OUTLINED_FUNCTION_108();
    v14 = OUTLINED_FUNCTION_154();
    v15(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
    v16 = type metadata accessor for _ProtoIdiom();
    OUTLINED_FUNCTION_2_0(v16);
    v18 = v17;
    v20 = *(v19 + 72);
    v21 = *(v17 + 80);
    OUTLINED_FUNCTION_93();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_43980;
    (*(v18 + 104))(v22 + v6, enum case for _ProtoIdiom.default(_:), v16);
    v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v22);
    OUTLINED_FUNCTION_139(v23, v24, v25, v26, v27, v28, v29, v30, v37, v38, v39);

    (*(v4 + 8))(v2, v5);
    ImageElement.convertToVisualProperty()();
    (*(v0 + 8))(v1);
    v32 = v3[15];
    v31 = v3[16];
    v33 = v3[14];
    v34 = v3[11];

    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_171();

    __asm { BRAA            X1, X16 }
  }

  type metadata accessor for VoiceShortcutClientWrapper();
  v3[17] = swift_initStackObject();
  v7 = swift_task_alloc();
  v3[18] = v7;
  *v7 = v3;
  v7[1] = static WorkflowDataModels.getThumbnail(shortcutName:defaultAppIdentifier:);
  v9 = v3[5];
  v8 = v3[6];
  OUTLINED_FUNCTION_171();

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(v10, v11);
}

{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_4_5();
  v2 = v1;
  v3 = *(v1 + 144);
  v9 = *v0;
  *(v2 + 152) = v4;

  v5 = OUTLINED_FUNCTION_102();

  return _swift_task_switch(v5, v6, v7);
}

void static WorkflowDataModels.getThumbnail(shortcutName:defaultAppIdentifier:)()
{
  v6 = *(v2 + 152);
  if (v6)
  {
    v7 = [*(v2 + 152) shortcut];
    if (v7)
    {
      v8 = v7;
      v9 = *(v2 + 120);
      static INShortcut._unconditionallyBridgeFromObjectiveC(_:)();

      v0 = 0;
    }

    else
    {
      v0 = &dword_0 + 1;
    }

    v4 = *(v2 + 120);
    v10 = *(v2 + 128);
    v1 = type metadata accessor for INShortcut();
    __swift_storeEnumTagSinglePayload(v4, v0, 1, v1);
    OUTLINED_FUNCTION_78();
    outlined init with take of VisualProperty?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v1);
    v3 = *(v2 + 128);
    if (EnumTagSinglePayload == 1)
    {

      outlined destroy of StandardActionHandler?(v3, &_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
    }

    else
    {
      v12 = *(v2 + 128);
      v0 = INShortcut.intent.getter();
      OUTLINED_FUNCTION_41(v1);
      (*(v13 + 8))(v3, v1);
      if (v0)
      {
        v1 = [v0 _keyImage];

        v14 = outlined bridged method (ob) of @objc INImage._imageData.getter(v1);
        if (v15 >> 60 != 15)
        {
          v39 = v14;
          v40 = v15;
          v41 = *(v2 + 32);
          static WorkflowDataModels.getThumbnail(imageData:)();
          outlined consume of Data?(v39, v40);

LABEL_11:
          v34 = *(v2 + 120);
          v33 = *(v2 + 128);
          v35 = *(v2 + 112);
          v36 = *(v2 + 88);

          OUTLINED_FUNCTION_11_1();
          OUTLINED_FUNCTION_171();

          __asm { BRAA            X1, X16 }
        }
      }
    }
  }

  OUTLINED_FUNCTION_108();
  v16 = OUTLINED_FUNCTION_154();
  v17(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v18 = type metadata accessor for _ProtoIdiom();
  OUTLINED_FUNCTION_2_0(v18);
  v20 = v19;
  v22 = *(v21 + 72);
  v23 = *(v19 + 80);
  OUTLINED_FUNCTION_93();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_43980;
  (*(v20 + 104))(v24 + v5, enum case for _ProtoIdiom.default(_:), v18);
  v25 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v24);
  OUTLINED_FUNCTION_139(v25, v26, v27, v28, v29, v30, v31, v32, v42, v43, v44);

  (*(v3 + 8))(v1, v4);
  ImageElement.convertToVisualProperty()();
  (v6)[1](v0);
  goto LABEL_11;
}

uint64_t static WorkflowDataModels.getThumbnail(imageData:)()
{
  v3 = type metadata accessor for ImageElement.ImageStyle();
  v4 = OUTLINED_FUNCTION_2_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_91();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
  OUTLINED_FUNCTION_4(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_43();
  v30 = type metadata accessor for ImageElement();
  v13 = OUTLINED_FUNCTION_2_0(v30);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3_5();
  v20 = v19 - v18;
  v21 = type metadata accessor for ImageElement.AspectRatio();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  (*(v6 + 104))(v0, enum case for ImageElement.ImageStyle.default(_:), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v22 = type metadata accessor for _ProtoIdiom();
  OUTLINED_FUNCTION_2_0(v22);
  v24 = v23;
  v26 = *(v25 + 72);
  v27 = *(v23 + 80);
  OUTLINED_FUNCTION_93();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_43980;
  (*(v24 + 104))(v28 + v1, enum case for _ProtoIdiom.default(_:), v22);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v28);
  static ImageElement.pngData(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:idioms:)();

  (*(v6 + 8))(v0, v3);
  outlined destroy of StandardActionHandler?(v2, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
  ImageElement.convertToVisualProperty()();
  return (*(v15 + 8))(v20, v30);
}

uint64_t static WorkflowDataModels.modelForShowAlert(deviceState:shortcutName:confirmLabel:cancelLabel:title:message:)()
{
  v1 = *(v0 + 24);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_163();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = (v0 + 40);
    v18 = *(v0 + 32);
    v20 = *(v0 + 48);
    v6 = *(v0 + 16);
    v6[3] = &type metadata for WorkflowDataModels.WatchModel;
    v6[4] = &protocol witness table for WorkflowDataModels.WatchModel;
    OUTLINED_FUNCTION_120();
    v7 = swift_allocObject();
    *v6 = v7;
    *(v7 + 16) = v18;
    *(v7 + 32) = v20;
    *(v7 + 48) = v4;
    *(v7 + 56) = v3;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
  }

  else
  {
    v5 = (v0 + 104);
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 80);
    v19 = *(v0 + 48);
    v21 = *(v0 + 64);
    v12 = *(v0 + 16);
    v12[3] = &type metadata for WorkflowDataModels.ShowAlertModel;
    v12[4] = &protocol witness table for WorkflowDataModels.ShowAlertModel;
    v13 = swift_allocObject();
    *v12 = v13;
    *(v13 + 16) = v19;
    *(v13 + 32) = v21;
    *(v13 + 48) = v11;
    *(v13 + 56) = v9;
    *(v13 + 64) = v10;
    *(v13 + 72) = v8;
  }

  v14 = *v5;
  v15 = *(v0 + 72);
  v16 = *(v0 + 56);
  v22 = *(v0 + 8);

  return v22();
}

uint64_t static WorkflowDataModels.modelForCustomIntentHandled(app:intent:intentResponse:doneButtonCommand:deviceState:shortcutName:title:image:doneButtonLabel:shouldShowDoneButton:)()
{
  OUTLINED_FUNCTION_2_11();
  *(v0 + 160) = v21;
  *(v0 + 96) = v20;
  *(v0 + 64) = v18;
  *(v0 + 80) = v19;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  OUTLINED_FUNCTION_4(v7);
  v9 = *(v8 + 64) + 15;
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  v10 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  *(v0 + 120) = v10;
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64) + 15;
  *(v0 + 128) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_102();

  return _swift_task_switch(v13, v14, v15);
}

{
  v1 = *(v0 + 56);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_163();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v3 = *(v0 + 16);
    v4 = [*(v0 + 32) _title];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v3[3] = &type metadata for WorkflowDataModels.WatchModel;
    v3[4] = &protocol witness table for WorkflowDataModels.WatchModel;
    OUTLINED_FUNCTION_120();
    v8 = swift_allocObject();
    *v3 = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 80) = 0u;
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);

    OUTLINED_FUNCTION_11_1();

    return v12();
  }

  else
  {
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = *(v0 + 24);
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v19 = v16;
    OUTLINED_FUNCTION_99();
    v20 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    *(v0 + 136) = v20;
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v21 = v17;
    v30.value.super.isa = v16;
    isa = INInteraction.__allocating_init(intent:response:)(v21, v30).super.isa;
    *(v0 + 144) = isa;
    v23 = v20;
    CodableAceObject.init(wrappedValue:)();
    v24 = *(v15 + 20);
    v25 = isa;
    CodableINInteraction.init(wrappedValue:)();
    v26 = *(v15 + 24);
    v27 = swift_task_alloc();
    *(v0 + 152) = v27;
    *v27 = v0;
    v27[1] = static WorkflowDataModels.modelForCustomIntentHandled(app:intent:intentResponse:doneButtonCommand:deviceState:shortcutName:title:image:doneButtonLabel:shouldShowDoneButton:);
    v28 = *(v0 + 80);

    return INImage.convertToVisualProperty()(v14 + v26);
  }
}

{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_4_5();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_102();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = (*(v0 + 128) + *(*(v0 + 120) + 28));
  *v4 = *(v0 + 64);
  v4[1] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  if (v3)
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 72);
    v11 = *(v0 + 48);
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for SAStartLocalRequest, SAStartLocalRequest_ptr);

    v12 = v11;
    CodableAceObject.init(wrappedValue:)();

    outlined destroy of StandardActionHandler?(v8, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v5);
    outlined init with take of VisualProperty?();
  }

  else
  {
    v13 = *(v0 + 72);
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 112);
  v16 = *(v0 + 160);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 16);
  v20 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  v19[3] = v20;
  v19[4] = &protocol witness table for WorkflowDataModels.CustomIntentHandledModel;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_99();
  outlined init with take of WorkflowDataModels.CustomIntentModel();
  v22 = (boxed_opaque_existential_1 + v20[5]);
  *v22 = v18;
  v22[1] = v17;
  v23 = v20[6];
  outlined init with take of VisualProperty?();
  *(boxed_opaque_existential_1 + v20[7]) = v16;
  v24 = *(v0 + 128);
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);

  OUTLINED_FUNCTION_11_1();

  return v27();
}

INInteraction __swiftcall INInteraction.__allocating_init(intent:response:)(INIntent intent, INIntentResponse_optional response)
{
  isa = response.value.super.isa;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:intent.super.isa response:response.value.super.isa];

  return v4;
}

uint64_t static WorkflowDataModels.modelForCustomIntentConfirmation(app:intent:intentResponse:deviceState:confirmLabel:cancelLabel:title:image:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v5 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  *(v0 + 112) = v5;
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 16);
    v12 = [*(v0 + 32) _title];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v11[3] = &type metadata for WorkflowDataModels.WatchModel;
    v11[4] = &protocol witness table for WorkflowDataModels.WatchModel;
    OUTLINED_FUNCTION_120();
    v16 = swift_allocObject();
    *v11 = v16;

    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v16 + 32) = v10;
    *(v16 + 40) = v9;
    *(v16 + 48) = v8;
    *(v16 + 56) = v7;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    OUTLINED_FUNCTION_11_1();

    return v17();
  }

  else
  {
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v21 = *(v0 + 16);
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v22 = v19;
    v23 = v20;
    v35.value.super.isa = v19;
    isa = INInteraction.__allocating_init(intent:response:)(v23, v35).super.isa;
    *(v0 + 120) = isa;
    v25 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    *(v0 + 128) = v25;
    v21[3] = v25;
    v21[4] = &protocol witness table for WorkflowDataModels.CustomIntentConfirmationModel;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    *(v0 + 136) = boxed_opaque_existential_1;
    v27 = v5;
    CodableAceObject.init(wrappedValue:)();
    v28 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    *(v0 + 144) = v28;
    v29 = *(v28 + 20);
    v30 = isa;
    CodableINInteraction.init(wrappedValue:)();
    v31 = *(v28 + 24);
    v32 = swift_task_alloc();
    *(v0 + 152) = v32;
    *v32 = v0;
    v32[1] = static WorkflowDataModels.modelForCustomIntentConfirmation(app:intent:intentResponse:deviceState:confirmLabel:cancelLabel:title:image:);
    v33 = *(v0 + 104);

    return INImage.convertToVisualProperty()(boxed_opaque_existential_1 + v31);
  }
}

{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_4_5();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_102();

  return _swift_task_switch(v5, v6, v7);
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v15 = *(v0 + 72);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  v10 = (v2 + *(v1 + 28));
  *v10 = v6;
  v10[1] = v5;
  v11 = (v2 + *(v3 + 20));
  *v11 = v9;
  v11[1] = v8;
  v12 = (v2 + *(v3 + 24));
  *v12 = v15;
  v12[1] = v7;
  OUTLINED_FUNCTION_11_1();
  v16 = v13;

  return v16();
}

uint64_t WorkflowDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656C41776F6873 && a2 == 0xED00007765695674;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4354656C62616E65 && a2 == 0xED00007765695643;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x800000000004B8D0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x800000000004B8F0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x800000000004B910 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x800000000004B930 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6569566863746177 && a2 == 0xE900000000000077;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x800000000004B950 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000020 && 0x800000000004B970 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x800000000004B9A0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x697463416B6E696CLL && a2 == 0xEE00776569566E6FLL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x800000000004B9C0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000016 && 0x800000000004B9E0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001ELL && 0x800000000004BA00 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000018 && 0x800000000004BA20 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.CodingKeys.stringValue.getter(char a1)
{
  result = 0x72656C41776F6873;
  switch(a1)
  {
    case 1:
      result = 0x4354656C62616E65;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6569566863746177;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x697463416B6E696CLL;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_175();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s16SiriLinkUIPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOs0L3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys(uint64_t a1)
{
  RunViewCoding = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();

  return CodingKey.description.getter(a1, RunViewCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys(uint64_t a1)
{
  RunViewCoding = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, RunViewCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ConfirmActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ConfirmActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.EnableTCCViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.EnableTCCViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ShowAlertViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ShowAlertViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.WatchViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.WatchViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.encode(to:)()
{
  OUTLINED_FUNCTION_75();
  v3 = v2;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v210);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_11_0();
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v208);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_11_0();
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v207);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_11_0();
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v206);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_11_0();
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v205);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_11_0();
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v204);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_11_0();
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v203);
  v187 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_11_0();
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v202);
  v186 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_11_0();
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v201);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_11_0();
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v200);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_11_0();
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v199);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_11_0();
  v39 = OUTLINED_FUNCTION_136();
  v197 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(v39);
  v40 = OUTLINED_FUNCTION_0_1(v197);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_3_5();
  v198 = v44 - v43;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v196);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_11_0();
  v48 = OUTLINED_FUNCTION_136();
  v194 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(v48);
  v49 = OUTLINED_FUNCTION_0_1(v194);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_3_5();
  v195 = v53 - v52;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v193);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_11_0();
  v57 = OUTLINED_FUNCTION_136();
  v191 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(v57);
  v58 = OUTLINED_FUNCTION_0_1(v191);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  OUTLINED_FUNCTION_3_5();
  v192 = v62 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v63);
  v190 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_45();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  v69 = OUTLINED_FUNCTION_2_0(v68);
  v188 = v70;
  v189 = v69;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v73);
  OUTLINED_FUNCTION_44();
  v74 = type metadata accessor for WorkflowDataModels(0);
  v75 = OUTLINED_FUNCTION_0_1(v74);
  v77 = *(v76 + 64);
  __chkstk_darwin(v75);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_91();
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v213);
  v212 = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v81);
  OUTLINED_FUNCTION_42();
  v82 = v3[4];
  OUTLINED_FUNCTION_52(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of WorkflowDataModels.CustomIntentModel();
  OUTLINED_FUNCTION_50();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v136 = v0[1];
      v137 = v0[3];
      v209 = v0[2];
      v211 = *v0;
      v139 = v0[4];
      v138 = v0[5];
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();
      OUTLINED_FUNCTION_89();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v214 = v211;
      *(&v214 + 1) = v136;
      *&v215 = v209;
      *(&v215 + 1) = v137;
      *&v216 = v139;
      *(&v216 + 1) = v138;
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v140 = *(v190 + 8);
      v141 = OUTLINED_FUNCTION_58();
      v142(v141);
      v143 = OUTLINED_FUNCTION_17_0();
      v144(v143);

      goto LABEL_19;
    case 2u:
      v103 = v192;
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      LOBYTE(v214) = 2;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_70();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v124);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v125 = OUTLINED_FUNCTION_17_0();
      v126(v125);
      v107 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel;
      goto LABEL_10;
    case 3u:
      v103 = v195;
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      LOBYTE(v214) = 3;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_68();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v127);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v128 = OUTLINED_FUNCTION_17_0();
      v129(v128);
      v107 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel;
      goto LABEL_10;
    case 4u:
      v103 = v198;
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      LOBYTE(v214) = 4;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_71();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v104);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v105 = OUTLINED_FUNCTION_17_0();
      v106(v105);
      v107 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel;
LABEL_10:
      outlined destroy of WorkflowDataModels.CustomIntentModel(v103, v107);
      v130 = OUTLINED_FUNCTION_7_3();
      v131(v130);
      break;
    case 5u:
      v145 = OUTLINED_FUNCTION_95();
      memcpy(v145, v146, 0x68uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      v147 = OUTLINED_FUNCTION_96();
      memcpy(v147, v148, 0x68uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel();
      OUTLINED_FUNCTION_65();
      v149 = OUTLINED_FUNCTION_17_0();
      v150(v149);
      v151 = OUTLINED_FUNCTION_7_3();
      v152(v151);
      outlined destroy of WorkflowDataModels.ConfirmActionModel(&v214);
      break;
    case 6u:
      v161 = OUTLINED_FUNCTION_95();
      memcpy(v161, v162, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      v163 = OUTLINED_FUNCTION_96();
      memcpy(v163, v164, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel();
      OUTLINED_FUNCTION_65();
      v165 = OUTLINED_FUNCTION_17_0();
      v166(v165);
      v167 = OUTLINED_FUNCTION_7_3();
      v168(v167);
      outlined destroy of WorkflowDataModels.WatchModel(&v214);
      break;
    case 7u:
      v133 = *v0;
      v132 = v0[1];
      v134 = v0[2];
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();
      OUTLINED_FUNCTION_57();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v214 = v133;
      *(&v214 + 1) = v132;
      *&v215 = v134;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v135 = v186;
      goto LABEL_18;
    case 8u:
      v178 = *v0;
      v177 = v0[1];
      v179 = v0[2];
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();
      OUTLINED_FUNCTION_57();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v214 = v178;
      *(&v214 + 1) = v177;
      *&v215 = v179;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v135 = v187;
LABEL_18:
      v180 = *(v135 + 8);
      v181 = OUTLINED_FUNCTION_82();
      v182(v181);
      v183 = *(v212 + 8);
      v184 = OUTLINED_FUNCTION_64();
      v185(v184);

LABEL_19:

      break;
    case 9u:
      v116 = OUTLINED_FUNCTION_95();
      memcpy(v116, v117, 0x58uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      v118 = OUTLINED_FUNCTION_96();
      memcpy(v118, v119, 0x58uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel();
      OUTLINED_FUNCTION_65();
      v120 = OUTLINED_FUNCTION_17_0();
      v121(v120);
      v122 = OUTLINED_FUNCTION_7_3();
      v123(v122);
      outlined destroy of WorkflowDataModels.LinkMultiChoiceModel(&v214);
      break;
    case 0xAu:
      v169 = OUTLINED_FUNCTION_95();
      memcpy(v169, v170, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      v171 = OUTLINED_FUNCTION_96();
      memcpy(v171, v172, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
      OUTLINED_FUNCTION_65();
      v173 = OUTLINED_FUNCTION_17_0();
      v174(v173);
      v175 = OUTLINED_FUNCTION_7_3();
      v176(v175);
      outlined destroy of WorkflowDataModels.LinkActionModel(&v214);
      break;
    case 0xBu:
      v95 = OUTLINED_FUNCTION_95();
      memcpy(v95, v96, 0x71uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      v97 = OUTLINED_FUNCTION_96();
      memcpy(v97, v98, 0x71uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel();
      OUTLINED_FUNCTION_65();
      v99 = OUTLINED_FUNCTION_17_0();
      v100(v99);
      v101 = OUTLINED_FUNCTION_7_3();
      v102(v101);
      outlined destroy of WorkflowDataModels.LinkConfirmationModel(&v214);
      break;
    case 0xCu:
      v108 = OUTLINED_FUNCTION_95();
      memcpy(v108, v109, 0x58uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      v110 = OUTLINED_FUNCTION_96();
      memcpy(v110, v111, 0x58uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel();
      OUTLINED_FUNCTION_65();
      v112 = OUTLINED_FUNCTION_17_0();
      v113(v112);
      v114 = OUTLINED_FUNCTION_7_3();
      v115(v114);
      outlined destroy of WorkflowDataModels.LinkPromptForValueModel(&v214);
      break;
    case 0xDu:
      v153 = OUTLINED_FUNCTION_95();
      memcpy(v153, v154, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      v155 = OUTLINED_FUNCTION_96();
      memcpy(v155, v156, 0x50uLL);
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_65();
      v157 = OUTLINED_FUNCTION_17_0();
      v158(v157);
      v159 = OUTLINED_FUNCTION_7_3();
      v160(v159);
      outlined destroy of AutoShortcutAppPhrasesViewModel(&v214);
      break;
    case 0xEu:
      v87 = OUTLINED_FUNCTION_95();
      memcpy(v87, v88, 0x70uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();
      OUTLINED_FUNCTION_14_0();
      v89 = OUTLINED_FUNCTION_96();
      memcpy(v89, v90, 0x70uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel();
      OUTLINED_FUNCTION_65();
      v91 = OUTLINED_FUNCTION_17_0();
      v92(v91);
      v93 = OUTLINED_FUNCTION_7_3();
      v94(v93);
      outlined destroy of WorkflowDataModels.AutoShortcutFirstRunModel(&v214);
      break;
    default:
      v83 = *(v0 + 1);
      v214 = *v0;
      v215 = v83;
      v84 = *(v0 + 3);
      v216 = *(v0 + 2);
      v217 = v84;
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();
      OUTLINED_FUNCTION_46();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v188 + 8))(v1, v189);
      v85 = OUTLINED_FUNCTION_7_3();
      v86(v85);
      outlined destroy of WorkflowDataModels.ShowAlertModel(&v214);
      break;
  }

  OUTLINED_FUNCTION_76();
}

void WorkflowDataModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_75();
  a19 = v21;
  a20 = v22;
  v315 = v20;
  v24 = v23;
  v306 = v25;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v309);
  v308 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v30);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v296);
  v294 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v35);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v295);
  v292 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v40);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v293);
  v290 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v45);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v291);
  v288 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v50);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v289);
  v286 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v55);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v287);
  v285 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v59);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v60);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v284);
  v283 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v64);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v65);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v282);
  v280 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v69);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v70);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v281);
  v277 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v74);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v75);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v279);
  v278 = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v79);
  OUTLINED_FUNCTION_11_0();
  v312 = v80;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v275);
  v276 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v84);
  OUTLINED_FUNCTION_11_0();
  v311[1] = v85;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v274);
  v273 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v89);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v90);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v272);
  v271 = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v94);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v95);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v270);
  v307 = v96;
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v99);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_60(v100);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin18WorkflowDataModelsO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v313);
  v311[0] = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v104);
  OUTLINED_FUNCTION_11_0();
  a10 = v105;
  v106 = OUTLINED_FUNCTION_136();
  v310 = type metadata accessor for WorkflowDataModels(v106);
  v107 = OUTLINED_FUNCTION_0_1(v310);
  v109 = *(v108 + 64);
  __chkstk_darwin(v107);
  OUTLINED_FUNCTION_24();
  __chkstk_darwin(v110);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_24();
  __chkstk_darwin(v111);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_24();
  __chkstk_darwin(v112);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_24();
  __chkstk_darwin(v113);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_24();
  __chkstk_darwin(v114);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_24();
  __chkstk_darwin(v115);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_24();
  __chkstk_darwin(v116);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_24();
  __chkstk_darwin(v117);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_24();
  __chkstk_darwin(v118);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_24();
  v120 = __chkstk_darwin(v119);
  v122 = &v261 - v121;
  v123 = __chkstk_darwin(v120);
  v125 = &v261 - v124;
  v126 = __chkstk_darwin(v123);
  v128 = &v261 - v127;
  v129 = __chkstk_darwin(v126);
  v131 = &v261 - v130;
  v132 = __chkstk_darwin(v129);
  v134 = &v261 - v133;
  __chkstk_darwin(v132);
  v136 = &v261 - v135;
  v137 = v24[3];
  v138 = v24[4];
  v314 = v24;
  v139 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_52(v139, v140);
  lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();
  v141 = v315;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v141)
  {
    goto LABEL_8;
  }

  v263 = v134;
  v315 = v131;
  v264 = v128;
  v265 = v125;
  v266 = v122;
  v142 = v312;
  v267 = v136;
  v143 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC16SiriLinkUIPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLO_Tt1g5(v143, 0);
  if (v145 == v144 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_121();
  v262 = 0;
  if (v149 >= (v148 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2F0D8);
  }

  v261 = *(v147 + v146);
  specialized ArraySlice.subscript.getter(v146 + 1);
  v151 = v150;
  v153 = v152;
  swift_unknownObjectRelease();
  v154 = v308;
  v155 = v307;
  if (v151 != v153 >> 1)
  {
LABEL_7:
    v159 = v310;
    v160 = type metadata accessor for DecodingError();
    swift_allocError();
    v162 = v161;
    v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v162 = v159;
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_110();
    OUTLINED_FUNCTION_41(v160);
    (*(v164 + 104))(v162);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_79();
    v165 = OUTLINED_FUNCTION_134();
    v166(v165);
LABEL_8:
    v167 = v314;
    goto LABEL_9;
  }

  v156 = v262;
  v157 = v315;
  switch(v261)
  {
    case 1:
      LOBYTE(v316) = 1;
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();
      v199 = v298;
      OUTLINED_FUNCTION_61();
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel();
      v200 = v272;
      OUTLINED_FUNCTION_132();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_10_0(&v302);
      v238(v199, v200);
      OUTLINED_FUNCTION_79();
      v239(v155, v313);
      v240 = v317;
      *v157 = v316;
      v157[1] = v240;
      v157[2] = v318[0];
      OUTLINED_FUNCTION_55();
      goto LABEL_26;
    case 2:
      LOBYTE(v316) = 2;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_2_12(&v319);
      type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
      OUTLINED_FUNCTION_70();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v194);
      v195 = v274;
      OUTLINED_FUNCTION_73();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_10_0(&v303);
      v227(v154, v195);
      OUTLINED_FUNCTION_79();
      v228(v142, v155);
      OUTLINED_FUNCTION_55();
      goto LABEL_26;
    case 3:
      LOBYTE(v316) = 3;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();
      v196 = v313;
      OUTLINED_FUNCTION_46();
      v197 = a10;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v156)
      {
        OUTLINED_FUNCTION_79();
        v219(v197, v196);
        swift_unknownObjectRelease();
        goto LABEL_8;
      }

      type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
      OUTLINED_FUNCTION_68();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v220);
      OUTLINED_FUNCTION_158();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v221 = v311[0];
      swift_unknownObjectRelease();
      v229 = OUTLINED_FUNCTION_4_4(&v304);
      v230(v229);
      (*(v221 + 8))(a10, v196);
      OUTLINED_FUNCTION_55();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_4();
LABEL_27:
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      v260 = v314;
      OUTLINED_FUNCTION_5_4();
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      v167 = v260;
      break;
    case 4:
      LOBYTE(v316) = 4;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();
      OUTLINED_FUNCTION_8_1();
      type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
      OUTLINED_FUNCTION_71();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v180);
      v181 = v279;
      OUTLINED_FUNCTION_73();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_10_0(&v306);
      v225(v142, v181);
      OUTLINED_FUNCTION_79();
      v226(v142, v155);
      OUTLINED_FUNCTION_55();
      goto LABEL_26;
    case 5:
      LOBYTE(v316) = 5;
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();
      OUTLINED_FUNCTION_2_12(&v320);
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_15_1(&v305);
      swift_unknownObjectRelease();
      v201 = OUTLINED_FUNCTION_28();
      v202(v201);
      v203 = OUTLINED_FUNCTION_33();
      v204(v203);
      v205 = OUTLINED_FUNCTION_97(&v292);
      memcpy(v205, v206, 0x68uLL);
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    case 6:
      LOBYTE(v316) = 6;
      lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();
      OUTLINED_FUNCTION_2_12(&v321);
      lazy protocol witness table accessor for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_15_1(&v308);
      swift_unknownObjectRelease();
      v213 = OUTLINED_FUNCTION_28();
      v214(v213);
      v215 = OUTLINED_FUNCTION_33();
      v216(v215);
      v217 = OUTLINED_FUNCTION_97(&v294);
      memcpy(v217, v218, 0x50uLL);
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    case 7:
      LOBYTE(v316) = 7;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();
      OUTLINED_FUNCTION_61();
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel();
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_158();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v198 = v311[0];
      swift_unknownObjectRelease();
      v231 = OUTLINED_FUNCTION_4_4(v311);
      v232(v231);
      v233 = *(v198 + 8);
      v234 = OUTLINED_FUNCTION_53();
      v235(v234);
      v236 = v317;
      v237 = v268;
      *v268 = v316;
      *(v237 + 2) = v236;
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    case 8:
      LOBYTE(v316) = 8;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();
      OUTLINED_FUNCTION_61();
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel();
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_158();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v224 = v311[0];
      swift_unknownObjectRelease();
      v253 = OUTLINED_FUNCTION_4_4(&v312);
      v254(v253);
      v255 = *(v224 + 8);
      v256 = OUTLINED_FUNCTION_53();
      v257(v256);
      v258 = v317;
      v259 = v269;
      *v269 = v316;
      *(v259 + 2) = v258;
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    case 9:
      LOBYTE(v316) = 9;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();
      OUTLINED_FUNCTION_2_12(&v322);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_15_1(&v313);
      swift_unknownObjectRelease();
      v188 = OUTLINED_FUNCTION_28();
      v189(v188);
      v190 = OUTLINED_FUNCTION_33();
      v191(v190);
      v192 = OUTLINED_FUNCTION_97(&v296);
      memcpy(v192, v193, 0x58uLL);
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    case 10:
      LOBYTE(v316) = 10;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();
      OUTLINED_FUNCTION_2_12(&a9);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_15_1(&v315);
      swift_unknownObjectRelease();
      v247 = OUTLINED_FUNCTION_28();
      v248(v247);
      v249 = OUTLINED_FUNCTION_33();
      v250(v249);
      v251 = OUTLINED_FUNCTION_97(&v297);
      memcpy(v251, v252, 0x50uLL);
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    case 11:
      LOBYTE(v316) = 11;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_2_12(&a10);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_15_1(&v316 + 8);
      swift_unknownObjectRelease();
      v174 = OUTLINED_FUNCTION_28();
      v175(v174);
      v176 = OUTLINED_FUNCTION_33();
      v177(v176);
      v178 = OUTLINED_FUNCTION_97(&v298);
      memcpy(v178, v179, 0x71uLL);
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    case 12:
      LOBYTE(v316) = 12;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();
      OUTLINED_FUNCTION_2_12(&a11);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_15_1(&v317 + 8);
      swift_unknownObjectRelease();
      v182 = OUTLINED_FUNCTION_28();
      v183(v182);
      v184 = OUTLINED_FUNCTION_33();
      v185(v184);
      v186 = OUTLINED_FUNCTION_97(&v299);
      memcpy(v186, v187, 0x58uLL);
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    case 13:
      LOBYTE(v316) = 13;
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();
      OUTLINED_FUNCTION_2_12(&a12);
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_15_1(v318 + 8);
      swift_unknownObjectRelease();
      v207 = OUTLINED_FUNCTION_28();
      v208(v207);
      v209 = OUTLINED_FUNCTION_33();
      v210(v209);
      v211 = OUTLINED_FUNCTION_97(&v300);
      memcpy(v211, v212, 0x50uLL);
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    case 14:
      LOBYTE(v316) = 14;
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();
      OUTLINED_FUNCTION_8_1();
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v168 = OUTLINED_FUNCTION_28();
      v169(v168);
      v170 = OUTLINED_FUNCTION_33();
      v171(v170);
      v172 = OUTLINED_FUNCTION_97(&v301);
      memcpy(v172, v173, 0x70uLL);
      OUTLINED_FUNCTION_20();
      goto LABEL_26;
    default:
      LOBYTE(v316) = 0;
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();
      v158 = v297;
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_158();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel();
      v222 = v270;
      OUTLINED_FUNCTION_73();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v223 = (v311[0] + 8);
      swift_unknownObjectRelease();
      (*(v155 + 8))(v158, v222);
      v241 = *v223;
      v242 = OUTLINED_FUNCTION_63();
      v243(v242);
      v244 = v317;
      v245 = v263;
      *v263 = v316;
      v245[1] = v244;
      v246 = v318[1];
      v245[2] = v318[0];
      v245[3] = v246;
      OUTLINED_FUNCTION_20();
LABEL_26:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_4();
      goto LABEL_27;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v167);
  OUTLINED_FUNCTION_76();
}

uint64_t AutoShortcutAppPhrasesViewModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  memcpy(v1, v2, 0x50uLL);
  OUTLINED_FUNCTION_18();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_118();
  return outlined init with copy of AutoShortcutAppPhrasesViewModel(v3, v4);
}

uint64_t WatchViewType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C646E6168 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t WatchViewType.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x64656C646E6168;
  }

  else
  {
    return 0x616D7269666E6F63;
  }
}

uint64_t WatchViewType.ConfirmationCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int WorkflowDataModels.CustomIntentErrorModel.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t WatchViewType.ConfirmationCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchViewType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WatchViewType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchViewType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchViewType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchViewType.ConfirmationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WatchViewType.ConfirmationCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchViewType.ConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchViewType.ConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchViewType.HandledCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WatchViewType.HandledCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchViewType.HandledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchViewType.HandledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WatchViewType.encode(to:)()
{
  OUTLINED_FUNCTION_75();
  v31 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO17HandledCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO17HandledCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  v8 = OUTLINED_FUNCTION_2_0(v7);
  v28 = v9;
  v29 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_44();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO22ConfirmationCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO22ConfirmationCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v13);
  v30 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_88();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_56();
  v24 = *(v6 + 24);
  v25 = *(v6 + 32);
  v26 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_52(v26, v27);
  lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v31)
  {
    lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();
    OUTLINED_FUNCTION_46();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v0)
    {
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v30 + 8))(v1, v13);
    (*(v20 + 8))(v2, v18);
  }

  else
  {
    lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();
    OUTLINED_FUNCTION_46();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v3, v29);
    (*(v20 + 8))(v2, v18);
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_76();
}

void WatchViewType.init(from:)()
{
  OUTLINED_FUNCTION_75();
  v5 = v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO17HandledCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO17HandledCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v46);
  v44 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_44();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO22ConfirmationCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO22ConfirmationCodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v10);
  v45 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin13WatchViewTypeO10CodingKeys33_849978E4D5D87ADEB69D13D2EA96D7F3LLOGMR);
  OUTLINED_FUNCTION_2_0(v15);
  v47 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_88();
  v20 = v5[4];
  OUTLINED_FUNCTION_52(v5, v5[3]);
  lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v48 = v5;
  v21 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC16SiriLinkUIPlugin0jK9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLO_Tt1g5Tm(v21, 0);
  v43 = v15;
  if (v23 == v22 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_121();
  if (v27 < (v26 >> 1))
  {
    v28 = *(v25 + v24);
    specialized ArraySlice.subscript.getter(v24 + 1);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      if (v28)
      {
        lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();
        OUTLINED_FUNCTION_132();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v44 + 8))(v3, v46);
        v33 = OUTLINED_FUNCTION_54();
        v34(v33);
      }

      else
      {
        lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();
        OUTLINED_FUNCTION_132();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        (*(v45 + 8))(v1, v10);
        (*(v47 + 8))(v2, v43);
      }

      goto LABEL_9;
    }

LABEL_7:
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v37 = &type metadata for WatchViewType;
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_110();
    OUTLINED_FUNCTION_41(v35);
    (*(v39 + 104))(v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = *(v47 + 8);
    v41 = OUTLINED_FUNCTION_133();
    v42(v41);
    v5 = v48;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_76();
    return;
  }

  __break(1u);
}

void protocol witness for Decodable.init(from:) in conformance WatchViewType(void *a1@<X8>)
{
  WatchViewType.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void protocol witness for Encodable.encode(to:) in conformance WatchViewType()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  WatchViewType.encode(to:)();
}

uint64_t outlined bridged method (ob) of @objc INImage._imageData.getter(void *a1)
{
  v2 = [a1 _imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}