uint64_t sub_20C69300C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMd);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = type metadata accessor for InferenceClient();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C6931A4()
{
  v1 = type metadata accessor for VoiceCompanionSettingsView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  v8 = type metadata accessor for InferenceClient();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_20C693450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20C693528(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_20C693600()
{

  return swift_deallocObject();
}

uint64_t sub_20C693658@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.defaultMinListHeaderHeight.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_20C6936C0(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20C6936D8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for InferenceClient();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_20C69385C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for InferenceClient();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20C6939E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAcAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE5sheet11isPresented9onDismissAFQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA08ModifiedI0VyAcAE0D11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAPyAPyAPyAPyAA4ListVys5NeverOAA05TupleC0VyAcAE0tU6InsetsyQrAA0Z0OAZV_12CoreGraphics7CGFloatVSgtFQOyAcAEAT_AUQrAW_A_tFQOyAcAE0T14SectionMarginsyQrA9__A13_tFQOyAPyAA7SectionVyAA05EmptyC0VAPyAA6VStackVyA5_yAPyAA9LazyVGridVyA5_y07WorkoutB028MediaConfigurationRoomButtonVSg_A23_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA18_GAA21_TraitWritingModifierVyAA04ListU18BackgroundTraitKeyVGG_Qo__Qo__Qo__A16_yA23_32WorkoutConfigurationFilterPickerVSgA5_yA23_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAPyAPyAA5GroupVyAA012_ConditionalI0VyA23_024RaceWorkoutConfigurationU0VAcAE5alert_AI7actionsQrqd___AMqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipeAFQrAA010HorizontalZ0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA23_020WorkoutConfigurationU0VG_A5_yAPyA82_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_APyA23_31ShareWorkoutConfigurationButtonVA94_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA82_yAA4TextVG_Qo_Qo_GGA45_yAA04ListU14InsetsTraitKeyVGGA48_GGA23_19CreateWorkoutButtonVSgtGA18_GtGGA90_yA13_GGA45_yAA26ListSectionSpacingTraitKeyVGGA90_yAA18ListSectionSpacingVSgGGA125_G_Qo__A63_APyAPyA69_yA71_yA71_yA23_024GoalWorkoutConfigurationC0VA23_028IntervalWorkoutConfigurationC0VGA71_yA23_025PacerWorkoutConfigurationC0VA23_024RaceWorkoutConfigurationC0VGGSgGA90_yA23_28ConfigurationNavigationModelCSgGGA90_yA61_30WorkoutConfigurationDataSourceCSgGGQo__A23_018AlertConfigurationC5ModelCA23_018AlertConfigurationC0VQo_AA13_TaskModifierVG_APyA23_10GoalPickerVA159_GQo__AA0hI7BuilderV10buildBlockyQrxAaGRzlFZQOy_AA0H4ItemVyytA23_20DeviceConnectionMenuVGQo_Qo__SSQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE5sheet11isPresented9onDismissAEQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA08ModifiedG0VyAcAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEApqRQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAOyAOyAOyAOyAA4ListVys5NeverOAA05TupleC0VyAcAE0sT6InsetsyQrAA0Y0OAYV_12CoreGraphics7CGFloatVSgtFQOyAcAEAS_ATQrAV_AZtFQOyAcAE0S14SectionMarginsyQrA8__A12_tFQOyAOyAA7SectionVyAA05EmptyC0VAOyAA6VStackVyA4_yAOyAA9LazyVGridVyA4_y07WorkoutB028MediaConfigurationRoomButtonVSg_A22_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA17_GAA21_TraitWritingModifierVyAA04ListT18BackgroundTraitKeyVGG_Qo__Qo__Qo__A15_yA22_32WorkoutConfigurationFilterPickerVSgA4_yA22_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAOyAOyAA5GroupVyAA012_ConditionalG0VyA22_024RaceWorkoutConfigurationT0VAcAE5alert_AH7actionsQrqd___ALqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipeAEQrAA010HorizontalY0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA22_020WorkoutConfigurationT0VG_A4_yAOyA81_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AOyA22_31ShareWorkoutConfigurationButtonVA93_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA81_yAA4TextVG_Qo_Qo_GGA44_yAA04ListT14InsetsTraitKeyVGGA47_GGA22_19CreateWorkoutButtonVSgtGA17_GtGGA89_yA12_GGA44_yAA26ListSectionSpacingTraitKeyVGGA89_yAA18ListSectionSpacingVSgGGA124_G_Qo__A62_AOyAOyA68_yA70_yA70_yA22_024GoalWorkoutConfigurationC0VA22_028IntervalWorkoutConfigurationC0VGA70_yA22_025PacerWorkoutConfigurationC0VA22_024RaceWorkoutConfigurationC0VGGSgGA89_yA22_28ConfigurationNavigationModelCSgGGA89_yA60_30WorkoutConfigurationDataSourceCSgGGQo__A22_018AlertConfigurationC5ModelCA22_018AlertConfigurationC0VQo_AA13_TaskModifierVG_AOyA22_10GoalPickerVA158_GQo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytA22_20DeviceConnectionMenuVGQo_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAcAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAnoPQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAMyAMyAMyAMyAA4ListVys5NeverOAA05TupleC0VyAcAE0qR6InsetsyQrAA0W0OAWV_12CoreGraphics7CGFloatVSgtFQOyAcAEAQ_ARQrAT_AXtFQOyAcAE0Q14SectionMarginsyQrA6__A10_tFQOyAMyAA7SectionVyAA05EmptyC0VAMyAA6VStackVyA2_yAMyAA9LazyVGridVyA2_y07WorkoutB028MediaConfigurationRoomButtonVSg_A20_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA15_GAA21_TraitWritingModifierVyAA0yR18BackgroundTraitKeyVGG_Qo__Qo__Qo__A13_yA20_32WorkoutConfigurationFilterPickerVSgA2_yA20_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAMyAMyAA5GroupVyAA012_ConditionalL0VyA20_024RaceWorkoutConfigurationR0VAcAE5alert_AE7actionsQrqd___AJqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipeAGQrAA010HorizontalW0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA20_020WorkoutConfigurationR0VG_A2_yAMyA79_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AMyA20_31ShareWorkoutConfigurationButtonVA91_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA79_yAA4TextVG_Qo_Qo_GGA42_yAA0yR14InsetsTraitKeyVGGA45_GGA20_19CreateWorkoutButtonVSgtGA15_GtGGA87_yA10_GGA42_yAA0Y22SectionSpacingTraitKeyVGGA87_yAA0Y14SectionSpacingVSgGGA122_G_Qo__A60_AMyAMyA66_yA68_yA68_yA20_024GoalWorkoutConfigurationC0VA20_028IntervalWorkoutConfigurationC0VGA68_yA20_025PacerWorkoutConfigurationC0VA20_024RaceWorkoutConfigurationC0VGGSgGA87_yA20_28ConfigurationNavigationModelCSgGGA87_yA58_30WorkoutConfigurationDataSourceCSgGGQo__A20_018AlertConfigurationC5ModelCA20_018AlertConfigurationC0VQo_AA13_TaskModifierVG_AMyA20_10GoalPickerVA156_GQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt07WorkoutB020DeviceConnectionMenuVGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyACyACyACyACyAA4ListVys5NeverOAA05TupleE0VyAeAE0jK6InsetsyQrAA0P0OAOV_12CoreGraphics7CGFloatVSgtFQOyAeAEAI_AJQrAL_APtFQOyAeAE0J14SectionMarginsyQrAZ_A2_tFQOyACyAA0Y0VyAA05EmptyE0VACyAA6VStackVyAVyACyAA9LazyVGridVyAVy07WorkoutB028MediaConfigurationRoomButtonVSg_A12_019VoiceCompanionEntryE0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA7_GAA21_TraitWritingModifierVyAA0rK18BackgroundTraitKeyVGG_Qo__Qo__Qo__A5_yA12_32WorkoutConfigurationFilterPickerVSgAVyA12_032NoWorkoutConfigurationsAvailableE0VSg_AA7ForEachVySay07WorkoutV020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA12_024RaceWorkoutConfigurationK0VAeAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalP0O_Sbqd__yXEtAaDRd__lFQOyAA6ButtonVyA12_020WorkoutConfigurationK0VG_AVyACyA76_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA12_31ShareWorkoutConfigurationButtonVA88_GtGQo__SSAeAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA76_yAA4TextVG_Qo_Qo_GGA34_yAA0rkU8TraitKeyVGGA37_GGA12_19CreateWorkoutButtonVSgtGA7_GtGGA84_yA2_GGA34_yAA0rY15SpacingTraitKeyVGGA84_yAA0rY7SpacingVSgGGA119_G_Qo__A52_ACyACyA58_yA60_yA60_yA12_024GoalWorkoutConfigurationE0VA12_028IntervalWorkoutConfigurationE0VGA60_yA12_025PacerWorkoutConfigurationE0VA12_024RaceWorkoutConfigurationE0VGGSgGA84_yA12_28ConfigurationNavigationModelCSgGGA84_yA50_30WorkoutConfigurationDataSourceCSgGGQo__A12_018AlertConfigurationE5ModelCA12_018AlertConfigurationE0VQo_AA13_TaskModifierVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010GoalPickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, _TaskModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<GoalPicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), DeviceConnectionMenu> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type MultilineNavigationItemAdapter and conformance MultilineNavigationItemAdapter();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C693BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C693C94()
{

  return swift_deallocObject();
}

uint64_t sub_20C693CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C693D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AlertConfigurationContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlertConfigurationSessionContext();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20C693EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AlertConfigurationContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlertConfigurationSessionContext();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C693FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_ACyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_AA7ForEachVySayAR22AlertConfigurationTypeOGA7_AEyAgAEAhIQrAK_tFQOyAMyACyAQ_A_tGG_Qo_GSgGtGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C694050()
{
  v1 = (type metadata accessor for AlertSingleConfigurationView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);

  v3 = v1[8];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[9];
  v6 = type metadata accessor for AlertConfigurationSessionContext();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_20C6941A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA4FontVSgGGSgAA0H0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalD0VyA6_AAE06pickerQ0yQrqd__AA06PickerQ0Rd__lFQOyAA0Z0VyAM07WorkoutB0024AlertSingleConfigurationH0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAIyA6_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAMA16_17HeaderHyphenationVG_A21_Qo__AA7ForEachVySayA16_22AlertConfigurationTypeOGA31_A27_SgGtGG_AA07DefaultzQ0VQo_AIyAA6ButtonVyA6_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAIyA26__AIyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A29_yA32_A31_A41_yA6_AAEA42_A43_QrA45__tFQOyA47_yAIyAM_A53_tGG_Qo_GSgGtGG_A21_Qo_AA05EmptyH0VG_A11_yA11_yA11_yAIyA16_011AlertsEntryH0V_AIyA16_016PacerAlertsEntryH0VSg_A16_015RaceAlertsEntryH0VSgtGSgtGA16_018HeartRateZoneEntryH0VGA11_yA71_A71_GGA11_yA11_yA16_010TimeSplitsH0VSgA16_014DistanceSplitsH0VSgGA11_yA16_010TrackEntryH0VSgA16_015PowerZonesEntryH0VSgGGGSgtGGAA06_TraitmN0VyAA0ei12SpacingTraitL0VGGAOyAA0eI7SpacingVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69456C()
{

  return swift_deallocObject();
}

uint64_t sub_20C6945D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI22LocationDisambiguationVSgMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type LocationDisambiguation? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69475C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C6947BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C69484C()
{

  return swift_deallocObject();
}

uint64_t sub_20C6948F4()
{

  return swift_deallocObject();
}

uint64_t sub_20C69492C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_20C6949D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C694A84()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type PickerTextPadding and conformance PickerTextPadding();
  return swift_getWitnessTable();
}

uint64_t sub_20C694AEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C694B04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C694B3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C694B7C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C694C54()
{

  return swift_deallocObject();
}

uint64_t sub_20C694CBC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C694D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RacePosition();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C694DC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RacePosition();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_20C694EC8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  LowPowerViewModel.waitingTimer.setter(v1);
}

uint64_t sub_20C694F8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlertConfigurationContext();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20C6950BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlertConfigurationContext();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C695214(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TargetZone.ZoneType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_20C6952C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TargetZone.ZoneType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C695398()
{

  return swift_deallocObject();
}

uint64_t sub_20C695490()
{

  return swift_deallocObject();
}

uint64_t sub_20C6954C8()
{

  return swift_deallocObject();
}

uint64_t sub_20C695500()
{

  return swift_deallocObject();
}

uint64_t sub_20C695564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InferenceClient();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C695610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InferenceClient();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C6956BC()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C6956F4()
{

  return swift_deallocObject();
}

uint64_t sub_20C695758()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAJy07WorkoutB0024AlertSingleConfigurationC0VAK0l8MultiplenC0VGs5NeverOGG_0K4Core10TargetZoneCQo__AWQo_Md);
  type metadata accessor for TargetZone();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAJy07WorkoutB0024AlertSingleConfigurationC0VAK0l8MultiplenC0VGs5NeverOGG_0K4Core10TargetZoneCQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMd);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type TargetZone and conformance TargetZone, MEMORY[0x277D7DF08]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69587C()
{
  v1 = (type metadata accessor for PowerZonesEntryView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_20C6959FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C695B44()
{

  return swift_deallocObject();
}

uint64_t sub_20C695B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20C695CAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C695DE4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAoA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyF0VG_A5_tGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_Md);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAoA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyF0VG_A5_tGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void _s9WorkoutUI30MediaPlaybackConfigurationTypeOs12IdentifiableAAsADP2id2IDQzvgTW_0(uint64_t *a1@<X8>)
{
  v2 = 0x6174537472616D73;
  if (*v1)
  {
    v2 = 0x65536D6F74737563;
  }

  v3 = 0xEC0000006E6F6974;
  if (*v1)
  {
    v3 = 0xEF6E6F697463656CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_20C696044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20C696168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C69629C()
{
  v1 = type metadata accessor for MediaConfigurationRoom();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LayoutDirection();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  outlined consume of StateObject<MediaConfigurationRoomViewModel>.Storage();

  return swift_deallocObject();
}

uint64_t sub_20C6964A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C69651C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.navigationIndicatorVisibility.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C696570@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C6965E0@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C696640()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA07DefaultG5LabelVGG_AKtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), Button<DefaultButtonLabel>>, ToolbarItem<(), Button<DefaultButtonLabel>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA07DefaultG5LabelVGG_AKtGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C696798()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4TextVSgMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Text? and conformance <A> A?(&lazy protocol witness table cache variable for type Text? and conformance <A> A?, &_s7SwiftUI4TextVSgMd);
  type metadata accessor for MetricTextWatchOS();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LegibilityWeight?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAFyAFyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAMySSGG_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?();
  type metadata accessor for MetricTextiOSPlatter();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C696BE4()
{
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C6974B4()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  return swift_getWitnessTable();
}

uint64_t sub_20C697774()
{

  return swift_deallocObject();
}

uint64_t sub_20C6977C0()
{

  return swift_deallocObject();
}

uint64_t sub_20C697830()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAA4ListVys5NeverOAOyAA7SectionVyAA05EmptyC0VAOyAcAE12onTapGesture5count7performQrSi_yyctFQOyAKyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAOyAA4TextV_AA6SpacerVAcAE0X14Representation14representationQrqd__yXE_tAaBRd__lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA6_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKyA14_yAWGAA31AccessibilityAttachmentModifierVGQo_tGG_Qo_AA01_L13ShapeModifierVyAA9RectangleVGG_Qo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAKyAcAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAWSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA6__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideO12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAWG_AUyAwKyA55_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAcAE0X7ActionsyQrqd__yXEAaBRd__lFQOyAKyAcAEA_A0_QrA2__tFQOyA4_yAOyA65_14WorkoutStepRowV_A8_AKyAA5ImageVA24_GtGG_Qo_A28_G_AOyA15_Sg_A91_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAWGSgtGG_A8_AKyAKyA14_yAKyA6_AA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA65_31PinnedBottomButtonModifierPhoneVGSgtGGA20_yAA13AnyShapeStyleVSgGG_SSQo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AA012_ConditionalE0VyAyeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA07DefaultK5LabelVGARyAA13AnyShapeStyleVSgGGGQo_GtGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAA4ListVys5NeverOAJyAA7SectionVyAA05EmptyC0VAJyAcAE12onTapGesture5count7performQrSi_yyctFQOyAFyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAJyAA4TextV_AA6SpacerVAcAE0S14Representation14representationQrqd__yXE_tAaBRd__lFQOyAFyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA1_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AFyA9_yARGAA0V18AttachmentModifierVGQo_tGG_Qo_AA01_G13ShapeModifierVyAA9RectangleVGG_Qo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAFyAcAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyARSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA1__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideJ12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGARG_APyArFyA50_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAcAE0S7ActionsyQrqd__yXEAaBRd__lFQOyAFyAcAEAvWQrAY_tFQOyA_yAJyA60_14WorkoutStepRowV_A3_AFyAA5ImageVA19_GtGG_Qo_A23_G_AJyA10_Sg_A86_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGARGSgtGG_A3_AFyAFyA9_yAFyA1_AA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA60_31PinnedBottomButtonModifierPhoneVGSgtGGA15_yAA13AnyShapeStyleVSgGG_SSQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4ListVys5NeverOAGyAA7SectionVyAA05EmptyG0VAGyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAqAE0Q14Representation14representationQrqd__yXE_tAaPRd__lFQOyACyAqAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA0_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyA8_yAOGAA0T18AttachmentModifierVGQo_tGG_Qo_AA01_D13ShapeModifierVyAA9RectangleVGG_Qo__AqAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyACyAqAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAOSiAA7ForEachVySaySiGSiAqAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA0__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideH12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAOG_AMyAoCyA49_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAqAE0Q7ActionsyQrqd__yXEAaPRd__lFQOyACyAqAEAuVQrAX_tFQOyAZyAGyA59_14WorkoutStepRowV_A2_ACyAA5ImageVA18_GtGG_Qo_A22_G_AGyA9_Sg_A85_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAOGSgtGG_A2_ACyACyA8_yACyA0_AA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA59_31PinnedBottomButtonModifierPhoneVGSgtGGA14_yAA13AnyShapeStyleVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, _ConditionalContent<<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0, <<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AA012_ConditionalE0VyAyeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA07DefaultK5LabelVGARyAA13AnyShapeStyleVSgGGGQo_GtGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C6979B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20C697A6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C697D60()
{

  return swift_deallocObject();
}

uint64_t sub_20C697D9C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C697E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C697EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C697F9C()
{

  return swift_deallocObject();
}

uint64_t sub_20C697FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAA6ButtonVy07WorkoutB009RepeatRowC0VGAA21_TraitWritingModifierVyAA016IsDeleteDisabledQ3KeyVGGAA012_Environmentw9TransformS0VySbGG_AA010NavigationC0VyAP0O6PickerVGQo_SgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C698044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAA6ButtonVy07WorkoutB009RepeatRowC0VGAA21_TraitWritingModifierVyAA016IsDeleteDisabledQ3KeyVGGAA012_Environmentw9TransformS0VySbGG_AA010NavigationC0VyAP0O6PickerVGQo_SgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C6980C4@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutBlock.repetitions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C69813C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C6981F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C6982A8()
{
  v1 = (type metadata accessor for IntervalStepConfigurationRow() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[12];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd) + 32);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_20C69841C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAEyAF0fH3RowVAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainvT0VQo_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C69848C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAEyAF0fH3RowVAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainvT0VQo_GMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C6984F8()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type InlineNavigationBarTitle and conformance InlineNavigationBarTitle();
  return swift_getWitnessTable();
}

uint64_t sub_20C69855C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB024InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<InlineNavigationBarTitle> and conformance _ViewModifier_Content<A>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69865C()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type PreviewSupportedDevices and conformance PreviewSupportedDevices();
  return swift_getWitnessTable();
}

