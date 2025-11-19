uint64_t closure #2 in SlidingEmergencyCountdownView.smartCancelButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView();
  (*(**(a1 + *(v4 + 24) + 8) + 624))();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

void View.emergencyCountdownButton()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  v4 = EnvironmentObject.init()();
  v6[0] = v4;
  v6[1] = v5;
  MEMORY[0x25F8B7340](v6, a1, &type metadata for PhoneCountdownButtonStyleViewModifier, a2);
}

uint64_t SlidingEmergencyCountdownView.smartCallButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SlidingEmergencyCountdownView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  outlined init with copy of SlidingEmergencyCountdownView(v1, &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of SlidingEmergencyCountdownView(&v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v31 = v1;
  Button.init(action:label:)();
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  v9 = EnvironmentObject.init()();
  v11 = v10;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMR) + 36));
  *v12 = v9;
  v12[1] = v11;
  v13 = *(v1 + *(v4 + 32) + 8);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGMR) + 36));
  v15 = type metadata accessor for SlidingCountdownOverlay();
  v16 = v14 + v15[6];
  InteractionDelegate.init()();
  *v14 = EnvironmentObject.init()();
  v14[1] = v17;
  type metadata accessor for EmergencyCountdownViewModel(0);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel);

  v14[2] = ObservedObject.init(wrappedValue:)();
  v14[3] = v18;
  v19 = v15[7];
  *(v14 + v19) = static Animation.easeInOut(duration:)();
  v20 = v15[8];
  *(v14 + v20) = static Animation.easeInOut(duration:)();
  v21 = v14 + v15[9];
  v32 = 0;
  State.init(wrappedValue:)();
  v22 = v34;
  *v21 = v33;
  *(v21 + 1) = v22;
  v23 = v14 + v15[10];
  v32 = 0;
  v24 = State.init(wrappedValue:)();
  v25 = v34;
  *v23 = v33;
  *(v23 + 1) = v25;
  LOBYTE(v13) = (*(*v13 + 1104))(v24);
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v13 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  v29 = (a1 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = closure #1 in View.disabled(_:)partial apply;
  v29[2] = v27;
  return result;
}

uint64_t closure #1 in SlidingEmergencyCountdownView.smartCallButton.getter(uint64_t a1)
{
  v2 = type metadata accessor for InteractionDelegateWrapper();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SlidingEmergencyCountdownView();
  v8 = *(a1 + *(v7 + 24) + 8);
  v9 = a1 + *(v7 + 20);
  InteractionDelegate.wrappedValue.getter();
  if (*a1)
  {
    v10 = *(*v8 + 1360);
    v11 = *a1;
    v10(v6, v11);

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v13 = *(a1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in SlidingEmergencyCountdownView.smartCallButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView();
  (*(**(a1 + *(v4 + 24) + 8) + 720))();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t closure #1 in SlidingEmergencyCountdownView.transitionState.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView();
  LOBYTE(a1) = (*(**(a1 + *(v4 + 24) + 8) + 1056))();
  v5 = type metadata accessor for BinaryButtonView.TransitionState();
  v6 = *(*(v5 - 8) + 104);
  v7 = MEMORY[0x277D63C30];
  if ((a1 & 1) == 0)
  {
    v7 = MEMORY[0x277D63C28];
  }

  v8 = *v7;

  return v6(a2, v8, v5);
}

uint64_t PhoneCountdownButtonStyleViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v23[0] = type metadata accessor for RFButtonStyle();
  v3 = *(v23[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23[0]);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy012PhoneSnippetB00j20CountdownButtonStylecI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy012PhoneSnippetB00j20CountdownButtonStylecI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_MR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  v16 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy012PhoneSnippetB00f20CountdownButtonStylecD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012PhoneSnippetB00f20CountdownButtonStylecD0VGMR);
  (*(*(v18 - 8) + 16))(v10, a1, v18);
  v19 = &v10[*(v7 + 36)];
  *v19 = KeyPath;
  v19[1] = v16;
  static Font.Weight.medium.getter();
  v20 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v10, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMR);
  static PrimitiveButtonStyle<>.rfButton.getter();
  v23[2] = v7;
  v23[3] = v20;
  swift_getOpaqueTypeConformance2();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
  v21 = v23[0];
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v6, v21);
  return (*(v12 + 8))(v15, v11);
}