uint64_t sub_20C6986CC()
{

  return swift_deallocObject();
}

uint64_t sub_20C698714()
{

  return swift_deallocObject();
}

uint64_t sub_20C6987A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C698814(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20C698950(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C698B04()
{

  return swift_deallocObject();
}

uint64_t sub_20C698B44()
{

  return swift_deallocObject();
}

uint64_t sub_20C698B7C()
{

  return swift_deallocObject();
}

uint64_t sub_20C698BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C698C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C698D08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C698E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_20C698EE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_20C698FA0()
{

  return swift_deallocObject();
}

uint64_t sub_20C69902C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C69909C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C699108()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();

  return swift_getWitnessTable();
}

uint64_t sub_20C699220()
{
  v1 = type metadata accessor for TransitionThinkingView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 20);
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_20C6992FC()
{

  return swift_deallocObject();
}

uint64_t sub_20C699334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20C699404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_20C6994D4()
{

  return swift_deallocObject();
}

uint64_t sub_20C69950C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAOyAHSgGG_Qo_AA01_nlM0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C699574()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAOyAHSgGG_Qo_AA01_nlM0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t _s9WorkoutUI27UpdatedEffortAnalyticsEvent33_1423374DD11350007FB77D5156E422BBLLVAA0eF0ACLLA2aeCLLP9eventNameSSvgTW_0()
{
  v1 = *v0;

  return v1;
}

uint64_t _s9WorkoutUI39ViewedTrainingLoadDetailsAnalyticsEvent33_1423374DD11350007FB77D5156E422BBLLVAA0gH0ACLLA2aeCLLP9eventNameSSvgTW_0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_20C699698()
{
  __swift_destroy_boxed_opaque_existential_0Tm_4(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C6996D0()
{

  return swift_deallocObject();
}

uint64_t sub_20C699718()
{

  return swift_deallocObject();
}

uint64_t sub_20C6997B8()
{

  return swift_deallocObject();
}

uint64_t sub_20C699834()
{

  return swift_deallocObject();
}

uint64_t sub_20C699870@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C6998F0()
{
  v1 = type metadata accessor for AddWorkoutRowView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  outlined consume of Text.Storage(*v2, *(v2 + 8), *(v2 + 16));

  v3 = *(v2 + 48);
  if (v3 != 255)
  {
    outlined consume of AddWorkoutRowView.WorkoutIconType(*(v2 + 32), *(v2 + 40), v3 & 1);
  }

  outlined consume of Environment<Bool>.Content(*(v2 + 56), *(v2 + 64));
  v4 = *(v1 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  v6 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C699A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20C699BD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C699D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C699E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C699FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C69A058()
{

  outlined consume of StateObject<WorkoutDevicesProvider>.Storage(*(v0 + 104), *(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

uint64_t sub_20C69A134()
{

  return swift_deallocObject();
}

uint64_t sub_20C69A16C()
{

  return swift_deallocObject();
}

uint64_t sub_20C69A1B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C69A264(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C69A274(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C69A2A4()
{

  return swift_deallocObject();
}

uint64_t sub_20C69A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for StepType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C69A3A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StepType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20C69A484(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkoutScrollingCoordinator.scrollToActivityType.setter(v1);
}

uint64_t sub_20C69A4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C69A580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C69A65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C69A6CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C69A754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20C69A894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20C69AA48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB09MetricRowVGAA16_FlexFrameLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricRow>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69AAAC()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  return swift_getWitnessTable();
}

uint64_t sub_20C69ABC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20C69ABD4()
{

  return swift_deallocObject();
}

uint64_t sub_20C69AC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InferenceClient();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20C69AD14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InferenceClient();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

uint64_t sub_20C69ADD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA4TextV07WorkoutB00l5VoicejC0V3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleC0VyAL_AA15ModifiedContentVyA1_yALSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA4_yAA5ColorVSgGGtGG_ARQo_GG_AA06InlinejI0VQo__Say19FitnessIntelligence014AudioSynthesisM0VGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV07WorkoutB00h5VoicefC0V3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleC0VyAI_AA15ModifiedContentVyAZyAISgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA1_yAA5ColorVSgGGtGG_AOQo_GG_AA06InlinefE0VQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19FitnessIntelligence19AudioSynthesisVoiceVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA4TextV07WorkoutB00e5VoiceC4ViewV3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleG0VyAE_AA15ModifiedContentVyAXyAESgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA_yAA5ColorVSgGGtGG_AKQo_GGMd);
  type metadata accessor for InlinePickerStyle();
  lazy protocol witness table accessor for type VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Picker<Text, WorkoutVoicePickerView.Row, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV07WorkoutB00e5VoiceC4ViewV3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleG0VyAE_AA15ModifiedContentVyAXyAESgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA_yAA5ColorVSgGGtGG_AKQo_GGMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type [AudioSynthesisVoice] and conformance <A> [A]();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69AF34()
{
  v1 = type metadata accessor for WorkoutVoicePickerView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for AudioSynthesisVoiceAsset();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = type metadata accessor for InferenceClient();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);

  if (*(v0 + v2 + *(v1 + 28)))
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_20C69B0EC()
{
  v1 = type metadata accessor for WorkoutVoicePickerView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = type metadata accessor for InferenceClient();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  if (*(v0 + v2 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C69B244()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
  return swift_getWitnessTable();
}

uint64_t sub_20C69B2C0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C69B31C()
{
  type metadata accessor for Picker();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ExpandedLabelPicker.Focused();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t sub_20C69B590()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = (type metadata accessor for ExpandedLabelPicker() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  outlined consume of Text.Storage(*(v3 + 24), *(v3 + 32), *(v3 + 40));

  (*(*(v1 - 8) + 8))(v3 + v2[17], v1);
  v4 = v3 + v2[19];

  v5 = type metadata accessor for Binding();
  (*(*(v7 - 8) + 8))(v4 + *(v5 + 32), v7);
  return swift_deallocObject();
}

uint64_t sub_20C69B760()
{

  return swift_deallocObject();
}

uint64_t sub_20C69B808()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C69B92C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_20C69B9E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C69BA98()
{
  v1 = (type metadata accessor for PacerButton() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[10];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd) + 32);
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 8))(&v3[v4], v5);

  return swift_deallocObject();
}

uint64_t sub_20C69BBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalM5LabelVGAN0oM5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeQ0VSgGGAA06_TraittU0VyAA017ListRowBackgroundxS0VGG_Qo_AA0i10AttachmentU0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20C69BC58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9WorkoutUI22MockUITraitEnvironment_traitCollection;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20C69BCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for MultisportTransitionState();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_20C69BDE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MultisportTransitionState();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C69BEE8()
{
  v1 = (type metadata accessor for TransitionIndicatorView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = type metadata accessor for MultisportTransitionState();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_20C69C000()
{

  return swift_deallocObject();
}

uint64_t sub_20C69C040()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA7CapsuleVAA14LinearGradientVG_ACyACyAA6HStackVyAGyACyAEyAGyACyAIyAA6CircleVAA5ColorVGAA14_PaddingLayoutVG_AA012_ConditionalD0VyACyACy07WorkoutB0018TransitionThinkingG0VAA30_EnvironmentKeyWritingModifierVyATSgGGAWGAA06StrokehG0VyArtA05EmptyG0VGGACyAA4TextVAA023AccessibilityAttachmentX0VGtGGAA06_FrameP0VG_AA08TimelineG0VyAA24PeriodicTimelineScheduleVACyACyA15_AWGA17_GGtGGAWGAWGtGGAA010_FixedSizeP0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ShapeView<Capsule, LinearGradient>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _ConditionalContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, StrokeShapeView<Circle, Color, EmptyView>>, ModifiedContent<Text, AccessibilityAttachmentModifier>)>>, _FrameLayout>, TimelineView<PeriodicTimelineSchedule, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>>)>>, _PaddingLayout>, _PaddingLayout>)>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69C0A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TrainingLoadChart.Configuration(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy9HealthKit8DayIndexVGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20C69C1D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TrainingLoadChart.Configuration(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy9HealthKit8DayIndexVGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C69C308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GregorianDayRange();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C69C3C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GregorianDayRange();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C69C47C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14GeometryReaderVyAA6ZStackVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAG6ChartsE10chartXAxis7contentQrqd__yXE_tAM04AxisL0Rd__lFQOyAgME0N6LegendyQrAA10VisibilityOFQOyAgME0N20ForegroundStyleScaleyQrs13KeyValuePairsVyqd__qd_0_GAM9PlottableRd__AA05ShapeU0Rd_0_r0_lFQOyAgME0N6XScale6domain5range4typeQrqd___qd_0_AM0V4TypeVSgtAM0V6DomainRd__AM08PositionV5RangeRd_0_r0_lFQOyAgME0N5YAxisyQrASFQOyAgME0N6YScaleA_A0_A1_Qrqd___qd_0_A4_tAMA5_Rd__AMA6_Rd_0_r0_lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgME24attributeGraphBasedChartyQrqd__mAM15AGChartsDeciderRd__lFQOyAM5ChartVyAM12BuilderTupleVyAA7ForEachVySay07WorkoutB0012TrainingLoadF5ModelV10ChartPointVG10Foundation4DateVAM05ChartL0PAME19accessibilityHiddenyQrSbFQOyA17_25TrainingLoadBaselineMarksV_Qo_G_A17_29TrainingLoadSmoothedLineTraceVSgQPGG_A17_0M21AttributeGraphDeciderVQo__SdQo__9HealthKit8DayIndexVQo__SbQo__SNySdGAM013PlotDimensionV5RangeVQo__Qo__SNyA25_GA49_Qo__SSAA08AnyShapeU0VQo__Qo__AM18BuilderConditionalVyA59_yAM0Q5MarksVyAM0Q4MarkPAME010foregroundU0yQrqd__AaYRd__lFQOyA63_AME4fontyQrAA4FontVSgFQOyAM0qX5LabelVys5NeverOG_Qo__AA5ColorVQo_GA61_yA14_yA73__AM0Q8GridLineVAM0Q4TickVQPGGGA61_yA72_GGQo_AA25_AppearanceActionModifierVG_A17_17TrainingLoadChartV13ConfigurationVQo_GGMd);
  lazy protocol witness table accessor for type GeometryReader<ZStack<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type GeometryReader<ZStack<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA6ZStackVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAG6ChartsE10chartXAxis7contentQrqd__yXE_tAM04AxisL0Rd__lFQOyAgME0N6LegendyQrAA10VisibilityOFQOyAgME0N20ForegroundStyleScaleyQrs13KeyValuePairsVyqd__qd_0_GAM9PlottableRd__AA05ShapeU0Rd_0_r0_lFQOyAgME0N6XScale6domain5range4typeQrqd___qd_0_AM0V4TypeVSgtAM0V6DomainRd__AM08PositionV5RangeRd_0_r0_lFQOyAgME0N5YAxisyQrASFQOyAgME0N6YScaleA_A0_A1_Qrqd___qd_0_A4_tAMA5_Rd__AMA6_Rd_0_r0_lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgME24attributeGraphBasedChartyQrqd__mAM15AGChartsDeciderRd__lFQOyAM5ChartVyAM12BuilderTupleVyAA7ForEachVySay07WorkoutB0012TrainingLoadF5ModelV10ChartPointVG10Foundation4DateVAM05ChartL0PAME19accessibilityHiddenyQrSbFQOyA17_25TrainingLoadBaselineMarksV_Qo_G_A17_29TrainingLoadSmoothedLineTraceVSgQPGG_A17_0M21AttributeGraphDeciderVQo__SdQo__9HealthKit8DayIndexVQo__SbQo__SNySdGAM013PlotDimensionV5RangeVQo__Qo__SNyA25_GA49_Qo__SSAA08AnyShapeU0VQo__Qo__AM18BuilderConditionalVyA59_yAM0Q5MarksVyAM0Q4MarkPAME010foregroundU0yQrqd__AaYRd__lFQOyA63_AME4fontyQrAA4FontVSgFQOyAM0qX5LabelVys5NeverOG_Qo__AA5ColorVQo_GA61_yA14_yA73__AM0Q8GridLineVAM0Q4TickVQPGGGA61_yA72_GGQo_AA25_AppearanceActionModifierVG_A17_17TrainingLoadChartV13ConfigurationVQo_GGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69C520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE10chartXAxis7contentQrqd__yXE_tAF04AxisD0Rd__lFQOyAeFE0G6LegendyQrAA10VisibilityOFQOyAeFE0G20ForegroundStyleScaleyQrs13KeyValuePairsVyqd__qd_0_GAF9PlottableRd__AA05ShapeN0Rd_0_r0_lFQOyAeFE0G6XScale6domain5range4typeQrqd___qd_0_AF0O4TypeVSgtAF0O6DomainRd__AF08PositionO5RangeRd_0_r0_lFQOyAeFE0G5YAxisyQrALFQOyAeFE0G6YScaleAtuVQrqd___qd_0_AYtAfZRd__AFA_Rd_0_r0_lFQOyAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA2_A3_A4__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA2_A3_A4__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeFE24attributeGraphBasedChartyQrqd__mAF15AGChartsDeciderRd__lFQOyAF5ChartVyAF12BuilderTupleVyAA7ForEachVySay07WorkoutB0012TrainingLoadE5ModelV10ChartPointVG10Foundation4DateVAF05ChartD0PAFE19accessibilityHiddenyQrSbFQOyA13_25TrainingLoadBaselineMarksV_Qo_G_A13_29TrainingLoadSmoothedLineTraceVSgQPGG_A13_0F21AttributeGraphDeciderVQo__SdQo__9HealthKit8DayIndexVQo__SbQo__SNySdGAF013PlotDimensionO5RangeVQo__Qo__SNyA21_GA45_Qo__SSAA03AnytN0VQo__Qo__AF18BuilderConditionalVyA55_yAF0J5MarksVyAF0J4MarkPAFE010foregroundN0yQrqd__AaRRd__lFQOyA59_AFE4fontyQrAA4FontVSgFQOyAF0jQ5LabelVys5NeverOG_Qo__AA5ColorVQo_GA57_yA10_yA69__AF0J8GridLineVAF0J4TickVQPGGGA57_yA68_GGQo_AA25_AppearanceActionModifierVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C69C594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalVyAA9AxisMarksVyAA0D4MarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAgAE4fontyQrAI4FontVSgFQOyAA0D10ValueLabelVys5NeverOG_Qo__AI5ColorVQo_GAEyAA0B5TupleVyAS_AA0D8GridLineVAA0D4TickVQPGGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C69C604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_20C69C694()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAA6ButtonVyAA6VStackVyAA05TupleD0VyAA6HStackVyAVyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameX0VGAA08_PaddingX0VGSg_AA6SpacerVAJyAlAEAmNQrAP_tFQOyAlAE11buttonStyleyQrqd__AA09PrimitiveQ5StyleRd__lFQOyARyAJyAJyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA24_ForegroundStyleModifierVyAA5ColorVGGG_AA05PlainQ5StyleVQo__Qo_AA0N18AttachmentModifierVGtGG_ATyAVyAJyAA4TextV07WorkoutB017HeaderHyphenationVG_AA012_ConditionalJ0VyAJyA37_A14_yAZ5ScaleOGGA37_GtGGtGGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_Qo_A32_GGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI22LocationDisambiguationVSgMd);
  lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>?, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(ModifiedContent<Text, HeaderHyphenation>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAA6ButtonVyAA6VStackVyAA05TupleD0VyAA6HStackVyAVyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameX0VGAA08_PaddingX0VGSg_AA6SpacerVAJyAlAEAmNQrAP_tFQOyAlAE11buttonStyleyQrqd__AA09PrimitiveQ5StyleRd__lFQOyARyAJyAJyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA24_ForegroundStyleModifierVyAA5ColorVGGG_AA05PlainQ5StyleVQo__Qo_AA0N18AttachmentModifierVGtGG_ATyAVyAJyAA4TextV07WorkoutB017HeaderHyphenationVG_AA012_ConditionalJ0VyAJyA37_A14_yAZ5ScaleOGGA37_GtGGtGGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_Qo_A32_GGMd);
  lazy protocol witness table accessor for type LocationDisambiguation? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69C798()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_20C69C88C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20C69C8A4()
{

  return swift_deallocObject();
}

uint64_t sub_20C69C8DC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20C69C914()
{

  return swift_deallocObject();
}

uint64_t sub_20C69C94C()
{

  return swift_deallocObject();
}

uint64_t sub_20C69C9AC()
{

  return swift_deallocObject();
}

uint64_t sub_20C69CA18()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C69CA54()
{

  return swift_deallocObject();
}

uint64_t sub_20C69CB80()
{

  return swift_deallocObject();
}

uint64_t sub_20C69CBB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[15];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_20C69CCFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[15];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_20C69CEA4@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalWorkoutConfiguration.intervalWorkout.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C69CEFC@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalWorkout.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20C69CF68@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.textContentType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20C69D000(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_20C69D140(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_20C69D2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ZoneViewType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20C69D36C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ZoneViewType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_20C69D42C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    started = type metadata accessor for StartButtonState();
    v9 = *(*(started - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, started);
  }
}

void *sub_20C69D4D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    started = type metadata accessor for StartButtonState();
    v8 = *(*(started - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, started);
  }

  return result;
}

uint64_t sub_20C69D594()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB025PickerEditModeCoordinatorVG_SbQo__SbQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB025PickerEditModeCoordinatorVG_SbQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB025PickerEditModeCoordinatorVGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<PickerEditModeCoordinator> and conformance _ViewModifier_Content<A>();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69D68C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TimePickerViewModel.goalValueString.setter(v1, v2);
}

uint64_t sub_20C69D788(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WorkoutConfigurationFilterType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20C69D834(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WorkoutConfigurationFilterType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C69D8D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA012_ConditionalD0VyAGyAGyAA4TextVAIGAGyAiA9TupleViewVyAI_AItGGGAA05EmptyI0VGGAA16_FlexFrameLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundN3KeyVGGAA012_EnvironmenttoP0VyAA0G9AlignmentOGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<Text, TupleView<(Text, Text)>>>, EmptyView>>, _FlexFrameLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69D944()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C69D97C()
{

  return swift_deallocObject();
}

uint64_t sub_20C69D9B4()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C69D9FC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C69DA44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_20C69DB00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C69DBE0()
{
  v1 = type metadata accessor for MediaPicker();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = v2 + *(v1 + 28);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd) + 32);
  v5 = type metadata accessor for WorkoutMediaSuggestion();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&v3[v4], 1, v5))
  {
    (*(v6 + 8))(&v3[v4], v5);
  }

  return swift_deallocObject();
}

uint64_t sub_20C69DDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20C69DE74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C69DF58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_20C69DFA8@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutBlock.steps.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C69E000()
{
  v1 = type metadata accessor for IntervalStepEditViewWatch();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t _visualPageForActualPage(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || a4)
  {
    return a1;
  }

  else
  {
    return a2 - 1 - a1;
  }
}

double _contentOffsetAlongAxis(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return a2;
}

double _pageSizeAlongAxis(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return a2;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t WKUISessionFakeSummaryEnabled()
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 BOOLForKey:@"NLSessionFakeSummaryEnabled"];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

id WKUISessionFakeSummaryWorkout()
{
  v49 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v48 = [v49 integerForKey:@"NLSessionFakeSummaryActivityType"];
  v47 = [v49 integerForKey:@"NLSessionFakeSummaryGoalType"];
  [v49 doubleForKey:@"NLSessionFakeSummaryGoalValue"];
  v46 = v0;
  v45 = [v49 objectForKey:@"NLSessionFakeSummaryStartDate"];
  v44 = [v49 objectForKey:@"NLSessionFakeSummaryEndDate"];
  [v49 doubleForKey:@"NLSessionFakeSummaryTotalEnergyBurned"];
  v43 = v1;
  [v49 doubleForKey:@"NLSessionFakeSummaryTotalDistance"];
  v42 = v2;
  v41 = [v49 BOOLForKey:@"NLSessionFakeSummaryIsIndoor"];
  [v49 doubleForKey:@"NLSessionFakeSummaryWeatherTemperature"];
  v40 = v3;
  [v49 doubleForKey:@"NLSessionFakeSummaryWeatherHumidity"];
  v39 = v4;
  v38 = [v49 integerForKey:@"NLSessionFakeSummaryWeatherCondition"];
  v37 = [v49 integerForKey:@"NLSessionFakeSummaryAirQualityIndex"];
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v41)
  {
    [v36 setObject:&unk_2823B2CF8 forKey:*MEMORY[0x277CCC4C0]];
  }

  if (v38)
  {
    v23 = MEMORY[0x277CCD7E8];
    v24 = [MEMORY[0x277CCDAB0] degreeFahrenheitUnit];
    v35 = [v23 quantityWithUnit:v40 doubleValue:?];
    *&v5 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    [v36 setObject:v35 forKey:{*MEMORY[0x277CCC560], v5}];
    v25 = MEMORY[0x277CCD7E8];
    v26 = [MEMORY[0x277CCDAB0] percentUnit];
    v34 = [v25 quantityWithUnit:v39 doubleValue:?];
    *&v6 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    [v36 setObject:v34 forKey:{*MEMORY[0x277CCC558], v6}];
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
    [v36 setObject:v33 forKey:*MEMORY[0x277D0A778]];
    v27 = v36;
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:v38];
    [v27 setObject:? forKey:?];
    *&v7 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    v29 = v36;
    v31 = [MEMORY[0x277CBEBB0] localTimeZone];
    v30 = [v31 name];
    [v29 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v30);
    *&v8 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    [v36 setObject:MEMORY[0x277CBEC38] forKey:{*MEMORY[0x277CCE178], v8}];
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  v16 = MEMORY[0x277CCDBE8];
  v13 = v48;
  v14 = v45;
  v15 = v44;
  v11 = MEMORY[0x277CCD7E8];
  v20 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v19 = [v11 quantityWithUnit:v43 doubleValue:?];
  v12 = MEMORY[0x277CCD7E8];
  v18 = [MEMORY[0x277CCDAB0] meterUnit];
  v17 = [v12 quantityWithUnit:v42 doubleValue:?];
  v32 = [v16 _workoutWithActivityType:v13 startDate:v14 endDate:v15 workoutEvents:0 totalEnergyBurned:v36 totalDistance:? device:? metadata:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v21 = MEMORY[0x20F30D4F0](v47, v46);
  [v32 _setGoal:?];
  *&v9 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  [v32 _setGoalType:{v47, v9}];
  v22 = MEMORY[0x277D82BE0](v32);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v49, 0);

  return v22;
}

uint64_t MetricDescriptionCoreFont.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v4 = type metadata accessor for Font.PrivateDesign();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB025MetricDescriptionCoreFontVGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGMd);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB025MetricDescriptionCoreFontVGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGAKySiSgGGMd);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v17 = *(v2 + 1);
  v18 = v2[16];
  v38 = *v2;
  v16 = v38;
  v39 = v17;
  v40 = v18;
  MetricDescriptionCoreFont.pointSize()();
  static Font.Weight.semibold.getter();
  static Font.PrivateDesign.compactRounded.getter();
  v19 = static Font.system(size:weight:design:)();
  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB025MetricDescriptionCoreFontVGMd);
  (*(*(v21 - 8) + 16))(v11, v37, v21);
  v22 = &v11[*(v9 + 44)];
  *v22 = KeyPath;
  v22[1] = v19;
  v23 = swift_getKeyPath();
  outlined init with take of ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>(v11, v15, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB025MetricDescriptionCoreFontVGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGMd);
  v24 = 1;
  if (v16)
  {
    v24 = 2;
  }

  v25 = &v15[*(v13 + 44)];
  *v25 = v23;
  *(v25 + 1) = v24;
  v25[16] = 0;
  v26 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  outlined init with take of ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>(v15, a2, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB025MetricDescriptionCoreFontVGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGAKySiSgGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB025MetricDescriptionCoreFontVGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGAKySiSgGGAA14_PaddingLayoutVGMd);
  v36 = a2 + *(result + 36);
  *v36 = v26;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  return result;
}

uint64_t MetricDescriptionCoreFont.pointSize()()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 1);
  v7 = v0[16];
  if (v7 == 1)
  {
    v8 = *(v0 + 1);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v8) = v16;
  }

  if (((1 << v8) & 0x387) == 0)
  {
    v10 = [objc_opt_self() currentDevice];
    specialized UIDevice.screenType.getter();

    return FIUICurrentLanguageRequiresTallScript();
  }

  if (!v5)
  {
    if (v7)
    {
      v15 = v6;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v11 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v6, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v6) = v15;
    }

    if (one-time initialization token for fontSize != -1)
    {
      swift_once();
    }

    if (v6 <= 4u)
    {
      if (v6 - 2 >= 3 && !v6)
      {
        goto LABEL_21;
      }
    }

    else if (v6 > 7u)
    {
      if (v6 - 8 >= 2)
      {
        specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
      }

      goto LABEL_21;
    }

    v12 = [objc_opt_self() currentDevice];
    specialized UIDevice.screenType.getter();

LABEL_21:
    FIUICurrentLanguageRequiresTallScript();
    return FIUICurrentLanguageRequiresTallScript();
  }

  if (one-time initialization token for multilineFontSize != -1)
  {
    swift_once();
  }

  return FIUICurrentLanguageRequiresTallScript();
}

double one-time initialization function for multilineMaximumLineHeight()
{
  if (one-time initialization token for multilineFontSize != -1)
  {
    swift_once();
  }

  result = *&static MetricDescriptionCoreFont.multilineFontSize;
  static MetricDescriptionCoreFont.multilineMaximumLineHeight = static MetricDescriptionCoreFont.multilineFontSize;
  return result;
}

uint64_t ExtendedLineSpacingSupport.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA01_C16Modifier_ContentVy07WorkoutB008ExtendedE14SpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVG_Qo_Md);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA022_EnvironmentKeyWritingH0Vy12CoreGraphics7CGFloatVGGAA0G0PAAE07maximumK6HeightyQrASFQOyAN_Qo__GMd);
  MEMORY[0x28223BE20](v33);
  v8 = &v30 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA022_EnvironmentKeyWritingF0Vy12CoreGraphics7CGFloatVGGMd);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v15 = *(v2 + 2);
  if (v2[24] != 1)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v30 = v6;
    v17 = v4;
    v18 = v8;
    v19 = v3;
    v20 = v14;
    v21 = v16;
    os_log(_:dso:log:_:_:)();

    v14 = v20;
    v3 = v19;
    v8 = v18;
    v4 = v17;
    v6 = v30;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v15, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(v15) = v36;
  }

  if (v15 <= 9u && ((1 << v15) & 0x301) != 0 || (FIUICurrentLanguageNeedsExtendedLineSpacing() & v14 & 1) == 0)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
    v23 = lazy protocol witness table accessor for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
    View.maximumLineHeight(_:)();
    (*(v4 + 16))(v8, v6, v3);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    v36 = v22;
    v37 = v23;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
    v27 = v31;
    (*(*(v26 - 8) + 16))(v31, v32, v26);
    v28 = (v27 + *(v34 + 36));
    *v28 = KeyPath;
    v28[1] = 0x3FF0000000000000;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsS(v27, v8, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA022_EnvironmentKeyWritingF0Vy12CoreGraphics7CGFloatVGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    v29 = lazy protocol witness table accessor for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
    v36 = v26;
    v37 = v29;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>>(v27);
  }
}

uint64_t View.metricDescriptionFont(multiline:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - v8;
  View.metricDescriptionCoreFont(multiline:)(a1, a2, a3);
  if (one-time initialization token for multilineMaximumLineHeight != -1)
  {
    swift_once();
  }

  v10 = *&static MetricDescriptionCoreFont.multilineMaximumLineHeight;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v10 = v10 + 1.0;
  }

  v11 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v14[0] = a3;
  v14[1] = v11;
  WitnessTable = swift_getWitnessTable();
  View.extendedLineSpacingSupport(multiline:maxLineHeight:)(a1 & 1, v6, WitnessTable, v10);
  return (*(v7 + 8))(v9, v6);
}

uint64_t View.metricDescriptionCoreFont(multiline:)(char a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  KeyPath = swift_getKeyPath();
  v8 = 0;
  MEMORY[0x20F30ABE0](v6, a2, &type metadata for MetricDescriptionCoreFont, a3);
  return outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, v8);
}

uint64_t View.extendedLineSpacingSupport(multiline:maxLineHeight:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v7[0] = a1;
  v8 = a4;
  KeyPath = swift_getKeyPath();
  v10 = 0;
  MEMORY[0x20F30ABE0](v7, a2, &type metadata for ExtendedLineSpacingSupport, a3);
  return outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, v10);
}

unint64_t lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont()
{
  result = lazy protocol witness table cache variable for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont;
  if (!lazy protocol witness table cache variable for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont);
  }

  return result;
}

uint64_t _s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntF@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v34 = a4;
  v35 = a5;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = a7;
    v37 = a2;
    v38 = a6;
    v39 = a8;
    v40 = a9;
    v41 = a10;
    v17 = type metadata accessor for _TaskModifier2();
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      v33 = v10;
      _StringGuts.grow(_:)(17);

      strcpy(v43, "View.task @ ");
      BYTE5(v43[1]) = 0;
      HIWORD(v43[1]) = -5120;
      MEMORY[0x20F30BC00](a3, v34);
      MEMORY[0x20F30BC00](58, 0xE100000000000000);
      v42 = v35;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F30BC00](v28);
    }

    v29 = type metadata accessor for TaskPriority();
    v30 = MEMORY[0x28223BE20](v29);
    (*(v32 + 16))(&v33 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v30);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    MEMORY[0x20F30ABE0](v20, v40, v17, v41);

    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    v21 = type metadata accessor for _TaskModifier();
    MEMORY[0x28223BE20](v21);
    v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *(v24 + 20);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 16))(&v23[v25], a2, v26);
    *v23 = a6;
    *(v23 + 1) = a7;
    MEMORY[0x20F30ABE0](v23, a9, v21, a10);
    return outlined destroy of _TaskModifier(v23);
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontDescriptorAttributeName(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontDescriptorAttributeName(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIFontDescriptorAttributeName@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x20F30BAD0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance UIFontDescriptorFeatureKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x20F30BC70](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIFontDescriptorFeatureKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIFontDescriptorFeatureKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NLWorkoutAlertType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NLWorkoutAlertType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIRectCorner@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIFontDescriptorFeatureKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
  v3 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorFeatureKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);
  v3 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance NLWorkoutPausedReason@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x20F30BAD0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  v3 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t key path getter for EnvironmentValues.lineSpacing : EnvironmentValues, serialized@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.lineSpacing.getter();
  *a1 = v3;
  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TaskModifier2 and conformance _TaskModifier2()
{
  result = lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2;
  if (!lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2);
  }

  return result;
}