uint64_t PhoneCountdownButtonStyleViewModifier.init()()
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);

  return EnvironmentObject.init()();
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25E593620@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.font : EnvironmentValues, serialized(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_25E593678(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PhoneCountdownButtonStyleViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy012PhoneSnippetB00f20CountdownButtonStylecD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012PhoneSnippetB00f20CountdownButtonStylecD0VGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E5937D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InteractionDelegate();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25E5938AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InteractionDelegate();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for SlidingEmergencyCountdownView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for InteractionDelegate();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<EmergencyCountdownViewModel>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for PhoneCountdownButtonStyleViewModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneCountdownButtonStyleViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25E593AC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25E593B28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy012PhoneSnippetB00j20CountdownButtonStylecI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy012PhoneSnippetB00j20CountdownButtonStylecI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_MR);
  type metadata accessor for RFButtonStyle();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25E593C18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier()
{
  result = lazy protocol witness table cache variable for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier;
  if (!lazy protocol witness table cache variable for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type SlidingCountdownOverlay and conformance SlidingCountdownOverlay, type metadata accessor for SlidingCountdownOverlay);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    lazy protocol witness table accessor for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E593E6C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E593FE4()
{
  v1 = (type metadata accessor for SlidingEmergencyCountdownView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = type metadata accessor for InteractionDelegate();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = *(v0 + v2 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SlidingEmergencyCountdownView.transitionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SlidingEmergencyCountdownView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in SlidingEmergencyCountdownView.transitionState.getter(v6, a1);
}

uint64_t sub_25E594160()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  v1 = (type metadata accessor for SlidingEmergencyCountdownView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = type metadata accessor for InteractionDelegate();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(v3 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SlidingEmergencyCountdownView.smartCancelButton.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SlidingEmergencyCountdownView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t ButtonConfigurationModel.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t property wrapper backing initializer of ButtonConfigurationModel.action()
{
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t ButtonConfigurationModel.action.getter()
{
  v0 = *(type metadata accessor for ButtonConfigurationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for ButtonConfigurationModel.action : ButtonConfigurationModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for ButtonConfigurationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for ButtonConfigurationModel.action : ButtonConfigurationModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for ButtonConfigurationModel() + 20);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t ButtonConfigurationModel.action.setter()
{
  v0 = *(type metadata accessor for ButtonConfigurationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*ButtonConfigurationModel.action.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for ButtonConfigurationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of ButtonConfigurationModel.directInvocation()
{
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t ButtonConfigurationModel.directInvocation.getter()
{
  v0 = *(type metadata accessor for ButtonConfigurationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for ButtonConfigurationModel.directInvocation : ButtonConfigurationModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for ButtonConfigurationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for ButtonConfigurationModel.directInvocation : ButtonConfigurationModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for ButtonConfigurationModel() + 24);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t ButtonConfigurationModel.directInvocation.setter()
{
  v0 = *(type metadata accessor for ButtonConfigurationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*ButtonConfigurationModel.directInvocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for ButtonConfigurationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t ButtonConfigurationModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ButtonConfigurationModel() + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ButtonConfigurationModel.init(label:action:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ButtonConfigurationModel();
  v9 = v8[5];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  v10 = a3;
  CodableAceObject.init(wrappedValue:)();
  v11 = v8[7];
  v12 = type metadata accessor for UUID();
  v16 = *(v12 - 8);
  (*(v16 + 16))(&a5[v11], a4, v12);
  a5[v8[8]] = 0;
  [objc_allocWithZone(MEMORY[0x277D47438]) init];
  v13 = v8[6];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);
  CodableAceObject.init(wrappedValue:)();

  v14 = *(v16 + 8);

  return v14(a4, v12);
}

uint64_t ButtonConfigurationModel.init(label:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  URL.init(string:)();

  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v17 = 0;
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(v15 + 8))(v12, v14);
  }

  [v13 setPunchOutUri_];

  v19 = v13;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  v33 = *(v5 + 8);
  v23 = v4;
  v33(v8, v4);
  v24 = MEMORY[0x25F8B7AB0](v20, v22);

  [v19 setAceId_];

  v25 = v19;
  UUID.init()();
  v26 = v35;
  *a3 = v34;
  *(a3 + 1) = v26;
  v27 = type metadata accessor for ButtonConfigurationModel();
  v28 = v27[5];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  v29 = v25;
  CodableAceObject.init(wrappedValue:)();
  (*(v5 + 16))(&a3[v27[7]], v8, v23);
  a3[v27[8]] = 0;
  [objc_allocWithZone(MEMORY[0x277D47438]) init];
  v30 = v27[6];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);
  CodableAceObject.init(wrappedValue:)();

  return (v33)(v8, v23);
}

uint64_t ButtonConfigurationModel.init(label:directInvocation:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  [objc_allocWithZone(MEMORY[0x277D471B0]) init];
  v6 = type metadata accessor for ButtonConfigurationModel();
  v7 = v6[5];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  CodableAceObject.init(wrappedValue:)();
  *(a4 + v6[8]) = 1;
  v8 = v6[6];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);
  CodableAceObject.init(wrappedValue:)();
  v9 = v6[7];
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ButtonConfigurationModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C6562616CLL;
  v3 = 0xD000000000000010;
  v4 = 25705;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F69746361;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ButtonConfigurationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ButtonConfigurationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ButtonConfigurationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ButtonConfigurationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ButtonConfigurationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI24ButtonConfigurationModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI24ButtonConfigurationModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v19 = type metadata accessor for ButtonConfigurationModel();
    v13 = v19[5];
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v19[6];
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v19[7];
    v21 = 3;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + v19[8]);
    v20 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ButtonConfigurationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v40 = type metadata accessor for UUID();
  v36 = *(v40 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v34 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v37 = *(v41 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v35 = v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI24ButtonConfigurationModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI24ButtonConfigurationModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMR);
  v39 = *(v43 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v43);
  v13 = v31 - v12;
  v14 = type metadata accessor for ButtonConfigurationModel();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();
  v42 = v13;
  v19 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v10;
  v44 = v14;
  v32 = v7;
  v21 = v41;
  v23 = v39;
  v22 = v40;
  v49 = 0;
  *v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v17[1] = v24;
  v31[2] = v24;
  v48 = 1;
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v25 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 32))(v17 + v44[5], v20, v25);
  v47 = 2;
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v26 = v35;
  v31[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v17;
  (*(v37 + 32))(v17 + v44[6], v26, v21);
  v46 = 3;
  _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v28 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v36 + 32))(v27 + v44[7], v28, v22);
  v45 = 4;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v23 + 8))(v42, v43);
  *(v27 + v44[8]) = v29 & 1;
  outlined init with copy of ButtonConfigurationModel(v27, v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of ButtonConfigurationModel(v27);
}

uint64_t StackedButtonsModel.UseCase.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6143724F646461;
  }

  if (a1 == 1)
  {
    return 0x747465536E65706FLL;
  }

  return 0xD000000000000011;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StackedButtonsModel.UseCase(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x747465536E65706FLL;
  v4 = 0xEC00000073676E69;
  v5 = 0x800000025E5A6100;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000025E5A6100;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6C6143724F646461;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEF74706D6F72506CLL;
  }

  v8 = 0x747465536E65706FLL;
  if (*a2 == 1)
  {
    v5 = 0xEC00000073676E69;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6143724F646461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEF74706D6F72506CLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StackedButtonsModel.UseCase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance StackedButtonsModel.UseCase()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StackedButtonsModel.UseCase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StackedButtonsModel.UseCase@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized StackedButtonsModel.UseCase.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StackedButtonsModel.UseCase(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF74706D6F72506CLL;
  v4 = 0xEC00000073676E69;
  v5 = 0x747465536E65706FLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000025E5A6100;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6143724F646461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t StackedButtonsModel.init(buttonConfiguration:useCase:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy14PhoneSnippetUI24ButtonConfigurationModelVGMR);
  v2 = *(type metadata accessor for ButtonConfigurationModel() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25E59F720;
  outlined init with take of ButtonConfigurationModel(a1, v5 + v4);
  return v5;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance StackedButtonsModel.CodingKeys()
{
  if (*v0)
  {
    result = 0x65736143657375;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StackedButtonsModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000025E5A6D50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StackedButtonsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StackedButtonsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StackedButtonsModel.encode(to:)(void *a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI19StackedButtonsModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI19StackedButtonsModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR);
  lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[14] = a3;
    v14[13] = 1;
    lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for Decodable.init(from:) in conformance StackedButtonsModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized StackedButtonsModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t specialized StackedButtonsModel.shouldHideSnippet(on:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for DeviceIdiom();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[13];
  v8(v7, *MEMORY[0x277D61BE8], v3);
  _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom, MEMORY[0x277D61C30]);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = v4[1];
  v10(v7, v3);
  if (v9)
  {
    goto LABEL_2;
  }

  if (a2 != 1)
  {
    v11 = 0;
    return v11 & 1;
  }

  v8(v7, *MEMORY[0x277D61C10], v3);
  v12 = static DeviceIdiom.== infix(_:_:)();
  v10(v7, v3);
  if (v12)
  {
LABEL_2:
    v11 = 1;
  }

  else
  {
    v8(v7, *MEMORY[0x277D61BF0], v3);
    v11 = static DeviceIdiom.== infix(_:_:)();
    v10(v7, v3);
  }

  return v11 & 1;
}

uint64_t type metadata accessor for ButtonConfigurationModel()
{
  result = type metadata singleton initialization cache for ButtonConfigurationModel;
  if (!type metadata singleton initialization cache for ButtonConfigurationModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of ButtonConfigurationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfigurationModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ButtonConfigurationModel(uint64_t a1)
{
  v2 = type metadata accessor for ButtonConfigurationModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized ButtonConfigurationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025E5A6C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025E5A6D30 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t specialized StackedButtonsModel.UseCase.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StackedButtonsModel.UseCase.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with take of ButtonConfigurationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfigurationModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized StackedButtonsModel.responseViewId.getter(char a1)
{
  _StringGuts.grow(_:)(22);

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x747465536E65706FLL;
    }

    else
    {
      v2 = 0xD000000000000011;
    }

    if (a1 == 1)
    {
      v3 = 0xEC00000073676E69;
    }

    else
    {
      v3 = 0x800000025E5A6100;
    }
  }

  else
  {
    v3 = 0xEF74706D6F72506CLL;
    v2 = 0x6C6143724F646461;
  }

  MEMORY[0x25F8B7B50](v2, v3);

  return 0xD000000000000014;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase()
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

uint64_t specialized StackedButtonsModel.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI19StackedButtonsModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI19StackedButtonsModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR);
  v10[7] = 0;
  lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v11;
  v10[5] = 1;
  lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t instantiation function for generic protocol witness table for StackedButtonsModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E596E78(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_25E597010(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for ButtonConfigurationModel()
{
  type metadata accessor for CodableAceObject<SABaseCommand>(319, &lazy cache variable for type metadata for CodableAceObject<SABaseCommand>, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SABaseCommand>(319, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CodableAceObject<SABaseCommand>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for NSTimer(255, a3, a4);
    v5 = type metadata accessor for CodableAceObject();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StackedButtonsModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StackedButtonsModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StackedButtonsModel.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StackedButtonsModel.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR);
    _s10Foundation4UUIDVACSEAAWlTm_0(a2, type metadata accessor for ButtonConfigurationModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StackedButtonsView.model.getter()
{
  v1 = (v0 + *(type metadata accessor for StackedButtonsView() + 20));
  v2 = *v1;
  v3 = *(v1 + 8);
}

uint64_t type metadata accessor for StackedButtonsView()
{
  result = type metadata singleton initialization cache for StackedButtonsView;
  if (!type metadata singleton initialization cache for StackedButtonsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StackedButtonsView.init(model:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  ActionHandler.init()();
  result = type metadata accessor for StackedButtonsView();
  v7 = a3 + *(result + 20);
  *v7 = a1;
  *(v7 + 8) = a2;
  return result;
}

uint64_t StackedButtonsView.body.getter()
{
  v1 = type metadata accessor for StackedButtonsView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  outlined init with copy of StackedButtonsView(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StackedButtonsView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of StackedButtonsView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for StackedButtonsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMd, &_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMR);
  lazy protocol witness table accessor for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>();
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in StackedButtonsView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for StackedButtonsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v8[1] = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28));
  outlined init with copy of StackedButtonsView(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StackedButtonsView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of StackedButtonsView(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for StackedButtonsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance [A], &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type ButtonConfigurationModel and conformance ButtonConfigurationModel();
  return ForEach<>.init(_:content:)();
}

unint64_t lazy protocol witness table accessor for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMd, &_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in StackedButtonsView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = type metadata accessor for StackedButtonsView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonConfigurationModel();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = a1[1];
  v17[2] = *a1;
  v17[3] = v12;
  outlined init with copy of StackedButtonsView(a1, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonConfigurationModel);
  outlined init with copy of StackedButtonsView(a2, v8, type metadata accessor for StackedButtonsView);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  outlined init with take of StackedButtonsView(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for ButtonConfigurationModel);
  outlined init with take of StackedButtonsView(v8, v15 + v14, type metadata accessor for StackedButtonsView);
  lazy protocol witness table accessor for type String and conformance String();

  return Button<>.init<A>(_:action:)();
}

uint64_t closure #1 in closure #1 in closure #1 in StackedButtonsView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v63 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v62 - v11;
  v12 = type metadata accessor for ActionProperty();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ButtonConfigurationModel();
  v17 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.phoneSnippetUI);
  v66 = a1;
  outlined init with copy of StackedButtonsView(a1, v19, type metadata accessor for ButtonConfigurationModel);
  v64 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v67 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v62 = v13;
    v27 = v26;
    v69 = v26;
    *v25 = 136315138;
    v28 = v12;
    v29 = *v19;
    v30 = v19[1];

    outlined destroy of ButtonConfigurationModel(v19);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v69);
    v12 = v28;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_25E523000, v22, v23, "#StackedButtonsView Tapped button %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v32 = v27;
    v13 = v62;
    MEMORY[0x25F8B8670](v32, -1, -1);
    MEMORY[0x25F8B8670](v25, -1, -1);
  }

  else
  {

    outlined destroy of ButtonConfigurationModel(v19);
  }

  v33 = v65;
  v34 = *(v66 + *(v65 + 32));
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v37 = os_log_type_enabled(v35, v36);
  if (v34 == 1)
  {
    if (v37)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_25E523000, v35, v36, "#StackedButtonsView running direct invocation", v38, 2u);
      MEMORY[0x25F8B8670](v38, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_25E59F720;
    v40 = type metadata accessor for Command();
    v41 = MEMORY[0x277D63778];
    *(v39 + 56) = v40;
    *(v39 + 64) = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
    v43 = *(v33 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
    *(boxed_opaque_existential_1 + 8) = 0;
    v44 = MEMORY[0x277D63750];
  }

  else
  {
    if (v37)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_25E523000, v35, v36, "#StackedButtonsView running ace command", v45, 2u);
      MEMORY[0x25F8B8670](v45, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_25E59F720;
    v40 = type metadata accessor for Command();
    v47 = MEMORY[0x277D63778];
    *(v46 + 56) = v40;
    *(v46 + 64) = v47;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v46 + 32));
    v48 = *(v33 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
    *(boxed_opaque_existential_1 + 8) = 0;
    v44 = MEMORY[0x277D63720];
  }

  (*(*(v40 - 8) + 104))(boxed_opaque_existential_1, *v44, v40);
  v49 = v67;
  ActionProperty.init(_:)();
  v50 = v68;
  ActionHandler.wrappedValue.getter();
  v51 = type metadata accessor for StandardActionHandler();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    (*(v13 + 8))(v49, v12);
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v68, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  else
  {
    v54 = v12;
    (*(v13 + 16))(v8, v49, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v55 = v49;
    v56 = *MEMORY[0x277D63BE8];
    v57 = type metadata accessor for InteractionType();
    v58 = v13;
    v59 = *(v57 - 8);
    v60 = v63;
    (*(v59 + 104))(v63, v56, v57);
    (*(v59 + 56))(v60, 0, 1, v57);
    v61 = v68;
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v60, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v58 + 8))(v55, v54);
    return (*(v52 + 8))(v61, v51);
  }
}

uint64_t protocol witness for View.body.getter in conformance StackedButtonsView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of StackedButtonsView(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StackedButtonsView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of StackedButtonsView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for StackedButtonsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMd, &_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMR);
  lazy protocol witness table accessor for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>();
  return ComponentStack.init(content:)();
}

uint64_t sub_25E59885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25E59892C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for StackedButtonsView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t partial apply for closure #1 in StackedButtonsView.body.getter()
{
  v1 = *(type metadata accessor for StackedButtonsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in StackedButtonsView.body.getter(v2);
}

uint64_t objectdestroyTm_16()
{
  v1 = (type metadata accessor for StackedButtonsView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = type metadata accessor for ActionHandler();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + v1[7]);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in StackedButtonsView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StackedButtonsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in StackedButtonsView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ButtonConfigurationModel and conformance ButtonConfigurationModel()
{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel)
  {
    type metadata accessor for ButtonConfigurationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel);
  }

  return result;
}

uint64_t outlined init with copy of StackedButtonsView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E598D34()
{
  v1 = (type metadata accessor for ButtonConfigurationModel() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for StackedButtonsView() - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = v0 + v2;
  v8 = *(v7 + 8);

  v9 = v1[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  (*(*(v12 - 8) + 8))(v7 + v11, v12);
  v13 = v1[9];
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);
  v15 = type metadata accessor for ActionHandler();
  (*(*(v15 - 8) + 8))(v0 + v5, v15);
  v16 = *(v0 + v5 + v4[7]);

  return swift_deallocObject();
}

uint64_t outlined init with take of StackedButtonsView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in StackedButtonsView.body.getter()
{
  v1 = *(type metadata accessor for ButtonConfigurationModel() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for StackedButtonsView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #1 in closure #1 in StackedButtonsView.body.getter(v0 + v2);
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v2 = String.firstLetterCapitalized()(v0, v1, MEMORY[0x277D83DF0]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall String.firstLetterLowercased()()
{
  v2 = String.firstLetterCapitalized()(v0, v1, MEMORY[0x277D83DE0]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.firstLetterCapitalized()(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{

  v7 = specialized Collection.prefix(_:)(1, a1, a2, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = a3(v7, v9, v11, v13);

  specialized Collection.dropFirst(_:)(1uLL, a1, a2, v15);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return v14;
}

uint64_t String.remove(characters:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7[2] = a1;

  v5 = specialized RangeReplaceableCollection.filter(_:)(partial apply for closure #1 in String.remove(characters:), v7, a2, a3);

  return v5;
}

uint64_t String.lowercasedWithFirstUppercased.getter()
{
  v0 = String.lowercased()();
  specialized Collection.prefix(_:)(1, v0._countAndFlagsBits, v0._object, v1);
  countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

  specialized Collection.dropFirst(_:)(1uLL, v0._countAndFlagsBits, v0._object, v3);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return countAndFlagsBits;
}

BOOL String.isPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  static CharacterSet.decimalDigits.getter();
  v12._countAndFlagsBits = 757671979;
  v12._object = 0xE400000000000000;
  CharacterSet.insert(charactersIn:)(v12);
  v13 = objc_opt_self();
  v14 = [v13 controlCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.formUnion(_:)();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v16 = [v13 whitespaceAndNewlineCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.formUnion(_:)();
  v15(v9, v4);
  v22[0] = a1;
  v22[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v22[0] = StringProtocol.components(separatedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v15(v11, v4);

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  return v20 == 0;
}

BOOL partial apply for closure #1 in String.remove(characters:)(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return (CharacterSet.contains(_:)() & 1) == 0;
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a2;
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v20[0] = a3;
          v20[1] = v19;
          v11 = v20 + v9;
        }

        else
        {
          v10 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      LODWORD(v20[0]) = v12;
      v15 = a1(v20);
      if (v4)
      {
      }

      if (v15)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return v21;
      }
    }
  }

  return 0;
}

void UpdateResponseCommand<>.submitUpdate(to:aceServiceInvoker:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = UpdateResponseCommand<>.asUpdateCommand(for:)(a1, a2, a4, a5);
  if (!v5)
  {
    v8 = v7;
    v9 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    AceServiceInvokerAsync.submitAndForget(_:)();
  }
}

id UpdateResponseCommand<>.asUpdateCommand(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a3;
  v26[3] = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277D47B48]);
  v12 = [v11 init];
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  v16 = MEMORY[0x25F8B7AB0](v13, v15);

  [v12 setAceId_];

  v17 = (*(a2 + 8))(a1, a2);
  v18 = MEMORY[0x25F8B7AB0](v17);

  [v12 setViewId_];

  v19 = v26[1];
  updated = dispatch thunk of UpdateResponseCommand.serializeData()();
  if (v19)
  {
  }

  else
  {
    v22 = updated;
    v23 = v21;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v22, v23);
    [v12 setStateData_];
  }

  return v12;
}

uint64_t YesNoConfirmationModel.dialogText.getter()
{
  v0 = *(type metadata accessor for YesNoConfirmationModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t type metadata accessor for YesNoConfirmationModel()
{
  result = type metadata singleton initialization cache for YesNoConfirmationModel;
  if (!type metadata singleton initialization cache for YesNoConfirmationModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t YesNoConfirmationModel.yesText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t (*YesNoConfirmationModel.yesText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t YesNoConfirmationModel.yesAction.getter()
{
  v0 = *(type metadata accessor for YesNoConfirmationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for YesNoConfirmationModel.yesAction : YesNoConfirmationModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for YesNoConfirmationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for YesNoConfirmationModel.yesAction : YesNoConfirmationModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for YesNoConfirmationModel() + 20);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t YesNoConfirmationModel.yesAction.setter()
{
  v0 = *(type metadata accessor for YesNoConfirmationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*YesNoConfirmationModel.yesAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for YesNoConfirmationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t YesNoConfirmationModel.noText.getter()
{
  v0 = *(type metadata accessor for YesNoConfirmationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for YesNoConfirmationModel.noText : YesNoConfirmationModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for YesNoConfirmationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for YesNoConfirmationModel.noText : YesNoConfirmationModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for YesNoConfirmationModel() + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t YesNoConfirmationModel.noText.setter()
{
  v0 = *(type metadata accessor for YesNoConfirmationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*YesNoConfirmationModel.noText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for YesNoConfirmationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of YesNoConfirmationModel.noAction()
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t YesNoConfirmationModel.noAction.getter()
{
  v0 = *(type metadata accessor for YesNoConfirmationModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for YesNoConfirmationModel.noAction : YesNoConfirmationModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for YesNoConfirmationModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for YesNoConfirmationModel.noAction : YesNoConfirmationModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for YesNoConfirmationModel() + 28);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t YesNoConfirmationModel.noAction.setter()
{
  v0 = *(type metadata accessor for YesNoConfirmationModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*YesNoConfirmationModel.noAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for YesNoConfirmationModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

double key path getter for YesNoConfirmationModel.dialogText : YesNoConfirmationModel@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for YesNoConfirmationModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t key path setter for YesNoConfirmationModel.dialogText : YesNoConfirmationModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for YesNoConfirmationModel() + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t YesNoConfirmationModel.dialogText.setter()
{
  v0 = *(type metadata accessor for YesNoConfirmationModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*YesNoConfirmationModel.dialogText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for YesNoConfirmationModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t YesNoConfirmationModel.responseViewId.getter()
{
  v1 = (v0 + *(type metadata accessor for YesNoConfirmationModel() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t YesNoConfirmationModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for YesNoConfirmationModel() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void YesNoConfirmationModel.init(yesText:yesAction:noText:noAction:dialogText:)(void *a1@<X2>, void *a2@<X5>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for YesNoConfirmationModel();
  v7 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v8 = (a3 + v6[9]);
  *v8 = 0xD000000000000011;
  v8[1] = 0x800000025E5A6230;
  Loggable.init(wrappedValue:)();
  v9 = v6[5];
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v10 = a1;
  CodableAceObject.init(wrappedValue:)();
  v11 = v6[6];
  Loggable.init(wrappedValue:)();
  v12 = v6[7];
  v13 = a2;
  CodableAceObject.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.setter();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance YesNoConfirmationModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x74786554736579;
  v3 = 0x6E6F697463416F6ELL;
  v4 = 0x6554676F6C616964;
  if (v1 != 4)
  {
    v4 = 0x65736E6F70736572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F69746341736579;
  if (v1 != 1)
  {
    v5 = 0x747865546F6ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance YesNoConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized YesNoConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance YesNoConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance YesNoConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t YesNoConfirmationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI22YesNoConfirmationModelV10CodingKeys33_18E12FF05B8D4E9DAD23E5C150AD5CB4LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI22YesNoConfirmationModelV10CodingKeys33_18E12FF05B8D4E9DAD23E5C150AD5CB4LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v26 = type metadata accessor for YesNoConfirmationModel();
    v11 = v26[5];
    v31 = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v13 = lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    v14 = v3;
    v15 = v13;
    v25 = v14;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24[0] = v15;
    v24[1] = v12;
    v16 = v25;
    v17 = v26[6];
    v30 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v26[7];
    v29 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v26[8];
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String?> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = (v16 + v26[9]);
    v21 = *v20;
    v22 = v20[1];
    v27 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

uint64_t YesNoConfirmationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v63 = *(v67 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v67);
  v52 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v46 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI22YesNoConfirmationModelV10CodingKeys33_18E12FF05B8D4E9DAD23E5C150AD5CB4LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI22YesNoConfirmationModelV10CodingKeys33_18E12FF05B8D4E9DAD23E5C150AD5CB4LLOGMR);
  v59 = *(v61 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v18 = &v46 - v17;
  v19 = type metadata accessor for YesNoConfirmationModel();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 32);
  v65 = 0;
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v64 = v24;
  Loggable.init(wrappedValue:)();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys();
  v60 = v18;
  v26 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v63 + 8))(&v23[v64], v67);
  }

  else
  {
    v27 = v57;
    v50 = v19;
    v62 = a1;
    LOBYTE(v65) = 0;
    v28 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
    v29 = v58;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v28;
    v30 = *(v56 + 32);
    v49 = v23;
    v30(v23, v29, v10);
    LOBYTE(v65) = 1;
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    v31 = v27;
    v32 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v48 = v10;
    v33 = &v49[*(v50 + 20)];
    v34 = v31;
    v35 = *(v54 + 32);
    v57 = (v54 + 32);
    v35(v33, v34, v32);
    LOBYTE(v65) = 2;
    v58 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v35;
    v36 = v50;
    v30(&v49[*(v50 + 24)], v14, v10);
    LOBYTE(v65) = 3;
    v37 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47(&v49[*(v36 + 28)], v37, v32);
    LOBYTE(v65) = 4;
    lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String?> and conformance <A> Loggable<A>);
    v38 = v52;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v62;
    v40 = v49;
    (*(v63 + 40))(&v49[v64], v38, v67);
    LOBYTE(v65) = 5;
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v42;
    v44 = (v40 + *(v36 + 36));
    (*(v59 + 8))(v60, v61);
    *v44 = v41;
    v44[1] = v43;
    outlined init with copy of YesNoConfirmationModel(v40, v51);
    __swift_destroy_boxed_opaque_existential_0(v39);
    return outlined destroy of YesNoConfirmationModel(v40);
  }
}

uint64_t outlined init with copy of YesNoConfirmationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YesNoConfirmationModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of YesNoConfirmationModel(uint64_t a1)
{
  v2 = type metadata accessor for YesNoConfirmationModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for YesNoConfirmationModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type YesNoConfirmationModel and conformance YesNoConfirmationModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type YesNoConfirmationModel and conformance YesNoConfirmationModel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for YesNoConfirmationModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E59B4F4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E59B57C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_25E59B70C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for YesNoConfirmationModel()
{
  type metadata accessor for Loggable<String>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Loggable<String?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Loggable<String?>()
{
  if (!lazy cache variable for type metadata for Loggable<String?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    v0 = type metadata accessor for Loggable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Loggable<String?>);
    }
  }
}

uint64_t specialized YesNoConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74786554736579 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746341736579 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747865546F6ELL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697463416F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6554676F6C616964 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t YesNoConfirmationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for YesNoConfirmationView();
  return _s14PhoneSnippetUI22YesNoConfirmationModelVWObTm_0(a1, a2 + *(v4 + 20), type metadata accessor for YesNoConfirmationModel);
}

uint64_t type metadata accessor for YesNoConfirmationView()
{
  result = type metadata singleton initialization cache for YesNoConfirmationView;
  if (!type metadata singleton initialization cache for YesNoConfirmationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path setter for YesNoConfirmationView.actionHandler : YesNoConfirmationView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  outlined init with copy of StandardActionHandler?(a1, &v10 - v7);
  outlined init with copy of StandardActionHandler?(v8, v6);
  ActionHandler.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
}

uint64_t YesNoConfirmationView.actionHandler.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of StandardActionHandler?(a1, &v6 - v4);
  ActionHandler.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(a1, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
}

void (*YesNoConfirmationView.actionHandler.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ActionHandler.wrappedValue.modify();
  return AppDescription.rskeCommand.modify;
}

uint64_t YesNoConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = type metadata accessor for YesNoConfirmationView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = YesNoConfirmationView.yesButton.getter();
  v13 = MEMORY[0x277D63A58];
  v20[10] = MEMORY[0x277CE11D0];
  v20[11] = MEMORY[0x277D63A58];
  v20[7] = v12;
  v14 = *(v4 + 28);
  v15 = v2 + *(type metadata accessor for YesNoConfirmationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  _s14PhoneSnippetUI22YesNoConfirmationModelVWOcTm_0(v2, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for YesNoConfirmationView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  _s14PhoneSnippetUI22YesNoConfirmationModelVWObTm_0(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for YesNoConfirmationView);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  v18 = View.eraseToAnyView()();
  (*(v8 + 8))(v11, v7);
  v20[6] = v13;
  v20[5] = MEMORY[0x277CE11D0];
  v20[2] = v18;
  return BinaryButtonView.init(primaryButton:secondaryButton:)();
}

uint64_t YesNoConfirmationView.yesButton.getter()
{
  v1 = v0;
  v30 = type metadata accessor for ButtonItemButtonStyle.Role();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for YesNoConfirmationView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_MR);
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *(v7 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  _s14PhoneSnippetUI22YesNoConfirmationModelVWOcTm_0(v1, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for YesNoConfirmationView);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  _s14PhoneSnippetUI22YesNoConfirmationModelVWObTm_0(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for YesNoConfirmationView);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  v22 = v30;
  (*(v2 + 104))(v5, *MEMORY[0x277D63A98], v30);
  v23 = lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  View.buttonRole(_:)();
  (*(v2 + 8))(v5, v22);
  (*(v27 + 8))(v13, v10);
  v31 = v10;
  v32 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  v25 = View.eraseToAnyView()();
  (*(v29 + 8))(v18, v24);
  return v25;
}

uint64_t closure #1 in YesNoConfirmationView.yesButton.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  ActionHandler.wrappedValue.getter();
  v14 = type metadata accessor for StandardActionHandler();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v13, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25E59F720;
  v18 = type metadata accessor for Command();
  v19 = MEMORY[0x277D63778];
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  v21 = a1 + *(type metadata accessor for YesNoConfirmationView() + 20);
  v22 = *(type metadata accessor for YesNoConfirmationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v18);
  ActionProperty.init(_:)();
  v23 = type metadata accessor for ActionProperty();
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  v24 = type metadata accessor for InteractionType();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v5, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v9, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
  return (*(v15 + 8))(v13, v14);
}

uint64_t closure #1 in YesNoConfirmationView.noButton.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  ActionHandler.wrappedValue.getter();
  v14 = type metadata accessor for StandardActionHandler();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v13, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25E59F720;
  v18 = type metadata accessor for Command();
  v19 = MEMORY[0x277D63778];
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  v21 = a1 + *(type metadata accessor for YesNoConfirmationView() + 20);
  v22 = *(type metadata accessor for YesNoConfirmationModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v18);
  ActionProperty.init(_:)();
  v23 = type metadata accessor for ActionProperty();
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  v24 = type metadata accessor for InteractionType();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v5, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v9, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
  return (*(v15 + 8))(v13, v14);
}

uint64_t _s14PhoneSnippetUI22YesNoConfirmationModelVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14PhoneSnippetUI22YesNoConfirmationModelVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E59CDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for YesNoConfirmationModel();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25E59CEF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionHandler();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for YesNoConfirmationModel();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata completion function for YesNoConfirmationView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for YesNoConfirmationModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  v1 = (type metadata accessor for YesNoConfirmationView() - 8);
  v14 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v15 = *(*v1 + 64);
  v2 = type metadata accessor for ActionHandler();
  (*(*(v2 - 8) + 8))(v0 + v14, v2);
  v3 = v0 + v14 + v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for YesNoConfirmationModel();
  v7 = v6[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v9 = *(*(v8 - 8) + 8);
  v9(v3 + v7, v8);
  v5(v3 + v6[6], v4);
  v9(v3 + v6[7], v8);
  v10 = v6[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  (*(*(v11 - 8) + 8))(v3 + v10, v11);
  v12 = *(v3 + v6[9] + 8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in YesNoConfirmationView.noButton.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for YesNoConfirmationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t View.buttonStyle<A>(_:)()
{
  return MEMORY[0x28212F3E0]();
}

{
  return MEMORY[0x28212F3F0]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = MEMORY[0x2821FCAF0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}