uint64_t outlined destroy of _TaskModifier(uint64_t a1)
{
  v2 = type metadata accessor for _TaskModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport()
{
  result = lazy protocol witness table cache variable for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport;
  if (!lazy protocol witness table cache variable for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ExtendedLineSpacingSupport(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtendedLineSpacingSupport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricDescriptionCoreFont(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricDescriptionCoreFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of Environment<WorkoutViewStyle>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA022_EnvironmentKeyWritingF0Vy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsS(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA022_EnvironmentKeyWritingF0Vy12CoreGraphics7CGFloatVGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void type metadata accessor for FIUIWorkoutSectionType(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB025MetricDescriptionCoreFontVGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGAKySiSgGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB025MetricDescriptionCoreFontVGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGAKySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB025MetricDescriptionCoreFontVGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<MetricDescriptionCoreFont> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB025MetricDescriptionCoreFontVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricDescriptionCoreFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA022_EnvironmentKeyWritingG0Vy12CoreGraphics7CGFloatVGGAA0F0PAAE07maximumJ6HeightyQrAQFQOyAL_Qo_GMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ExtendedLineSpacingSupport> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB026ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t static MetricValueFont.fontPointSize(workoutViewStyle:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for fontSize != -1)
  {
    swift_once();
  }

  if (v1 <= 4)
  {
    if ((v1 - 2) >= 3 && !v1)
    {
      return FIUICurrentLanguageRequiresTallScript();
    }

LABEL_9:
    v2 = [objc_opt_self() currentDevice];
    specialized UIDevice.screenType.getter();

    return FIUICurrentLanguageRequiresTallScript();
  }

  if (v1 <= 7)
  {
    goto LABEL_9;
  }

  if ((v1 - 8) >= 2)
  {
    specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
  }

  return FIUICurrentLanguageRequiresTallScript();
}

void one-time initialization function for fontSize()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB5DC88[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static MetricValueFont.fontSize = *&v3;
}

{
  static ZoneView.fontSize = specialized static LayoutUtilities.layoutMetric(regular42:)(20.0);
}

void *one-time initialization function for capHeightToAscenderCache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI0C9ViewStyleO_12CoreGraphics7CGFloatVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static MetricValueFont.capHeightToAscenderCache = result;
  return result;
}

uint64_t MetricValueFont.init(includesSlashes:smallCaps:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = swift_getKeyPath();
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *a3 = a1;
  *(a3 + 1) = a2;
  return result;
}

uint64_t MetricValueFont.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v185 = a1;
  v190 = a2;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingL0VyAA0P0VSgGG_Qo_AQySiSgGGMd);
  v3 = MEMORY[0x28223BE20](v186);
  v163 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v156 - v5;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_f9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingN0VyAA0R0VSgGG_Qo_AMyAzUySiSgGG_GMd);
  MEMORY[0x28223BE20](v165);
  v166 = &v156 - v7;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AKyAxSySiSgGGGMd);
  MEMORY[0x28223BE20](v184);
  v167 = &v156 - v8;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKySiSgGGMd);
  v9 = MEMORY[0x28223BE20](v180);
  v162 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v164 = &v156 - v12;
  MEMORY[0x28223BE20](v11);
  v171 = &v156 - v13;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAIyAA01_c9Modifier_K0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingL0VyAA0P0VSgGGAQySiSgGG_Qo_Md);
  v173 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v172 = &v156 - v14;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_f9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingN0VyAA0R0VSgGG_Qo_AgAEAHyQrAKFQOyAMyAzUySiSgGG_Qo_GACyA_A2_GGAMyA_A1_G_GMd);
  MEMORY[0x28223BE20](v194);
  v16 = &v156 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_f9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingN0VyAA0R0VSgGG_Qo_AgAEAHyQrAKFQOyAMyAzUySiSgGG_Qo_GACyA_A2_G_GMd);
  MEMORY[0x28223BE20](v181);
  v182 = &v156 - v17;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_f9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingN0VyAA0R0VSgGG_Qo_AgAEAHyQrAKFQOyAMyAzUySiSgGG_Qo__GMd);
  MEMORY[0x28223BE20](v177);
  v178 = &v156 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GMd);
  MEMORY[0x28223BE20](v19);
  v176 = &v156 - v20;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
  MEMORY[0x28223BE20](v193);
  v183 = &v156 - v21;
  v22 = type metadata accessor for Font.PrivateDesign();
  v188 = *(v22 - 8);
  v189 = v22;
  MEMORY[0x28223BE20](v22);
  v187 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
  v24 = MEMORY[0x28223BE20](v191);
  v160 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v159 = &v156 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v158 = &v156 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v156 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v156 - v33;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAA01_c9Modifier_K0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingL0VyAA0P0VSgGG_Qo_Md);
  v174 = *(v192 - 8);
  v35 = MEMORY[0x28223BE20](v192);
  v157 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v161 = &v156 - v38;
  MEMORY[0x28223BE20](v37);
  v169 = &v156 - v39;
  v40 = type metadata accessor for EnvironmentValues();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v156 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = *v2;
  v168 = v2[1];
  v44 = *(v2 + 1);
  v195 = v2[16];
  v196 = v41;
  if (v195 == 1)
  {
    v199 = v44;
    v45 = v44;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v46 = v40;
    v47 = v16;
    v48 = v19;
    v49 = v6;
    v50 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v6 = v49;
    v19 = v48;
    v16 = v47;
    v40 = v46;
    v41 = v196;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
    (*(v41 + 8))(v43, v40);
    v45 = v199;
  }

  if (v45 <= 4u)
  {
    if (!v45)
    {
      goto LABEL_15;
    }

    if (v45 == 1)
    {
LABEL_7:
      v51 = v195;
      if (v195)
      {
        LOBYTE(v197) = v44;
        v52 = v44;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v56 = v40;
        v57 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v40 = v56;
        v41 = v196;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
        (*(v41 + 8))(v43, v40);
        v52 = v197;
      }

      if (one-time initialization token for fontSize != -1)
      {
        swift_once();
      }

      if (v52 <= 4u)
      {
        if (v52 - 2 >= 3 && !v52)
        {
LABEL_35:
          FIUICurrentLanguageRequiresTallScript();
          if (v51)
          {
            LOBYTE(v197) = v44;
          }

          else
          {

            static os_log_type_t.fault.getter();
            v61 = v40;
            v62 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
            (*(v41 + 8))(v43, v61);
            LOBYTE(v44) = v197;
          }

          v63 = v185;
          if (v44 <= 0xBu && (((1 << v44) & 0xC62) != 0 || ((1 << v44) & 0x301) != 0))
          {
            static Font.Weight.medium.getter();
          }

          else
          {
            static Font.Weight.regular.getter();
          }

          v175 = v16;
          v66 = v187;
          static Font.PrivateDesign.compactRounded.getter();
          static Font.system(size:weight:design:)();
          (*(v188 + 8))(v66, v189);
          v67 = Font.monospacedDigit()();

          v156 = v19;
          if (v170)
          {
            v68 = Font.feature(_:_:)();

            v67 = v68;
          }

          KeyPath = swift_getKeyPath();
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB015MetricValueFontVGMd);
          (*(*(v70 - 8) + 16))(v32, v63, v70);
          v71 = v191;
          v72 = &v32[*(v191 + 36)];
          *v72 = KeyPath;
          v72[1] = v67;
          v73 = swift_getKeyPath();
          v74 = v171;
          outlined init with take of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(v32, v171, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
          v75 = v180;
          v76 = v74 + *(v180 + 36);
          *v76 = v73;
          *(v76 + 8) = 1;
          *(v76 + 16) = 0;
          MetricPlatterConstants.init()(&v197);
          v77 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
          v78 = v172;
          View.maximumLineHeight(_:)();
          outlined destroy of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(v74, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKySiSgGGMd);
          v79 = v173;
          v80 = v179;
          (*(v173 + 16))(v178, v78, v179);
          swift_storeEnumTagMultiPayload();
          v81 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
          v197 = v71;
          v198 = v81;
          swift_getOpaqueTypeConformance2();
          v197 = v75;
          v198 = v77;
          swift_getOpaqueTypeConformance2();
          v82 = v176;
          _ConditionalContent<>.init(storage:)();
          outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v82, v182, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>();
          v83 = v183;
          _ConditionalContent<>.init(storage:)();
          outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v82, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GMd);
          outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v83, v175, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v83, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
          return (*(v79 + 8))(v78, v80);
        }
      }

      else if (v52 > 7u)
      {
        if (v52 - 8 >= 2)
        {
          specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
        }

        goto LABEL_35;
      }

      v60 = [objc_opt_self() currentDevice];
      specialized UIDevice.screenType.getter();

      v41 = v196;
      goto LABEL_35;
    }

    if (v45 != 4)
    {
      goto LABEL_52;
    }

    v53 = v195;
    if (v195)
    {
      LOBYTE(v197) = v44;
      v54 = v44;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v106 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
      (*(v196 + 8))(v43, v40);
      v54 = v197;
    }

    if (one-time initialization token for fontSize != -1)
    {
      swift_once();
    }

    if (v54 <= 4u)
    {
      if (v54 - 2 >= 3 && !v54)
      {
LABEL_97:
        FIUICurrentLanguageRequiresTallScript();
        if (v53)
        {
          LOBYTE(v197) = v44;
        }

        else
        {

          static os_log_type_t.fault.getter();
          v110 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
          (*(v196 + 8))(v43, v40);
          LOBYTE(v44) = v197;
        }

        v111 = v185;
        if (v44 <= 0xBu && (((1 << v44) & 0xC62) != 0 || ((1 << v44) & 0x301) != 0))
        {
          v112 = v16;
          static Font.Weight.medium.getter();
        }

        else
        {
          v112 = v16;
          static Font.Weight.regular.getter();
        }

        v119 = v187;
        static Font.PrivateDesign.compactRounded.getter();
        static Font.system(size:weight:design:)();
        (*(v188 + 8))(v119, v189);
        v120 = Font.monospacedDigit()();

        v121 = swift_getKeyPath();
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB015MetricValueFontVGMd);
        v123 = v159;
        (*(*(v122 - 8) + 16))(v159, v111, v122);
        v124 = v191;
        v125 = (v123 + *(v191 + 36));
        *v125 = v121;
        v125[1] = v120;
        v126 = swift_getKeyPath();
        v127 = v162;
        outlined init with take of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(v123, v162, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
        v128 = v127 + *(v180 + 36);
        *v128 = v126;
        *(v128 + 8) = 1;
        *(v128 + 16) = 0;
        v129 = v164;
        outlined init with take of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(v127, v164, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKySiSgGGMd);
        outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>(v129, v166);
        swift_storeEnumTagMultiPayload();
        v130 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
        v197 = v124;
        v198 = v130;
        swift_getOpaqueTypeConformance2();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
        v131 = v167;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v131, v182, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AKyAxSySiSgGGGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>();
        v132 = v183;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v131, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AKyAxSySiSgGGGMd);
        outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v132, v112, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v132, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
        return outlined destroy of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(v129, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKySiSgGGMd);
      }
    }

    else if (v54 > 7u)
    {
      if (v54 - 8 >= 2)
      {
        specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
      }

      goto LABEL_97;
    }

    v109 = [objc_opt_self() currentDevice];
    specialized UIDevice.screenType.getter();

    goto LABEL_97;
  }

  if (v45 > 0xBu)
  {
    goto LABEL_52;
  }

  if (((1 << v45) & 0xC60) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << v45) & 0x300) == 0)
  {
    if (v45 == 7)
    {
      v64 = v195;
      if (v195)
      {
        LOBYTE(v197) = v44;
        v65 = v44;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v108 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
        (*(v196 + 8))(v43, v40);
        v65 = v197;
      }

      if (one-time initialization token for fontSize != -1)
      {
        swift_once();
      }

      if (v65 <= 4u)
      {
        if (v65 - 2 >= 3 && !v65)
        {
LABEL_113:
          FIUICurrentLanguageRequiresTallScript();
          if (v64)
          {
            LOBYTE(v197) = v44;
          }

          else
          {

            static os_log_type_t.fault.getter();
            v117 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
            (*(v196 + 8))(v43, v40);
            LOBYTE(v44) = v197;
          }

          v118 = v185;
          v175 = v16;
          if (v44 <= 0xBu && (((1 << v44) & 0xC62) != 0 || ((1 << v44) & 0x301) != 0))
          {
            static Font.Weight.medium.getter();
          }

          else
          {
            static Font.Weight.regular.getter();
          }

          v143 = v187;
          static Font.PrivateDesign.compactRounded.getter();
          v144 = static Font.system(size:weight:design:)();
          (*(v188 + 8))(v143, v189);
          v145 = swift_getKeyPath();
          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB015MetricValueFontVGMd);
          v147 = v158;
          (*(*(v146 - 8) + 16))(v158, v118, v146);
          v148 = v191;
          v149 = (v147 + *(v191 + 36));
          *v149 = v145;
          v149[1] = v144;
          MetricPlatterConstants.init()(&v197);
          v150 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
          v151 = v161;
          View.maximumLineHeight(_:)();
          outlined destroy of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(v147, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
          v152 = v174;
          v153 = v192;
          (*(v174 + 16))(v166, v151, v192);
          swift_storeEnumTagMultiPayload();
          v197 = v148;
          v198 = v150;
          swift_getOpaqueTypeConformance2();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
          v154 = v167;
          _ConditionalContent<>.init(storage:)();
          outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v154, v182, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AKyAxSySiSgGGGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>();
          v155 = v183;
          _ConditionalContent<>.init(storage:)();
          outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v154, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AKyAxSySiSgGGGMd);
          outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v155, v175, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v155, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
          return (*(v152 + 8))(v151, v153);
        }
      }

      else if (v65 > 7u)
      {
        if (v65 - 8 >= 2)
        {
          specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
        }

        goto LABEL_113;
      }

      v116 = [objc_opt_self() currentDevice];
      specialized UIDevice.screenType.getter();

      goto LABEL_113;
    }

LABEL_52:
    if (v195)
    {
      v85 = v40;
      LOBYTE(v197) = v44;
      v86 = v44;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v107 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
      v85 = v40;
      (*(v196 + 8))(v43, v40);
      v86 = v197;
    }

    if (one-time initialization token for fontSize != -1)
    {
      swift_once();
    }

    if (v86 <= 4u)
    {
      if (v86 - 2 >= 3 && !v86)
      {
LABEL_105:
        FIUICurrentLanguageRequiresTallScript();
        if (v195)
        {
          LOBYTE(v197) = v44;
        }

        else
        {

          static os_log_type_t.fault.getter();
          v114 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
          (*(v196 + 8))(v43, v85);
          LOBYTE(v44) = v197;
        }

        v115 = v185;
        if (v44 <= 0xBu && (((1 << v44) & 0xC62) != 0 || ((1 << v44) & 0x301) != 0))
        {
          static Font.Weight.medium.getter();
        }

        else
        {
          static Font.Weight.regular.getter();
        }

        v133 = v187;
        static Font.PrivateDesign.compactRounded.getter();
        static Font.system(size:weight:design:)();
        (*(v188 + 8))(v133, v189);
        v134 = Font.monospacedDigit()();

        v135 = swift_getKeyPath();
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB015MetricValueFontVGMd);
        v137 = v160;
        (*(*(v136 - 8) + 16))(v160, v115, v136);
        v138 = (v137 + *(v191 + 36));
        *v138 = v135;
        v138[1] = v134;
        MetricPlatterConstants.init()(&v197);
        lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
        v139 = v157;
        View.maximumLineHeight(_:)();
        outlined destroy of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(v137, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
        v140 = swift_getKeyPath();
        v141 = v163;
        (*(v174 + 32))(v163, v139, v192);
        v142 = v141 + *(v186 + 36);
        *v142 = v140;
        *(v142 + 8) = 1;
        *(v142 + 16) = 0;
        sub_20C674F90(v141, v6);
        outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v6, v16, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingL0VyAA0P0VSgGG_Qo_AQySiSgGGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        return outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v6, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingL0VyAA0P0VSgGG_Qo_AQySiSgGGMd);
      }
    }

    else if (v86 > 7u)
    {
      if (v86 - 8 >= 2)
      {
        specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
      }

      goto LABEL_105;
    }

    v113 = [objc_opt_self() currentDevice];
    specialized UIDevice.screenType.getter();

    goto LABEL_105;
  }

LABEL_15:
  if (v195)
  {
    LOBYTE(v197) = v44;
    v55 = v44;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v58 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
    (*(v196 + 8))(v43, v40);
    v55 = v197;
  }

  v59 = v188;
  if (one-time initialization token for fontSize != -1)
  {
    swift_once();
  }

  if (v55 > 4u)
  {
    if (v55 > 7u)
    {
      if (v55 - 8 >= 2)
      {
        specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
      }

      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v55 - 2 < 3 || v55)
  {
LABEL_54:
    v87 = [objc_opt_self() currentDevice];
    specialized UIDevice.screenType.getter();
  }

LABEL_55:
  FIUICurrentLanguageRequiresTallScript();
  if (v195)
  {
    LOBYTE(v197) = v44;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v88 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v44, 0);
    (*(v196 + 8))(v43, v40);
    LOBYTE(v44) = v197;
  }

  v89 = v185;
  v90 = v189;
  v91 = v168;
  if (v44 <= 0xBu && (((1 << v44) & 0xC62) != 0 || ((1 << v44) & 0x301) != 0))
  {
    static Font.Weight.medium.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  v92 = v187;
  static Font.PrivateDesign.compactRounded.getter();
  static Font.system(size:weight:design:)();
  (*(v59 + 8))(v92, v90);
  v93 = Font.monospacedDigit()();

  v175 = v16;
  if (v91)
  {
    v94 = Font.lowercaseSmallCaps()();

    v93 = v94;
  }

  v95 = swift_getKeyPath();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB015MetricValueFontVGMd);
  (*(*(v96 - 8) + 16))(v34, v89, v96);
  v97 = v191;
  v98 = &v34[*(v191 + 36)];
  *v98 = v95;
  v98[1] = v93;
  MetricPlatterConstants.init()(&v197);
  v99 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v100 = v169;
  View.maximumLineHeight(_:)();
  outlined destroy of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(v34, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
  v101 = v174;
  v102 = v192;
  (*(v174 + 16))(v178, v100, v192);
  swift_storeEnumTagMultiPayload();
  v197 = v97;
  v198 = v99;
  swift_getOpaqueTypeConformance2();
  v103 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
  v197 = v180;
  v198 = v103;
  swift_getOpaqueTypeConformance2();
  v104 = v176;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v104, v182, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>();
  v105 = v183;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v104, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GMd);
  outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v105, v175, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v105, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
  return (*(v101 + 8))(v100, v102);
}

uint64_t static MetricValueFont.fontWeight(workoutViewStyle:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0xB && (((1 << v1) & 0xC62) != 0 || ((1 << v1) & 0x301) != 0))
  {
    return static Font.Weight.medium.getter();
  }

  else
  {
    return static Font.Weight.regular.getter();
  }
}

uint64_t Font.if (_:transform:)(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return a2(a4);
  }
}

uint64_t View.metricValueFont(includesSlashes:smallCaps:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  KeyPath = swift_getKeyPath();
  v9 = 0;
  MEMORY[0x20F30ABE0](v7, a3, &type metadata for MetricValueFont, a4);
  return outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, v9);
}

uint64_t key path getter for EnvironmentValues.workoutViewStyle : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricValueFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<MetricValueFont> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB015MetricValueFontVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricValueFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricValueFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<MetricValueFont> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AKyAxSySiSgGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingL0VyAA0P0VSgGG_Qo_AQySiSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricValueFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKySiSgGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for MetricValueFont(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricValueFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>>, ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>>, ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>>, ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA08ModifiedD0VyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingM0VyAA0Q0VSgGG_Qo_AeAEAFyQrAIFQOyAKyAxSySiSgGG_Qo_GACyAYA0_GGAKyAYA_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, <<opaque return type of View.maximumLineHeight(_:)>>.0>, _ConditionalContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>>>, ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont()
{
  result = lazy protocol witness table cache variable for type MetricValueFont and conformance MetricValueFont;
  if (!lazy protocol witness table cache variable for type MetricValueFont and conformance MetricValueFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValueFont and conformance MetricValueFont);
  }

  return result;
}

id specialized static MetricValueFont.uiFont(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for fontSize != -1)
  {
    swift_once();
  }

  v2 = *&static MetricValueFont.fontSize;
  if (v1 <= 4)
  {
    if ((v1 - 2) >= 3)
    {
      if (!v1)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_12:
    v7 = [objc_opt_self() currentDevice];
    v8 = specialized UIDevice.screenType.getter();

    v5 = v8;
    v6 = &unk_20CB5DCE0;
    goto LABEL_13;
  }

  if (v1 <= 7)
  {
    if ((v1 - 5) < 2)
    {
LABEL_11:
      v3 = [objc_opt_self() currentDevice];
      v4 = specialized UIDevice.screenType.getter();

      v5 = v4;
      v6 = &unk_20CB5DD38;
LABEL_13:
      v2 = v6[v5];
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if ((v1 - 8) >= 2)
  {
    v2 = specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
  }

LABEL_14:
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v2 = v2 + -2.0;
  }

  if (v1 <= 0xB && (((1 << v1) & 0xC62) != 0 || ((1 << v1) & 0x301) != 0))
  {
    static Font.Weight.medium.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  v9 = Font.Weight.uiFontWeight.getter();
  v10 = objc_opt_self();
  v29 = [v10 systemFontOfSize:v2 weight:v9];
  v11 = [v29 fontDescriptor];
  v12 = [v11 fontDescriptorWithDesign_];
  if (v12)
  {
    v13 = v12;

    v11 = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA70;
  v15 = *MEMORY[0x277D74338];
  *(inited + 32) = *MEMORY[0x277D74338];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CB5DA70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_SitGMd);
  v17 = swift_initStackObject();
  v18 = MEMORY[0x277D76908];
  *(v17 + 16) = xmmword_20CB5DA80;
  v19 = *v18;
  *(v17 + 32) = *v18;
  v20 = *MEMORY[0x277D76900];
  *(v17 + 40) = 6;
  *(v17 + 48) = v20;
  *(v17 + 56) = 0;
  v21 = v15;
  v22 = v19;
  v23 = v20;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26UIFontDescriptorFeatureKeya_SitMd);
  swift_arrayDestroy();
  *(v16 + 32) = v24;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
  *(inited + 40) = v16;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v11 fontDescriptorByAddingAttributes_];

  v27 = [v10 fontWithDescriptor:v26 size:v2];
  return v27;
}

double specialized static MetricValueFont.capHeightToAscender(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for capHeightToAscenderCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MetricValueFont.capHeightToAscenderCache;
  if (*(static MetricValueFont.capHeightToAscenderCache + 2) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 8 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v15[0] = v1;
    v6 = specialized static MetricValueFont.uiFont(for:)(v15);
    [v6 capHeight];
    v8 = v7;
    [v6 lineHeight];
    v10 = v8 - v9;
    [v6 descender];
    v5 = v10 - v11;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = static MetricValueFont.capHeightToAscenderCache;
    static MetricValueFont.capHeightToAscenderCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, isUniquelyReferenced_nonNull_native, v5);
    static MetricValueFont.capHeightToAscenderCache = v14;
    swift_endAccess();
  }

  return v5;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<MetricValueFont>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName()
{
  result = lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName;
  if (!lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName)
  {
    type metadata accessor for UIFontDescriptorAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey()
{
  result = lazy protocol witness table cache variable for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey;
  if (!lazy protocol witness table cache variable for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutTintedButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutTintedButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WorkoutTintedButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for BorderedProminentButtonStyle();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGMd);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGAQyAA08AnyShapeG0VSgGGMd);
  MEMORY[0x28223BE20](v42);
  v43 = &v37 - v16;
  v45 = v2;

  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle();
  v17 = v41;
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v7, v17);
  (*(v9 + 8))(v11, v8);
  v18 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = static Font.headline.getter();
  v22 = swift_getKeyPath();
  v23 = &v15[*(v13 + 44)];
  *v23 = v22;
  v23[1] = v21;
  v24 = v2[2];
  v25 = Color.init(uiColor:)();
  v48 = *(v2 + 8);
  v26 = *v2;
  v47 = *v2;
  if (v48 == 1)
  {
    if (v26)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  static os_log_type_t.fault.getter();
  v27 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v28 = v38;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  outlined destroy of Environment<Bool>(&v47);
  (*(v39 + 8))(v28, v40);
  if ((v46 & 1) == 0)
  {
LABEL_5:
    v29 = Color.opacity(_:)();

    v25 = v29;
  }

LABEL_6:
  v30 = swift_getKeyPath();
  v46 = v25;
  v31 = AnyShapeStyle.init<A>(_:)();
  v32 = v43;
  outlined init with take of ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>(v15, v43, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGMd);
  v33 = (v32 + *(v42 + 36));
  *v33 = v30;
  v33[1] = v31;
  v46 = static Color.clear.getter();
  v34 = AnyView.init<A>(_:)();
  v35 = v44;
  outlined init with take of ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>(v32, v44, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGAQyAA08AnyShapeG0VSgGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGAQyAA08AnyShapeG0VSgGGAA06_TraitoP0VyAA017ListRowBackgrounduN0VGGMd);
  *(v35 + *(result + 36)) = v34;
  return result;
}

uint64_t closure #1 in WorkoutTintedButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle()
{
  result = lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle;
  if (!lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle)
  {
    type metadata accessor for BorderedProminentButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle);
  }

  return result;
}

uint64_t outlined destroy of Environment<Bool>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVySbGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGAQyAA08AnyShapeG0VSgGGAA06_TraitoP0VyAA017ListRowBackgrounduN0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGAQyAA08AnyShapeG0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19simultaneousGesture_9includingQrqd___AA0G4MaskVtAA0G0Rd__lFQOyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedG0VyAA016DelayedLongPressG0VGQo_AA01_op7WritingR0VyAA13AnyShapeStyleVSgGGMd);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.simultaneousGesture<A>(_:including:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<<<opaque return type of View.listRowInsets(_:_:)>>.0, AdjustedListRowSeparatorLeading>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type DistancePickerViewModel and conformance DistancePickerViewModel(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<<<opaque return type of View.listRowInsets(_:_:)>>.0, AdjustedListRowSeparatorLeading>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_ARGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AccessibilityTraits and conformance AccessibilityTraits(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, AdjustedListRowSeparatorLeading>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
    type metadata accessor for BorderedProminentButtonStyle();
    _s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
    _s7SwiftUI28BorderedProminentButtonStyleVAcA09PrimitiveeF0AAWlTm_1(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEy07WorkoutB005MediaE3RowVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type [WorkoutMediaSuggestion] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<MediaContentRow, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEy07WorkoutB005MediaE3RowVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_5(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [WorkoutMediaSuggestion] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StartWorkoutButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StartWorkoutButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t StartWorkoutButton.font.getter()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Platform.current.getter();
  v11 = Platform.rawValue.getter();
  if (v11 == Platform.rawValue.getter())
  {
    static Font.body.getter();
    static Font.Weight.medium.getter();
    v12 = Font.weight(_:)();

    return v12;
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CE0A68], v7);
    v14 = type metadata accessor for Font.Design();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    static Font.Weight.semibold.getter();
    static Font.system(_:design:weight:)();
    outlined destroy of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(v6, &_s7SwiftUI4FontV6DesignOSgMd);
    (*(v8 + 8))(v10, v7);
    (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
    v15 = Font.leading(_:)();

    (*(v1 + 8))(v3, v0);
    return v15;
  }
}

uint64_t StartWorkoutButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v131 = type metadata accessor for WorkoutDevice();
  v3 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for WorkoutDeviceType();
  v5 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v94 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BorderedProminentButtonStyle();
  v123 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v122 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for DelayedLongPressGesture();
  v115 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v109 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_EndedGestureVyAA016DelayedLongPressD0VGMd);
  v120 = *(v10 - 8);
  v121 = v10;
  MEMORY[0x28223BE20](v10);
  v117 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v92 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x28223BE20](v98);
  v99 = &v92 - v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19simultaneousGesture_9includingQrqd___AA0E4MaskVtAA0E0Rd__lFQOyAA15ModifiedContentVyAA6ButtonVyAJyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedE0VyAA016DelayedLongPressE0VGQo_Md);
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v92 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19simultaneousGesture_9includingQrqd___AA0G4MaskVtAA0G0Rd__lFQOyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedG0VyAA016DelayedLongPressG0VGQo_AA01_op7WritingR0VyAA13AnyShapeStyleVSgGGMd);
  MEMORY[0x28223BE20](v112);
  v113 = &v92 - v17;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAcAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyAGyAA0G0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeE0VSgGG_AA017BorderedProminentgE0VQo_Md);
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v108 = &v92 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v103);
  v111 = &v92 - v19;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGMd);
  MEMORY[0x28223BE20](v107);
  v110 = &v92 - v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v106);
  v104 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGG07WorkoutB017ZeroListRowInsetsVGMd);
  MEMORY[0x28223BE20](v22 - 8);
  v101 = &v92 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGG07WorkoutB017ZeroListRowInsetsVGA29_20HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  MEMORY[0x28223BE20](v24 - 8);
  v118 = &v92 - v25;
  v26 = v1[7];
  v140 = v1[6];
  v141 = v26;
  v142 = *(v1 + 16);
  v27 = v1[3];
  v136 = v1[2];
  v137 = v27;
  v28 = v1[5];
  v138 = v1[4];
  v139 = v28;
  v29 = v1[1];
  v134 = *v1;
  v135 = v29;
  v30 = swift_allocObject();
  v31 = v1[7];
  *(v30 + 112) = v1[6];
  *(v30 + 128) = v31;
  *(v30 + 144) = *(v1 + 16);
  v32 = v1[3];
  *(v30 + 48) = v1[2];
  *(v30 + 64) = v32;
  v33 = v1[5];
  *(v30 + 80) = v1[4];
  *(v30 + 96) = v33;
  v34 = v1[1];
  *(v30 + 16) = *v1;
  *(v30 + 32) = v34;
  v132 = &v134;
  outlined init with copy of StartWorkoutButton(&v134, v133);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v95 = v14;
  Button.init(action:label:)();
  type metadata accessor for WorkoutDevicesProvider();
  lazy protocol witness table accessor for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8]);
  v35 = StateObject.wrappedValue.getter();
  v36 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  v37 = *(v36 + 16);
  v124 = a1;
  if (v37)
  {
    v93 = v7;
    v133[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v38._rawValue = v133[0];
    v40 = *(v3 + 16);
    v39 = v3 + 16;
    v41 = *(v39 + 64);
    v92 = v36;
    v42 = v36 + ((v41 + 32) & ~v41);
    v126 = *(v39 + 56);
    v127 = v40;
    v128 = v39;
    v43 = (v39 - 8);
    v125 = v5 + 32;
    v44 = v5;
    v45 = v94;
    do
    {
      v46 = v130;
      v47 = v131;
      v127(v130, v42, v131);
      WorkoutDevice.type.getter();
      (*v43)(v46, v47);
      v133[0] = v38._rawValue;
      v49 = *(v38._rawValue + 2);
      v48 = *(v38._rawValue + 3);
      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1);
        v38._rawValue = v133[0];
      }

      *(v38._rawValue + 2) = v49 + 1;
      (*(v44 + 32))(v38._rawValue + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v49, v45, v129);
      v42 += v126;
      --v37;
    }

    while (v37);

    v7 = v93;
  }

  else
  {

    v38._rawValue = MEMORY[0x277D84F90];
  }

  v50 = WorkoutConfiguration.canStartWorkout(with:includeCurrentPlatform:)(v38, 1);

  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = !v50;
  v53 = v99;
  (*(v96 + 32))(v99, v95, v97);
  v54 = (v53 + *(v98 + 36));
  *v54 = KeyPath;
  v54[1] = partial apply for closure #1 in View.disabled(_:);
  v54[2] = v52;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v55 = v109;
  MEMORY[0x20F309A10](3.0, 10.0);
  v56 = swift_allocObject();
  v57 = v141;
  *(v56 + 112) = v140;
  *(v56 + 128) = v57;
  *(v56 + 144) = v142;
  v58 = v137;
  *(v56 + 48) = v136;
  *(v56 + 64) = v58;
  v59 = v139;
  *(v56 + 80) = v138;
  *(v56 + 96) = v59;
  v60 = v135;
  *(v56 + 16) = v134;
  *(v56 + 32) = v60;
  outlined init with copy of StartWorkoutButton(&v134, v133);
  lazy protocol witness table accessor for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider(&lazy protocol witness table cache variable for type DelayedLongPressGesture and conformance DelayedLongPressGesture, MEMORY[0x277CDE208]);
  v61 = v117;
  v62 = v119;
  Gesture.onEnded(_:)();

  (*(v115 + 8))(v55, v62);
  static GestureMask.all.getter();
  lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EndedGesture<DelayedLongPressGesture> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVyAA016DelayedLongPressD0VGMd);
  v63 = v100;
  v64 = v121;
  View.simultaneousGesture<A>(_:including:)();
  (*(v120 + 8))(v61, v64);
  outlined destroy of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(v53, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  WorkoutConfiguration.displayColor.getter();
  v65 = Color.init(uiColor:)();
  v66 = swift_getKeyPath();
  v133[0] = v65;
  v67 = AnyShapeStyle.init<A>(_:)();
  v68 = v113;
  (*(v102 + 32))(v113, v63, v105);
  v69 = (v68 + *(v112 + 36));
  *v69 = v66;
  v69[1] = v67;
  v70 = v122;
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.simultaneousGesture<A>(_:including:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
  v71 = v108;
  View.buttonStyle<A>(_:)();
  (*(v123 + 8))(v70, v7);
  sub_20C6750A8(v68);
  v72 = static Color.black.getter();
  v73 = swift_getKeyPath();
  v74 = v111;
  (*(v114 + 32))(v111, v71, v116);
  v75 = (v74 + *(v103 + 36));
  *v75 = v73;
  v75[1] = v72;
  v133[0] = static Color.clear.getter();
  v76 = AnyView.init<A>(_:)();
  v77 = v110;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v74, v110, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGMd);
  *(v77 + *(v107 + 36)) = v76;
  started = StartWorkoutButton.font.getter();
  v79 = swift_getKeyPath();
  v80 = v77;
  v81 = v104;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v80, v104, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGMd);
  v82 = (v81 + *(v106 + 36));
  *v82 = v79;
  v82[1] = started;
  v83 = v101;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v81, v101, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGGMd);
  v84 = v118;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v83, v118, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGG07WorkoutB017ZeroListRowInsetsVGMd);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGG07WorkoutB017ZeroListRowInsetsVGA29_20HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGA4_yAA11ControlSizeOGGMd);
  v86 = v124;
  v87 = (v124 + *(v85 + 36));
  v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
  v89 = *MEMORY[0x277CDF420];
  v90 = type metadata accessor for ControlSize();
  (*(*(v90 - 8) + 104))(v87 + v88, v89, v90);
  *v87 = swift_getKeyPath();
  return outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v84, v86, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGG07WorkoutB017ZeroListRowInsetsVGA29_20HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
}

void closure #1 in StartWorkoutButton.body.getter(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32[-v3];
  if (*(a1 + 32) == 1)
  {
    if (!*a1)
    {
      goto LABEL_31;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v36) = 0;

    static Published.subscript.setter();
    v5 = a1[2];
    if (!v5)
    {
      type metadata accessor for WorkoutConfigurationDataSource();
      v30 = &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
      v31 = MEMORY[0x277D7DC28];
      goto LABEL_33;
    }

    v6 = a1[7];
    v7 = v5;
    WorkoutConfigurationDataSource.add(workoutConfiguration:)();
  }

  else
  {
    v6 = a1[7];
  }

  v8 = v6;
  if ((WorkoutConfiguration.requiresDisambiguation.getter() & 1) == 0)
  {

    v10 = a1[15];
    if (v10)
    {
      v10();
    }

    v11 = *a1;
    if (*a1)
    {
      v36 = *(a1 + 5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo20NLWorkoutStartSourceVGMd);
      State.wrappedValue.getter();
      v12 = v34;
      swift_beginAccess();
      v13 = *(v11 + 16);
      v14 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

      if (v14)
      {
        v15 = 8;
      }

      else
      {
        v15 = v12;
      }

      v16 = *(v11 + 16);
      dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

      v17 = *(v11 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

      v17(v8, v15);

      goto LABEL_28;
    }

    goto LABEL_31;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {

    v36 = *(a1 + 4);
    v34 = *(a1 + 4);
    v37 = *(&v36 + 1);
    outlined init with copy of AnyLocation<Bool>?(&v37, &v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    v33 = v36;
    v32[15] = (v35 & 1) == 0;
    State.wrappedValue.setter();
    outlined destroy of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(&v36, &_s7SwiftUI5StateVySbGMd);
    return;
  }

  swift_getObjectType();
  *&v36 = v8;
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  dispatch thunk of ForcedDisambiguating.copyWithForcedDisambiguation(uuid:)();
  v19 = outlined destroy of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(v4, &_s10Foundation4UUIDVSgMd);
  v20 = v34;
  if (!v34)
  {

    return;
  }

  v21 = a1[15];
  if (v21)
  {
    v21(v19);
  }

  v22 = *a1;
  if (!*a1)
  {
LABEL_31:
    type metadata accessor for ConfigurationNavigationModel();
    v30 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
    v31 = type metadata accessor for ConfigurationNavigationModel;
LABEL_33:
    lazy protocol witness table accessor for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider(v30, v31);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  v36 = *(a1 + 5);

  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo20NLWorkoutStartSourceVGMd);
  State.wrappedValue.getter();
  v24 = v34;
  swift_beginAccess();
  v25 = *(v22 + 16);
  v26 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

  if (v26)
  {
    v27 = 8;
  }

  else
  {
    v27 = v24;
  }

  v28 = *(v22 + 16);
  dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

  v29 = *(v22 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

  v29(v23, v27);

LABEL_28:
}

__n128 closure #2 in StartWorkoutButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + 40);
  lazy protocol witness table accessor for type String and conformance String();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *(a2 + 128) = v17;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  result = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  return result;
}

void closure #3 in StartWorkoutButton.body.getter(uint64_t a1, void *a2)
{
  if (one-time initialization token for shared != -1)
  {
    v10 = a2;
    swift_once();
    a2 = v10;
  }

  if (*(static DataLinkMonitor.shared + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_mirroredStartOnLongPressGestureEnabled) == 1)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[7];
      swift_beginAccess();
      v4 = *(v2 + 16);

      v5 = v4;
      v6 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

      if (v6)
      {
        v7 = 8;
      }

      else
      {
        v7 = 19;
      }

      v8 = *(v2 + 16);
      dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

      v9 = *(v2 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

      v9(v3, v7);
    }

    else
    {
      type metadata accessor for ConfigurationNavigationModel();
      lazy protocol witness table accessor for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

void outlined consume of StateObject<WorkoutDevicesProvider>.Storage(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  outlined consume of StateObject<WorkoutDevicesProvider>.Storage(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.simultaneousGesture<A>(_:including:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.simultaneousGesture<A>(_:including:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.simultaneousGesture<A>(_:including:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19simultaneousGesture_9includingQrqd___AA0G4MaskVtAA0G0Rd__lFQOyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedG0VyAA016DelayedLongPressG0VGQo_AA01_op7WritingR0VyAA13AnyShapeStyleVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_EndedGestureVyAA016DelayedLongPressD0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EndedGesture<DelayedLongPressGesture> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVyAA016DelayedLongPressD0VGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.simultaneousGesture<A>(_:including:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AnyLocation<Bool>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11AnyLocationCySbGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGG07WorkoutB017ZeroListRowInsetsVGA29_20HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGA4_yAA11ControlSizeOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGG07WorkoutB017ZeroListRowInsetsVGA29_20HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HideListRowSeparator and conformance HideListRowSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGG07WorkoutB017ZeroListRowInsetsVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZeroListRowInsets and conformance ZeroListRowInsets();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGA4_yAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE19simultaneousGesture_9includingQrqd___AA0K4MaskVtAA0K0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedK0VyAA016DelayedLongPressK0VGQo_AA01_rs7WritingU0VyAA08AnyShapeG0VSgGG_AA017BorderedProminentiG0VQo_A4_yAA5ColorVSgGGAA06_TraitzU0VyAA022ListRowBackgroundTraitS0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ZeroListRowInsets and conformance ZeroListRowInsets()
{
  result = lazy protocol witness table cache variable for type ZeroListRowInsets and conformance ZeroListRowInsets;
  if (!lazy protocol witness table cache variable for type ZeroListRowInsets and conformance ZeroListRowInsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZeroListRowInsets and conformance ZeroListRowInsets);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HideListRowSeparator and conformance HideListRowSeparator()
{
  result = lazy protocol witness table cache variable for type HideListRowSeparator and conformance HideListRowSeparator;
  if (!lazy protocol witness table cache variable for type HideListRowSeparator and conformance HideListRowSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HideListRowSeparator and conformance HideListRowSeparator);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized DeviceConnectionMenuViewModel.init(devices:style:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v106 = 0xD000000000000012;
  v5 = type metadata accessor for WorkoutDevice();
  v6 = *(v5 - 8);
  v108 = v5;
  v109 = v6;
  MEMORY[0x28223BE20](v5);
  v92 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for WorkoutDeviceType();
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v91 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A10DeviceTypeOSg_ADtMd);
  MEMORY[0x28223BE20](v9);
  v98 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A10DeviceTypeOSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v89 - v16;
  MEMORY[0x28223BE20](v15);
  v105 = &v89 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A6DeviceVSgMd);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v95 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v94 = &v89 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v89 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v89 - v28;
  MEMORY[0x28223BE20](v27);
  v111 = &v89 - v30;
  v110 = *(a1 + 16);
  v93 = v14;
  if (!v110)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v39 = WorkoutUIBundle.super.isa;
    v116._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0xD000000000000017;
    v40._object = 0x800000020CB93730;
    v41.value._object = 0x800000020CB936F0;
    v41.value._countAndFlagsBits = 0xD000000000000012;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v116._countAndFlagsBits = 0;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v116);
    countAndFlagsBits = v43._countAndFlagsBits;
    object = v43._object;

    v36 = "Localizable-Kahana";
    v106 = 0xD000000000000018;
    goto LABEL_10;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = WorkoutUIBundle.super.isa;
  v115._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000014;
  v32._object = 0x800000020CB936D0;
  v33.value._object = 0x800000020CB936F0;
  v33.value._countAndFlagsBits = 0xD000000000000012;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v115._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v115);
  countAndFlagsBits = v35._countAndFlagsBits;
  object = v35._object;

  v36 = "externalSessionActive";
  if (v110 != 1)
  {
LABEL_10:
    v38 = 1;
    v37 = v108;
LABEL_11:
    v102 = v36 | 0x8000000000000000;

    v44 = v109;
    v45 = v111;
    (*(v109 + 56))(v111, v38, 1, v37);
    outlined init with copy of WorkoutDevice?(v45, v29, &_s11WorkoutCore0A6DeviceVSgMd);
    v104 = *(v44 + 48);
    if (v104(v29, 1, v37) == 1)
    {
      outlined destroy of WorkoutDevice?(v29, &_s11WorkoutCore0A6DeviceVSgMd);
      v100 = 0;
      v101 = 0;
    }

    else
    {
      v46 = WorkoutDevice.systemImage.getter();
      v100 = v47;
      v101 = v46;
      (*(v44 + 8))(v29, v37);
    }

    v48 = v105;
    v49 = 0;
    v50 = v107;
    if ((v107 & 1) != 0 || !v110)
    {
LABEL_28:
      if (v50)
      {
        v63 = v102;
        if (v110)
        {
          v64 = v95;
          goto LABEL_31;
        }

        outlined destroy of WorkoutDevice?(v111, &_s11WorkoutCore0A6DeviceVSgMd);

        v87 = v106;
        v73 = v106;
        v74 = v63;
        v82 = v100;
        v81 = v101;
        v78 = object;
LABEL_43:
        v75 = countAndFlagsBits;
LABEL_44:
        *a3 = v87;
        *(a3 + 8) = v63;
        *(a3 + 16) = v49 & 1;
        *(a3 + 24) = v81;
        *(a3 + 32) = v82;
        *(a3 + 40) = v73;
        *(a3 + 48) = v74;
        *(a3 + 56) = v110;
        *(a3 + 64) = v75;
        *(a3 + 72) = v78;
        return;
      }

      v63 = v102;
      if ((v49 & 1) == 0)
      {

        v49 = 0;
        v82 = v100;
        v81 = v101;
        v78 = object;
LABEL_41:
        outlined destroy of WorkoutDevice?(v111, &_s11WorkoutCore0A6DeviceVSgMd);
        v87 = v106;
        v73 = v106;
        v74 = v63;
        goto LABEL_43;
      }

LABEL_34:

      v79 = v94;
      outlined init with copy of WorkoutDevice?(v111, v94, &_s11WorkoutCore0A6DeviceVSgMd);
      if (v104(v79, 1, v37) == 1)
      {
        outlined destroy of WorkoutDevice?(v79, &_s11WorkoutCore0A6DeviceVSgMd);
        v113 = v110;
        countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v80;
      }

      else
      {
        countAndFlagsBits = WorkoutDevice.name.getter();
        v78 = v88;
        (*(v44 + 8))(v79, v37);
      }

      v49 = 1;
      v82 = v100;
      v81 = v101;
      goto LABEL_41;
    }

    outlined init with copy of WorkoutDevice?(v111, v26, &_s11WorkoutCore0A6DeviceVSgMd);
    if (v104(v26, 1, v37) == 1)
    {
      outlined destroy of WorkoutDevice?(v26, &_s11WorkoutCore0A6DeviceVSgMd);
      v51 = 1;
    }

    else
    {
      WorkoutDevice.type.getter();
      (*(v44 + 8))(v26, v37);
      v51 = 0;
    }

    v52 = v9;
    v53 = v97;
    v54 = *(v97 + 56);
    v55 = v96;
    v54(v48, v51, 1, v96);
    (*(v53 + 104))(v17, *MEMORY[0x277D7D9C0], v55);
    v54(v17, 0, 1, v55);
    v56 = *(v52 + 48);
    v57 = v98;
    outlined init with copy of WorkoutDevice?(v48, v98, &_s11WorkoutCore0A10DeviceTypeOSgMd);
    v58 = v57;
    outlined init with copy of WorkoutDevice?(v17, v57 + v56, &_s11WorkoutCore0A10DeviceTypeOSgMd);
    v59 = *(v53 + 48);
    if (v59(v58, 1, v55) == 1)
    {
      outlined destroy of WorkoutDevice?(v17, &_s11WorkoutCore0A10DeviceTypeOSgMd);
      v60 = v98;
      outlined destroy of WorkoutDevice?(v48, &_s11WorkoutCore0A10DeviceTypeOSgMd);
      v61 = v59(v60 + v56, 1, v55);
      v37 = v108;
      if (v61 == 1)
      {
        outlined destroy of WorkoutDevice?(v60, &_s11WorkoutCore0A10DeviceTypeOSgMd);
        v49 = 0;
LABEL_27:
        v44 = v109;
        v50 = v107;
        goto LABEL_28;
      }
    }

    else
    {
      v90 = v17;
      v62 = v93;
      outlined init with copy of WorkoutDevice?(v58, v93, &_s11WorkoutCore0A10DeviceTypeOSgMd);
      if (v59(v58 + v56, 1, v55) != 1)
      {
        v65 = v97;
        v66 = v58 + v56;
        v67 = v91;
        (*(v97 + 32))(v91, v66, v55);
        lazy protocol witness table accessor for type WorkoutDeviceType and conformance WorkoutDeviceType();
        v68 = v58;
        v69 = dispatch thunk of static Equatable.== infix(_:_:)();
        v70 = *(v65 + 8);
        v70(v67, v55);
        outlined destroy of WorkoutDevice?(v90, &_s11WorkoutCore0A10DeviceTypeOSgMd);
        outlined destroy of WorkoutDevice?(v105, &_s11WorkoutCore0A10DeviceTypeOSgMd);
        v70(v62, v55);
        outlined destroy of WorkoutDevice?(v68, &_s11WorkoutCore0A10DeviceTypeOSgMd);
        v49 = v69 ^ 1;
        v37 = v108;
        goto LABEL_27;
      }

      outlined destroy of WorkoutDevice?(v90, &_s11WorkoutCore0A10DeviceTypeOSgMd);
      v60 = v98;
      outlined destroy of WorkoutDevice?(v105, &_s11WorkoutCore0A10DeviceTypeOSgMd);
      (*(v97 + 8))(v62, v55);
      v37 = v108;
    }

    outlined destroy of WorkoutDevice?(v60, &_s11WorkoutCore0A10DeviceTypeOSg_ADtMd);
    v44 = v109;
    v63 = v102;
    v64 = v95;
    if (v107)
    {
      v49 = 1;
LABEL_31:

      outlined init with copy of WorkoutDevice?(v111, v64, &_s11WorkoutCore0A6DeviceVSgMd);
      if (v104(v64, 1, v37) == 1)
      {
        v71 = v110;
        outlined destroy of WorkoutDevice?(v64, &_s11WorkoutCore0A6DeviceVSgMd);
        v112 = v71;
        v113 = dispatch thunk of CustomStringConvertible.description.getter();
        v114 = v72;
        MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
        v73 = v113;
        v74 = v114;
        v75 = Int.localizedString.getter();
        v76 = v111;
        v78 = v77;
      }

      else
      {
        v83 = v92;
        (*(v44 + 32))(v92, v64, v37);
        v84 = v44;
        v73 = WorkoutDevice.systemImage.getter();
        v74 = v85;
        v75 = WorkoutDevice.name.getter();
        v78 = v86;
        (*(v84 + 8))(v83, v37);
        v76 = v111;
      }

      outlined destroy of WorkoutDevice?(v76, &_s11WorkoutCore0A6DeviceVSgMd);
      v87 = v106;
      v82 = v100;
      v81 = v101;
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  v37 = v108;
  if (*(a1 + 16))
  {
    (*(v109 + 16))(v111, a1 + ((*(v109 + 80) + 32) & ~*(v109 + 80)), v108);
    v38 = 0;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t outlined init with copy of WorkoutDevice?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of WorkoutDevice?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WorkoutDeviceType and conformance WorkoutDeviceType()
{
  result = lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType;
  if (!lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType)
  {
    type metadata accessor for WorkoutDeviceType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceConnectionMenuViewModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for DeviceConnectionMenuViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceConnectionMenu(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceConnectionMenu(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DeviceConnectionMenu.Style()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DeviceConnectionMenu.Style()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t DeviceConnectionMenu.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedE0VyAA06_ShapeH0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB0016DeviceConnectionC5BadgeVSgGG_AKyAA5ImageVAA016_ForegroundStyleN0VyAA5ColorVGGtGGA0_GAIyAEyAKyAA7SectionVyAA4TextVA13_AA05EmptyH0VGAA023AccessibilityAttachmentN0VGAKyA11_yA13_AA7ForEachVySay0O4Core0oP0VGSSAKyAKyAA5LabelVyA13_A0_GA2_yAA012HierarchicaljU0VGGA18_GGA15_GA18_GG_AA6ButtonVyA13_GA11_yA15_AIyAEyAKyA40_A18_GA41_G_A42_A42_A42_tGA15_GSgSgtGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4MenuVyAA012_ConditionalD0VyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeI0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB0016DeviceConnectionE5BadgeVSgGG_ACyAA5ImageVAA016_ForegroundStyleN0VyAA5ColorVGGtGGA0_GAKyAGyACyAA7SectionVyAA4TextVA13_AA05EmptyI0VGAA023AccessibilityAttachmentN0VGACyA11_yA13_AA7ForEachVySay0O4Core0oP0VGSSACyACyAA5LabelVyA13_A0_GA2_yAA012HierarchicaljU0VGGA18_GGA15_GA18_GG_AA6ButtonVyA13_GA11_yA15_AKyAGyACyA40_A18_GA41_G_A42_A42_A42_tGA15_GSgSgtGGA18_GMd);
  v7 = MEMORY[0x28223BE20](v22);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  type metadata accessor for WorkoutDevicesProvider();
  _s11WorkoutCore0A15DevicesProviderCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8]);
  v12 = StateObject.wrappedValue.getter();
  v13 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  specialized DeviceConnectionMenuViewModel.init(devices:style:)(v13, *v2, v28);
  v26 = v2;
  v24 = v2;
  v25 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA06_ShapeG0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AIyAA5ImageVAA016_ForegroundStyleM0VyAA5ColorVGGtGGAZGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA7SectionVyAA4TextVAkA05EmptyD0VGAA31AccessibilityAttachmentModifierVGAGyAIyAkA7ForEachVySay11WorkoutCore0P6DeviceVGSSAGyAGyAA5LabelVyAkA5ImageVGAA016_ForegroundStyleM0VyAA017HierarchicalShapeV0VGGAPGGAMGAPGG_AA6ButtonVyAKGAIyAmCyAEyAGyA14_APGA15_G_A16_A16_A16_tGAMGSgSgtGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, Acces, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA7SectionVyAA4TextVAkA05EmptyD0VGAA31AccessibilityAttachmentModifierVGAGyAIyAkA7ForEachVySay11WorkoutCore0P6DeviceVGSSAGyAGyAA5LabelVyAkA5ImageVGAA016_ForegroundStyleM0VyAA017HierarchicalShapeV0VGGAPGGAMGAPGG_AA6ButtonVyAKGAIyAmCyAEyAGyA14_APGA15_G_A16_A16_A16_tGAMGSgSgtGMd);
  Menu.init(content:label:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = WorkoutUIBundle.super.isa;
  v31._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000015;
  v15._object = 0x800000020CB93750;
  v16.value._object = 0x800000020CB936F0;
  v16.value._countAndFlagsBits = 0xD000000000000012;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v31);

  v30 = v18;
  lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityA, &_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedE0VyAA06_ShapeH0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB0016DeviceConnectionC5BadgeVSgGG_AKyAA5ImageVAA016_ForegroundStyleN0VyAA5ColorVGGtGGA0_GAIyAEyAKyAA7SectionVyAA4TextVA13_AA05EmptyH0VGAA023AccessibilityAttachmentN0VGAKyA11_yA13_AA7ForEachVySay0O4Core0oP0VGSSAKyAKyAA5LabelVyA13_A0_GA2_yAA012HierarchicaljU0VGGA18_GGA15_GA18_GG_AA6ButtonVyA13_GA11_yA15_AIyAEyAKyA40_A18_GA41_G_A42_A42_A42_tGA15_GSgSgtGGMd);
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  (*(v4 + 8))(v6, v3);
  v30 = v29;
  v27 = v29;

  ModifiedContent<>.accessibilityValue<A>(_:)();
  outlined destroy of DeviceConnectionMenuViewModel(v28);
  outlined destroy of String(&v30);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v9, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA012_ConditionalD0VyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeI0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB0016DeviceConnectionE5BadgeVSgGG_ACyAA5ImageVAA016_ForegroundStyleN0VyAA5ColorVGGtGGA0_GAKyAGyACyAA7SectionVyAA4TextVA13_AA05EmptyI0VGAA023AccessibilityAttachmentN0VGACyA11_yA13_AA7ForEachVySay0O4Core0oP0VGSSACyACyAA5LabelVyA13_A0_GA2_yAA012HierarchicaljU0VGGA18_GGA15_GA18_GG_AA6ButtonVyA13_GA11_yA15_AKyAGyACyA40_A18_GA41_G_A42_A42_A42_tGA15_GSgSgtGGA18_GMd);
  if (one-time initialization token for workoutDevices != -1)
  {
    swift_once();
  }

  v19 = v23;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v11, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA012_ConditionalD0VyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeI0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB0016DeviceConnectionE5BadgeVSgGG_ACyAA5ImageVAA016_ForegroundStyleN0VyAA5ColorVGGtGGA0_GAKyAGyACyAA7SectionVyAA4TextVA13_AA05EmptyI0VGAA023AccessibilityAttachmentN0VGACyA11_yA13_AA7ForEachVySay0O4Core0oP0VGSSACyACyAA5LabelVyA13_A0_GA2_yAA012HierarchicaljU0VGGA18_GGA15_GA18_GG_AA6ButtonVyA13_GA11_yA15_AKyAGyACyA40_A18_GA41_G_A42_A42_A42_tGA15_GSgSgtGGA18_GMd);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4MenuVyAA012_ConditionalD0VyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeI0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB0016DeviceConnectionE5BadgeVSgGG_ACyAA5ImageVAA016_ForegroundStyleN0VyAA5ColorVGGtGGA0_GAKyAGyACyAA7SectionVyAA4TextVA13_AA05EmptyI0VGAA023AccessibilityAttachmentN0VGACyA11_yA13_AA7ForEachVySay0O4Core0oP0VGSSACyACyAA5LabelVyA13_A0_GA2_yAA012HierarchicaljU0VGGA18_GGA15_GA18_GG_AA6ButtonVyA13_GA11_yA15_AKyAGyACyA40_A18_GA41_G_A42_A42_A42_tGA15_GSgSgtGGA18_GAA01_dj4KindN0VyAOGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  result = static ContentShapeKinds.accessibility.getter();
  *v20 = 0;
  return result;
}

uint64_t closure #1 in DeviceConnectionMenu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA19_ConditionalContentVyAA08ModifiedH0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGASG_A3TtGAEGSgMd);
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA19_ConditionalContentVyAA08ModifiedH0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGASG_A3TtGAEGSgSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v95 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v92 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v93 = *(v11 - 8);
  v94 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v91 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v75 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore0G6DeviceVGSSAA15ModifiedContentVyAMyAA5LabelVyAeA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGAA023AccessibilityAttachmentP0VGGAA9EmptyViewVGMd);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v16 = &v75 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore0I6DeviceVGSSACyACyAA5LabelVyAgA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGAA023AccessibilityAttachmentP0VGGAA9EmptyViewVGAZGMd);
  MEMORY[0x28223BE20](v87);
  v18 = &v75 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA7SectionVyAA4TextVAkA9EmptyViewVGAA31AccessibilityAttachmentModifierVGAGyAIyAkA7ForEachVySay11WorkoutCore0P6DeviceVGSSAGyAGyAA5LabelVyAkA5ImageVGAA016_ForegroundStyleM0VyAA017HierarchicalShapeV0VGGAPGGAMGAPG_GMd);
  MEMORY[0x28223BE20](v85);
  v20 = &v75 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAeA9EmptyViewVGMd);
  v75 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAgA9EmptyViewVGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v86);
  v25 = &v75 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA7SectionVyAA4TextVAiA9EmptyViewVGAA31AccessibilityAttachmentModifierVGAEyAGyAiA7ForEachVySay11WorkoutCore0O6DeviceVGSSAEyAEyAA5LabelVyAiA5ImageVGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGGANGGAKGANGGMd);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v97 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v99 = &v75 - v29;
  v31 = *(a1 + 8);
  v30 = *(a1 + 16);
  v88 = a1;
  LODWORD(a1) = *(a1 + 24);
  v32 = type metadata accessor for WorkoutDevicesProvider();
  v33 = _s11WorkoutCore0A15DevicesProviderCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8]);
  v80 = v31;
  v79 = v30;
  v76 = a1;
  v78 = v32;
  v77 = v33;
  v34 = StateObject.wrappedValue.getter();
  v35 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  v36 = *(v35 + 16);

  if (v36)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v37 = WorkoutUIBundle.super.isa;
    v38._countAndFlagsBits = 0xD000000000000011;
    v102._object = 0xE000000000000000;
    v38._object = 0x800000020CB93770;
    v39.value._object = 0x800000020CB936F0;
    v39.value._countAndFlagsBits = 0xD000000000000012;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v102._countAndFlagsBits = 0;
    v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v102);

    v101 = v41;
    MEMORY[0x28223BE20](v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E6DeviceVGSSAA15ModifiedContentVyAIyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA023AccessibilityAttachmentO0VGGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type String and conformance String();
    Section<>.init<A>(_:content:)();
    if (one-time initialization token for connectedDevices != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView> and conformance <> Section<A, B, C>();
    v43 = v84;
    View.accessibilityIdentifier(_:)();
    (*(v83 + 8))(v16, v43);
    outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v18, v20, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore0I6DeviceVGSSACyACyAA5LabelVyAgA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGAA023AccessibilityAttachmentP0VGGAA9EmptyViewVGAZGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAgA9EmptyViewVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAgA9EmptyViewVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type Section<Text, Text, EmptyView> and conformance <> Section<A, B, C>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore0I6DeviceVGSSACyACyAA5LabelVyAgA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGAA023AccessibilityAttachmentP0VGGAA9EmptyViewVGAZGMd, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore0I6DeviceVGSSACyACyAA5LabelVyAgA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGAA023AccessibilityAttachmentP0VGGAA9EmptyViewVGAZGMR, lazy protocol witness table accessor for type Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView> and conformance <> Section<A, B, C>);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v18, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore0I6DeviceVGSSACyACyAA5LabelVyAgA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGAA023AccessibilityAttachmentP0VGGAA9EmptyViewVGAZGMd);
  }

  else
  {
    v44 = v75;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v45 = WorkoutUIBundle.super.isa;
    v46._countAndFlagsBits = 0xD000000000000011;
    v103._object = 0xE000000000000000;
    v46._object = 0x800000020CB93770;
    v47.value._object = 0x800000020CB936F0;
    v47.value._countAndFlagsBits = 0xD000000000000012;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v103._countAndFlagsBits = 0;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v103);

    v101 = v49;
    lazy protocol witness table accessor for type String and conformance String();
    Section<>.init<A>(_:content:)();
    if (one-time initialization token for noConnectedDevices != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type Section<Text, Text, EmptyView> and conformance <> Section<A, B, C>();
    View.accessibilityIdentifier(_:)();
    (*(v44 + 8))(v23, v21);
    outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v25, v20, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAgA9EmptyViewVGAA31AccessibilityAttachmentModifierVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAgA9EmptyViewVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAgA9EmptyViewVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type Section<Text, Text, EmptyView> and conformance <> Section<A, B, C>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore0I6DeviceVGSSACyACyAA5LabelVyAgA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGAA023AccessibilityAttachmentP0VGGAA9EmptyViewVGAZGMd, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore0I6DeviceVGSSACyACyAA5LabelVyAgA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGAA023AccessibilityAttachmentP0VGGAA9EmptyViewVGAZGMR, lazy protocol witness table accessor for type Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView> and conformance <> Section<A, B, C>);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v25, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAgA9EmptyViewVGAA31AccessibilityAttachmentModifierVGMd);
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v50 = WorkoutUIBundle.super.isa;
  v104._object = 0xE000000000000000;
  v51._object = 0x800000020CB93790;
  v52.value._object = 0x800000020CB936F0;
  v51._countAndFlagsBits = 0xD000000000000012;
  v52.value._countAndFlagsBits = 0xD000000000000012;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v104._countAndFlagsBits = 0;
  v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v104);

  v100 = v54;
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  AppStorage.wrappedValue.getter();
  if (LOBYTE(v100._countAndFlagsBits) == 1)
  {
    v55 = StateObject.wrappedValue.getter();
    v56 = dispatch thunk of WorkoutDevicesProvider.tester.getter();

    if (v56)
    {
      MEMORY[0x28223BE20](v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAOG_A3PtGMd);
      lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAOG_A3PtGMd);
      v58 = v82;
      Section<>.init(content:)();

      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v82;
    }

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA19_ConditionalContentVyAA08ModifiedH0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGASG_A3TtGAEGMd);
    (*(*(v62 - 8) + 56))(v58, v59, 1, v62);
    v63 = v81;
    outlined init with take of Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>)>, EmptyView>?(v58, v81);
    v61 = v92;
    outlined init with take of Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>)>, EmptyView>?(v63, v92);
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v61 = v92;
  }

  (*(v89 + 56))(v61, v60, 1, v90);
  v64 = v97;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v99, v97, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA7SectionVyAA4TextVAiA9EmptyViewVGAA31AccessibilityAttachmentModifierVGAEyAGyAiA7ForEachVySay11WorkoutCore0O6DeviceVGSSAEyAEyAA5LabelVyAiA5ImageVGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGGANGGAKGANGGMd);
  v65 = v93;
  v66 = v94;
  v67 = *(v93 + 16);
  v68 = v91;
  v69 = v98;
  v67(v91, v98, v94);
  v70 = v95;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v61, v95, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA19_ConditionalContentVyAA08ModifiedH0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGASG_A3TtGAEGSgSgMd);
  v71 = v96;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v64, v96, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA7SectionVyAA4TextVAiA9EmptyViewVGAA31AccessibilityAttachmentModifierVGAEyAGyAiA7ForEachVySay11WorkoutCore0O6DeviceVGSSAEyAEyAA5LabelVyAiA5ImageVGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGGANGGAKGANGGMd);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA7SectionVyAA4TextVAiA9EmptyViewVGAA31AccessibilityAttachmentModifierVGAEyAGyAiA7ForEachVySay11WorkoutCore0O6DeviceVGSSAEyAEyAA5LabelVyAiA5ImageVGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGGANGGAKGANGG_AA6ButtonVyAIGAGyAkA05TupleI0VyACyAEyA12_ANGA15_G_A16_A16_A16_tGAKGSgSgtMd);
  v67((v71 + *(v72 + 48)), v68, v66);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v70, v71 + *(v72 + 64), &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA19_ConditionalContentVyAA08ModifiedH0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGASG_A3TtGAEGSgSgMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v61, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA19_ConditionalContentVyAA08ModifiedH0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGASG_A3TtGAEGSgSgMd);
  v73 = *(v65 + 8);
  v73(v69, v66);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v99, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA7SectionVyAA4TextVAiA9EmptyViewVGAA31AccessibilityAttachmentModifierVGAEyAGyAiA7ForEachVySay11WorkoutCore0O6DeviceVGSSAEyAEyAA5LabelVyAiA5ImageVGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGGANGGAKGANGGMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v70, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA19_ConditionalContentVyAA08ModifiedH0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGASG_A3TtGAEGSgSgMd);
  v73(v68, v66);
  return outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v97, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA7SectionVyAA4TextVAiA9EmptyViewVGAA31AccessibilityAttachmentModifierVGAEyAGyAiA7ForEachVySay11WorkoutCore0O6DeviceVGSSAEyAEyAA5LabelVyAiA5ImageVGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGGANGGAKGANGGMd);
}

uint64_t closure #1 in closure #1 in DeviceConnectionMenu.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x800000020CB937B0;
  v4.value._object = 0x800000020CB936F0;
  v4.value._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #2 in closure #1 in DeviceConnectionMenu.body.getter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for WorkoutDevicesProvider();
  _s11WorkoutCore0A15DevicesProviderCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8]);
  v5 = StateObject.wrappedValue.getter();
  v6 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  outlined copy of StateObject<WorkoutDevicesProvider>.Storage(v2, v3, v4);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(&v13, v11, &_s7SwiftUI10AppStorageVySbGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA023AccessibilityAttachmentJ0VGMd);
  lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type [WorkoutDevice] and conformance [A], &_sSay11WorkoutCore0A6DeviceVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA023AccessibilityAttachmentJ0VGMR, lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  _s11WorkoutCore0A15DevicesProviderCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutDevice and conformance WorkoutDevice, MEMORY[0x277D7DD78]);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #2 in closure #1 in DeviceConnectionMenu.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v6[-v3];
  v8 = a1;
  v7 = a1;
  Label.init(title:icon:)();
  *&v4[*(v2 + 36)] = static HierarchicalShapeStyle.secondary.getter();
  specialized DeviceConnectionMenu.accessibilityIdentifier(for:)();
  lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();

  View.accessibilityIdentifier(_:)();

  return outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v4, &_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGMd);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in DeviceConnectionMenu.body.getter@<X0>(uint64_t a1@<X8>)
{
  WorkoutDevice.name.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #2 in DeviceConnectionMenu.body.getter(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA06_ShapeH0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AKyAA5ImageVAA016_ForegroundStyleN0VyAA5ColorVGGtGGA0__GMd);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AGyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGtGGMd);
  MEMORY[0x28223BE20](v7);
  v9 = (&v13 - v8);
  if (*a1)
  {

    *v6 = Image.init(_internalSystemName:)();
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AGyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGtGGMd);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v9 = static Alignment.center.getter();
    v9[1] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AKyAA5ImageVAA016_ForegroundStyleO0VyAA5ColorVGGtGGMd);
    closure #1 in closure #2 in DeviceConnectionMenu.body.getter(a2, v9 + *(v12 + 44));
    outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v9, v6, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AGyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AGyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGtGGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v9, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AGyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGtGGMd);
  }
}

uint64_t closure #1 in closure #2 in DeviceConnectionMenu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGGMd);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  static Material.regular.getter();
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd) + 56)] = 256;
  v10 = static Alignment.bottomTrailing.getter();
  v12 = v11;
  if (*(a1 + 16))
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    v37 = v10;
    v15 = objc_opt_self();

    v16 = objc_opt_self();
    v17 = a2;
    v18 = [v16 mainScreen];
    [v18 scale];
    v20 = v19;

    a2 = v17;
    v21 = [v16 mainScreen];
    [v21 nativeScale];
    v23 = v22;

    if (v20 == v23)
    {
      v24 = 37.0;
    }

    else
    {
      v24 = 28.0;
    }

    v25 = *(a1 + 56);
    v26 = static Font.footnote.getter();
    v10 = v37;
    v27 = 0x4000000000000000;
    v28 = 0x4018000000000000;
  }

  else
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
    v13 = 0;
    v14 = 0;
    v25 = 0;
    v24 = 0.0;
  }

  *&v39 = v28;
  *(&v39 + 1) = v24;
  *&v40 = v26;
  *(&v40 + 1) = v27;
  *&v41 = v13;
  *(&v41 + 1) = v14;
  *&v42 = v25;
  *(&v42 + 1) = v10;
  v43 = v12;
  v44[0] = v28;
  v29 = &v9[*(v4 + 36)];
  v30 = v42;
  *(v29 + 2) = v41;
  *(v29 + 3) = v30;
  *(v29 + 8) = v12;
  v31 = v40;
  *v29 = v39;
  *(v29 + 1) = v31;
  *&v44[1] = v24;
  v44[2] = v26;
  v44[3] = v27;
  v44[4] = v13;
  v44[5] = v14;
  v44[6] = v25;
  v44[7] = v10;
  v44[8] = v12;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(&v39, v38, &_s7SwiftUI16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v44, &_s7SwiftUI16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGMd);

  v32 = Image.init(_internalSystemName:)();
  v33 = static Color.white.getter();
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v9, v7, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGGMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v7, a2, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGGMd);
  v34 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_ACyAA5ImageVAA016_ForegroundStyleJ0VyAA5ColorVGGtMd) + 48));
  *v34 = v32;
  v34[1] = v33;

  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v9, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGGMd);

  return outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v7, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGGMd);
}

uint64_t closure #1 in DeviceConnectionMenu.testDeviceConnectionButtons()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v92 = a3;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAO_GMd);
  MEMORY[0x28223BE20](v112);
  v111 = v87 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v113 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = v87 - v5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v109);
  v108 = v87 - v6;
  v7 = type metadata accessor for WorkoutDevice();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v114 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v94 = v87 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v87 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v87 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v91 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v90 = v87 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v89 = v87 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v95 = v87 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v88 = v87 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v96 = v87 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v97 = v87 - v34;
  MEMORY[0x28223BE20](v33);
  v101 = v87 - v35;
  v36 = *(a1 + 8);
  v37 = *(a1 + 16);
  LODWORD(a1) = *(a1 + 24);
  v38 = type metadata accessor for WorkoutDevicesProvider();
  v39 = _s11WorkoutCore0A15DevicesProviderCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8]);
  v105 = v37;
  v106 = v36;
  v104 = a1;
  v102 = v39;
  v103 = v38;
  v40 = StateObject.wrappedValue.getter();
  v41 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  v42 = 0;
  v43 = *(v41 + 16);
  v115 = v8 + 16;
  do
  {
    if (v43 == v42)
    {
      break;
    }

    if (v42 >= *(v41 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    (*(v8 + 16))(v19, v41 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v42++, v7);
    WorkoutDevicesProviderTester.testWatch.getter();
    v44 = MEMORY[0x20F304A00](v19, v17);
    v45 = *(v8 + 8);
    v45(v17, v7);
    v45(v19, v7);
  }

  while ((v44 & 1) == 0);

  LocalizedStringKey.init(stringLiteral:)();

  v42 = v107;
  Button<>.init(_:action:)();
  if (one-time initialization token for testWatch == -1)
  {
    goto LABEL_6;
  }

LABEL_29:
  swift_once();
LABEL_6:
  v46 = lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  v47 = v108;
  v48 = v110;
  v100 = v46;
  View.accessibilityIdentifier(_:)();
  v49 = *(v113 + 8);
  v113 += 8;
  v99 = v49;
  v49(v42, v48);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v47, v111, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  swift_storeEnumTagMultiPayload();
  v98 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v47, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  v50 = StateObject.wrappedValue.getter();
  v51 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  v52 = 0;
  v42 = *(v51 + 16);
  v53 = v94;
  do
  {
    if (v42 == v52)
    {
      break;
    }

    if (v52 >= *(v51 + 16))
    {
      goto LABEL_26;
    }

    (*(v8 + 16))(v53, v51 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v52++, v7);
    WorkoutDevicesProviderTester.testAirPods.getter();
    v54 = MEMORY[0x20F304A00](v53, v17);
    v55 = *(v8 + 8);
    v55(v17, v7);
    v55(v53, v7);
  }

  while ((v54 & 1) == 0);

  LocalizedStringKey.init(stringLiteral:)();

  v56 = v107;
  Button<>.init(_:action:)();
  if (one-time initialization token for testsmartRoutingHeadphones != -1)
  {
    swift_once();
  }

  v57 = v108;
  v94 = static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.testsmartRoutingHeadphones;
  v87[1] = unk_27C7E89A0;
  v58 = v110;
  View.accessibilityIdentifier(_:)();
  v99(v56, v58);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v57, v111, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v57, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  v59 = StateObject.wrappedValue.getter();
  v60 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  v61 = 0;
  v42 = *(v60 + 16);
  v62 = v93;
  do
  {
    if (v42 == v61)
    {
      break;
    }

    if (v61 >= *(v60 + 16))
    {
      goto LABEL_27;
    }

    (*(v8 + 16))(v62, v60 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v61++, v7);
    WorkoutDevicesProviderTester.testPowerbeats.getter();
    v63 = MEMORY[0x20F304A00](v62, v17);
    v64 = *(v8 + 8);
    v64(v17, v7);
    v64(v62, v7);
  }

  while ((v63 & 1) == 0);

  LocalizedStringKey.init(stringLiteral:)();

  v65 = v107;
  Button<>.init(_:action:)();
  if (one-time initialization token for testsmartRoutingHeadphones != -1)
  {
    swift_once();
  }

  v66 = v108;
  v67 = v110;
  View.accessibilityIdentifier(_:)();
  v99(v65, v67);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v66, v111, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v66, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  v68 = StateObject.wrappedValue.getter();
  v69 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  v70 = 0;
  v42 = *(v69 + 16);
  v71 = v114;
  do
  {
    if (v42 == v70)
    {
      break;
    }

    if (v70 >= *(v69 + 16))
    {
      goto LABEL_28;
    }

    (*(v8 + 16))(v71, v69 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v70++, v7);
    WorkoutDevicesProviderTester.testHeartRateMonitor.getter();
    v72 = MEMORY[0x20F304A00](v71, v17);
    v73 = *(v8 + 8);
    v73(v17, v7);
    v73(v71, v7);
  }

  while ((v72 & 1) == 0);

  LocalizedStringKey.init(stringLiteral:)();

  v74 = v107;
  Button<>.init(_:action:)();
  if (one-time initialization token for testHeartRateMonitor != -1)
  {
    swift_once();
  }

  v75 = v108;
  v76 = v110;
  View.accessibilityIdentifier(_:)();
  v99(v74, v76);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v75, v111, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  swift_storeEnumTagMultiPayload();
  v77 = v88;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v75, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  v78 = v95;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v101, v95, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  v79 = v97;
  v80 = v89;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v97, v89, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  v81 = v96;
  v82 = v90;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v96, v90, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  v83 = v91;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v77, v91, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  v84 = v92;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v78, v92, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMG_A3NtMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v80, v84 + v85[12], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v82, v84 + v85[16], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(v83, v84 + v85[20], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v77, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v81, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v79, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v101, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v83, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v82, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v80, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
  return outlined destroy of ModifiedContent<Menu<_ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image>, TupleView<(_ConditionalContent<ModifiedContent<Section<Text, Text, EmptyView>, AccessibilityAttachmentModifier>, ModifiedContent<Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView>, AccessibilityAttachmentModifier>>, Button<Text>, Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifie(v95, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAMGMd);
}

uint64_t closure #2 in closure #1 in DeviceConnectionMenu.testDeviceConnectionButtons()(uint64_t a1, void (*a2)(uint64_t), void (*a3)(char *))
{
  v5 = type metadata accessor for WorkoutDevice();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v7);
  a3(v9);
  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA06_ShapeG0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AIyAA5ImageVAA016_ForegroundStyleM0VyAA5ColorVGGtGGAZGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA8MaterialVGAA16_OverlayModifierVy07WorkoutB025DeviceConnectionMenuBadgeVSgGG_AGyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>, Image> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E6DeviceVGSSAA15ModifiedContentVyAIyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA023AccessibilityAttachmentO0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA023AccessibilityAttachmentJ0VGMR, lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore0G6DeviceVGSSAA15ModifiedContentVyAMyAA5LabelVyAeA5ImageVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGAA023AccessibilityAttachmentP0VGGAA9EmptyViewVGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, ForEach<[WorkoutDevice], String, ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier>>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    _s11WorkoutCore0A15DevicesProviderCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<Text, Text, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, Text, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, Text, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAeA9EmptyViewVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, Text, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t outlined init with take of Section<EmptyView, TupleView<(_ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>)>, EmptyView>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA19_ConditionalContentVyAA08ModifiedH0VyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGASG_A3TtGAEGSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    _s11WorkoutCore0A15DevicesProviderCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized DeviceConnectionMenu.accessibilityIdentifier(for:)()
{
  v0 = type metadata accessor for WorkoutDeviceType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutDevice.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7D9D8])
  {
    if (one-time initialization token for watch != -1)
    {
      swift_once();
    }

    v5 = &static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.watch;
    return *v5;
  }

  if (v4 == *MEMORY[0x277D7D9C8])
  {
    if (one-time initialization token for smartRoutingHeadphones != -1)
    {
      swift_once();
    }

    v5 = &static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.smartRoutingHeadphones;
    return *v5;
  }

  if (v4 == *MEMORY[0x277D7D9C0])
  {
    if (one-time initialization token for heartRateMonitor != -1)
    {
      swift_once();
    }

    v5 = &static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.heartRateMonitor;
    return *v5;
  }

  if (v4 == *MEMORY[0x277D7D9D0])
  {
    if (one-time initialization token for phone != -1)
    {
      swift_once();
    }

    v5 = &static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.phone;
    return *v5;
  }

  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  MEMORY[0x20F30BC00](0xD00000000000003ELL, 0x800000020CB93910);
  MEMORY[0x20F30BC00](0xD00000000000001DLL, 0x800000020CB93950);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id outlined copy of StateObject<WorkoutDevicesProvider>.Storage(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

uint64_t outlined init with copy of ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore0A15DevicesProviderCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #2 in closure #1 in closure #2 in closure #1 in DeviceConnectionMenu.body.getter@<X0>(uint64_t *a1@<X8>)
{
  WorkoutDevice.systemImage.getter();
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceConnectionMenu.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceConnectionMenu.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, Material>, _OverlayModifier<DeviceConnectionMenuBadge?>>, ModifiedContent<Image, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceConnectionMenu.Style and conformance DeviceConnectionMenu.Style()
{
  result = lazy protocol witness table cache variable for type DeviceConnectionMenu.Style and conformance DeviceConnectionMenu.Style;
  if (!lazy protocol witness table cache variable for type DeviceConnectionMenu.Style and conformance DeviceConnectionMenu.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceConnectionMenu.Style and conformance DeviceConnectionMenu.Style);
  }

  return result;
}

uint64_t DeleteButton.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DeleteButton();
  outlined init with copy of Environment<DismissAction>.Content(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t DeleteButton.init(workoutConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for DeleteButton();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[7];
  result = State.init(wrappedValue:)();
  *v7 = v9;
  *(v7 + 1) = v10;
  *(a2 + v5[6]) = a1;
  return result;
}

uint64_t type metadata accessor for DeleteButton()
{
  result = type metadata singleton initialization cache for DeleteButton;
  if (!type metadata singleton initialization cache for DeleteButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeleteButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for BorderedButtonStyle();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DeleteButton();
  v7 = *(v47 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgrounduO0VGGMd);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgrounduO0VGGAA023AccessibilityAttachmentQ0VGMd);
  MEMORY[0x28223BE20](v46);
  v50 = &v43 - v18;
  static ButtonRole.destructive.getter();
  v19 = type metadata accessor for ButtonRole();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  v48 = v2;
  outlined init with copy of DeleteButton(v2, &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  outlined init with take of DeleteButton(&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAGtGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAGtGGMd);
  Button.init(role:action:label:)();
  static Font.body.getter();
  static Font.Weight.medium.getter();
  v22 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd) + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = static Color.red.getter();
  v26 = swift_getKeyPath();
  v27 = &v14[*(v12 + 36)];
  *v27 = v26;
  v27[1] = v25;
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  v28 = v44;
  View.buttonStyle<A>(_:)();
  (*(v45 + 8))(v6, v28);
  outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v14);
  v53 = static Color.clear.getter();
  *&v17[*(v15 + 36)] = AnyView.init<A>(_:)();
  if (one-time initialization token for deleteWorkout != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v17, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgrounduO0VGGMd);
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = WorkoutUIBundle.super.isa;
  v30 = Text.init(_:tableName:bundle:comment:)();
  v44 = v31;
  v45 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v48 + *(v47 + 7);
  v37 = *v36;
  v38 = *(v36 + 8);
  v51 = v37;
  v52 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  v39 = State.projectedValue.getter();
  v47 = &v43;
  MEMORY[0x28223BE20](v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  v40 = v45;
  v41 = v50;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  outlined consume of Text.Storage(v40, v33, v35 & 1);

  return outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v41, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgrounduO0VGGAA023AccessibilityAttachmentQ0VGMd);
}

uint64_t closure #1 in DeleteButton.body.getter()
{
  type metadata accessor for DeleteButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

__n128 closure #2 in DeleteButton.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  closure #1 in closure #2 in DeleteButton.body.getter(v5);
  *&v4[48] = *&v6[9];
  *&v4[39] = *v6;
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 17) = *v4;
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v4[48];
  return result;
}

uint64_t closure #1 in closure #2 in DeleteButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v13._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CB939F0;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v13);

  lazy protocol witness table accessor for type String and conformance String();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9 & 1;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  outlined copy of Text.Storage(v6, v7, v9 & 1);

  outlined consume of Text.Storage(v6, v8, v10);
}

uint64_t closure #3 in DeleteButton.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DeleteButton();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  static ButtonRole.destructive.getter();
  v8 = type metadata accessor for ButtonRole();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  outlined init with copy of DeleteButton(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  outlined init with take of DeleteButton(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return Button.init(role:action:label:)();
}

uint64_t closure #1 in closure #3 in DeleteButton.body.getter(id *a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1 + *(type metadata accessor for DeleteButton() + 28);
  v11 = *v10;
  v12 = *(v10 + 1);
  v15[16] = v11;
  v16 = v12;
  v15[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  if (*a1)
  {
    v13 = *a1;
    dispatch thunk of WorkoutConfiguration.uuid.getter();
    WorkoutConfigurationDataSource.remove(uuid:)();

    (*(v7 + 8))(v9, v6);
    DeleteButton.dismiss.getter(v5);
    DismissAction.callAsFunction()();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #3 in DeleteButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t outlined init with copy of DeleteButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DeleteButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for EnvironmentValues.tintColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Spacer, Text, Spacer)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgrounduO0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGMd);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMd);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMd);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGAOtGGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgroundwO0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAItGGGMd);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, Spacer)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAItGGGMd);
    _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAOyAA5ColorVSgGGAKtGGAA14_PaddingLayoutVGA4_GAA016_BackgroundStyleN0VyAYGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAOyAA5ColorVSgGGAKtGGAA14_PaddingLayoutVGA4_GAA016_BackgroundStyleN0VyAYGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd);
    lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgroundtO0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(Spacer, Text, Spacer)>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_19(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(IntervalStepNameEditView?, Section<Text, TupleView<(_ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<StepGoalTypeRow, ModifiedContent<IntervalChangeGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, TupleView<(_ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<StepGoalRow, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>?, AlertsButton?, ReorderButton<WorkoutStep, WorkoutStepRow>?, Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>?)>?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgrounduO0VGGAA023AccessibilityAttachmentQ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for DeleteButton()
{
  type metadata accessor for EnvironmentObject<WorkoutConfigurationDataSource>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<DismissAction>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutConfiguration();
      if (v2 <= 0x3F)
      {
        type metadata accessor for State<Bool>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for EnvironmentObject<WorkoutConfigurationDataSource>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<WorkoutConfigurationDataSource>)
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<WorkoutConfigurationDataSource>);
    }
  }
}

void type metadata accessor for Environment<DismissAction>()
{
  if (!lazy cache variable for type metadata for Environment<DismissAction>)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<DismissAction>);
    }
  }
}

void type metadata accessor for State<Bool>()
{
  if (!lazy cache variable for type metadata for State<Bool>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<Bool>);
    }
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for DeleteButton();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in DeleteButton.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DeleteButton() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined init with copy of Environment<DismissAction>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void GoalProgressTracker.goalProgress.didset()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MetricsPublisher.goalPublisher.getter();

    v2 = dispatch thunk of LiveWorkoutConfiguration.currentGoal.getter();
    [v2 goalTypeIdentifier];

    GoalPublisher.goal.setter();
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    MetricsPublisher.goalPublisher.getter();

    GoalProgressTracker.completionPercentage.getter();
    v6 = v5 * 100.0;
    if (v6 >= 0.0)
    {
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0.0;
    }

    if (v6 > -1.0)
    {
      if (v6 < 4294967300.0)
      {
        GoalPublisher.progress.setter();

        return;
      }

LABEL_15:
      __break(1u);
      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

double GoalProgressTracker.goalProgress.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void GoalProgressTracker.completionPercentage.getter()
{
  if (dispatch thunk of LiveWorkoutConfiguration.isInterval.getter())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  else
  {
    v0 = dispatch thunk of LiveWorkoutConfiguration.currentGoal.getter();
    v1 = [v0 value];

    if (v1)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v2 = dispatch thunk of LiveWorkoutConfiguration.currentGoal.getter();
      [v2 doubleValue];
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t GoalProgressTracker.makeCancellable()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  if (dispatch thunk of LiveWorkoutConfiguration.isInterval.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_5:
      *(v1 + OBJC_IVAR____TtC9WorkoutUI19GoalProgressTracker_cancellable) = Strong;
    }

    MetricsPublisher.intervalsMetricsPublisher.getter();

    IntervalsMetricsPublisher.$intervalProgress.getter();

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Published<Double>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Double>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySd_GMd);
LABEL_4:
    Strong = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v5, v2);
    goto LABEL_5;
  }

  v8 = dispatch thunk of LiveWorkoutConfiguration.currentGoal.getter();
  v9 = [v8 goalTypeIdentifier];

  if (v9 > 1)
  {
    if (v9 == 3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_5;
      }

      MetricsPublisher.energyMetricsPublisher.getter();

      EnergyMetricsPublisher.$activeEnergy.getter();

      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type Published<Double>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Double>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySd_GMd);
      goto LABEL_4;
    }

    if (v9 == 2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_5;
      }

      MetricsPublisher.elapsedTimeMetricsPublisher.getter();

      ElapsedTimeMetricsPublisher.$elapsedTime.getter();

      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type Published<Double>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Double>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySd_GMd);
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_5;
      }

      MetricsPublisher.$distance.getter();

      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type Published<Double>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Double>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySd_GMd);
      goto LABEL_4;
    }

LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  *(v1 + OBJC_IVAR____TtC9WorkoutUI19GoalProgressTracker_cancellable) = 0;
}

uint64_t closure #3 in GoalProgressTracker.makeCancellable()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      MetricsPublisher.distance.getter();

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
        GoalProgressTracker.goalProgress.didset();
      }
    }
  }

  return result;
}

uint64_t closure #1 in GoalProgressTracker.makeCancellable()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      a3(result);

      a4();

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
        GoalProgressTracker.goalProgress.didset();
      }
    }
  }

  return result;
}

uint64_t GoalProgressTracker.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9WorkoutUI19GoalProgressTracker_cancellable))
  {

    AnyCancellable.cancel()();
  }

  MEMORY[0x20F30E160](v0 + 24);
  v2 = OBJC_IVAR____TtC9WorkoutUI19GoalProgressTracker__goalProgress;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GoalProgressTracker()
{
  result = type metadata singleton initialization cache for GoalProgressTracker;
  if (!type metadata singleton initialization cache for GoalProgressTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GoalProgressTracker()
{
  type metadata accessor for Published<Double>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Double>()
{
  if (!lazy cache variable for type metadata for Published<Double>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Double>);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GoalProgressTracker@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GoalProgressTracker();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double key path getter for GoalProgressTracker.goalProgress : GoalProgressTracker@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

void key path setter for GoalProgressTracker.goalProgress : GoalProgressTracker()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  GoalProgressTracker.goalProgress.didset();
}

uint64_t specialized GoalProgressTracker.init(liveWorkoutConfiguration:metricsPublisher:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC9WorkoutUI19GoalProgressTracker__goalProgress;
  aBlock[0] = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v2 + v14, v13, v10);
  *(v2 + OBJC_IVAR____TtC9WorkoutUI19GoalProgressTracker_cancellable) = 0;
  *(v2 + 16) = a1;
  swift_unknownObjectWeakAssign();
  type metadata accessor for OS_dispatch_queue();
  v15 = a1;
  v16 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in GoalProgressTracker.init(liveWorkoutConfiguration:metricsPublisher:);
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type Published<Double>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
  return v2;
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

uint64_t lazy protocol witness table accessor for type Published<Double>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArtworkBridge.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SMArtwork_artwork;
  v4 = type metadata accessor for Artwork();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id @objc ArtworkBridge.backgroundColor.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x20F30BAD0](v5, v7);

  return v8;
}

id ArtworkBridge.__allocating_init(artwork:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___SMArtwork_artwork;
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id ArtworkBridge.init(artwork:)(uint64_t a1)
{
  v3 = OBJC_IVAR___SMArtwork_artwork;
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ArtworkBridge();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for ArtworkBridge()
{
  result = type metadata singleton initialization cache for ArtworkBridge;
  if (!type metadata singleton initialization cache for ArtworkBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ArtworkBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArtworkBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int ArtworkBridge.hash.getter()
{
  Hasher.init()();
  type metadata accessor for Artwork();
  lazy protocol witness table accessor for type Artwork and conformance Artwork();
  dispatch thunk of Hashable.hash(into:)();
  Artwork.backgroundColor.getter();
  String.hash(into:)();

  Artwork.template.getter();
  String.hash(into:)();

  Artwork.textColor.getter();
  String.hash(into:)();

  return Hasher.finalize()();
}

unint64_t lazy protocol witness table accessor for type Artwork and conformance Artwork()
{
  result = lazy protocol witness table cache variable for type Artwork and conformance Artwork;
  if (!lazy protocol witness table cache variable for type Artwork and conformance Artwork)
  {
    type metadata accessor for Artwork();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Artwork and conformance Artwork);
  }

  return result;
}

uint64_t ArtworkBridge.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v5);
  if (!v6)
  {
    outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for ArtworkBridge();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = specialized static ArtworkBridge.== infix(_:_:)(v1, v4);

  return v2 & 1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static ArtworkBridge.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x20F303380](a1 + OBJC_IVAR___SMArtwork_artwork, a2 + OBJC_IVAR___SMArtwork_artwork) & 1) == 0)
  {
    goto LABEL_16;
  }

  v2 = Artwork.backgroundColor.getter();
  v4 = v3;
  if (v2 == Artwork.backgroundColor.getter() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v8 = Artwork.template.getter();
  v10 = v9;
  if (v8 == Artwork.template.getter() && v10 == v11)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
LABEL_16:
      v17 = 0;
      return v17 & 1;
    }
  }

  v13 = Artwork.textColor.getter();
  v15 = v14;
  if (v13 == Artwork.textColor.getter() && v15 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}