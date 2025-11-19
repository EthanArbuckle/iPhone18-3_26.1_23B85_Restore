uint64_t key path getter for PowerZonesEntryViewModel.selectedType : PowerZonesEntryViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for PowerZonesEntryViewModel.selectedType : PowerZonesEntryViewModel(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return PowerZonesEntryViewModel.selectedType.setter(v5);
}

uint64_t closure #1 in closure #1 in PowerZonesEntryView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PowerZonesEntryView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  outlined init with copy of PowerZonesEntryView(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of PowerZonesEntryView(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore23PowerZonesAlertZoneTypeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22_DisabledPickerContentVyAA0D6OptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGGMd);
  type metadata accessor for PowerZonesAlertZoneType();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [PowerZonesAlertZoneType] and conformance [A], &_sSay11WorkoutCore23PowerZonesAlertZoneTypeOGMd);
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>> and conformance _DisabledPickerContent<A>, &_s7SwiftUI22_DisabledPickerContentVyAA0D6OptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGGMd);
  return ForEach<>.init<A>(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[0] = a2;
  v25[1] = a3;
  v4 = type metadata accessor for PowerZonesAlertZoneType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12PickerOptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGMd);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = *(v5 + 16);
  v16(v10, a1, v4, v13);
  v27 = a1;
  v17 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
  MEMORY[0x20F3084F0](v10, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter, v26, v4, MEMORY[0x277CE0BD8], v17, MEMORY[0x277CE0BC8]);
  (v16)(v7, a1, v4);
  v18 = (*(v5 + 88))(v7, v4);
  if (v18 != *MEMORY[0x277D7E428])
  {
    if (v18 == *MEMORY[0x277D7E430])
    {
      (*(v5 + 8))(v7, v4);
      type metadata accessor for PowerZonesEntryView();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v23 = v28;
      if (!v28)
      {
        goto LABEL_4;
      }

      if (!(v28 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for Zone();
        v24 = v23;
LABEL_9:

        type metadata accessor for CyclingPowerZonesConfigurationEditor();
        MEMORY[0x20F306B50](v24);

        goto LABEL_4;
      }
    }

    else
    {
      if (v18 == *MEMORY[0x277D7E420])
      {
        (*(v5 + 96))(v7, v4);
        v19 = &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd;
        goto LABEL_3;
      }

      if (v18 == *MEMORY[0x277D7E418])
      {
        goto LABEL_4;
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    type metadata accessor for Zone();

    v24 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_9;
  }

  (*(v5 + 96))(v7, v4);
  v19 = &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd;
LABEL_3:
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v19) + 48);
  v21 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v21 - 8) + 8))(&v7[v20], v21);
LABEL_4:
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PickerOption<PowerZonesAlertZoneType, Text> and conformance PickerOption<A, B>, &_s7SwiftUI12PickerOptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGMd);
  PickerContent.disabled(_:)();
  return (*(v12 + 8))(v15, v11);
}

uint64_t PowerZonesAlertZoneType.displayString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7E428])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = WorkoutUIBundle.super.isa;
    v32._object = 0xE000000000000000;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._object = 0x800000020CBA17A0;
    v11._countAndFlagsBits = 0xD000000000000017;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v32)._countAndFlagsBits;

    v14 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v14 - 8) + 8))(&v6[v8], v14);
    return countAndFlagsBits;
  }

  if (v7 == *MEMORY[0x277D7E430])
  {
    (*(v3 + 8))(v6, v2);
    v15 = "POWER_ZONES_TYPE_CUSTOM_RANGE";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = WorkoutUIBundle.super.isa;
    v30 = 0xE000000000000000;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v19 = 0xD000000000000020;
LABEL_17:
    v26 = v15 | 0x8000000000000000;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v28 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v19, *&v17, v16, v27, *(&v30 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v7 == *MEMORY[0x277D7E420])
  {
    (*(v3 + 96))(v6, v2);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = WorkoutUIBundle.super.isa;
    v33._object = 0xE000000000000000;
    v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v22.value._object = 0xEB00000000656C62;
    v23._countAndFlagsBits = 0xD00000000000001DLL;
    v23._object = 0x800000020CBA1750;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v33)._countAndFlagsBits;

    v25 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v25 - 8) + 8))(&v6[v20], v25);
    return countAndFlagsBits;
  }

  if (v7 == *MEMORY[0x277D7E418])
  {
    v15 = "esAlertZoneType case";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = WorkoutUIBundle.super.isa;
    v30 = 0xE000000000000000;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v19 = 0xD00000000000001BLL;
    goto LABEL_17;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in PowerZonesEntryView.body.getter()
{
  type metadata accessor for PowerZonesEntryView();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance [A], &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd);
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t TargetZone.ZoneType.pickerDisplayString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7DE68])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = WorkoutUIBundle.super.isa;
    v17 = 0xE000000000000000;
    v9 = 0x617A696C61636F4CLL;
    v10 = 0xEB00000000656C62;
    v11 = 0xD000000000000028;
    v12 = 0x800000020CBA16A0;
LABEL_9:
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v14 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v9, v8, v13, *(&v17 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v7 == *MEMORY[0x277D7DE50])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = WorkoutUIBundle.super.isa;
    v17 = 0xE000000000000000;
    v9 = 0x617A696C61636F4CLL;
    v10 = 0xEB00000000656C62;
    v12 = 0x800000020CBA16D0;
    v11 = 0xD000000000000022;
    goto LABEL_9;
  }

  v18[1] = 0;
  v18[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  MEMORY[0x20F30BC00](0xD00000000000003CLL, 0x800000020CBA1660);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #3 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PowerZonesEntryView();
  v6 = *(a1 + *(v5 + 28));
  v7 = (a1 + *(v5 + 32));
  v8 = *v7;
  v9 = v7[1];
  v10 = type metadata accessor for PowerZonesEntryViewModel();
  v11 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel);
  v12 = v4;
  v13 = v6;
  MEMORY[0x20F308920](v8, v9, v10, v11);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  static CyclingPowerZonesConstants.minFunctionalThresholdPower.getter();
  v15 = v14;
  result = static CyclingPowerZonesConstants.maxFunctionalThresholdPower.getter();
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v18;
  a2[3] = v19;
  a2[4] = v20;
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = v15;
  a2[8] = v17;
  return result;
}

uint64_t closure #4 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v21 = a3;
  v20 = type metadata accessor for InlinePickerStyle();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = (a1 + *(type metadata accessor for PowerZonesEntryView() + 32));
  v13 = *v11;
  v12 = v11[1];
  v14 = type metadata accessor for PowerZonesEntryViewModel();
  v15 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel);
  MEMORY[0x20F308920](v13, v12, v14, v15);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v22 = v19;
  v23 = a1;
  v24 = v26;
  v25 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0m10AttachmentT0VG_AJyAA6SpacerVAA12_FrameLayoutVGAA4TextVA8_tGGGMd);
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMd);
  v16 = v20;
  View.pickerStyle<A>(_:)();
  (*(v4 + 8))(v6, v16);
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PowerZonesEntryView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    v10[0] = 0;
    v10[1] = result;
    swift_getKeyPath();
    outlined init with copy of PowerZonesEntryView(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    outlined init with take of PowerZonesEntryView(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMd);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMd);
    return ForEach<>.init(_:id:content:)();
  }

  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0n10AttachmentU0VG_AKyAA6SpacerVAA06_FrameG0VGAA4TextVA9_tGGMd);
  return closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter(v7, a2, a3, a4 + *(v8 + 44));
}

uint64_t closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v91 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v75 - v7;
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v90 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for AccessibilityChildBehavior();
  v12 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_Md);
  v87 = *(v15 - 8);
  v88 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.n128_f64[0] = MEMORY[0x28223BE20](v21);
  v24 = &v75 - v23;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v82 = v10;
  v83 = v8;
  v80 = a1 + 1;
  v94 = a1 + 1;
  v98 = dispatch thunk of CustomStringConvertible.description.getter();
  v99 = v25;
  MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
  result = Image.init(systemName:)();
  v10 = result;
  v85 = v20;
  v92 = v24;
  v84 = v9;
  v77 = a2;
  v76 = a1;
  v75 = a2 + 8 * a1;
  v81 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_14:
    MEMORY[0x20F30C990](a1, a2, v22);
    goto LABEL_6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    __break(1u);
    return result;
  }

LABEL_6:
  v27 = CyclingPowerZone.color.getter();

  KeyPath = swift_getKeyPath();
  v98 = v10;
  v99 = KeyPath;
  v100 = v27;
  static AccessibilityChildBehavior.ignore.getter();
  a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v20 = lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v12 + 8))(v14, v86);

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_16:
    swift_once();
  }

  swift_beginAccess();
  v29 = WorkoutUIBundle.super.isa;
  v104._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0x4D414E5F454E4F5ALL;
  v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31.value._object = 0xEB00000000656C62;
  v30._object = 0xE900000000000045;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v104._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20CB5DA70;
  v34 = MEMORY[0x277D83C10];
  *(v33 + 56) = MEMORY[0x277D83B88];
  *(v33 + 64) = v34;
  *(v33 + 32) = v80;
  v35 = String.init(format:_:)();
  v37 = v36;

  v98 = v35;
  v99 = v37;
  *&v93 = a2;
  *(&v93 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v38 = v92;
  v39 = v88;
  View.accessibilityLabel<A>(_:)();

  (*(v87 + 8))(v17, v39);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v86 = v98;
  v80 = v100;
  v79 = v102;
  v78 = v103;
  v97 = 1;
  v96 = v99;
  v95 = v101;
  v40 = v84;
  if (v81)
  {
    MEMORY[0x20F30C990](v76, v77);
  }

  else
  {
  }

  v41 = v83;
  v42 = PowerZonesEntryView.rangeString(zone:)();
  v44 = v43;

  *&v93 = v42;
  *(&v93 + 1) = v44;
  v45 = Text.init<A>(_:)();
  v87 = v46;
  v88 = v45;
  LODWORD(v83) = v47;
  v89 = v48;
  if (one-time initialization token for powerZonesShortDescription != -1)
  {
    swift_once();
  }

  v93 = static PowerZonesEntryView.powerZonesShortDescription;

  v49 = Text.init<A>(_:)();
  v51 = v50;
  v53 = v52;
  v54 = v82;
  v55 = v90;
  (*(v82 + 104))(v90, *MEMORY[0x277CE0A68], v40);
  v56 = type metadata accessor for Font.Design();
  (*(*(v56 - 8) + 56))(v41, 1, 1, v56);
  static Font.system(_:design:weight:)();
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v41, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v54 + 8))(v55, v40);
  Font.smallCaps()();

  v57 = Text.font(_:)();
  v59 = v58;
  LODWORD(v84) = v60;
  v90 = v61;

  outlined consume of Text.Storage(v49, v51, v53 & 1);

  v62 = v85;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v38, v85, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd);
  v63 = v97;
  LOBYTE(v51) = v96;
  v64 = v95;
  v65 = v83 & 1;
  LOBYTE(v93) = v83 & 1;
  v66 = v91;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v62, v91, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VG_ACyAA6SpacerVAA12_FrameLayoutVGAA4TextVA1_tMd);
  v68 = v66 + v67[12];
  *v68 = 0;
  *(v68 + 8) = v63;
  *(v68 + 16) = v86;
  *(v68 + 24) = v51;
  *(v68 + 32) = v80;
  *(v68 + 40) = v64;
  v69 = v78;
  *(v68 + 48) = v79;
  *(v68 + 56) = v69;
  v70 = v66 + v67[16];
  v72 = v87;
  v71 = v88;
  *v70 = v88;
  *(v70 + 8) = v72;
  *(v70 + 16) = v65;
  *(v70 + 24) = v89;
  v73 = v66 + v67[20];
  *v73 = v57;
  *(v73 + 8) = v59;
  v74 = v84 & 1;
  *(v73 + 16) = v84 & 1;
  *(v73 + 24) = v90;
  outlined copy of Text.Storage(v71, v72, v65);

  outlined copy of Text.Storage(v57, v59, v74);

  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v92, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd);
  outlined consume of Text.Storage(v57, v59, v74);

  outlined consume of Text.Storage(v71, v72, v93);

  return outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v62, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd);
}

uint64_t PowerZonesEntryView.rangeString(zone:)()
{
  _sSo23FIUIWorkoutActivityTypeCMaTm_9(0, &lazy cache variable for type metadata for NSNumberFormatter);
  v0 = static NSNumberFormatter.integralFormatter.getter();
  v1 = CyclingPowerZone.lowerBound.getter();
  if (v1)
  {
    v2 = v1;
    v3 = CyclingPowerZone.upperBound.getter();
    if (v3)
    {
      v4 = v3;
      v5 = objc_opt_self();
      v6 = [v5 wattUnit];
      [v2 doubleValueForUnit_];
      v8 = v7;

      v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v10 = [v0 stringFromNumber_];

      if (v10)
      {
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v54 = 0;
        v12 = 0xE000000000000000;
      }

      v29 = [v5 wattUnit];
      [v4 doubleValueForUnit_];
      v31 = v30;

      v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v33 = [v0 stringFromNumber_];

      if (v33)
      {
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v37 = WorkoutUIBundle.super.isa;
      v38._countAndFlagsBits = 0xD00000000000001DLL;
      v55._object = 0xE000000000000000;
      v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v39.value._object = 0xEB00000000656C62;
      v38._object = 0x800000020CB946D0;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v55._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v55);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_20CB5DA80;
      v42 = MEMORY[0x277D837D0];
      *(v41 + 56) = MEMORY[0x277D837D0];
      v43 = lazy protocol witness table accessor for type String and conformance String();
      *(v41 + 32) = v54;
      *(v41 + 40) = v12;
      *(v41 + 96) = v42;
      *(v41 + 104) = v43;
      *(v41 + 64) = v43;
      *(v41 + 72) = v34;
      *(v41 + 80) = v36;
      v44 = String.init(format:_:)();

      v0 = v2;
LABEL_26:

      return v44;
    }
  }

  v13 = CyclingPowerZone.lowerBound.getter();
  if (v13)
  {
    v4 = v13;
    v14 = [objc_opt_self() wattUnit];
    [v4 doubleValueForUnit_];
    v16 = v15;

    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v18 = [v0 stringFromNumber_];

    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 9666786;
      v21 = 0xA300000000000000;
    }

    v45 = "ALERT_CONFIGURATION_ROW_LOWER_BOUND";
LABEL_23:
    v46 = v45 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v47 = WorkoutUIBundle.super.isa;
    v56._object = 0xE000000000000000;
    v48.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v48.value._object = 0xEB00000000656C62;
    v49._object = (v46 | 0x8000000000000000);
    v49._countAndFlagsBits = 0xD000000000000023;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v48, v47, v50, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20CB5DA70;
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v51 + 32) = v19;
    *(v51 + 40) = v21;
    v44 = String.init(format:_:)();
    goto LABEL_26;
  }

  v22 = CyclingPowerZone.upperBound.getter();
  if (v22)
  {
    v4 = v22;
    v23 = [objc_opt_self() wattUnit];
    [v4 doubleValueForUnit_];
    v25 = v24;

    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v27 = [v0 stringFromNumber_];

    if (v27)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v28;
    }

    else
    {
      v19 = 9666786;
      v21 = 0xA300000000000000;
    }

    v45 = "ALERT_CONFIGURATION_ROW_UPPER_BOUND";
    goto LABEL_23;
  }

  _StringGuts.grow(_:)(46);

  type metadata accessor for CyclingPowerZone();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type CyclingPowerZone and conformance Zone, MEMORY[0x277D7E068]);
  v53 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v53);

  MEMORY[0x20F30BC00](0xD000000000000027, 0x800000020CB94640);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #5 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PowerZonesEntryView();
  v6 = *(v5 + 32);
  v7 = *(a1 + *(v5 + 28));
  v8 = *(a1 + v6);
  v9 = *(a1 + v6 + 8);
  v10 = type metadata accessor for PowerZonesEntryViewModel();
  v11 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel);
  v12 = v4;
  v13 = v7;
  MEMORY[0x20F308920](v8, v9, v10, v11);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v42 = *(&v57 + 1);
  v43 = v57;
  v14 = v58;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  v64._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._object = 0x800000020CB945C0;
  v17._countAndFlagsBits = 0xD000000000000011;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v64);

  static CyclingPowerZonesConstants.minFunctionalThresholdPower.getter();
  v21 = v20;
  static CyclingPowerZonesConstants.maxFunctionalThresholdPower.getter();
  v23 = v22;
  v24 = v12;
  v25 = v13;
  MEMORY[0x20F308920](v8, v9, v10, v11);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v26 = *(&v57 + 1);
  v41 = v57;
  v27 = v58;
  v28 = WorkoutUIBundle.super.isa;
  v65._object = 0xE000000000000000;
  v29._object = 0x800000020CB945E0;
  v29._countAndFlagsBits = 0xD000000000000011;
  v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v30.value._object = 0xEB00000000656C62;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v65);

  static CyclingPowerZonesConstants.minFunctionalThresholdPower.getter();
  v34 = v33 + 5.0;
  static CyclingPowerZonesConstants.maxFunctionalThresholdPower.getter();
  v36 = v35 + 5.0;
  *&v45[0] = v24;
  *(&v45[0] + 1) = v25;
  v45[1] = v57;
  *&v46 = v58;
  *(&v46 + 1) = v19._countAndFlagsBits;
  *&v47 = v19._object;
  *(&v47 + 1) = v21;
  v48 = v23;
  *v44 = v23;
  *&v49[0] = v24;
  *(&v49[0] + 1) = v25;
  v49[1] = v57;
  *&v50 = v58;
  *(&v50 + 1) = v32._countAndFlagsBits;
  *&v51 = v32._object;
  *(&v51 + 1) = v34;
  v52 = v36;
  *&v44[8] = v49[0];
  *&v44[72] = v36;
  *&v44[56] = v51;
  *&v44[40] = v50;
  *&v44[24] = v57;
  v37 = v45[0];
  v38 = v57;
  v39 = v47;
  a2[2] = v46;
  a2[3] = v39;
  *a2 = v37;
  a2[1] = v38;
  a2[7] = *&v44[48];
  a2[8] = *&v44[64];
  a2[5] = *&v44[16];
  a2[6] = *&v44[32];
  a2[4] = *v44;
  v53[0] = v24;
  v53[1] = v25;
  v53[2] = v41;
  v53[3] = v26;
  v53[4] = v27;
  v54 = v32;
  v55 = v34;
  v56 = v36;
  outlined init with copy of PowerNavigationButton(v45, &v57);
  outlined init with copy of PowerNavigationButton(v49, &v57);
  outlined destroy of PowerNavigationButton(v53);
  *&v57 = v24;
  *(&v57 + 1) = v25;
  v58 = v43;
  v59 = v42;
  v60 = v14;
  v61 = v19;
  v62 = v21;
  v63 = v23;
  return outlined destroy of PowerNavigationButton(&v57);
}

uint64_t closure #2 in PowerZonesEntryView.body.getter()
{
  v0 = type metadata accessor for PowerZonesAlertZoneType();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for PowerZonesEntryView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
  PowerZonesAlertTargetZone.init(type:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
  return Binding.wrappedValue.setter();
}

uint64_t closure #3 in PowerZonesEntryView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesEntryView();
  MEMORY[0x28223BE20](v2);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v35[-v6];
  v8 = type metadata accessor for Logger();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AlertConfigurationContext();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 104))(v15, *MEMORY[0x277D7E4C0], v11, v13);
  v16 = static AlertConfigurationContext.== infix(_:_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v40 = *a1;
    v41 = *(a1 + 8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
    MEMORY[0x20F30B100](&v42);
    v44 = type metadata accessor for PowerZonesAlertTargetZone();
    v45 = MEMORY[0x277D7E578];
    v19 = static TargetZoneStorage.save(_:for:useLegacyUniqueIdentifier:)();
    result = __swift_destroy_boxed_opaque_existential_1(&v42);
    if (v19)
    {
      static WOLog.alerts.getter();
      outlined init with copy of PowerZonesEntryView(a1, v7);
      outlined init with copy of PowerZonesEntryView(a1, v4);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v40 = v37;
        *v22 = 136315394;
        v42 = *v7;
        v43 = *(v7 + 8);
        v36 = v21;
        MEMORY[0x20F30B100](&v39, v18);
        v23 = v39;
        v24 = [v39 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        outlined destroy of PowerZonesEntryView(v7);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v40);

        *(v22 + 4) = v28;
        *(v22 + 12) = 2080;
        v29 = [v4[3] uniqueIdentifier];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        outlined destroy of PowerZonesEntryView(v4);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v40);

        *(v22 + 14) = v33;
        _os_log_impl(&dword_20C66F000, v20, v36, "Saved alert: %s for %s", v22, 0x16u);
        v34 = v37;
        swift_arrayDestroy();
        MEMORY[0x20F30E080](v34, -1, -1);
        MEMORY[0x20F30E080](v22, -1, -1);

        return (*(v38 + 8))(v10, v8);
      }

      else
      {

        (*(v38 + 8))(v10, v8);
        outlined destroy of PowerZonesEntryView(v7);
        return outlined destroy of PowerZonesEntryView(v4);
      }
    }
  }

  return result;
}

uint64_t PowerNavigationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB016AlertsPickerViewVAA14NavigationLinkVyAA6VStackVyAA05TupleI0VyAA4TextVSg_APtGGAHG_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - v8);
  v10 = static Platform.current.getter();
  if (v10)
  {
    MEMORY[0x28223BE20](v10);
    v12 = a1;
    *(&v12 - 2) = v1;
    PowerNavigationButton.pickerView()(&v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AGtGGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text?, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AGtGGMd);
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    NavigationLink.init(destination:label:)();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    PowerNavigationButton.pickerView()(&v13);
    *v9 = v13;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMd);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t PowerNavigationButton.pickerView()@<X0>(char **a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = *MEMORY[0x277D7DE68];
  v12 = type metadata accessor for TargetZone.ZoneType();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  v51 = *(v2 + 16);
  v52 = *(v2 + 32);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  Binding.projectedValue.getter();
  v14 = v48;
  v15 = v49;
  v16 = v50;
  v17 = *(v2 + 48);
  if (v17)
  {
    countAndFlagsBits = *(v2 + 40);
    object = v17;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = WorkoutUIBundle.super.isa;
    v53._object = 0xE000000000000000;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x800000020CBA1820;
    v20._countAndFlagsBits = 0xD000000000000022;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v53._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v53);
    countAndFlagsBits = v22._countAndFlagsBits;
    object = v22._object;
  }

  v24 = *v2;
  v23 = *(v2 + 8);
  v25 = *(v2 + 56);
  v26 = *(v2 + 64);

  v27 = static Color.green.getter();
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v10, v7, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
  type metadata accessor for AlertsPickerViewModel();
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel__currentValueDisplay;
  v48 = 0;
  v49 = 0xE000000000000000;
  v30 = v42;
  Published.init(initialValue:)();
  (*(v43 + 32))(&v28[v29], v30, v44);
  *(v28 + 2) = v14;
  *(v28 + 3) = v15;
  *(v28 + 4) = v16;
  v48 = v14;
  v49 = v15;
  v50 = v16;

  MEMORY[0x20F30B100](&v47, v41);
  v31 = v47;
  swift_beginAccess();
  v46 = v31;
  Published.init(initialValue:)();
  swift_endAccess();
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_minimumSelectableValue] = v25;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_maximumSelectableValue] = v26;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_step] = 0x4014000000000000;
  v32 = &v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText];
  v33 = object;
  *v32 = countAndFlagsBits;
  v32[1] = v33;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_color] = v27;

  specialized _copySequenceToContiguousArray<A>(_:)(v25, v26, 5.0);
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerValues] = v34;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_activityType] = v24;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_formattingManager] = v23;
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v7, &v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_targetZoneType], &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
  v35 = v24;
  v36 = v23;
  AlertsPickerViewModel.updateValueDisplay()();

  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v7, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
  result = outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v10, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
  *v45 = v28;
  return result;
}

__n128 closure #2 in PowerNavigationButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #2 in PowerNavigationButton.body.getter(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t closure #1 in closure #2 in PowerNavigationButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *(a1 + 48);
  if (v4)
  {
    *&v39 = *(a1 + 40);
    *(&v39 + 1) = v4;
    lazy protocol witness table accessor for type String and conformance String();

    v5 = Text.init<A>(_:)();
    v7 = v6;
    v9 = v8;
    static Color.gray.getter();
    v10 = Text.foregroundColor(_:)();
    v12 = v11;
    v36 = v13;
    v15 = v14;

    v16 = v9 & 1;
    v17 = v10;
    outlined consume of Text.Storage(v5, v7, v16);

    v18 = v36 & 1;
    outlined copy of Text.Storage(v10, v12, v36 & 1);
  }

  else
  {
    v17 = 0;
    v12 = 0;
    v18 = 0;
    v15 = 0;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  v39 = *(a1 + 16);
  v40 = *(a1 + 32);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  MEMORY[0x20F30B100](&v38, v20);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *&v39 = v38;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_12:
    swift_once();
  }

  swift_beginAccess();
  v22 = WorkoutUIBundle.super.isa;
  v41._object = 0xE000000000000000;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._object = 0x800000020CBA17C0;
  v24._countAndFlagsBits = 0xD00000000000001CLL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v23, v22, v25, v41);

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v26);

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
  LocalizedStringKey.init(stringInterpolation:)();
  v28 = Text.init(_:tableName:bundle:comment:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  outlined copy of Text?(v17, v12, v18, v15);
  v32 &= 1u;
  outlined copy of Text.Storage(v28, v30, v32);

  outlined consume of Text?(v17, v12, v18, v15);
  LOBYTE(v38) = v32;
  *a2 = v17;
  *(a2 + 8) = v12;
  *(a2 + 16) = v18;
  *(a2 + 24) = v15;
  *(a2 + 32) = v28;
  *(a2 + 40) = v30;
  *(a2 + 48) = v32;
  *(a2 + 56) = v34;
  outlined consume of Text.Storage(v28, v30, v32);

  return outlined consume of Text?(v17, v12, v18, v15);
}

uint64_t key path getter for PowerZonesEntryViewModel.zones : PowerZonesEntryViewModel@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for PowerZonesEntryViewModel.zones : PowerZonesEntryViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  PowerZonesEntryViewModel.zones.didset(v1);
}

void type metadata completion function for PowerZonesEntryView()
{
  type metadata accessor for Binding<PowerZonesAlertTargetZone>();
  if (v0 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_9(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AlertConfigurationContext();
      if (v2 <= 0x3F)
      {
        _sSo23FIUIWorkoutActivityTypeCMaTm_9(319, &lazy cache variable for type metadata for FIUIFormattingManager);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ObservedObject<PowerZonesEntryViewModel>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Binding<PowerZonesAlertTargetZone>()
{
  if (!lazy cache variable for type metadata for Binding<PowerZonesAlertTargetZone>)
  {
    type metadata accessor for PowerZonesAlertTargetZone();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<PowerZonesAlertTargetZone>);
    }
  }
}

void type metadata accessor for ObservedObject<PowerZonesEntryViewModel>()
{
  if (!lazy cache variable for type metadata for ObservedObject<PowerZonesEntryViewModel>)
  {
    type metadata accessor for PowerZonesEntryViewModel();
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<PowerZonesEntryViewModel>);
    }
  }
}

uint64_t outlined init with copy of PowerZonesEntryView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PowerZonesEntryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PowerZonesEntryView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PowerZonesEntryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0H7BuilderV7ContentVyAP_AA7ForEachVySayAPGApA09_DisabledhR0VyAA0H6OptionVyApMGGGGG_AA06InlinehG0VQo__AgAEAHyQrqd__AaIRd__lFQOyAKyAmN06TargetO0C0oP0OAVySayA11_GA11_AMGG_A6_Qo_SgAA7SectionVyAM0jB00L16NavigationButtonVAA05EmptyE0VGSgA18_yAmgAEAHyQrqd__AaIRd__lFQOyAKyA23_SiAVySnySiGSiAA6HStackVyAEyAA08ModifiedR0VyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA30_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A30_yAA6SpacerVAA12_FrameLayoutVGA2MtGGGG_A6_Qo_A23_GSgA18_yAmEyA21__A21_tGA23_GSgtGGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerF0Rd__lFQOyAA0G0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0G7BuilderV7ContentVyAN_AA7ForEachVySayANGAnA09_DisabledgQ0VyAA0G6OptionVyAnKGGGGG_AA06InlinegF0VQo__AeAEAFyQrqd__AaGRd__lFQOyAIyAkL06TargetN0C0nO0OATySayA9_GA9_AKGG_A4_Qo_SgAA7SectionVyAK0iB00K16NavigationButtonVAA05EmptyD0VGSgA16_yAkeAEAFyQrqd__AaGRd__lFQOyAIyA21_SiATySnySiGSiAA6HStackVyACyAA08ModifiedQ0VyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA28_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A28_yAA6SpacerVAA12_FrameLayoutVGA2KtGGGG_A4_Qo_A21_GSgA16_yAkCyA19__A19_tGA21_GSgtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t partial apply for closure #2 in PowerZonesEntryView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PowerZonesEntryView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined destroy of PowerZonesEntryView(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesEntryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore23PowerZonesAlertZoneTypeOGAfA22_DisabledPickerContentVyAA0M6OptionVyAfA4TextVGGGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>> and conformance _DisabledPickerContent<A>, &_s7SwiftUI22_DisabledPickerContentVyAA0D6OptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerNavigationButton and conformance PowerNavigationButton()
{
  result = lazy protocol witness table cache variable for type PowerNavigationButton and conformance PowerNavigationButton;
  if (!lazy protocol witness table cache variable for type PowerNavigationButton and conformance PowerNavigationButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerNavigationButton and conformance PowerNavigationButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA4TextVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0m10AttachmentT0VG_AJyAA6SpacerVAA12_FrameLayoutVGAA4TextVA8_tGGGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PowerZonesEntryView() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter(a1, v6, v7, a2);
}

uint64_t outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_9(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroyTm_73()
{
  v1 = (type metadata accessor for PowerZonesEntryView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PowerZonesEntryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter(a1, v6, a2);
}

uint64_t getEnumTagSinglePayload for PowerNavigationButton(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for PowerNavigationButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016AlertsPickerViewVAA14NavigationLinkVyAA6VStackVyAA05TupleH0VyAA4TextVSg_ANtGGAFGGMd);
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for VoiceCompanionSettingsView()
{
  result = type metadata singleton initialization cache for VoiceCompanionSettingsView;
  if (!type metadata singleton initialization cache for VoiceCompanionSettingsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for VoiceCompanionSettingsView()
{
  _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_3(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848]);
  if (v0 <= 0x3F)
  {
    _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_3(319, &lazy cache variable for type metadata for Environment<WorkoutVoiceAvailabilityProvider>, MEMORY[0x277D7DD08]);
    if (v1 <= 0x3F)
    {
      _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_3(319, &lazy cache variable for type metadata for Environment<WithCurrentHostingControllerAction>, MEMORY[0x277CDE530]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for InferenceClient();
        if (v3 <= 0x3F)
        {
          type metadata accessor for VoiceAssetsObserver();
          if (v4 <= 0x3F)
          {
            type metadata accessor for FIUIWorkoutActivityType();
            if (v5 <= 0x3F)
            {
              _s7SwiftUI7BindingVySbGMaTm_2(319, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for State<Int?>();
                if (v7 <= 0x3F)
                {
                  _s7SwiftUI7BindingVySbGMaTm_2(319, &lazy cache variable for type metadata for State<String>, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    _s7SwiftUI7BindingVySbGMaTm_2(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_3(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for State<Int?>()
{
  if (!lazy cache variable for type metadata for State<Int?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<Int?>);
    }
  }
}

void _s7SwiftUI7BindingVySbGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t VoiceCompanionSettingsView.withCurrentHostingController.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VoiceCompanionSettingsView();
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v1 + *(v10 + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for WithCurrentHostingControllerAction();
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

uint64_t closure #1 in VoiceCompanionSettingsView.bindingForToggle.getter@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for VoiceCompanionSettingsView() + 40));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v8, v6);
  if (v8 == 1)
  {
    result = VoiceCompanionSettingsView.toggleIsActive.getter();
  }

  else
  {
    result = 0;
  }

  *a2 = result & 1;
  return result;
}

uint64_t closure #2 in VoiceCompanionSettingsView.bindingForToggle.getter()
{
  type metadata accessor for VoiceCompanionSettingsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

uint64_t VoiceCompanionSettingsView.toggleIsActive.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for VoiceCompanionSettingsView() + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7 == 1)
  {
    v8 = v6;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v6, 0);
    (*(v2 + 8))(v4, v1);
    v8 = v25;
  }

  v10 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

  v11 = WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v10);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    if (v7)
    {
      v13 = v6;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v6, 0);
      (*(v2 + 8))(v4, v1);
      v13 = v25;
    }

    v15 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

    v16 = WorkoutVoiceAvailabilityProvider.State.unavailableReasons.getter();
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd);
    v17 = type metadata accessor for WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20CB5DA70;
    (*(v18 + 104))(v20 + v19, *MEMORY[0x277D7DCB0], v17);
    v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(v20);
    swift_setDeallocating();
    (*(v18 + 8))(v20 + v19, v17);
    swift_deallocClassInstance();
    _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(v16, v21);
    v12 = v22;
  }

  return v12 & 1;
}

uint64_t VoiceCompanionSettingsView.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v131 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v130 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v133 = &v112 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGMd);
  v7 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = &v112 - v8;
  v119 = type metadata accessor for WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for EnvironmentValues();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InferenceClient();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutVoicePickerView();
  MEMORY[0x28223BE20](v15);
  v120 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v129 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v112 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAEGMd);
  v127 = *(v24 - 8);
  v128 = v24;
  MEMORY[0x28223BE20](v24);
  v135 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v112 - v27;
  v136 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v134 = v28;
  Section<>.init(content:)();
  if (VoiceCompanionSettingsView.toggleIsActive.getter())
  {
    v125 = 0;
    v123 = 0;
    v124 = 1;
  }

  else
  {
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08]);
    v29 = Environment.init<A>(_:)();
    v31 = v30;
    v138 = static Color.clear.getter();
    v32 = AnyView.init<A>(_:)();
    v125 = v29;
    v123 = v31 & 1;
    outlined copy of Environment<WorkoutVoiceAvailabilityProvider>.Content(v29, v31 & 1);
    v124 = v32;
  }

  v33 = type metadata accessor for VoiceCompanionSettingsView();
  v34 = v2 + v33[10];
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v34) = *(v34 + 16);
  v138 = v35;
  v139 = v36;
  LOBYTE(v140) = v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v137, v37);
  v132 = v23;
  if (LOBYTE(v137._countAndFlagsBits) == 1 && (VoiceCompanionSettingsView.toggleIsActive.getter() & 1) != 0)
  {
    v38 = *(dispatch thunk of VoiceAssetsObserver.assets.getter() + 16);

    v39 = 1;
    if (v38)
    {
      v113 = v7;
      v40 = *(v12 + 16);
      v40(v14, v2 + v33[7], v11);
      v41 = v122;
      v40(v122, v14, v11);
      v42 = v41 + v15[5];
      type metadata accessor for VoiceAssetsObserver();
      lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver, MEMORY[0x277D7E340]);
      *v42 = Environment.init<A>(_:)();
      *(v42 + 8) = v43 & 1;
      v44 = v41 + v15[6];
      v137._countAndFlagsBits = 0;
      LOBYTE(v137._object) = 1;
      State.init(wrappedValue:)();
      v45 = v139;
      v46 = v140;
      *v44 = v138;
      *(v44 + 8) = v45;
      *(v44 + 16) = v46;
      v47 = v41 + v15[8];
      LOBYTE(v137._countAndFlagsBits) = 0;
      State.init(wrappedValue:)();
      (*(v12 + 8))(v14, v11);
      v48 = v139;
      *v47 = v138;
      *(v47 + 8) = v48;
      v49 = (v41 + v15[7]);
      *v49 = 0;
      v49[1] = 0;
      v50 = v2 + v33[5];
      v51 = *v50;
      if (*(v50 + 8) == 1)
      {
        v52 = v51;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v73 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v74 = v114;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v51, 0);
        (*(v115 + 8))(v74, v116);
        v52 = v138;
      }

      v75 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

      v76 = WorkoutVoiceAvailabilityProvider.State.unavailableReasons.getter();
      outlined consume of WorkoutVoiceAvailabilityProvider.State(v75);
      v77 = v118;
      v78 = v117;
      v79 = v119;
      (*(v118 + 104))(v117, *MEMORY[0x277D7DCB0], v119);
      LOBYTE(v75) = specialized Set.contains(_:)(v78, v76);

      (*(v77 + 8))(v78, v79);
      v112 = v2;
      if (v75)
      {
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v80 = WorkoutUIBundle.super.isa;
        v141._object = 0xE000000000000000;
        v81.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v81.value._object = 0xEB00000000656C62;
        v82._object = 0x800000020CBA1850;
        v82._countAndFlagsBits = 0xD00000000000001FLL;
        v83._countAndFlagsBits = 0;
        v83._object = 0xE000000000000000;
        v141._countAndFlagsBits = 0;
        v84 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v81, v80, v83, v141);

        v137 = v84;
        lazy protocol witness table accessor for type String and conformance String();
        v85 = Text.init<A>(_:)();
        v87 = v86;
        v89 = v88;
        static Font.footnote.getter();
        v90 = Text.font(_:)();
        v92 = v91;
        v94 = v93;
        v96 = v95;

        outlined consume of Text.Storage(v85, v87, v89 & 1);

        v137._countAndFlagsBits = static Color.clear.getter();
        v97 = AnyView.init<A>(_:)();
        v98 = static Color.gray.getter();
        KeyPath = swift_getKeyPath();
        v100 = v94 & 1;
        v119 = v90;
        v101 = v90;
        v102 = v92;
        v103 = v94 & 1;
        outlined copy of Text.Storage(v101, v92, v100);
        v104 = v96;

        v118 = v97;

        v105 = KeyPath;

        v106 = v98;
      }

      else
      {
        v119 = 0;
        v102 = 0;
        v103 = 0;
        v104 = 0;
        v118 = 0;
        v105 = 0;
        v106 = 0;
      }

      v107 = v120;
      outlined init with copy of WorkoutVoicePickerView(v122, v120, type metadata accessor for WorkoutVoicePickerView);
      v108 = v121;
      outlined init with copy of WorkoutVoicePickerView(v107, v121, type metadata accessor for WorkoutVoicePickerView);
      v109 = (v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A15VoicePickerViewV_05SwiftB015ModifiedContentVyAFyAD4TextVAD21_TraitWritingModifierVyAD017ListRowBackgroundJ3KeyVGGAD012_EnvironmentpkL0VyAD5ColorVSgGGSgtMd) + 48));
      v110 = v119;
      v111 = v118;
      outlined copy of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(v119, v102, v103, v104);
      outlined consume of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(v110, v102, v103, v104);
      *v109 = v110;
      v109[1] = v102;
      v109[2] = v103;
      v109[3] = v104;
      v109[4] = v111;
      v109[5] = v105;
      v109[6] = v106;
      outlined destroy of WorkoutVoicePickerView(v122);
      outlined consume of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(v110, v102, v103, v104);
      outlined destroy of WorkoutVoicePickerView(v107);
      v23 = v132;
      outlined init with take of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>(v108, v132);
      v39 = 0;
      v7 = v113;
    }
  }

  else
  {
    v39 = 1;
  }

  v53 = *(v7 + 56);
  v54 = 1;
  v55 = v23;
  v53(v23, v39, 1, v126);
  v56 = VoiceCompanionSettingsView.toggleIsActive.getter();
  if (v56)
  {
    MEMORY[0x28223BE20](v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundH3KeyVGG07WorkoutB004HidekL9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ArEyAEyAEyAgA14_PaddingLayoutVGAA012_EnvironmentniJ0VyAA13OpenURLActionVGGALGtGMd);
    lazy protocol witness table accessor for type Toggle<Text> and conformance Toggle<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundH3KeyVGG07WorkoutB004HidekL9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ArEyAEyAEyAgA14_PaddingLayoutVGAA012_EnvironmentniJ0VyAA13OpenURLActionVGGALGtGMd);
    Section<>.init(content:)();
    v54 = 0;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGMd);
  v58 = v133;
  (*(*(v57 - 8) + 56))(v133, v54, 1, v57);
  v60 = v127;
  v59 = v128;
  v61 = *(v127 + 16);
  v62 = v135;
  v61(v135, v134, v128);
  v63 = v129;
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v55, v129, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd);
  v64 = v130;
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v58, v130, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd);
  v65 = v131;
  v61(v131, v62, v59);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAEG_AGy07WorkoutB0027VoiceCompanionSettingsErrorE0VAA013_TraitWritingM0VyAA017ListRowBackgroundsK0VGGSgAA05TupleE0VyAR0no6PickerE0V_AGyAGyAkYGAA01_jktM0VyAA5ColorVSgGGSgtGSgACyAEA1_yAGyA4_AR04HideuV9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A18_AGyAGyAGyAkA14_PaddingLayoutVGA6_yAA13OpenURLActionVGGAYGtGAEGSgtMd);
  v67 = &v65[v66[12]];
  v68 = v124;
  v69 = v125;
  v70 = v123;
  *v67 = v125;
  *(v67 + 1) = v70;
  *(v67 + 2) = v68;
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v63, &v65[v66[16]], &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd);
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v64, &v65[v66[20]], &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd);
  outlined copy of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(v69, v70, v68);
  outlined consume of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(v69, v70, v68);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v58, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v132, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd);
  v71 = *(v60 + 8);
  v71(v134, v59);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v64, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v63, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd);
  outlined consume of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(v69, v70, v68);
  return (v71)(v135, v59);
}

uint64_t closure #1 in VoiceCompanionSettingsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VoiceCompanionSettingsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  if (VoiceCompanionSettingsView.toggleIsActive.getter())
  {
    v28 = type metadata accessor for VoiceCompanionSettingsView;
    outlined init with copy of WorkoutVoicePickerView(a1, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VoiceCompanionSettingsView);
    type metadata accessor for MainActor();
    v11 = static MainActor.shared.getter();
    v29 = v10;
    v30 = a2;
    v12 = v8;
    v13 = v7;
    v14 = a1;
    v15 = v11;
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    v19 = v14;
    v7 = v13;
    v8 = v12;
    v10 = v29;
    outlined init with take of VoiceCompanionSettingsView(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    outlined init with copy of WorkoutVoicePickerView(v19, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v20 = static MainActor.shared.getter();
    a2 = v30;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = MEMORY[0x277D85700];
    outlined init with take of VoiceCompanionSettingsView(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v16);
    Binding.init(get:set:)();
  }

  else
  {
    v31 = 0;
    static Binding.constant(_:)();
  }

  Toggle.init(isOn:label:)();
  v22 = VoiceCompanionSettingsView.toggleIsActive.getter();
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = (v22 & 1) == 0;
  (*(v8 + 32))(a2, v10, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v26 = (a2 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_17;
  v26[2] = v24;
  return result;
}

uint64_t closure #1 in closure #1 in VoiceCompanionSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  Image.init(_internalSystemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v4._countAndFlagsBits = 8224;
  v4._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v6._object = 0x800000020CBA1960;
  v6._countAndFlagsBits = 0xD000000000000011;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v28);

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v9);

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringKey.init(stringInterpolation:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  v16 = WorkoutUIBundle.super.isa;
  v29._object = 0xE000000000000000;
  v17._object = 0x800000020CBA1960;
  v17._countAndFlagsBits = 0xD000000000000011;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v29);

  lazy protocol witness table accessor for type String and conformance String();
  v20 = Text.accessibilityLabel<A>(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  outlined consume of Text.Storage(v11, v13, v15 & 1);

  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  return result;
}

uint64_t closure #2 in VoiceCompanionSettingsView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v90 = a1;
  v93 = a2;
  v2 = type metadata accessor for VoiceCompanionSettingsView();
  v87 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = v3;
  v89 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd);
  MEMORY[0x28223BE20](v91);
  v92 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v79 - v6;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v99._object = 0xE000000000000000;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._object = 0x800000020CBA1870;
  v10._countAndFlagsBits = 0xD00000000000002ELL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v99._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v99);

  v98 = v12;
  v94 = lazy protocol witness table accessor for type String and conformance String();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.footnote.getter();
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  outlined consume of Text.Storage(v13, v15, v17 & 1);

  static Color.gray.getter();
  v96 = Text.foregroundColor(_:)();
  v86 = v23;
  v85 = v24;
  v95 = v25;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  v98._countAndFlagsBits = static Color.clear.getter();
  v84 = AnyView.init<A>(_:)();
  v26 = WorkoutUIBundle.super.isa;
  v100._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000038;
  v27._object = 0x800000020CBA18A0;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v100._countAndFlagsBits = 0;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v100);

  v98 = v30;
  v31 = Text.init<A>(_:)();
  v33 = v32;
  LOBYTE(v20) = v34;
  static Font.footnote.getter();
  v35 = Text.font(_:)();
  v37 = v36;
  v39 = v38;

  outlined consume of Text.Storage(v31, v33, v20 & 1);

  static Color.gray.getter();
  v80 = Text.foregroundColor(_:)();
  v81 = v40;
  v82 = v41;
  v83 = v42;

  outlined consume of Text.Storage(v35, v37, v39 & 1);

  v98._countAndFlagsBits = static Color.clear.getter();
  v94 = AnyView.init<A>(_:)();
  LocalizedStringKey.init(stringLiteral:)();
  v43 = Text.init(_:tableName:bundle:comment:)();
  v45 = v44;
  LOBYTE(v20) = v46;
  static Font.footnote.getter();
  v47 = Text.font(_:)();
  v49 = v48;
  LOBYTE(v35) = v50;
  v52 = v51;

  outlined consume of Text.Storage(v43, v45, v20 & 1);

  LOBYTE(v45) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v35 & 1;
  LOBYTE(v98._countAndFlagsBits) = v35 & 1;
  v97 = 0;
  KeyPath = swift_getKeyPath();
  v63 = v89;
  outlined init with copy of WorkoutVoicePickerView(v90, v89, type metadata accessor for VoiceCompanionSettingsView);
  v64 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v65 = swift_allocObject();
  outlined init with take of VoiceCompanionSettingsView(v63, v65 + v64);
  v66 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGMd) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd);
  OpenURLAction.init(handler:)();
  *v66 = KeyPath;
  *v7 = v47;
  *(v7 + 1) = v49;
  v7[16] = v61;
  *(v7 + 3) = v52;
  v7[32] = v45;
  *(v7 + 5) = v54;
  *(v7 + 6) = v56;
  *(v7 + 7) = v58;
  *(v7 + 8) = v60;
  v7[72] = 0;
  v98._countAndFlagsBits = static Color.clear.getter();
  v67 = AnyView.init<A>(_:)();
  v68 = v92;
  *&v7[*(v91 + 9)] = v67;
  LOBYTE(KeyPath) = v85 & 1;
  LOBYTE(v98._countAndFlagsBits) = v85 & 1;
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v7, v68, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd);
  v69 = v93;
  v70 = v95;
  v71 = v96;
  v72 = v86;
  *v93 = v96;
  v69[1] = v72;
  *(v69 + 16) = KeyPath;
  v73 = v84;
  v69[3] = v70;
  v69[4] = v73;
  v74 = v80;
  v75 = v81;
  v69[5] = v80;
  v69[6] = v75;
  LODWORD(v90) = v82 & 1;
  *(v69 + 56) = v82 & 1;
  v91 = v7;
  v76 = v94;
  v69[8] = v83;
  v69[9] = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundF3KeyVGG07WorkoutB004HideiJ9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ApCyACyACyAeA14_PaddingLayoutVGAA012_EnvironmentlgH0VyAA13OpenURLActionVGGAJGtMd);
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v68, v69 + *(v77 + 64), &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd);
  outlined copy of Text.Storage(v71, v72, KeyPath);

  LOBYTE(v71) = v90;
  outlined copy of Text.Storage(v74, v75, v90);

  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v91, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v68, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd);
  outlined consume of Text.Storage(v74, v75, v71);

  outlined consume of Text.Storage(v96, v72, v98._countAndFlagsBits);
}

uint64_t key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.openURL.setter();
}

void closure #1 in closure #2 in VoiceCompanionSettingsView.body.getter()
{
  v0 = type metadata accessor for WithCurrentHostingControllerAction();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x20F30BAD0](0xD000000000000027, 0x800000020CBA1930, v2);
  v6 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v6)
  {
    v7 = VoiceCompanionSettingsView.withCurrentHostingController.getter(v4);
    MEMORY[0x28223BE20](v7);
    *(&v8 - 2) = v6;
    WithCurrentHostingControllerAction.callAsFunction(_:)();
    (*(v1 + 8))(v4, v0);
    static OpenURLAction.Result.handled.getter();
  }

  else
  {

    MEMORY[0x282130C38]();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type Toggle<Text> and conformance Toggle<A>(&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd);
    lazy protocol witness table accessor for type Toggle<Text> and conformance Toggle<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id outlined copy of Environment<WorkoutVoiceAvailabilityProvider>.Content(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void *outlined copy of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(void *result, char a2, uint64_t a3)
{
  if (a3 != 1)
  {
    outlined copy of Environment<WorkoutVoiceAvailabilityProvider>.Content(result, a2 & 1);
  }

  return result;
}

void *outlined consume of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(void *result, char a2, uint64_t a3)
{
  if (a3 != 1)
  {
    outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(result, a2 & 1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined copy of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined destroy of WorkoutVoicePickerView(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoicePickerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of WorkoutVoicePickerView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of VoiceCompanionSettingsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceCompanionSettingsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in closure #2 in VoiceCompanionSettingsView.body.getter()
{
  type metadata accessor for VoiceCompanionSettingsView();

  closure #1 in closure #2 in VoiceCompanionSettingsView.body.getter();
}

uint64_t outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id partial apply for closure #1 in closure #1 in closure #2 in VoiceCompanionSettingsView.body.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  [v2 setPresentingViewController_];

  return [v2 present];
}

uint64_t outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in VoiceCompanionSettingsView.bindingForToggle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for VoiceCompanionSettingsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in VoiceCompanionSettingsView.bindingForToggle.getter(v4, a1);
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for VoiceCompanionSettingsView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
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

uint64_t partial apply for closure #2 in VoiceCompanionSettingsView.bindingForToggle.getter()
{
  type metadata accessor for VoiceCompanionSettingsView();

  return closure #2 in VoiceCompanionSettingsView.bindingForToggle.getter();
}

uint64_t lazy protocol witness table accessor for type Toggle<Text> and conformance Toggle<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t WorkoutAssetLoadStatus.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x646575657571;
      case 1:
        return 0x676E6964616F6CLL;
      case 2:
        return 0x6574656C706D6F63;
    }

LABEL_16:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x6564616F4C746F6ELL;
    }

    if (a1 == 6)
    {
      return 0x6E776F6E6B6E75;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0x64656C696166;
  }

  else
  {
    return 0x656C6C65636E6163;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutAssetLoadStatus()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutAssetLoadStatus()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutAssetLoadStatus@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized WorkoutAssetLoadStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized WorkoutAssetLoadStatus.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutAssetLoadStatus and conformance WorkoutAssetLoadStatus()
{
  result = lazy protocol witness table cache variable for type WorkoutAssetLoadStatus and conformance WorkoutAssetLoadStatus;
  if (!lazy protocol witness table cache variable for type WorkoutAssetLoadStatus and conformance WorkoutAssetLoadStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAssetLoadStatus and conformance WorkoutAssetLoadStatus);
  }

  return result;
}

uint64_t WorkoutBuddySummaryTitleView.init(state:isWorkoutConfiguredWithWorkoutBuddy:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = a3 + *(type metadata accessor for WorkoutBuddySummaryTitleView() + 20);
  *v13 = a2;
  *(v13 + 8) = 0;
  v14 = *(v7 + 16);
  v14(v12, a1, v6);
  v14(v9, v12, v6);
  State.init(wrappedValue:)();
  v15 = *(v7 + 8);
  v15(a1, v6);
  return v15(v12, v6);
}

uint64_t type metadata accessor for WorkoutBuddySummaryTitleView()
{
  result = type metadata singleton initialization cache for WorkoutBuddySummaryTitleView;
  if (!type metadata singleton initialization cache for WorkoutBuddySummaryTitleView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutBuddySummaryTitleView.init(isWorkoutConfiguredWithWorkoutBuddy:isWorkoutBuddyMuted:isWorkoutBuddyHeadphonesOff:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18);
  v21 = &v27 - v19;
  if (a3)
  {
    (*(v9 + 104))(&v27 - v19, *MEMORY[0x277D7DB88], v8, v20);
  }

  else
  {
    if (a2)
    {
      v22 = MEMORY[0x277D7DB90];
    }

    else
    {
      v22 = MEMORY[0x277D7DB98];
    }

    (*(v9 + 104))(&v27 - v19, *v22, v8, v20);
  }

  v23 = *(v9 + 16);
  v23(v17, v21, v8);
  v24 = a4 + *(type metadata accessor for WorkoutBuddySummaryTitleView() + 20);
  *v24 = a1 & 1;
  *(v24 + 8) = 0;
  v23(v14, v17, v8);
  v23(v11, v14, v8);
  State.init(wrappedValue:)();
  v25 = *(v9 + 8);
  v25(v14, v8);
  v25(v17, v8);
  return (v25)(v21, v8);
}

uint64_t WorkoutBuddySummaryTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutBuddySummaryTitleView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  WorkoutBuddySummaryTitleView.icon()(a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVSgAA16_FixedSizeLayoutVGMd) + 36)) = 257;
  v7 = [objc_opt_self() defaultCenter];
  v8 = static NSNotificationName.workoutBuddyStateChanged.getter();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVy07WorkoutB00k11BuddyStatusD0VSgAA16_FixedSizeLayoutVGGMd);
  NSNotificationCenter.publisher(for:object:)();

  outlined init with copy of WorkoutBuddySummaryTitleView(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  result = outlined init with take of WorkoutBuddySummaryTitleView(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for WorkoutBuddySummaryTitleView);
  v13 = (a1 + *(v9 + 56));
  *v13 = partial apply for closure #1 in WorkoutBuddySummaryTitleView.body.getter;
  v13[1] = v11;
  return result;
}

uint64_t closure #1 in WorkoutBuddySummaryTitleView.body.getter(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v54 = type metadata accessor for Logger();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A19BuddyStatePublisherC0D0OSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v21);
  v53 = &v46 - v22;
  v23 = Notification.userInfo.getter();
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = v23;
  v55 = static WorkoutBuddyStatePublisher.State.stateDidChangeNotificationUserInfoStateKey.getter();
  v56 = v25;
  AnyHashable.init<A>(_:)();
  if (!*(v24 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v57), (v27 & 1) == 0))
  {

    outlined destroy of AnyHashable(v57);
LABEL_9:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v26, &v58);
  outlined destroy of AnyHashable(v57);

  if (!*(&v59 + 1))
  {
LABEL_10:
    _sypSgWOhTm_1(&v58, &_sypSgMd);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_11;
  }

  v28 = swift_dynamicCast();
  (*(v12 + 56))(v10, v28 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v29 = v53;
    (*(v12 + 32))(v53, v10, v11);
    static WOLog.workoutVoice.getter();
    v49 = *(v12 + 16);
    v49(v20, v29, v11);
    v30 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v48))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v47 = v30;
      v32 = WorkoutBuddyStatePublisher.State.rawValue.getter();
      v33 = *(v12 + 8);
      v50 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51 = v33;
      v33(v20, v11);
      *(v31 + 4) = v32;
      v30 = v47;
      _os_log_impl(&dword_20C66F000, v47, v48, "Got Notified of new workout buddy state: %ld. Updating Indicator", v31, 0xCu);
      v34 = v31;
      v29 = v53;
      MEMORY[0x20F30E080](v34, -1, -1);
    }

    else
    {
      v39 = *(v12 + 8);
      v50 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51 = v39;
      v39(v20, v11);
    }

    (*(v2 + 8))(v4, v54);
    v40 = v49;
    v49(v17, v29, v11);
    v40(v14, v17, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMd);
    v41 = v52;
    State.wrappedValue.setter();
    v42 = v51;
    v51(v17, v11);
    (*(v12 + 104))(v17, *MEMORY[0x277D7DBA8], v11);
    lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v42(v17, v11);
    if (v57[0] == v58)
    {
      v43 = (v41 + *(type metadata accessor for WorkoutBuddySummaryTitleView() + 20));
      v44 = *v43;
      v45 = *(v43 + 1);
      LOBYTE(v57[0]) = v44;
      v57[1] = v45;
      LOBYTE(v58) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.wrappedValue.setter();
    }

    return (v42)(v29, v11);
  }

LABEL_11:
  _sypSgWOhTm_1(v10, &_s11WorkoutCore0A19BuddyStatePublisherC0D0OSgMd);
  static WOLog.workoutVoice.getter();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_20C66F000, v35, v36, "Got Notified of new workout buddy state but could not cast. Ignoring update", v37, 2u);
    MEMORY[0x20F30E080](v37, -1, -1);
  }

  return (*(v2 + 8))(v7, v54);
}

uint64_t WorkoutBuddySummaryTitleView.icon()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WorkoutBuddyStatusView();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v1 + *(type metadata accessor for WorkoutBuddySummaryTitleView() + 20));
  v8 = *v7;
  v9 = *(v7 + 1);
  v12[16] = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v12[15] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMd);
    State.wrappedValue.getter();
    *v6 = swift_getKeyPath();
    v6[8] = 0;
    outlined init with take of WorkoutBuddySummaryTitleView(v6, a1, type metadata accessor for WorkoutBuddyStatusView);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v4 + 56))(a1, v10, 1, v3);
}

uint64_t outlined init with copy of WorkoutBuddySummaryTitleView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutBuddySummaryTitleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for View.body.getter in conformance WorkoutBuddySummaryTitleView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  WorkoutBuddySummaryTitleView.icon()(a2);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVSgAA16_FixedSizeLayoutVGMd) + 36)) = 257;
  v7 = [objc_opt_self() defaultCenter];
  v8 = static NSNotificationName.workoutBuddyStateChanged.getter();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVy07WorkoutB00k11BuddyStatusD0VSgAA16_FixedSizeLayoutVGGMd);
  NSNotificationCenter.publisher(for:object:)();

  outlined init with copy of WorkoutBuddySummaryTitleView(v3, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  result = outlined init with take of WorkoutBuddySummaryTitleView(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for WorkoutBuddySummaryTitleView);
  v13 = (a2 + *(v9 + 56));
  *v13 = closure #1 in WorkoutBuddySummaryTitleView.body.getterpartial apply;
  v13[1] = v11;
  return result;
}

void type metadata completion function for WorkoutBuddySummaryTitleView()
{
  type metadata accessor for State<WorkoutBuddyStatePublisher.State>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<Bool>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for State<WorkoutBuddyStatePublisher.State>()
{
  if (!lazy cache variable for type metadata for State<WorkoutBuddyStatePublisher.State>)
  {
    type metadata accessor for WorkoutBuddyStatePublisher.State();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<WorkoutBuddyStatePublisher.State>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<WorkoutBuddyStatusView?, _FixedSizeLayout>> and conformance SubscriptionView<A, B>()
{
  result = lazy protocol witness table cache variable for type SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<WorkoutBuddyStatusView?, _FixedSizeLayout>> and conformance SubscriptionView<A, B>;
  if (!lazy protocol witness table cache variable for type SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<WorkoutBuddyStatusView?, _FixedSizeLayout>> and conformance SubscriptionView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVy07WorkoutB00k11BuddyStatusD0VSgAA16_FixedSizeLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<WorkoutBuddyStatusView?, _FixedSizeLayout>> and conformance SubscriptionView<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_74()
{
  v1 = *(type metadata accessor for WorkoutBuddySummaryTitleView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMd);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WorkoutBuddySummaryTitleView.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutBuddySummaryTitleView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in WorkoutBuddySummaryTitleView.body.getter(a1, v4);
}

uint64_t _sypSgWOhTm_1(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State()
{
  result = lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State;
  if (!lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State)
  {
    type metadata accessor for WorkoutBuddyStatePublisher.State();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State);
  }

  return result;
}

uint64_t outlined init with take of WorkoutBuddySummaryTitleView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC7SwiftUI8GridItemV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

id ActivityTypeRoomPhone.workoutVoiceAvailabilityProvider.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *v0;

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

id ActivityTypeRoomPhone.init(activityType:activityMoveMode:activityPausedRingsObserver:healthStore:occurrenceStore:inferenceClient:)@<X0>(void *a1@<X0>, int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  i = a5;
  v57 = a6;
  v54 = a2;
  v55 = a4;
  v52 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v53);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for WorkoutConfigurationFilterType();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  type metadata accessor for WorkoutVoiceAvailabilityProvider();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08]);
  *a7 = Environment.init<A>(_:)();
  *(a7 + 8) = v21 & 1;
  _sSo21FIUIFormattingManagerCMaTm_11(0, &lazy cache variable for type metadata for FIUIFormattingManager);
  lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
  *(a7 + 16) = EnvironmentObject.init()();
  *(a7 + 24) = v22;
  *(a7 + 56) = implicit closure #2 in implicit closure #1 in variable initialization expression of ActivityTypeRoomPhone._devicesProvider;
  *(a7 + 64) = 0;
  *(a7 + 72) = 0;
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *(a7 + 80) = EnvironmentObject.init()();
  *(a7 + 88) = v23;
  v24 = type metadata accessor for ActivityTypeRoomPhone();
  (*(v15 + 104))(v20, *MEMORY[0x277D7DC30], v14);
  (*(v15 + 16))(v17, v20, v14);
  State.init(wrappedValue:)();
  (*(v15 + 8))(v20, v14);
  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  _s10Foundation4UUIDVSgWOcTm_3(v13, v10, &_s10Foundation4UUIDVSgMd);
  State.init(wrappedValue:)();
  _s10Foundation4UUIDVSgWOhTm_3(v13, &_s10Foundation4UUIDVSgMd);
  v27 = v54;
  v26 = v55;
  *(a7 + 96) = a1;
  *(a7 + 104) = v27;
  *(a7 + 112) = v26;
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = v27;
  v29 = v26;
  v30 = i;
  v28[4] = v26;
  v28[5] = v30;
  *(a7 + 32) = partial apply for implicit closure #1 in ActivityTypeRoomPhone.init(activityType:activityMoveMode:activityPausedRingsObserver:healthStore:occurrenceStore:inferenceClient:);
  *(a7 + 40) = v28;
  *(a7 + 48) = 0;
  v31 = *(v24 + 48);
  v32 = type metadata accessor for InferenceClient();
  v51 = *(v32 - 8);
  v33 = *(v51 + 16);
  v53 = a7;
  v33(a7 + v31, v57, v32);
  v34 = objc_opt_self();
  v35 = a1;
  v36 = v29;
  v37 = v30;
  result = [v34 fiui:v35 supportedGoalTypesForActivityType:v27 activityMoveMode:?];
  if (result)
  {
    v39 = result;
    v54 = v37;
    _sSo21FIUIFormattingManagerCMaTm_11(0, &lazy cache variable for type metadata for NSNumber);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v40 >> 62)
    {
      goto LABEL_18;
    }

    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v32;
    for (i = v24; v41; i = v24)
    {
      v42 = 0;
      v24 = v40 & 0xC000000000000001;
      v32 = v40 & 0xFFFFFFFFFFFFFF8;
      v43 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v24)
        {
          v44 = MEMORY[0x20F30C990](v42, v40);
        }

        else
        {
          if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v44 = *(v40 + 8 * v42 + 32);
        }

        v45 = v44;
        v46 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        v47 = [v44 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
        }

        v49 = *(v43 + 2);
        v48 = *(v43 + 3);
        if (v49 >= v48 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v43);
        }

        *(v43 + 2) = v49 + 1;
        *&v43[8 * v49 + 32] = v47;
        ++v42;
        if (v46 == v41)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v41 = __CocoaSet.count.getter();
      v55 = v32;
    }

    v43 = MEMORY[0x277D84F90];
LABEL_20:

    result = (*(v51 + 8))(v57, v55);
    *(v53 + i[15]) = v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager()
{
  result = lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager;
  if (!lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager)
  {
    _sSo21FIUIFormattingManagerCMaTm_11(255, &lazy cache variable for type metadata for FIUIFormattingManager);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager);
  }

  return result;
}

uint64_t _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ActivityTypeRoomPhone()
{
  result = type metadata singleton initialization cache for ActivityTypeRoomPhone;
  if (!type metadata singleton initialization cache for ActivityTypeRoomPhone)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t implicit closure #1 in ActivityTypeRoomPhone.init(activityType:activityMoveMode:activityPausedRingsObserver:healthStore:occurrenceStore:inferenceClient:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  objc_allocWithZone(type metadata accessor for WorkoutConfigurationDataSource());
  v7 = a1;
  v8 = a3;
  v9 = a4;
  return WorkoutConfigurationDataSource.init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)();
}

uint64_t ActivityTypeRoomPhone.isDistanceSupported.getter()
{
  v1 = type metadata accessor for WorkoutConfigurationFilterType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = type metadata accessor for WorkoutDevice();
  v5 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WorkoutDeviceType();
  v8 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v60 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = v55 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (v55 - v13);
  v15 = *(type metadata accessor for ActivityTypeRoomPhone() + 60);
  v62 = v0;
  v16 = *(v0 + v15);
  v17 = *(v16 + 16);
  v18 = (v16 + 32);
  while (v17)
  {
    v19 = *v18++;
    --v17;
    if (v19 == 1)
    {
      v57 = v4;
      v58 = v2;
      v59 = v1;
      type metadata accessor for WorkoutDevicesProvider();
      _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8]);
      v20 = StateObject.wrappedValue.getter();
      v21 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

      v22 = *(v21 + 16);
      if (v22)
      {
        v56 = v14;
        v69 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
        v23 = v69;
        v25 = *(v5 + 16);
        v24 = v5 + 16;
        v26 = *(v24 + 64);
        v55[1] = v21;
        v27 = v21 + ((v26 + 32) & ~v26);
        v64 = *(v24 + 56);
        v65 = v25;
        v66 = v24;
        v28 = (v24 - 8);
        v63 = v8 + 32;
        v29 = v60;
        do
        {
          v30 = v67;
          v65(v7, v27, v67);
          WorkoutDevice.type.getter();
          (*v28)(v7, v30);
          v69 = v23;
          v32 = v23[2];
          v31 = v23[3];
          if (v32 >= v31 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
            v23 = v69;
          }

          v23[2] = v32 + 1;
          (*(v8 + 4))(v23 + ((v8[80] + 32) & ~v8[80]) + *(v8 + 9) * v32, v29, v68);
          v27 += v64;
          --v22;
        }

        while (v22);

        v14 = v56;
      }

      else
      {

        v23 = MEMORY[0x277D84F90];
      }

      (*(v8 + 13))(v14, *MEMORY[0x277D7D9D0], v68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_35:
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      }

      v34 = v23[2];
      v33 = v23[3];
      if (v34 >= v33 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v23);
      }

      v23[2] = v34 + 1;
      v36 = *(v8 + 4);
      v35 = v8 + 32;
      v37 = v23 + ((v35[48] + 32) & ~v35[48]);
      v38 = *(v35 + 5);
      v36(&v37[v38 * v34], v14, v68);
      v39 = v37;
      v14 = (v35 - 16);
      v8 = v35 - 24;
      v40 = -1;
      v41 = v68;
      while (v34 != v40)
      {
        if (++v40 >= v23[2])
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v42 = &v39[v38];
        v43 = v61;
        (*v14)(v61);
        v44 = WorkoutDeviceType.supportsPedometer(activityType:)();
        (*v8)(v43, v41);
        v39 = v42;
        if (v44)
        {
LABEL_18:

          return 1;
        }
      }

      type metadata accessor for WorkoutConfigurationDataSource();
      _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
      v46 = StateObject.wrappedValue.getter();
      v14 = v57;
      v47 = v58;
      v48 = v59;
      (*(v58 + 104))(v57, *MEMORY[0x277D7DC38], v59);
      v49 = WorkoutConfigurationDataSource.sortedWorkoutConfigurations(by:)();

      (*(v47 + 8))(v14, v48);
      if (v49 >> 62)
      {
        v50 = __CocoaSet.count.getter();
        if (v50)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v50)
        {
LABEL_21:
          v51 = 0;
          do
          {
            if ((v49 & 0xC000000000000001) != 0)
            {
              v52 = MEMORY[0x20F30C990](v51, v49);
            }

            else
            {
              if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v52 = *(v49 + 8 * v51 + 32);
            }

            v14 = v52;
            v53 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_33;
            }

            type metadata accessor for GoalWorkoutConfiguration();
            if (swift_dynamicCastClass())
            {
              v54 = GoalWorkoutConfiguration.goal.getter();
              v8 = [v54 goalTypeIdentifier];

              if (v8 == 1)
              {

                goto LABEL_18;
              }
            }

            else
            {
            }

            ++v51;
          }

          while (v53 != v50);
        }
      }

      return 0;
    }
  }

  return 0;
}

uint64_t ActivityTypeRoomPhone.showVoiceMotivation.getter()
{
  v1 = type metadata accessor for FitnessIntelligenceFeatures();
  v9[3] = v1;
  v9[4] = _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures, MEMORY[0x277D09F50]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09F48], v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v9);
  if ((v1 & 1) != 0 && (v3 = [*(v0 + 96) workoutActivityType], v4 = objc_msgSend(v3, sel_supportsWorkoutVoiceMotivation), v3, v4))
  {
    v5 = ActivityTypeRoomPhone.workoutVoiceAvailabilityProvider.getter();
    v6 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

    v7 = WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter();
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ActivityTypeRoomPhone.buttonGridColumns.getter()
{
  v1 = type metadata accessor for FitnessIntelligenceFeatures();
  v8[3] = v1;
  v8[4] = _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures, MEMORY[0x277D09F50]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09F48], v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v1 & 1) != 0 && (v3 = [*(v0 + 96) workoutActivityType], v4 = objc_msgSend(v3, sel_supportsWorkoutVoiceMotivation), v3, v4) && (v5 = ActivityTypeRoomPhone.workoutVoiceAvailabilityProvider.getter(), v6 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter(), v5, LOBYTE(v5) = WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter(), outlined consume of WorkoutVoiceAvailabilityProvider.State(v6), (v5))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t ActivityTypeRoomPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = type metadata accessor for ActivityTypeRoomPhone();
  v80 = *(v2 - 8);
  v100 = *(v80 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListSectionSpacing();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGA31_yAA0eU15SpacingTraitKeyVGGA81_yAA0eU7SpacingVSgGGA116_GMd);
  MEMORY[0x28223BE20](v78);
  v9 = &v76 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAMyAMyAMyAA4ListVys5NeverOAA05TupleC0VyAcAE0dE6InsetsyQrAA0J0OAJV_12CoreGraphics7CGFloatVSgtFQOyAcAEAD_AEQrAG_AKtFQOyAcAE0D14SectionMarginsyQrAW_A_tFQOyAMyAA0U0VyAA05EmptyC0VAMyAA6VStackVyASyAMyAA9LazyVGridVyASy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0nE18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgASyA9_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay07WorkoutR020WorkoutConfigurationCG10Foundation4UUIDVAMyAMyAA5GroupVyAA012_ConditionalM0VyA9_024RaceWorkoutConfigurationE0VAcAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalJ0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationE0VG_ASyAMyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AMyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0neQ8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yA_GGA31_yAA0nU15SpacingTraitKeyVGGA81_yAA0nU7SpacingVSgGGA116_G_Qo_Md);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v98 = &v76 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAPyAPyAPyAA4ListVys5NeverOAA05TupleC0VyAcAE0hI6InsetsyQrAA0N0OAMV_12CoreGraphics7CGFloatVSgtFQOyAcAEAG_AHQrAJ_ANtFQOyAcAE0H14SectionMarginsyQrAZ_A2_tFQOyAPyAA0Y0VyAA05EmptyC0VAPyAA6VStackVyAVyAPyAA9LazyVGridVyAVy07WorkoutB028MediaConfigurationRoomButtonVSg_A12_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA7_GAA21_TraitWritingModifierVyAA0rI18BackgroundTraitKeyVGG_Qo__Qo__Qo__A5_yA12_32WorkoutConfigurationFilterPickerVSgAVyA12_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay07WorkoutV020WorkoutConfigurationCG10Foundation4UUIDVAPyAPyAA5GroupVyAA012_ConditionalQ0VyA12_024RaceWorkoutConfigurationI0VAcAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalN0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA12_020WorkoutConfigurationI0VG_AVyAPyA76_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_APyA12_31ShareWorkoutConfigurationButtonVA88_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA76_yAA4TextVG_Qo_Qo_GGA34_yAA0riU8TraitKeyVGGA37_GGA12_19CreateWorkoutButtonVSgtGA7_GtGGA84_yA2_GGA34_yAA0rY15SpacingTraitKeyVGGA84_yAA0rY7SpacingVSgGGA119_G_Qo__A52_APyAPyA58_yA60_yA60_yA12_024GoalWorkoutConfigurationC0VA12_028IntervalWorkoutConfigurationC0VGA60_yA12_025PacerWorkoutConfigurationC0VA12_024RaceWorkoutConfigurationC0VGGSgGA84_yA12_28ConfigurationNavigationModelCSgGGA84_yA50_30WorkoutConfigurationDataSourceCSgGGQo_Md);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v76 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyACyACyACyACyAA4ListVys5NeverOAA05TupleE0VyAeAE0jK6InsetsyQrAA0P0OAOV_12CoreGraphics7CGFloatVSgtFQOyAeAEAI_AJQrAL_APtFQOyAeAE0J14SectionMarginsyQrAZ_A2_tFQOyACyAA0Y0VyAA05EmptyE0VACyAA6VStackVyAVyACyAA9LazyVGridVyAVy07WorkoutB028MediaConfigurationRoomButtonVSg_A12_019VoiceCompanionEntryE0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA7_GAA21_TraitWritingModifierVyAA0rK18BackgroundTraitKeyVGG_Qo__Qo__Qo__A5_yA12_32WorkoutConfigurationFilterPickerVSgAVyA12_032NoWorkoutConfigurationsAvailableE0VSg_AA7ForEachVySay07WorkoutV020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA12_024RaceWorkoutConfigurationK0VAeAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalP0O_Sbqd__yXEtAaDRd__lFQOyAA6ButtonVyA12_020WorkoutConfigurationK0VG_AVyACyA76_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA12_31ShareWorkoutConfigurationButtonVA88_GtGQo__SSAeAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA76_yAA4TextVG_Qo_Qo_GGA34_yAA0rkU8TraitKeyVGGA37_GGA12_19CreateWorkoutButtonVSgtGA7_GtGGA84_yA2_GGA34_yAA0rY15SpacingTraitKeyVGGA84_yAA0rY7SpacingVSgGGA119_G_Qo__A52_ACyACyA58_yA60_yA60_yA12_024GoalWorkoutConfigurationE0VA12_028IntervalWorkoutConfigurationE0VGA60_yA12_025PacerWorkoutConfigurationE0VA12_024RaceWorkoutConfigurationE0VGGSgGA84_yA12_28ConfigurationNavigationModelCSgGGA84_yA50_30WorkoutConfigurationDataSourceCSgGGQo__A12_018AlertConfigurationE5ModelCA12_018AlertConfigurationE0VQo_AA13_TaskModifierVGMd);
  MEMORY[0x28223BE20](v101);
  v99 = &v76 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAcAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAnoPQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAMyAMyAMyAMyAA4ListVys5NeverOAA05TupleC0VyAcAE0qR6InsetsyQrAA0W0OAWV_12CoreGraphics7CGFloatVSgtFQOyAcAEAQ_ARQrAT_AXtFQOyAcAE0Q14SectionMarginsyQrA6__A10_tFQOyAMyAA7SectionVyAA05EmptyC0VAMyAA6VStackVyA2_yAMyAA9LazyVGridVyA2_y07WorkoutB028MediaConfigurationRoomButtonVSg_A20_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA15_GAA21_TraitWritingModifierVyAA0yR18BackgroundTraitKeyVGG_Qo__Qo__Qo__A13_yA20_32WorkoutConfigurationFilterPickerVSgA2_yA20_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAMyAMyAA5GroupVyAA012_ConditionalL0VyA20_024RaceWorkoutConfigurationR0VAcAE5alert_AE7actionsQrqd___AJqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipeAGQrAA010HorizontalW0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA20_020WorkoutConfigurationR0VG_A2_yAMyA79_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AMyA20_31ShareWorkoutConfigurationButtonVA91_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA79_yAA4TextVG_Qo_Qo_GGA42_yAA0yR14InsetsTraitKeyVGGA45_GGA20_19CreateWorkoutButtonVSgtGA15_GtGGA87_yA10_GGA42_yAA0Y22SectionSpacingTraitKeyVGGA87_yAA0Y14SectionSpacingVSgGGA122_G_Qo__A60_AMyAMyA66_yA68_yA68_yA20_024GoalWorkoutConfigurationC0VA20_028IntervalWorkoutConfigurationC0VGA68_yA20_025PacerWorkoutConfigurationC0VA20_024RaceWorkoutConfigurationC0VGGSgGA87_yA20_28ConfigurationNavigationModelCSgGGA87_yA58_30WorkoutConfigurationDataSourceCSgGGQo__A20_018AlertConfigurationC5ModelCA20_018AlertConfigurationC0VQo_AA13_TaskModifierVG_AMyA20_10GoalPickerVA156_GQo_Md);
  v89 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v76 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE5sheet11isPresented9onDismissAEQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA08ModifiedG0VyAcAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEApqRQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAOyAOyAOyAOyAA4ListVys5NeverOAA05TupleC0VyAcAE0sT6InsetsyQrAA0Y0OAYV_12CoreGraphics7CGFloatVSgtFQOyAcAEAS_ATQrAV_AZtFQOyAcAE0S14SectionMarginsyQrA8__A12_tFQOyAOyAA7SectionVyAA05EmptyC0VAOyAA6VStackVyA4_yAOyAA9LazyVGridVyA4_y07WorkoutB028MediaConfigurationRoomButtonVSg_A22_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA17_GAA21_TraitWritingModifierVyAA04ListT18BackgroundTraitKeyVGG_Qo__Qo__Qo__A15_yA22_32WorkoutConfigurationFilterPickerVSgA4_yA22_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAOyAOyAA5GroupVyAA012_ConditionalG0VyA22_024RaceWorkoutConfigurationT0VAcAE5alert_AH7actionsQrqd___ALqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipeAEQrAA010HorizontalY0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA22_020WorkoutConfigurationT0VG_A4_yAOyA81_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AOyA22_31ShareWorkoutConfigurationButtonVA93_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA81_yAA4TextVG_Qo_Qo_GGA44_yAA04ListT14InsetsTraitKeyVGGA47_GGA22_19CreateWorkoutButtonVSgtGA17_GtGGA89_yA12_GGA44_yAA26ListSectionSpacingTraitKeyVGGA89_yAA18ListSectionSpacingVSgGGA124_G_Qo__A62_AOyAOyA68_yA70_yA70_yA22_024GoalWorkoutConfigurationC0VA22_028IntervalWorkoutConfigurationC0VGA70_yA22_025PacerWorkoutConfigurationC0VA22_024RaceWorkoutConfigurationC0VGGSgGA89_yA22_28ConfigurationNavigationModelCSgGGA89_yA60_30WorkoutConfigurationDataSourceCSgGGQo__A22_018AlertConfigurationC5ModelCA22_018AlertConfigurationC0VQo_AA13_TaskModifierVG_AOyA22_10GoalPickerVA158_GQo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytA22_20DeviceConnectionMenuVGQo_Qo_Md);
  v91 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAcAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE5sheet11isPresented9onDismissAFQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA08ModifiedI0VyAcAE0D11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAPyAPyAPyAPyAA4ListVys5NeverOAA05TupleC0VyAcAE0tU6InsetsyQrAA0Z0OAZV_12CoreGraphics7CGFloatVSgtFQOyAcAEAT_AUQrAW_A_tFQOyAcAE0T14SectionMarginsyQrA9__A13_tFQOyAPyAA7SectionVyAA05EmptyC0VAPyAA6VStackVyA5_yAPyAA9LazyVGridVyA5_y07WorkoutB028MediaConfigurationRoomButtonVSg_A23_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA18_GAA21_TraitWritingModifierVyAA04ListU18BackgroundTraitKeyVGG_Qo__Qo__Qo__A16_yA23_32WorkoutConfigurationFilterPickerVSgA5_yA23_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAPyAPyAA5GroupVyAA012_ConditionalI0VyA23_024RaceWorkoutConfigurationU0VAcAE5alert_AI7actionsQrqd___AMqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipeAFQrAA010HorizontalZ0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA23_020WorkoutConfigurationU0VG_A5_yAPyA82_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_APyA23_31ShareWorkoutConfigurationButtonVA94_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA82_yAA4TextVG_Qo_Qo_GGA45_yAA04ListU14InsetsTraitKeyVGGA48_GGA23_19CreateWorkoutButtonVSgtGA18_GtGGA90_yA13_GGA45_yAA26ListSectionSpacingTraitKeyVGGA90_yAA18ListSectionSpacingVSgGGA125_G_Qo__A63_APyAPyA69_yA71_yA71_yA23_024GoalWorkoutConfigurationC0VA23_028IntervalWorkoutConfigurationC0VGA71_yA23_025PacerWorkoutConfigurationC0VA23_024RaceWorkoutConfigurationC0VGGSgGA90_yA23_28ConfigurationNavigationModelCSgGGA90_yA61_30WorkoutConfigurationDataSourceCSgGGQo__A23_018AlertConfigurationC5ModelCA23_018AlertConfigurationC0VQo_AA13_TaskModifierVG_APyA23_10GoalPickerVA159_GQo__AA0hI7BuilderV10buildBlockyQrxAaGRzlFZQOy_AA0H4ItemVyytA23_20DeviceConnectionMenuVGQo_Qo__SSQo_Md);
  v16 = *(v15 - 8);
  v92 = v15;
  v93 = v16;
  MEMORY[0x28223BE20](v15);
  v87 = &v76 - v17;
  v102 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAeAE0eF9Separator_5edgesQrAA10VisibilityO_AA08VerticalH0OAIVtFQOyAeAE0E14SectionMarginsyQrAJ_ANtFQOyAA15ModifiedContentVyAA0Q0VyAA05EmptyD0VAXyAA6VStackVyACyAXyAA9LazyVGridVyACy07WorkoutB028MediaConfigurationRoomButtonVSg_A5_019VoiceCompanionEntryD0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA0_GAA21_TraitWritingModifierVyAA04ListF18BackgroundTraitKeyVGG_Qo__Qo__Qo__AZyA5_0Y25ConfigurationFilterPickerVSgACyA5_02Noy23ConfigurationsAvailableD0VSg_AA7ForEachVySay0yJ00Y13ConfigurationCG10Foundation4UUIDVAXyAXyAA5GroupVyAA012_ConditionalT0VyA5_04Racey13ConfigurationF0VAeAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalH0O_Sbqd__yXEtAaDRd__lFQOyAA6ButtonVyA5_0y13ConfigurationF0VG_ACyAXyA69_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AXyA5_05ShareY19ConfigurationButtonVA81_GtGQo__SSAeAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA69_yAA4TextVG_Qo_Qo_GGA27_yAA04ListfG8TraitKeyVGGA30_GGA5_06CreateY6ButtonVSgtGA0_GtGMd);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAeAE0eF9Separator_5edgesQrAA10VisibilityO_AA08VerticalH0OAIVtFQOyAeAE0E14SectionMarginsyQrAJ_ANtFQOyAA15ModifiedContentVyAA0Q0VyAA05EmptyD0VAXyAA6VStackVyACyAXyAA9LazyVGridVyACy07WorkoutB028MediaConfigurationRoomButtonVSg_A5_019VoiceCompanionEntryD0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA0_GAA21_TraitWritingModifierVyAA04ListF18BackgroundTraitKeyVGG_Qo__Qo__Qo__AZyA5_0Y25ConfigurationFilterPickerVSgACyA5_02Noy23ConfigurationsAvailableD0VSg_AA7ForEachVySay0yJ00Y13ConfigurationCG10Foundation4UUIDVAXyAXyAA5GroupVyAA012_ConditionalT0VyA5_04Racey13ConfigurationF0VAeAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalH0O_Sbqd__yXEtAaDRd__lFQOyAA6ButtonVyA5_0y13ConfigurationF0VG_ACyAXyA69_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AXyA5_05ShareY19ConfigurationButtonVA81_GtGQo__SSAeAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA69_yAA4TextVG_Qo_Qo_GGA27_yAA04ListfG8TraitKeyVGGA30_GGA5_06CreateY6ButtonVSgtGA0_GtGMd);
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGMd) + 36)];
  *v19 = KeyPath;
  *(v19 + 1) = 0x4024000000000000;
  v19[16] = 0;
  static ListSectionSpacing.custom(_:)();
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGA31_yAA0eU15SpacingTraitKeyVGGMd) + 36);
  (*(v5 + 16))(&v9[v20], v7, v4);
  v21 = *(v5 + 56);
  v21(&v9[v20], 0, 1, v4);
  v22 = swift_getKeyPath();
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGA31_yAA0eU15SpacingTraitKeyVGGA81_yAA0eU7SpacingVSgGGMd) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd) + 28);
  (*(v5 + 32))(v23 + v24, v7, v4);
  v21(v23 + v24, 0, 1, v4);
  *v23 = v22;
  v25 = swift_getKeyPath();
  v26 = v78;
  v27 = &v9[*(v78 + 36)];
  *v27 = v25;
  *(v27 + 1) = 0;
  v27[16] = 0;
  static VerticalEdge.Set.all.getter();
  Workout = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
  v29 = v26;
  View.listRowSeparator(_:edges:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>>(v9, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGA31_yAA0eU15SpacingTraitKeyVGGA81_yAA0eU7SpacingVSgGGA116_GMd);
  v30 = type metadata accessor for WorkoutConfiguration();
  v95 = type metadata accessor for ActivityTypeRoomPhone;
  v31 = v97;
  outlined init with copy of ActivityTypeRoomPhone(v96, v97, type metadata accessor for ActivityTypeRoomPhone);
  v80 = *(v80 + 80);
  v32 = (v80 + 16) & ~v80;
  v33 = swift_allocObject();
  v77 = type metadata accessor for ActivityTypeRoomPhone;
  outlined init with take of ActivityTypeRoomPhone(v31, v33 + v32, type metadata accessor for ActivityTypeRoomPhone);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMd);
  v105 = v29;
  v106 = Workout;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, MEMORY[0x277D7DA50]);
  v37 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
  v38 = v79;
  v39 = v81;
  v40 = v98;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v82 + 8))(v40, v39);
  type metadata accessor for AlertConfigurationViewModel(0);
  v105 = v39;
  v106 = v30;
  v107 = v34;
  v108 = OpaqueTypeConformance2;
  v109 = v36;
  v110 = v37;
  swift_getOpaqueTypeConformance2();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AlertConfigurationViewModel and conformance AlertConfigurationViewModel, type metadata accessor for AlertConfigurationViewModel);
  lazy protocol witness table accessor for type AlertConfigurationView and conformance AlertConfigurationView();
  v41 = v99;
  v42 = v83;
  View.navigationDestination<A, B>(for:destination:)();
  (*(v84 + 8))(v38, v42);
  v44 = v96;
  v43 = v97;
  outlined init with copy of ActivityTypeRoomPhone(v96, v97, v95);
  v45 = v32;
  v46 = swift_allocObject();
  v47 = v46 + v32;
  v48 = v77;
  outlined init with take of ActivityTypeRoomPhone(v43, v47, v77);
  v49 = &v41[*(v101 + 36)];
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v49 = &async function pointer to partial apply for closure #4 in ActivityTypeRoomPhone.body.getter;
  *(v49 + 1) = v46;
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  outlined init with copy of ActivityTypeRoomPhone(v44, v43, v95);
  v50 = swift_allocObject();
  outlined init with take of ActivityTypeRoomPhone(v43, v50 + v45, v48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010GoalPickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
  v74 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, _TaskModifier> and conformance <> ModifiedContent<A, B>();
  v75 = lazy protocol witness table accessor for type ModifiedContent<GoalPicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
  v52 = v85;
  v53 = v101;
  v54 = v99;
  View.sheet<A>(isPresented:onDismiss:content:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>>(v54, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyACyACyACyACyAA4ListVys5NeverOAA05TupleE0VyAeAE0jK6InsetsyQrAA0P0OAOV_12CoreGraphics7CGFloatVSgtFQOyAeAEAI_AJQrAL_APtFQOyAeAE0J14SectionMarginsyQrAZ_A2_tFQOyACyAA0Y0VyAA05EmptyE0VACyAA6VStackVyAVyACyAA9LazyVGridVyAVy07WorkoutB028MediaConfigurationRoomButtonVSg_A12_019VoiceCompanionEntryE0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA7_GAA21_TraitWritingModifierVyAA0rK18BackgroundTraitKeyVGG_Qo__Qo__Qo__A5_yA12_32WorkoutConfigurationFilterPickerVSgAVyA12_032NoWorkoutConfigurationsAvailableE0VSg_AA7ForEachVySay07WorkoutV020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA12_024RaceWorkoutConfigurationK0VAeAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalP0O_Sbqd__yXEtAaDRd__lFQOyAA6ButtonVyA12_020WorkoutConfigurationK0VG_AVyACyA76_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA12_31ShareWorkoutConfigurationButtonVA88_GtGQo__SSAeAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA76_yAA4TextVG_Qo_Qo_GGA34_yAA0rkU8TraitKeyVGGA37_GGA12_19CreateWorkoutButtonVSgtGA7_GtGGA84_yA2_GGA34_yAA0rY15SpacingTraitKeyVGGA84_yAA0rY7SpacingVSgGGA119_G_Qo__A52_ACyACyA58_yA60_yA60_yA12_024GoalWorkoutConfigurationE0VA12_028IntervalWorkoutConfigurationE0VGA60_yA12_025PacerWorkoutConfigurationE0VA12_024RaceWorkoutConfigurationE0VGGSgGA84_yA12_28ConfigurationNavigationModelCSgGGA84_yA50_30WorkoutConfigurationDataSourceCSgGGQo__A12_018AlertConfigurationE5ModelCA12_018AlertConfigurationE0VQo_AA13_TaskModifierVGMd);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt07WorkoutB020DeviceConnectionMenuVGQo_Md);
  v105 = v53;
  v106 = v51;
  v107 = v74;
  v108 = v75;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd);
  v58 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), DeviceConnectionMenu> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd);
  v105 = v57;
  v106 = v58;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v86;
  v61 = v88;
  View.toolbar<A>(content:)();
  v62 = v61;
  (*(v89 + 8))(v52, v61);
  v63 = [*(v44 + 96) localizedName];
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  v103 = v64;
  v104 = v66;
  v105 = v62;
  v106 = v55;
  v107 = v56;
  v108 = v59;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = lazy protocol witness table accessor for type String and conformance String();
  v69 = MEMORY[0x277D837D0];
  v70 = v87;
  v71 = v90;
  View.navigationTitle<A>(_:)();

  (*(v91 + 8))(v60, v71);
  v105 = v71;
  v106 = v69;
  v107 = v67;
  v108 = v68;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type MultilineNavigationItemAdapter and conformance MultilineNavigationItemAdapter();
  v72 = v92;
  View.navigationItemAdaptor<A>(_:)();
  return (*(v93 + 8))(v70, v72);
}

uint64_t closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v47 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A25ConfigurationFilterPickerVSgMd);
  MEMORY[0x28223BE20](v45);
  v42 = &v36 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVy07WorkoutB00D25ConfigurationFilterPickerVSgAA9TupleViewVyAD02Nod23ConfigurationsAvailableI0VSg_AA7ForEachVySay0D4Core0dE0CG10Foundation4UUIDVAA15ModifiedContentVyAWyAA5GroupVyAA012_ConditionalS0VyAD04RacedE3RowVAA0I0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AAA2_Rd_0_r0_lFQOyA3_AAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAAA2_Rd__lFQOyAA6ButtonVyAD0deW0VG_AIyAWyA17_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AWyAD05SharedE6ButtonVA29_GtGQo__SSA3_AAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA17_yAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListW14InsetsTraitKeyVGGA48_yAA04ListW18BackgroundTraitKeyVGGGAD06CreateD6ButtonVSgtGAA05EmptyI0VGMd);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVACyAA6VStackVyAA05TupleG0VyACyAA9LazyVGridVyAKy07WorkoutB028MediaConfigurationRoomButtonVSg_AN019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaT8ModifierVGSgAGGAA013_TraitWritingY0VyAA017ListRowBackgroundZ3KeyVGGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18listSectionMarginsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAA0E0VyAA05EmptyC0VANyAA6VStackVyAA05TupleC0VyANyAA9LazyVGridVyAVy07WorkoutB028MediaConfigurationRoomButtonVSg_AY019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgARGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGG_Qo_Md);
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAcAE0D14SectionMarginsyQrAA0J0OAJV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAA0L0VyAA05EmptyC0VAUyAA6VStackVyAA05TupleC0VyAUyAA9LazyVGridVyA1_y07WorkoutB028MediaConfigurationRoomButtonVSg_A4_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgAYGAA21_TraitWritingModifierVyAA04ListE18BackgroundTraitKeyVGG_Qo__Qo_Md);
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAcAE0dE9Separator_5edgesQrAA10VisibilityO_AA08VerticalG0OAGVtFQOyAcAE0D14SectionMarginsyQrAH_ALtFQOyAA15ModifiedContentVyAA0P0VyAA05EmptyC0VAVyAA6VStackVyAA05TupleC0VyAVyAA9LazyVGridVyA2_y07WorkoutB028MediaConfigurationRoomButtonVSg_A5_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgAZGAA21_TraitWritingModifierVyAA04ListE18BackgroundTraitKeyVGG_Qo__Qo__Qo_Md);
  v48 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA9LazyVGridVyAGy07WorkoutB028MediaConfigurationRoomButtonVSg_AJ019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaR8ModifierVGSgMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA9LazyVGridVyAGy07WorkoutB028MediaConfigurationRoomButtonVSg_AJ019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaR8ModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA9LazyVGridVyAGy07WorkoutB028MediaConfigurationRoomButtonVSg_AJ019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaR8ModifierVGSgMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier> and conformance <> ModifiedContent<A, B>);
  Section<>.init(content:)();
  *&v9[*(v7 + 36)] = AnyView.init<A>(_:)();
  static Edge.Set.horizontal.getter();
  v20 = lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  View.listSectionMargins(_:_:)();
  _s10Foundation4UUIDVSgWOhTm_3(v9, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVACyAA6VStackVyAA05TupleG0VyACyAA9LazyVGridVyAKy07WorkoutB028MediaConfigurationRoomButtonVSg_AN019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaT8ModifierVGSgAGGAA013_TraitWritingY0VyAA017ListRowBackgroundZ3KeyVGGMd);
  static VerticalEdge.Set.all.getter();
  v52 = v7;
  v53 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.listRowSeparator(_:edges:)();
  (*(v38 + 8))(v12, v10);
  static Edge.Set.all.getter();
  v52 = v10;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v19;
  v36 = v19;
  View.listRowInsets(_:_:)();
  (*(v39 + 8))(v15, v13);
  v50 = v37;
  closure #3 in closure #1 in ActivityTypeRoomPhone.body.getter(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB002Noe23ConfigurationsAvailableD0VSg_AA7ForEachVySay0E4Core0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyARyAA5GroupVyAA012_ConditionalP0VyAD04RaceeL3RowVAA0D0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaYRd_0_r0_lFQOyAzAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaYRd__lFQOyAA6ButtonVyAD0elT0VG_ACyARyA12_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ARyAD05ShareeL6ButtonVA24_GtGQo__SSAzAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA12_yAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListT14InsetsTraitKeyVGGA43_yAA04ListT18BackgroundTraitKeyVGGGAD06CreateE6ButtonVSgtGMd);
  lazy protocol witness table accessor for type WorkoutConfigurationFilterPicker? and conformance <A> A?();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB002Noe23ConfigurationsAvailableD0VSg_AA7ForEachVySay0E4Core0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyARyAA5GroupVyAA012_ConditionalP0VyAD04RaceeL3RowVAA0D0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaYRd_0_r0_lFQOyAzAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaYRd__lFQOyAA6ButtonVyAD0elT0VG_ACyARyA12_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ARyAD05ShareeL6ButtonVA24_GtGQo__SSAzAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA12_yAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListT14InsetsTraitKeyVGGA43_yAA04ListT18BackgroundTraitKeyVGGGAD06CreateE6ButtonVSgtGMd);
  v23 = v49;
  Section<>.init(header:content:)();
  v24 = *(v48 + 16);
  v26 = v40;
  v25 = v41;
  v24(v40, v22, v41);
  v27 = v43;
  v28 = v44;
  v29 = *(v44 + 16);
  v30 = v46;
  v29(v43, v23, v46);
  v31 = v47;
  v24(v47, v26, v25);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAcAE0dE9Separator_5edgesQrAA10VisibilityO_AA08VerticalG0OAGVtFQOyAcAE0D14SectionMarginsyQrAH_ALtFQOyAA15ModifiedContentVyAA0P0VyAA05EmptyC0VAVyAA6VStackVyAA05TupleC0VyAVyAA9LazyVGridVyA2_y07WorkoutB028MediaConfigurationRoomButtonVSg_A5_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgAZGAA21_TraitWritingModifierVyAA04ListE18BackgroundTraitKeyVGG_Qo__Qo__Qo__AXyA5_0Y25ConfigurationFilterPickerVSgA2_yA5_02Noy23ConfigurationsAvailableC0VSg_AA7ForEachVySay0yI00Y13ConfigurationCG10Foundation4UUIDVAVyAVyAA5GroupVyAA012_ConditionalS0VyA5_04Racey13ConfigurationE0VAcAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalG0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA5_0y13ConfigurationE0VG_A2_yAVyA69_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AVyA5_05ShareY19ConfigurationButtonVA81_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA69_yAA4TextVG_Qo_Qo_GGA27_yAA04ListeF8TraitKeyVGGA30_GGA5_06CreateY6ButtonVSgtGAZGtMd);
  v29(&v31[*(v32 + 48)], v27, v30);
  v33 = *(v28 + 8);
  v33(v49, v30);
  v34 = *(v48 + 8);
  v34(v36, v25);
  v33(v27, v30);
  return (v34)(v26, v25);
}

uint64_t closure #1 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA9LazyVGridVyAGy07WorkoutB028MediaConfigurationRoomButtonVSg_AJ019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaR8ModifierVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = type metadata accessor for WorkoutFeatures();
  *(&v14 + 1) = v8;
  v15 = _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, MEMORY[0x277D7DDC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(v8 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DDA8], v8);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  if (v8 & 1) != 0 || (ActivityTypeRoomPhone.showVoiceMotivation.getter())
  {
    *v7 = static HorizontalAlignment.leading.getter();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_AN019VoiceCompanionEntryD0VSgtGGAA08_PaddingG0VG_AA7DividerVtGGMd);
    closure #1 in closure #1 in closure #1 in ActivityTypeRoomPhone.body.getter(a1, &v7[*(v10 + 44)]);
    static Edge.Set.horizontal.getter();
    v13 = 0u;
    v14 = 0u;
    LOBYTE(v15) = 1;
    SafeAreaPaddingModifier.init(edges:insets:)();
    _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_1(v7, a2, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA9LazyVGridVyAGy07WorkoutB028MediaConfigurationRoomButtonVSg_AJ019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaR8ModifierVGMd);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return (*(v5 + 56))(a2, v11, 1, v4);
}

uint64_t closure #1 in closure #1 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = type metadata accessor for Divider();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - v5;
  v6 = type metadata accessor for PinnedScrollableViews();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for GridItem.Size();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for GridItem();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AH019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVGMd);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  *v10 = xmmword_20CB62C00;
  (*(v8 + 104))(v10, *MEMORY[0x277CDF108], v7);
  GridItem.init(_:spacing:alignment:)();
  v21 = ActivityTypeRoomPhone.buttonGridColumns.getter();
  _sSa9repeating5countSayxGx_SitcfC7SwiftUI8GridItemV_Tt1g5(v13, v21);
  v42 = a1;
  static HorizontalAlignment.center.getter();
  v43 = 0;
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews, MEMORY[0x277CE0428]);
  dispatch thunk of OptionSet.init(rawValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AD019VoiceCompanionEntryD0VSgtGMd);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AD019VoiceCompanionEntryD0VSgtGMd);
  v36 = v20;
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  LOBYTE(v8) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v22 = &v20[*(v15 + 44)];
  *v22 = v8;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = v38;
  Divider.init()();
  _s10Foundation4UUIDVSgWOcTm_3(v20, v17, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AH019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVGMd);
  v28 = v37;
  v29 = *(v37 + 16);
  v31 = v39;
  v30 = v40;
  v29(v39, v27, v40);
  v32 = v41;
  _s10Foundation4UUIDVSgWOcTm_3(v17, v41, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AH019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVGMd);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AH019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtMd);
  v29((v32 + *(v33 + 48)), v31, v30);
  v34 = *(v28 + 8);
  v34(v27, v30);
  _s10Foundation4UUIDVSgWOhTm_3(v36, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AH019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVGMd);
  v34(v31, v30);
  return _s10Foundation4UUIDVSgWOhTm_3(v17, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AH019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVGMd);
}

void closure #1 in closure #1 in closure #1 in closure #1 in ActivityTypeRoomPhone.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VoiceCompanionEntryView();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI23VoiceCompanionEntryViewVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for WorkoutFeatures();
  v41 = v14;
  v42 = _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, MEMORY[0x277D7DDC8]);
  v15 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D7DDA8], v14);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v39);
  if (v14)
  {
    v16 = *(a1 + 96);
    v17 = ActivityTypeRoomPhone.buttonGridColumns.getter() == 1;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = 1;
  if (ActivityTypeRoomPhone.showVoiceMotivation.getter())
  {
    v35 = *(a1 + 96);
    v36 = v16;
    v19 = type metadata accessor for ActivityTypeRoomPhone();
    v37 = a2;
    v20 = *(v19 + 48);
    v21 = v5;
    v22 = v17;
    v23 = v4[7];
    v24 = type metadata accessor for InferenceClient();
    (*(*(v24 - 8) + 16))(&v7[v23], a1 + v20, v24);
    type metadata accessor for VoiceAssetsObserver();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver, MEMORY[0x277D7E340]);
    v25 = v35;
    v17 = v22;
    v5 = v21;
    *v7 = Environment.init<A>(_:)();
    v7[8] = v26 & 1;
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08]);
    *(v7 + 2) = Environment.init<A>(_:)();
    v7[24] = v27 & 1;
    v28 = &v7[v4[9]];
    v38 = 0;
    State.init(wrappedValue:)();
    v29 = v40;
    *v28 = v39;
    *(v28 + 1) = v29;
    v30 = &v7[v4[10]];
    v38 = 0;
    a2 = v37;
    State.init(wrappedValue:)();
    v31 = v40;
    *v30 = v39;
    *(v30 + 1) = v31;
    v16 = v36;
    *(v7 + 4) = v25;
    v7[v4[8]] = 1;
    outlined init with take of ActivityTypeRoomPhone(v7, v13, type metadata accessor for VoiceCompanionEntryView);
    v18 = 0;
  }

  (*(v5 + 56))(v13, v18, 1, v4);
  _s10Foundation4UUIDVSgWOcTm_3(v13, v10, &_s9WorkoutUI23VoiceCompanionEntryViewVSgMd);
  *a2 = v16;
  *(a2 + 8) = v17;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI28MediaConfigurationRoomButtonVSg_AA23VoiceCompanionEntryViewVSgtMd);
  _s10Foundation4UUIDVSgWOcTm_3(v10, a2 + *(v32 + 48), &_s9WorkoutUI23VoiceCompanionEntryViewVSgMd);
  v33 = v16;
  _s10Foundation4UUIDVSgWOhTm_3(v13, &_s9WorkoutUI23VoiceCompanionEntryViewVSgMd);
  _s10Foundation4UUIDVSgWOhTm_3(v10, &_s9WorkoutUI23VoiceCompanionEntryViewVSgMd);
}

void closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for ActivityTypeRoomPhone();
  v4 = v3 - 8;
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v85 = v5;
  v86 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA012_ConditionalK0Vy0eB004RaceeG3RowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaTRd_0_r0_lFQOyAuAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaTRd__lFQOyAA6ButtonVyAQ0egO0VG_AA05TupleP0VyALyA7_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ALyAQ05ShareeG6ButtonVA21_GtGQo__SSAuAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA7_yAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListO14InsetsTraitKeyVGGA40_yAA04ListO18BackgroundTraitKeyVGGGMd);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v68 - v8;
  v9 = type metadata accessor for NoWorkoutConfigurationsAvailableView();
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for WorkoutConfigurationFilterType();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v88 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI02NoA27ConfigurationsAvailableViewVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v89 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v90 = &v68 - v21;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  v25 = type metadata accessor for WorkoutConfigurationDataSource();
  v26 = _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v79 = v23;
  v80 = v22;
  v78 = v24;
  v76 = v26;
  v77 = v25;
  v27 = StateObject.wrappedValue.getter();
  v28 = *(v4 + 60);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  State.wrappedValue.getter();
  v30 = WorkoutConfigurationDataSource.sortedWorkoutConfigurations(by:)();

  v87 = v13;
  v31 = *(v13 + 8);
  v83 = v12;
  v31(v17, v12);
  if (v30 >> 62)
  {
    v37 = __CocoaSet.count.getter();

    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v32)
    {
LABEL_3:
      v33 = 1;
      v34 = v90;
      v35 = v29;
      v36 = v82;
      goto LABEL_6;
    }
  }

  v36 = v82;
  v38 = v31;
  v39 = *(a1 + 96);
  State.wrappedValue.getter();
  v40 = ActivityTypeRoomPhone.isDistanceSupported.getter();
  *v11 = v39;
  v31 = v38;
  *(v11 + *(v36 + 24)) = v40 & 1;
  v41 = v11;
  v35 = v29;
  v34 = v90;
  outlined init with take of ActivityTypeRoomPhone(v41, v90, type metadata accessor for NoWorkoutConfigurationsAvailableView);
  v33 = 0;
LABEL_6:
  v73 = v35;
  v74 = v31;
  v75 = v28;
  (*(v81 + 56))(v34, v33, 1, v36);
  v42 = StateObject.wrappedValue.getter();
  State.wrappedValue.getter();
  v43 = WorkoutConfigurationDataSource.sortedWorkoutConfigurations(by:)();

  v44 = v83;
  v31(v17, v83);
  v92 = v43;
  v45 = v86;
  outlined init with copy of ActivityTypeRoomPhone(a1, v86, type metadata accessor for ActivityTypeRoomPhone);
  v46 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v47 = swift_allocObject();
  outlined init with take of ActivityTypeRoomPhone(v45, v47 + v46, type metadata accessor for ActivityTypeRoomPhone);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB004RaceG16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaKRd_0_r0_lFQOyAlAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaKRd__lFQOyAA6ButtonVyAH0giJ0VG_AA05TupleK0VyACyAZyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyAH05SharegiZ0VA12_GtGQo__SSAlAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAZyAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListJ14InsetsTraitKeyVGGA31_yAA04ListJ18BackgroundTraitKeyVGGMd);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [WorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore0A13ConfigurationCGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
  ForEach<>.init(_:content:)();
  State.wrappedValue.getter();
  v48 = v88;
  (*(v87 + 104))(v88, *MEMORY[0x277D7DC40], v44);
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationFilterType and conformance WorkoutConfigurationFilterType, MEMORY[0x277D7DC60]);
  LOBYTE(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = v48;
  v50 = v74;
  v74(v49, v44);
  v50(v17, v44);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  if (v45)
  {
LABEL_10:
    v58 = v89;
    _s10Foundation4UUIDVSgWOcTm_3(v90, v89, &_s9WorkoutUI02NoA27ConfigurationsAvailableViewVSgMd);
    v59 = v70;
    v60 = *(v70 + 16);
    v61 = v69;
    v62 = v72;
    v60(v69, v91, v72);
    v63 = v58;
    v64 = v71;
    _s10Foundation4UUIDVSgWOcTm_3(v63, v71, &_s9WorkoutUI02NoA27ConfigurationsAvailableViewVSgMd);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI02NoA27ConfigurationsAvailableViewVSg_05SwiftB07ForEachVySay0A4Core0A13ConfigurationCG10Foundation4UUIDVAE15ModifiedContentVyAPyAE5GroupVyAE012_ConditionalO0VyAA04RaceaK3RowVAE0F0PAEE5alert_11isPresented7actionsQrqd___AE7BindingVySbGqd_0_yXEtSyRd__AeWRd_0_r0_lFQOyAxEE12swipeActions4edge15allowsFullSwipe7contentQrAE14HorizontalEdgeO_Sbqd__yXEtAeWRd__lFQOyAE6ButtonVyAA0akS0VG_AE05TupleF0VyAPyA10_yAE5ImageVGAE30_EnvironmentKeyWritingModifierVyAE13AnyShapeStyleVSgGGSg_APyAA05ShareaK6ButtonVA24_GtGQo__SSAxEE16keyboardShortcutyQrAE16KeyboardShortcutVFQOyA10_yAE4TextVG_Qo_Qo_GGAE21_TraitWritingModifierVyAE04ListS14InsetsTraitKeyVGGA43_yAE04ListS18BackgroundTraitKeyVGGGAA06CreateA6ButtonVSgtMd);
    v60((v64 + *(v65 + 48)), v61, v62);
    v66 = (v64 + *(v65 + 64));
    outlined copy of CreateWorkoutButton?(v51, v52, v53);
    outlined consume of CreateWorkoutButton?(v51, v52, v53);
    *v66 = v51;
    v66[1] = v52;
    v66[2] = v53;
    v67 = *(v59 + 8);
    v67(v91, v62);
    _s10Foundation4UUIDVSgWOhTm_3(v90, &_s9WorkoutUI02NoA27ConfigurationsAvailableViewVSgMd);
    outlined consume of CreateWorkoutButton?(v51, v52, v53);
    v67(v61, v62);
    _s10Foundation4UUIDVSgWOhTm_3(v89, &_s9WorkoutUI02NoA27ConfigurationsAvailableViewVSgMd);
    return;
  }

  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v51 = EnvironmentObject.init()();
  v52 = v54;
  v55 = [objc_opt_self() keyColors];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 nonGradientTextColor];

    if (v57)
    {
      v53 = Color.init(uiColor:)();

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v69 - v7;
  v89 = type metadata accessor for WorkoutDevice();
  v9 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for WorkoutDeviceType();
  v11 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v75);
  v77 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  MEMORY[0x28223BE20](v76);
  v79 = v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v80 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = v69 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB004RaceG16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaKRd_0_r0_lFQOyAlAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaKRd__lFQOyAA6ButtonVyAH0giJ0VG_AA05TupleK0VyACyAZyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyAH05SharegiZ0VA12_GtGQo__SSAlAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAZyAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListJ14InsetsTraitKeyVGGMd);
  MEMORY[0x28223BE20](v73);
  v83 = v69 - v20;
  v74 = *a1;
  v78 = a2;
  type metadata accessor for WorkoutDevicesProvider();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8]);
  v21 = StateObject.wrappedValue.getter();
  v22 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  v23 = *(v22 + 16);
  if (v23)
  {
    v70 = v6;
    v71 = v8;
    v72 = v5;
    *&v90 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v24._rawValue = v90;
    v26 = *(v9 + 16);
    v25 = v9 + 16;
    v86 = v26;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v69[1] = v22;
    v28 = v22 + v27;
    v29 = *(v25 + 56);
    v84 = v11 + 32;
    v85 = v29;
    do
    {
      v30 = v87;
      v31 = v89;
      v86(v87, v28, v89);
      WorkoutDevice.type.getter();
      (*(v25 - 8))(v30, v31);
      *&v90 = v24;
      v33 = *(v24._rawValue + 2);
      v32 = *(v24._rawValue + 3);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v24._rawValue = v90;
      }

      *(v24._rawValue + 2) = v33 + 1;
      (*(v11 + 32))(v24._rawValue + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v13, v88);
      v28 += v85;
      --v23;
    }

    while (v23);

    v5 = v72;
    v34 = v71;
    v6 = v70;
  }

  else
  {

    v24._rawValue = MEMORY[0x277D84F90];
    v34 = v8;
  }

  v35 = v74;
  v36 = WorkoutConfiguration.canStartWorkout(with:includeCurrentPlatform:)(v24, 1);

  v37 = v83;
  closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(v35, v78, v36, v83);
  v38 = v37 + *(v73 + 36);
  *v38 = xmmword_20CB84B60;
  *(v38 + 16) = xmmword_20CB84B70;
  *(v38 + 32) = 0;
  v39 = *(v75 + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = type metadata accessor for RoundedCornerStyle();
  v42 = &v77[v39];
  v43 = v77;
  (*(*(v41 - 8) + 104))(v42, v40, v41);
  __asm { FMOV            V0.2D, #26.0 }

  *v43 = _Q0;
  v49 = v81;
  if (v36)
  {
    WorkoutConfiguration.displayPlatterColor.getter();
    v50 = Color.init(uiColor:)();
  }

  else
  {
    WorkoutConfiguration.displayColor.getter();
    Color.init(uiColor:)();
    v50 = Color.opacity(_:)();
  }

  v51 = v79;
  outlined init with take of ActivityTypeRoomPhone(v43, v79, MEMORY[0x277CDFC08]);
  v52 = v76;
  *(v51 + *(v76 + 52)) = v50;
  *(v51 + *(v52 + 56)) = 256;
  WorkoutConfiguration.displayPlatterColor.getter();
  v53 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v54 = MEMORY[0x277CDFC08];
  outlined init with copy of ActivityTypeRoomPhone(v51, v49, MEMORY[0x277CDFC08]);
  v55 = *&v90 * 0.5;
  v56 = v49 + *(v5 + 68);
  outlined init with copy of ActivityTypeRoomPhone(v51, v56, v54);
  *(v56 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v55;
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMd) + 36);
  v58 = v91;
  *v57 = v90;
  *(v57 + 16) = v58;
  *(v57 + 32) = v92;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA5ColorVGMd);
  *(v56 + *(v59 + 52)) = v53;
  *(v56 + *(v59 + 56)) = 256;
  v60 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA5ColorVGAA19_BackgroundModifierVyAEyAiNGGGMd) + 36);
  _s10Foundation4UUIDVSgWOcTm_3(v51, v60, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  v61 = static Alignment.center.getter();
  v63 = v62;
  _s10Foundation4UUIDVSgWOhTm_3(v51, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  v64 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd) + 36));
  *v64 = v61;
  v64[1] = v63;
  (*(v6 + 56))(v49, 0, 1, v5);
  v65 = v80;
  sub_20C693BEC(v49, v80);
  if ((*(v6 + 48))(v65, 1, v5) == 1)
  {
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>>(v49, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMd);
    v66 = 0;
  }

  else
  {
    outlined init with take of ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(v65, v34, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type StrokeBorderShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>> and conformance StrokeBorderShapeView<A, B, C>, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGMd);
    v66 = AnyView.init<A>(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>>(v49, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMd);
  }

  v67 = v82;
  outlined init with take of ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(v83, v82, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB004RaceG16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaKRd_0_r0_lFQOyAlAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaKRd__lFQOyAA6ButtonVyAH0giJ0VG_AA05TupleK0VyACyAZyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyAH05SharegiZ0VA12_GtGQo__SSAlAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAZyAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListJ14InsetsTraitKeyVGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB004RaceG16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaKRd_0_r0_lFQOyAlAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaKRd__lFQOyAA6ButtonVyAH0giJ0VG_AA05TupleK0VyACyAZyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyAH05SharegiZ0VA12_GtGQo__SSAlAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAZyAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListJ14InsetsTraitKeyVGGA31_yAA04ListJ18BackgroundTraitKeyVGGMd);
  *(v67 + *(result + 36)) = v66;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v88) = a3;
  v97 = a4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB004RaceF16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaIRd_0_r0_lFQOyAjAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaIRd__lFQOyAA6ButtonVyAF0fhI0VG_AA05TupleJ0VyAA08ModifiedD0VyAXyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_A3_yAF05SharefhY0VA12_GtGQo__SSAjAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAXyAA4TextVG_Qo_Qo__GMd);
  MEMORY[0x28223BE20](v94);
  v7 = &v81 - v6;
  v8 = type metadata accessor for ActivityTypeRoomPhone();
  v87 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = v9;
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGMd);
  object = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v81 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVy07WorkoutB00N16ConfigurationRowVG_AA05TupleC0VyAA15ModifiedContentVyAKyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ASyAL05SharenoM0VA0_GtGQo_Md);
  v13 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v81 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVy07WorkoutB00S16ConfigurationRowVG_AA05TupleC0VyAA15ModifiedContentVyAQyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AYyAR05SharestR0VA6_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAQyAA4TextVG_Qo_Qo_Md);
  v15 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v17 = &v81 - v16;
  type metadata accessor for RaceWorkoutConfiguration();
  v18 = swift_dynamicCastClass();
  v93 = v10;
  if (v18)
  {
    v19 = a2;
    v20 = *(a2 + 16);
    if (v20)
    {
      v21 = *(v19 + 112);
      v92 = *(v19 + 104);
      type metadata accessor for ConfigurationNavigationModel();
      _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      v22 = a1;
      v91 = v20;
      v23 = v21;
      v24 = EnvironmentObject.init()();
      v26 = v25;
      type metadata accessor for WorkoutConfigurationDataSource();
      _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
      v27 = EnvironmentObject.init()();
      v29 = v28;
      v107 = 0;
      State.init(wrappedValue:)();
      v30 = v98;
      v31 = v99;
      _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
      v32 = ObservedObject.init(wrappedValue:)();
      *v7 = v24;
      *(v7 + 1) = v26;
      *(v7 + 2) = v27;
      *(v7 + 3) = v29;
      *(v7 + 4) = v32;
      *(v7 + 5) = v33;
      v34 = v91;
      *(v7 + 6) = v92;
      *(v7 + 7) = v34;
      *(v7 + 8) = v23;
      v7[72] = v30;
      *(v7 + 10) = v31;
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type RaceWorkoutConfigurationRow and conformance RaceWorkoutConfigurationRow();
      v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE16keyboardShortcutyQrAA08KeyboardE0VFQOyAA6ButtonVyAA4TextVG_Qo_Md);
      v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AEy07WorkoutB005Sharep13ConfigurationG0VAPGtGMd);
      Workout = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<WorkoutConfigurationRow> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGMd);
      v38 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>?, ModifiedContent<ShareWorkoutConfigurationButton, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AEy07WorkoutB005Sharep13ConfigurationG0VAPGtGMd);
      v98 = v93;
      v99 = v36;
      v100 = Workout;
      v101 = v38;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v40 = lazy protocol witness table accessor for type String and conformance String();
      v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
      v42 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
      v98 = v41;
      v99 = v42;
      v43 = swift_getOpaqueTypeConformance2();
      v98 = v95;
      v99 = MEMORY[0x277D837D0];
      v100 = v35;
      v101 = OpaqueTypeConformance2;
      v102 = v40;
      v103 = v43;
      swift_getOpaqueTypeConformance2();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      _sSo21FIUIFormattingManagerCMaTm_11(0, &lazy cache variable for type metadata for FIUIFormattingManager);
      lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
      v79 = a1;
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {
    v84 = v13;
    v85 = v17;
    v86 = v15;
    v45 = a2;
    v46 = v90;
    outlined init with copy of ActivityTypeRoomPhone(a2, v90, type metadata accessor for ActivityTypeRoomPhone);
    v47 = v10;
    v48 = *(v87 + 80);
    v87 = ~v48;
    v49 = (v48 + 16) & ~v48;
    v50 = (v91 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    v52 = outlined init with take of ActivityTypeRoomPhone(v46, v51 + v49, type metadata accessor for ActivityTypeRoomPhone);
    v83 = &v81;
    *(v51 + v50) = a1;
    MEMORY[0x28223BE20](v52);
    type metadata accessor for WorkoutConfigurationRow();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationRow and conformance WorkoutConfigurationRow, type metadata accessor for WorkoutConfigurationRow);
    a1;
    v53 = Button.init(action:label:)();
    v81 = &v81;
    MEMORY[0x28223BE20](v53);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AEy07WorkoutB005Sharep13ConfigurationG0VAPGtGMd);
    v55 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<WorkoutConfigurationRow> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGMd);
    v56 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>?, ModifiedContent<ShareWorkoutConfigurationButton, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AEy07WorkoutB005Sharep13ConfigurationG0VAPGtGMd);
    v88 = v54;
    v83 = v55;
    v82 = v56;
    View.swipeActions<A>(edge:allowsFullSwipe:content:)();
    object[1](v12, v47);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v57 = WorkoutUIBundle.super.isa;
    v108._object = 0xE000000000000000;
    v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v58.value._object = 0xEB00000000656C62;
    v59._object = 0x800000020CB96CB0;
    v59._countAndFlagsBits = 0xD000000000000014;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v108._countAndFlagsBits = 0;
    v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v58, v57, v60, v108);
    object = v61._object;

    v106 = v61;
    v62 = v90;
    outlined init with copy of ActivityTypeRoomPhone(v45, v90, type metadata accessor for ActivityTypeRoomPhone);
    type metadata accessor for MainActor();
    v63 = static MainActor.shared.getter();
    v64 = (v48 + 32) & v87;
    v65 = swift_allocObject();
    v66 = MEMORY[0x277D85700];
    *(v65 + 16) = v63;
    *(v65 + 24) = v66;
    outlined init with take of ActivityTypeRoomPhone(v62, v65 + v64, type metadata accessor for ActivityTypeRoomPhone);
    outlined init with copy of ActivityTypeRoomPhone(v45, v62, type metadata accessor for ActivityTypeRoomPhone);
    v67 = static MainActor.shared.getter();
    v68 = swift_allocObject();
    *(v68 + 16) = v67;
    *(v68 + 24) = MEMORY[0x277D85700];
    outlined init with take of ActivityTypeRoomPhone(v62, v68 + v64, type metadata accessor for ActivityTypeRoomPhone);
    v69 = Binding.init(get:set:)();
    v91 = &v81;
    v87 = v104;
    LODWORD(v90) = v105;
    MEMORY[0x28223BE20](v69);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16keyboardShortcutyQrAA08KeyboardE0VFQOyAA6ButtonVyAA4TextVG_Qo_Md);
    v98 = v93;
    v99 = v88;
    v100 = v83;
    v101 = v82;
    v93 = swift_getOpaqueTypeConformance2();
    v71 = lazy protocol witness table accessor for type String and conformance String();
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    v73 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    v98 = v72;
    v99 = v73;
    v80 = swift_getOpaqueTypeConformance2();
    v74 = v85;
    v75 = v95;
    v76 = v92;
    View.alert<A, B>(_:isPresented:actions:)();

    (*(v84 + 8))(v76, v75);
    v77 = v86;
    v78 = v96;
    (*(v86 + 16))(v7, v74, v96);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type RaceWorkoutConfigurationRow and conformance RaceWorkoutConfigurationRow();
    v98 = v75;
    v99 = MEMORY[0x277D837D0];
    v100 = v70;
    v101 = v93;
    v102 = v71;
    v103 = v80;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v77 + 8))(v74, v78);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    v6 = a2;
    swift_getKeyPath();
    swift_getKeyPath();

    v2 = static Published.subscript.modify();
    type metadata accessor for WorkoutConfiguration();
    v3 = MEMORY[0x277D7DA50];
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, v3);
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, v3);
    NavigationPath.append<A>(_:)();
    v2(v5, 0);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2[2];
  if (v4)
  {
    v9 = a2[13];
    v8 = a2[14];
    type metadata accessor for ConfigurationNavigationModel();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    v10 = v4;
    v11 = v8;
    *a4 = EnvironmentObject.init()();
    *(a4 + 8) = v12;
    type metadata accessor for WorkoutConfigurationDataSource();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    *(a4 + 16) = EnvironmentObject.init()();
    *(a4 + 24) = v13;
    State.init(wrappedValue:)();
    *(a4 + 72) = v19;
    *(a4 + 80) = v20;
    v14 = type metadata accessor for WorkoutConfigurationRow();
    v15 = v14[11];
    *(a4 + v15) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
    swift_storeEnumTagMultiPayload();
    *(a4 + v14[13]) = 0x3FE0000000000000;
    type metadata accessor for WorkoutConfiguration();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
    v16 = a1;
    result = ObservedObject.init(wrappedValue:)();
    *(a4 + 32) = result;
    *(a4 + 40) = v18;
    *(a4 + 48) = v9;
    *(a4 + 56) = v10;
    *(a4 + 64) = v11;
    *(a4 + v14[12]) = a3 & 1;
    *(a4 + v14[14]) = 0;
  }

  else
  {
    _sSo21FIUIFormattingManagerCMaTm_11(0, &lazy cache variable for type metadata for FIUIFormattingManager);
    lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for ActivityTypeRoomPhone();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass() || (WorkoutConfiguration.isOpenGoal.getter() & 1) != 0)
  {
    (*(v10 + 56))(v18, 1, 1, v9);
  }

  else
  {
    outlined init with copy of ActivityTypeRoomPhone(a2, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityTypeRoomPhone);
    v34 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v43 = a2;
    v35 = (v7 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    outlined init with take of ActivityTypeRoomPhone(v8, v36 + v34, type metadata accessor for ActivityTypeRoomPhone);
    *(v36 + v35) = a1;
    a2 = v43;
    v37 = a1;
    Button.init(action:label:)();
    v38 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    v45 = v38;
    v40 = AnyShapeStyle.init<A>(_:)();
    v41 = &v12[*(v9 + 36)];
    *v41 = KeyPath;
    v41[1] = v40;
    _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_1(v12, v18, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
    (*(v10 + 56))(v18, 0, 1, v9);
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    type metadata accessor for WorkoutConfiguration();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
    v20 = a1;
    v21 = v19;
    v22 = ObservedObject.init(wrappedValue:)();
    v24 = v23;
    v25 = [objc_opt_self() systemGray6Color];
    v26 = Color.init(uiColor:)();
    v27 = swift_getKeyPath();
    v45 = v26;
    v28 = AnyShapeStyle.init<A>(_:)();
    _s10Foundation4UUIDVSgWOcTm_3(v18, v15, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSgMd);
    v29 = v44;
    _s10Foundation4UUIDVSgWOcTm_3(v15, v44, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSgMd);
    v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACy07WorkoutB005Sharen13ConfigurationE0VANGtMd) + 48);
    *v30 = v22;
    *(v30 + 8) = v24;
    *(v30 + 16) = v21;
    *(v30 + 24) = 1;
    *(v30 + 32) = v27;
    *(v30 + 40) = v28;
    v31 = v24;
    v32 = v21;

    _s10Foundation4UUIDVSgWOhTm_3(v18, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSgMd);

    return _s10Foundation4UUIDVSgWOhTm_3(v15, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSgMd);
  }

  else
  {
    _sSo21FIUIFormattingManagerCMaTm_11(0, &lazy cache variable for type metadata for FIUIFormattingManager);
    lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  dispatch thunk of WorkoutConfiguration.uuid.getter();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  type metadata accessor for ActivityTypeRoomPhone();
  _s10Foundation4UUIDVSgWOcTm_3(v5, v2, &_s10Foundation4UUIDVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);
  State.wrappedValue.setter();
  return _s10Foundation4UUIDVSgWOhTm_3(v5, &_s10Foundation4UUIDVSgMd);
}

uint64_t closure #2 in closure #3 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t closure #4 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  type metadata accessor for ActivityTypeRoomPhone();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);
  State.wrappedValue.getter();
  v5 = type metadata accessor for UUID();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  result = _s10Foundation4UUIDVSgWOhTm_3(v4, &_s10Foundation4UUIDVSgMd);
  *a1 = v6;
  return result;
}

void closure #5 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  if ((*a1 & 1) == 0)
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    type metadata accessor for ActivityTypeRoomPhone();
    _s10Foundation4UUIDVSgWOcTm_3(v7, v4, &_s10Foundation4UUIDVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);
    State.wrappedValue.setter();
    _s10Foundation4UUIDVSgWOhTm_3(v7, &_s10Foundation4UUIDVSgMd);
  }
}

uint64_t closure #6 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = type metadata accessor for KeyboardShortcut();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityTypeRoomPhone();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  static ButtonRole.destructive.getter();
  v16 = type metadata accessor for ButtonRole();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  outlined init with copy of ActivityTypeRoomPhone(a1, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityTypeRoomPhone);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  outlined init with take of ActivityTypeRoomPhone(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ActivityTypeRoomPhone);
  Button.init(role:action:label:)();
  static KeyboardShortcut.defaultAction.getter();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  View.keyboardShortcut(_:)();
  (*(v3 + 8))(v5, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #1 in closure #6 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityTypeRoomPhone();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);
  State.wrappedValue.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_3(v10, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v18 = *(a1 + 32);
    v17[1] = *(a1 + 48);
    type metadata accessor for WorkoutConfigurationDataSource();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    v15 = StateObject.wrappedValue.getter();
    WorkoutConfigurationDataSource.remove(uuid:)();

    (*(v12 + 8))(v14, v11);
  }

  (*(v12 + 56))(v7, 1, 1, v11);
  _s10Foundation4UUIDVSgWOcTm_3(v7, v4, &_s10Foundation4UUIDVSgMd);
  State.wrappedValue.setter();
  return _s10Foundation4UUIDVSgWOhTm_3(v7, &_s10Foundation4UUIDVSgMd);
}

uint64_t closure #2 in closure #6 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CB96CD0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #3 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = type metadata accessor for WorkoutConfigurationFilterPicker();
  v14 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for WorkoutReadinessChecker();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutDevicesProvider();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8]);
  StateObject.wrappedValue.getter();
  WorkoutReadinessChecker.init(workoutDevicesProvider:)();
  v8 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    type metadata accessor for ActivityTypeRoomPhone();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
    State.projectedValue.getter();
    FIUIWorkoutActivityType.configurationTypes.getter();
    v9 = static WorkoutConfigurationFilterType.supported(for:)();

    *v3 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
    swift_storeEnumTagMultiPayload();
    *(v3 + *(v1 + 24)) = v9;
    v10 = v15;
    outlined init with take of ActivityTypeRoomPhone(v3, v15, type metadata accessor for WorkoutConfigurationFilterPicker);
    v11 = 0;
    v12 = v10;
  }

  else
  {
    v11 = 1;
    v12 = v15;
  }

  return (*(v14 + 56))(v12, v11, 1, v1);
}

uint64_t closure #2 in ActivityTypeRoomPhone.body.getter@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = a2[2];
  if (v12)
  {
    v13 = *a1;
    v14 = a2[13];
    v15 = a2[14];
    v16 = v12;
    closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)(v13, v16, v14, 0, v15, v8);

    v17 = a2[10];
    if (v17)
    {
      type metadata accessor for ConfigurationNavigationModel();
      _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);

      v18 = static ObservableObject.environmentStore.getter();
      _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_1(v8, v11, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd);
      v19 = &v11[*(v9 + 36)];
      *v19 = v18;
      v19[1] = v17;
      type metadata accessor for WorkoutConfigurationDataSource();
      _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
      v20 = StateObject.wrappedValue.getter();
      v21 = static ObservableObject.environmentStore.getter();
      _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_1(v11, a3, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGMd);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMd);
      v23 = (a3 + *(result + 36));
      *v23 = v21;
      v23[1] = v20;
      return result;
    }

    type metadata accessor for ConfigurationNavigationModel();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  }

  else
  {
    _sSo21FIUIFormattingManagerCMaTm_11(0, &lazy cache variable for type metadata for FIUIFormattingManager);
    lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 closure #3 in ActivityTypeRoomPhone.body.getter@<Q0>(uint64_t a1@<X8>)
{

  AlertConfigurationView.init(viewModel:)(v2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t closure #4 in ActivityTypeRoomPhone.body.getter(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #4 in ActivityTypeRoomPhone.body.getter, v3, v2);
}

uint64_t closure #4 in ActivityTypeRoomPhone.body.getter()
{

  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v1 = StateObject.wrappedValue.getter();
  WorkoutConfigurationDataSource.configure()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #5 in ActivityTypeRoomPhone.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = type metadata accessor for NavigationPath();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for GoalPicker();
  MEMORY[0x28223BE20](v8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + *(type metadata accessor for ActivityTypeRoomPhone() + 60));
  v39 = a1;

  v34 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #5 in ActivityTypeRoomPhone.body.getter, v38, v11);
  v12 = a1[12];
  v13 = a1[2];
  if (v13)
  {
    v14 = a1[14];
    v33 = a1[13];
    v32 = v12;
    v31 = v13;
    v30 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
    State.wrappedValue.getter();
    *v10 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
    swift_storeEnumTagMultiPayload();
    v15 = (v10 + v8[5]);
    type metadata accessor for WorkoutConfigurationDataSource();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    *v15 = EnvironmentObject.init()();
    v15[1] = v16;
    v17 = (v10 + v8[6]);
    type metadata accessor for ConfigurationNavigationModel();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    *v17 = EnvironmentObject.init()();
    v17[1] = v18;
    NavigationPath.init()();
    v19 = v36;
    (*(v3 + 16))(v35, v7, v36);
    State.init(wrappedValue:)();
    (*(v3 + 8))(v7, v19);
    v20 = v10 + v8[14];
    v40 = 0;
    State.init(wrappedValue:)();
    v21 = v42;
    *v20 = v41;
    *(v20 + 1) = v21;
    v22 = v33;
    *(v10 + v8[7]) = v32;
    *(v10 + v8[8]) = v22;
    v23 = v30;
    *(v10 + v8[9]) = v31;
    *(v10 + v8[10]) = v23;
    *(v10 + v8[11]) = v34;
    v24 = StateObject.wrappedValue.getter();
    v25 = static ObservableObject.environmentStore.getter();
    v26 = v37;
    outlined init with take of ActivityTypeRoomPhone(v10, v37, type metadata accessor for GoalPicker);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010GoalPickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
    v28 = (v26 + *(result + 36));
    *v28 = v25;
    v28[1] = v24;
  }

  else
  {
    _sSo21FIUIFormattingManagerCMaTm_11(0, &lazy cache variable for type metadata for FIUIFormattingManager);
    lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
    v29 = v12;
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #6 in ActivityTypeRoomPhone.body.getter()
{
  v0 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  static ToolbarItemPlacement.topBarTrailing.getter();
  lazy protocol witness table accessor for type DeviceConnectionMenu and conformance DeviceConnectionMenu();
  ToolbarItem<>.init(placement:content:)();
  Workout = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), DeviceConnectionMenu> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd);
  MEMORY[0x20F3098F0](v4, v1, Workout);
  return (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in closure #6 in ActivityTypeRoomPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  *a1 = 1;
  *(a1 + 8) = implicit closure #2 in implicit closure #1 in variable initialization expression of DeviceConnectionMenu._devicesProvider;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGA31_yAA0eU15SpacingTraitKeyVGGA81_yAA0eU7SpacingVSgGGA116_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGA31_yAA0eU15SpacingTraitKeyVGGA81_yAA0eU7SpacingVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGA31_yAA0eU15SpacingTraitKeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA0F0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAiAE0gH9Separator_5edgesQrAA10VisibilityO_AA08VerticalJ0OAMVtFQOyAiAE0G14SectionMarginsyQrAN_ARtFQOyAA15ModifiedContentVyAA0S0VyAA05EmptyF0VA0_yAA6VStackVyAGyA0_yAA9LazyVGridVyAGy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryF0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0cH18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAGyA9_032NoWorkoutConfigurationsAvailableF0VSg_AA7ForEachVySay07WorkoutL020WorkoutConfigurationCG10Foundation4UUIDVA0_yA0_yAA5GroupVyAA012_ConditionalV0VyA9_024RaceWorkoutConfigurationH0VAiAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaHRd_0_r0_lFQOyAiAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalJ0O_Sbqd__yXEtAaHRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationH0VG_AGyA0_yA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_A0_yA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAiAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0chI8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #4 in ActivityTypeRoomPhone.body.getter()
{
  v2 = *(type metadata accessor for ActivityTypeRoomPhone() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #4 in ActivityTypeRoomPhone.body.getter;

  return closure #4 in ActivityTypeRoomPhone.body.getter(v0 + v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #5 in ActivityTypeRoomPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityTypeRoomPhone() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #5 in ActivityTypeRoomPhone.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, _TaskModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, _TaskModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, _TaskModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyACyACyACyACyAA4ListVys5NeverOAA05TupleE0VyAeAE0jK6InsetsyQrAA0P0OAOV_12CoreGraphics7CGFloatVSgtFQOyAeAEAI_AJQrAL_APtFQOyAeAE0J14SectionMarginsyQrAZ_A2_tFQOyACyAA0Y0VyAA05EmptyE0VACyAA6VStackVyAVyACyAA9LazyVGridVyAVy07WorkoutB028MediaConfigurationRoomButtonVSg_A12_019VoiceCompanionEntryE0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA7_GAA21_TraitWritingModifierVyAA0rK18BackgroundTraitKeyVGG_Qo__Qo__Qo__A5_yA12_32WorkoutConfigurationFilterPickerVSgAVyA12_032NoWorkoutConfigurationsAvailableE0VSg_AA7ForEachVySay07WorkoutV020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA12_024RaceWorkoutConfigurationK0VAeAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalP0O_Sbqd__yXEtAaDRd__lFQOyAA6ButtonVyA12_020WorkoutConfigurationK0VG_AVyACyA76_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA12_31ShareWorkoutConfigurationButtonVA88_GtGQo__SSAeAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA76_yAA4TextVG_Qo_Qo_GGA34_yAA0rkU8TraitKeyVGGA37_GGA12_19CreateWorkoutButtonVSgtGA7_GtGGA84_yA2_GGA34_yAA0rY15SpacingTraitKeyVGGA84_yAA0rY7SpacingVSgGGA119_G_Qo__A52_ACyACyA58_yA60_yA60_yA12_024GoalWorkoutConfigurationE0VA12_028IntervalWorkoutConfigurationE0VGA60_yA12_025PacerWorkoutConfigurationE0VA12_024RaceWorkoutConfigurationE0VGGSgGA84_yA12_28ConfigurationNavigationModelCSgGGA84_yA50_30WorkoutConfigurationDataSourceCSgGGQo__A12_018AlertConfigurationE5ModelCA12_018AlertConfigurationE0VQo_AA13_TaskModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAPyAPyAPyAA4ListVys5NeverOAA05TupleC0VyAcAE0hI6InsetsyQrAA0N0OAMV_12CoreGraphics7CGFloatVSgtFQOyAcAEAG_AHQrAJ_ANtFQOyAcAE0H14SectionMarginsyQrAZ_A2_tFQOyAPyAA0Y0VyAA05EmptyC0VAPyAA6VStackVyAVyAPyAA9LazyVGridVyAVy07WorkoutB028MediaConfigurationRoomButtonVSg_A12_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA7_GAA21_TraitWritingModifierVyAA0rI18BackgroundTraitKeyVGG_Qo__Qo__Qo__A5_yA12_32WorkoutConfigurationFilterPickerVSgAVyA12_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay07WorkoutV020WorkoutConfigurationCG10Foundation4UUIDVAPyAPyAA5GroupVyAA012_ConditionalQ0VyA12_024RaceWorkoutConfigurationI0VAcAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalN0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA12_020WorkoutConfigurationI0VG_AVyAPyA76_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_APyA12_31ShareWorkoutConfigurationButtonVA88_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA76_yAA4TextVG_Qo_Qo_GGA34_yAA0riU8TraitKeyVGGA37_GGA12_19CreateWorkoutButtonVSgtGA7_GtGGA84_yA2_GGA34_yAA0rY15SpacingTraitKeyVGGA84_yAA0rY7SpacingVSgGGA119_G_Qo__A52_APyAPyA58_yA60_yA60_yA12_024GoalWorkoutConfigurationC0VA12_028IntervalWorkoutConfigurationC0VGA60_yA12_025PacerWorkoutConfigurationC0VA12_024RaceWorkoutConfigurationC0VGGSgGA84_yA12_28ConfigurationNavigationModelCSgGGA84_yA50_30WorkoutConfigurationDataSourceCSgGGQo_Md);
    type metadata accessor for AlertConfigurationViewModel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAMyAMyAMyAA4ListVys5NeverOAA05TupleC0VyAcAE0dE6InsetsyQrAA0J0OAJV_12CoreGraphics7CGFloatVSgtFQOyAcAEAD_AEQrAG_AKtFQOyAcAE0D14SectionMarginsyQrAW_A_tFQOyAMyAA0U0VyAA05EmptyC0VAMyAA6VStackVyASyAMyAA9LazyVGridVyASy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryC0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0nE18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgASyA9_032NoWorkoutConfigurationsAvailableC0VSg_AA7ForEachVySay07WorkoutR020WorkoutConfigurationCG10Foundation4UUIDVAMyAMyAA5GroupVyAA012_ConditionalM0VyA9_024RaceWorkoutConfigurationE0VAcAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalJ0O_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationE0VG_ASyAMyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AMyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAcAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0neQ8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yA_GGA31_yAA0nU15SpacingTraitKeyVGGA81_yAA0nU7SpacingVSgGGA116_G_Qo_Md);
    type metadata accessor for WorkoutConfiguration();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAkAE0iJ9Separator_5edgesQrAA10VisibilityO_AA08VerticalL0OAOVtFQOyAkAE0I14SectionMarginsyQrAP_ATtFQOyACyAA0U0VyAA05EmptyH0VACyAA6VStackVyAIyACyAA9LazyVGridVyAIy07WorkoutB028MediaConfigurationRoomButtonVSg_A9_019VoiceCompanionEntryH0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA23SafeAreaPaddingModifierVGSgA4_GAA21_TraitWritingModifierVyAA0eJ18BackgroundTraitKeyVGG_Qo__Qo__Qo__A2_yA9_32WorkoutConfigurationFilterPickerVSgAIyA9_032NoWorkoutConfigurationsAvailableH0VSg_AA7ForEachVySay07WorkoutN020WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyAA012_ConditionalD0VyA9_024RaceWorkoutConfigurationJ0VAkAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAE12swipeActions4edge15allowsFullSwipe7contentQrAA010HorizontalL0O_Sbqd__yXEtAaJRd__lFQOyAA6ButtonVyA9_020WorkoutConfigurationJ0VG_AIyACyA73_yAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyA9_31ShareWorkoutConfigurationButtonVA85_GtGQo__SSAkAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyA73_yAA4TextVG_Qo_Qo_GGA31_yAA0ejK8TraitKeyVGGA34_GGA9_19CreateWorkoutButtonVSgtGA4_GtGGA81_yATGGA31_yAA0eU15SpacingTraitKeyVGGA81_yAA0eU7SpacingVSgGGA116_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, MEMORY[0x277D7DA50]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AlertConfigurationViewModel and conformance AlertConfigurationViewModel, type metadata accessor for AlertConfigurationViewModel);
    lazy protocol witness table accessor for type AlertConfigurationView and conformance AlertConfigurationView();
    swift_getOpaqueTypeConformance2();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, _TaskModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GoalPicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GoalPicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GoalPicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010GoalPickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GoalPicker and conformance GoalPicker, type metadata accessor for GoalPicker);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GoalPicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for ActivityTypeRoomPhone()
{
  type metadata accessor for Environment<WorkoutVoiceAvailabilityProvider>(319, &lazy cache variable for type metadata for Environment<WorkoutVoiceAvailabilityProvider>, MEMORY[0x277D7DD08], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<FIUIFormattingManager>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for StateObject<WorkoutConfigurationDataSource>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for StateObject<WorkoutDevicesProvider>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
          if (v4 <= 0x3F)
          {
            _sSo21FIUIFormattingManagerCMaTm_11(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
            if (v5 <= 0x3F)
            {
              type metadata accessor for HKActivityMoveMode(319);
              if (v6 <= 0x3F)
              {
                _sSo21FIUIFormattingManagerCMaTm_11(319, &lazy cache variable for type metadata for HKHealthStore);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for InferenceClient();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Environment<WorkoutVoiceAvailabilityProvider>(319, &lazy cache variable for type metadata for State<WorkoutConfigurationFilterType>, MEMORY[0x277D7DC60], MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for State<UUID?>();
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for Environment<WorkoutVoiceAvailabilityProvider>(319, &lazy cache variable for type metadata for [_HKWorkoutGoalType], type metadata accessor for _HKWorkoutGoalType, MEMORY[0x277D83940]);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t _sSo21FIUIFormattingManagerCMaTm_11(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for State<UUID?>()
{
  if (!lazy cache variable for type metadata for State<UUID?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<UUID?>);
    }
  }
}

void type metadata accessor for Environment<WorkoutVoiceAvailabilityProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t partial apply for closure #1 in closure #5 in ActivityTypeRoomPhone.body.getter(void *a1)
{
  if (*a1 == 1)
  {
    return ActivityTypeRoomPhone.isDistanceSupported.getter() & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA9LazyVGridVyAGy07WorkoutB028MediaConfigurationRoomButtonVSg_AJ019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaR8ModifierVGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA9LazyVGridVyAEy07WorkoutB028MediaConfigurationRoomButtonVSg_AJ019VoiceCompanionEntryE0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGMd);
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVACyAA6VStackVyAA05TupleG0VyACyAA9LazyVGridVyAKy07WorkoutB028MediaConfigurationRoomButtonVSg_AN019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaT8ModifierVGSgAGGAA013_TraitWritingY0VyAA017ListRowBackgroundZ3KeyVGGMd);
    lazy protocol witness table accessor for type Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView> and conformance <> Section<A, B, C>();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA6VStackVyAA05TupleE0VyAGyAA9LazyVGridVyAKy07WorkoutB028MediaConfigurationRoomButtonVSg_AN019VoiceCompanionEntryE0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaT8ModifierVGSgAEGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA9LazyVGridVyAGy07WorkoutB028MediaConfigurationRoomButtonVSg_AJ019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaR8ModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA9LazyVGridVyAGy07WorkoutB028MediaConfigurationRoomButtonVSg_AJ019VoiceCompanionEntryG0VSgtGGAA14_PaddingLayoutVG_AA7DividerVtGGAA08SafeAreaR8ModifierVGSgMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, ModifiedContent<VStack<TupleView<(ModifiedContent<LazyVGrid<TupleView<(MediaConfigurationRoomButton?, VoiceCompanionEntryView?)>>, _PaddingLayout>, Divider)>>, SafeAreaPaddingModifier>?, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationFilterPicker? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationFilterPicker? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationFilterPicker? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI0A25ConfigurationFilterPickerVSgMd);
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationFilterPicker and conformance WorkoutConfigurationFilterPicker, type metadata accessor for WorkoutConfigurationFilterPicker);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationFilterPicker? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #2 in ActivityTypeRoomPhone.body.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ActivityTypeRoomPhone() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB004RaceG16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaKRd_0_r0_lFQOyAlAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaKRd__lFQOyAA6ButtonVyAH0giJ0VG_AA05TupleK0VyACyAZyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyAH05SharegiZ0VA12_GtGQo__SSAlAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAZyAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListJ14InsetsTraitKeyVGGA31_yAA04ListJ18BackgroundTraitKeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB004RaceG16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaKRd_0_r0_lFQOyAlAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaKRd__lFQOyAA6ButtonVyAH0giJ0VG_AA05TupleK0VyACyAZyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ACyAH05SharegiZ0VA12_GtGQo__SSAlAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAZyAA4TextVG_Qo_Qo_GGAA21_TraitWritingModifierVyAA04ListJ14InsetsTraitKeyVGGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?> and conformance <A> Group<A>(&lazy protocol witness table cache variable for type Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>> and conformance <A> Group<A>, &_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB004RaceF16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaIRd_0_r0_lFQOyAjAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaIRd__lFQOyAA6ButtonVyAF0fhI0VG_AA05TupleJ0VyAA08ModifiedE0VyAXyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_A3_yAF05SharefhY0VA12_GtGQo__SSAjAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAXyAA4TextVG_Qo_Qo_GGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB004RaceF16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaIRd_0_r0_lFQOyAjAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaIRd__lFQOyAA6ButtonVyAF0fhI0VG_AA05TupleJ0VyAA08ModifiedE0VyAXyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_A3_yAF05SharefhY0VA12_GtGQo__SSAjAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAXyAA4TextVG_Qo_Qo_GGMR, lazy protocol witness table accessor for type _ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0> and conformance <> _ConditionalContent<A, B>);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?> and conformance <A> Group<A>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB004RaceE16ConfigurationRowVAA4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaGRd_0_r0_lFQOyAhAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaGRd__lFQOyAA6ButtonVyAD0egH0VG_AA05TupleI0VyAA08ModifiedD0VyAVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_A1_yAD05ShareegX0VA10_GtGQo__SSAhAE16keyboardShortcutyQrAA16KeyboardShortcutVFQOyAVyAA4TextVG_Qo_Qo_GMd);
    lazy protocol witness table accessor for type RaceWorkoutConfigurationRow and conformance RaceWorkoutConfigurationRow();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA6ButtonVy07WorkoutB00N16ConfigurationRowVG_AA05TupleC0VyAA15ModifiedContentVyAKyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_ASyAL05SharenoM0VA0_GtGQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE16keyboardShortcutyQrAA08KeyboardE0VFQOyAA6ButtonVyAA4TextVG_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AEy07WorkoutB005Sharep13ConfigurationG0VAPGtGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<WorkoutConfigurationRow> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>?, ModifiedContent<ShareWorkoutConfigurationButton, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGSg_AEy07WorkoutB005Sharep13ConfigurationG0VAPGtGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type String and conformance String();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RaceWorkoutConfigurationRow and conformance RaceWorkoutConfigurationRow()
{
  result = lazy protocol witness table cache variable for type RaceWorkoutConfigurationRow and conformance RaceWorkoutConfigurationRow;
  if (!lazy protocol witness table cache variable for type RaceWorkoutConfigurationRow and conformance RaceWorkoutConfigurationRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutConfigurationRow and conformance RaceWorkoutConfigurationRow);
  }

  return result;
}

uint64_t outlined copy of CreateWorkoutButton?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined consume of CreateWorkoutButton?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined init with copy of ActivityTypeRoomPhone(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _EnvironmentKeyWritingModifier<CGFloat?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #4 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for ActivityTypeRoomPhone();

  return closure #4 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(a1);
}

uint64_t objectdestroy_46Tm()
{
  v1 = type metadata accessor for ActivityTypeRoomPhone();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(*(v0 + v2), *(v0 + v2 + 8));

  sub_20C6936C0(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  sub_20C6936C0(*(v3 + 56), *(v3 + 64), *(v3 + 72));

  v4 = v1[12];
  v5 = type metadata accessor for InferenceClient();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + v1[13];
  v7 = type metadata accessor for WorkoutConfigurationFilterType();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);

  v8 = v0 + v2 + v1[14];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);

  return swift_deallocObject();
}

void partial apply for closure #5 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(_BYTE *a1)
{
  type metadata accessor for ActivityTypeRoomPhone();

  closure #5 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(a1);
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = type metadata accessor for ActivityTypeRoomPhone();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(*v2, *(v2 + 8));

  sub_20C6936C0(*(v2 + 32), *(v2 + 40), *(v2 + 48));
  sub_20C6936C0(*(v2 + 56), *(v2 + 64), *(v2 + 72));

  v3 = v1[12];
  v4 = type metadata accessor for InferenceClient();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[13];
  v6 = type metadata accessor for WorkoutConfigurationFilterType();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);

  v7 = v2 + v1[14];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #6 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter()
{
  v1 = *(type metadata accessor for ActivityTypeRoomPhone() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #6 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(v2);
}

uint64_t objectdestroy_43Tm_1()
{
  v1 = type metadata accessor for ActivityTypeRoomPhone();
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(*(v0 + v3), *(v0 + v3 + 8));

  sub_20C6936C0(*(v4 + 32), *(v4 + 40), *(v4 + 48));
  sub_20C6936C0(*(v4 + 56), *(v4 + 64), *(v4 + 72));

  v5 = v1[12];
  v6 = type metadata accessor for InferenceClient();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v0 + v3 + v1[13];
  v8 = type metadata accessor for WorkoutConfigurationFilterType();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);

  v9 = v0 + v3 + v1[14];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4UUIDVSgGMd);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in ActivityTypeRoomPhone.body.getter(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ActivityTypeRoomPhone() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.listRowInsets(_:_:)>>.0, Section<WorkoutConfigurationFilterPicker?, TupleView<(NoWorkoutConfigurationsAvailableView?, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<_ConditionalContent<RaceWorkoutConfigurationRow, <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, CreateWorkoutButton?)>, EmptyView>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t _s10Foundation4UUIDVSgWOcTm_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_3(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ActivityTypeRoomPhone(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *WorkoutSessionControls.__allocating_init(workout:workoutController:safetyCheckIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = 0;
  return result;
}

void *WorkoutSessionControls.init(workout:workoutController:safetyCheckIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = 0;
  return v3;
}

void (*WorkoutSessionControls.closure(for:)(uint64_t *a1))()
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 24);
  if (v4 > 2)
  {
    if (v4 - 3 < 2)
    {
      return 0;
    }

    if (a1[1] | a1[2] | v3)
    {
      if (v3 == 1 && *(a1 + 1) == 0)
      {

        return partial apply for closure #5 in WorkoutSessionControls.closure(for:);
      }

      else if (v3 == 2 && *(a1 + 1) == 0)
      {

        return partial apply for closure #6 in WorkoutSessionControls.closure(for:);
      }

      else if (v3 == 3 && *(a1 + 1) == 0)
      {

        return partial apply for closure #7 in WorkoutSessionControls.closure(for:);
      }

      else
      {
        if (v3 == 4 && *(a1 + 1) == 0)
        {
          return 0;
        }

        if (v3 == 5 && *(a1 + 1) == 0)
        {
          if (WorkoutSafetyCheckIn.showCheckInSessionButton.getter())
          {
            return closure #8 in WorkoutSessionControls.closure(for:);
          }

          else
          {
            return 0;
          }
        }

        if (v3 == 6 && *(a1 + 1) == 0)
        {
          v12 = [*(v1 + 16) sessionActivity];
          v13 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();

          LOBYTE(v12) = dispatch thunk of LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)();
          if ((v12 & 1) == 0)
          {
            return 0;
          }

          return partial apply for closure #9 in WorkoutSessionControls.closure(for:);
        }

        else
        {
          v14 = [*(v1 + 16) sessionActivity];
          v15 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();

          LOBYTE(v14) = dispatch thunk of LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)();
          if ((v14 & 1) == 0)
          {
            return 0;
          }

          return partial apply for closure #10 in WorkoutSessionControls.closure(for:);
        }
      }
    }

    else
    {

      return partial apply for closure #1 in WorkoutSessionControls.closure(for:);
    }
  }

  if (*(a1 + 24))
  {
    if (v4 == 1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v3;

      return partial apply for closure #3 in WorkoutSessionControls.closure(for:);
    }

    else
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v2;
      *(v11 + 24) = v3;

      return partial apply for closure #4 in WorkoutSessionControls.closure(for:);
    }
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v3;

    return partial apply for closure #2 in WorkoutSessionControls.closure(for:);
  }
}

void closure #2 in WorkoutSessionControls.closure(for:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);
  [v10 setPaused:a3 & 1 atDate:isa eventSource:a2];
}

void closure #5 in WorkoutSessionControls.closure(for:)(uint64_t a1)
{
  v1 = [*(a1 + 16) sessionActivity];
  [v1 endCurrentSegment];
}

void closure #9 in WorkoutSessionControls.closure(for:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)();
  }
}

void closure #10 in WorkoutSessionControls.closure(for:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)();
  }
}

uint64_t WorkoutSessionControls.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for WorkoutUIFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorkoutUIFeatures(_WORD *result, int a2, int a3)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutUIFeatures()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutUIFeatures()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](0);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for AlertsPickerViewPhone(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AlertsPickerViewPhone(uint64_t result, int a2, int a3)
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

uint64_t closure #1 in AlertsPickerViewPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v100 = a5;
  v85 = type metadata accessor for WheelPickerStyle();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGMd);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v78 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  MEMORY[0x28223BE20](v80);
  v79 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v78 - v15;
  v16 = type metadata accessor for BorderedButtonStyle();
  v17 = *(v16 - 8);
  v89 = v16;
  v90 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  MEMORY[0x28223BE20](v20);
  v22 = &v78 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0G0VyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedgE0VQo_Md);
  v24 = *(v23 - 8);
  v91 = v23;
  v92 = v24;
  MEMORY[0x28223BE20](v23);
  v86 = &v78 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0L0VyANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedlJ0VQo__Qo_Md);
  v27 = *(v26 - 8);
  v93 = v26;
  v94 = v27;
  MEMORY[0x28223BE20](v26);
  v88 = &v78 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE0D10TapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0O0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedoM0VQo__Qo__SdQo_Md);
  v97 = *(v29 - 8);
  v98 = v29;
  MEMORY[0x28223BE20](v29);
  v96 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v101 = &v78 - v32;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v33 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd) + 44)];
  v34 = a3;
  v87 = a3;
  closure #1 in closure #1 in AlertsPickerViewPhone.body.getter(a1, a2, a3, a4, v33);
  BorderedButtonStyle.init()();
  v35 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, Spacer, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  v36 = _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  v37 = v20;
  v38 = v89;
  View.buttonStyle<A>(_:)();
  (*(v90 + 8))(v19, v38);
  outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>)>>(v22, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  *(v39 + 24) = a2;
  *(v39 + 32) = v34;
  *(v39 + 40) = a4;
  v40 = a4;

  v105 = v37;
  v106 = v38;
  v107 = v35;
  v108 = v36;
  v41 = a1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v88;
  v44 = v91;
  v45 = v86;
  View.onTapGesture(count:perform:)();

  v46 = v44;
  (*(v92 + 8))(v45, v44);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v102 = v105;
  v47 = swift_allocObject();
  v92 = v41;
  *(v47 + 16) = v41;
  *(v47 + 24) = a2;
  LOBYTE(v44) = v87;
  *(v47 + 32) = v87;
  *(v47 + 40) = v40;
  v90 = a2;

  v105 = v46;
  v106 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v93;
  View.onChange<A>(of:initial:_:)();

  v49 = v95;
  (*(v94 + 8))(v43, v48);
  LOBYTE(v105) = v44;
  v106 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v50 = 1;
  if (v102 == 1)
  {
    v51 = type metadata accessor for AlertsPickerViewModel();
    v52 = _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type AlertsPickerViewModel and conformance AlertsPickerViewModel, type metadata accessor for AlertsPickerViewModel);
    v53 = v92;
    v54 = v90;
    MEMORY[0x20F308920](v92, v90, v51, v52);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v56 = MEMORY[0x28223BE20](v55);
    *(&v78 - 4) = v53;
    *(&v78 - 3) = v54;
    v102 = v57;
    v103 = v58;
    v104 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySdGSdAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GMd);
    v59 = lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
    v76 = MEMORY[0x277D83A18];
    v77 = v59;
    v60 = v78;
    Picker.init(selection:label:content:)();
    v61 = v83;
    WheelPickerStyle.init()();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGMd);
    v62 = v79;
    v63 = v82;
    v64 = v85;
    View.pickerStyle<A>(_:)();
    (*(v84 + 8))(v61, v64);
    (*(v81 + 8))(v60, v63);
    static Edge.Set.top.getter();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>();
    View.listRowInsets(_:_:)();
    outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v62, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
    v50 = 0;
  }

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_Md);
  (*(*(v65 - 8) + 56))(v49, v50, 1, v65);
  v67 = v96;
  v66 = v97;
  v68 = *(v97 + 16);
  v69 = v101;
  v70 = v98;
  v68(v96, v101, v98);
  v71 = v99;
  sub_20C693CE0(v49, v99);
  v72 = v100;
  v68(v100, v67, v70);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE0D10TapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0O0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedoM0VQo__Qo__SdQo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAcAE06pickerM0yQrqd__AA06PickerM0Rd__lFQOyAA6PickerVyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SdQo_GG_AA011WheelPickerM0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtMd);
  sub_20C693CE0(v71, &v72[*(v73 + 48)]);
  outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v49, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  v74 = *(v66 + 8);
  v74(v69, v70);
  outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v71, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  return (v74)(v67, v70);
}

uint64_t closure #1 in closure #1 in AlertsPickerViewPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35[-v11];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v37);
  v38 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v35[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v35[-v18];
  v20 = *(a2 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText + 8);
  v48 = *(a2 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText);
  v49 = v20;
  lazy protocol witness table accessor for type String and conformance String();

  v39 = Text.init<A>(_:)();
  v40 = v21;
  v23 = v22;
  v36 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v43 = a1;
  v44 = a2;
  v45 = a3;
  v46 = a4;

  Button.init(action:label:)();
  LOBYTE(v48) = a3;
  v49 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v47 == 1)
  {
    v26 = *(a2 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_color);
  }

  else
  {
    v26 = static Color.white.getter();
  }

  KeyPath = swift_getKeyPath();
  (*(v41 + 32))(v16, v12, v42);
  v28 = &v16[*(v37 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v16, v19);
  v29 = v38;
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v19, v38);
  v31 = v39;
  v30 = v40;
  *a5 = v39;
  *(a5 + 8) = v23;
  v32 = v36 & 1;
  *(a5 + 16) = v36 & 1;
  *(a5 + 24) = v30;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyACGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtMd);
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v29, a5 + *(v33 + 64));
  outlined copy of Text.Storage(v31, v23, v32);

  outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>)>>(v19, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>)>>(v29, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  outlined consume of Text.Storage(v31, v23, v32);
}

uint64_t closure #2 in closure #1 in closure #1 in AlertsPickerViewPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in AlertsPickerViewPhone.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AlertsPickerViewPhone.body.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t closure #3 in closure #1 in AlertsPickerViewPhone.body.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  Binding.wrappedValue.setter();
  return AlertsPickerViewModel.updateValueDisplay()();
}

uint64_t closure #4 in closure #1 in AlertsPickerViewPhone.body.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_Md);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [Double] and conformance [A], &_sSaySdGMd);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #4 in closure #1 in AlertsPickerViewPhone.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  specialized AlertsPickerViewModel.pickerText(for:)(*a1);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance AlertsPickerViewPhone()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SdQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SdQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SdQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SdQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd);
  return Section<>.init(content:)();
}

uint64_t _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGMd);
    type metadata accessor for WheelPickerStyle();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HideListRowSeparator and conformance HideListRowSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
    type metadata accessor for WheelPickerStyle();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HideListRowSeparator and conformance HideListRowSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroyTm_75()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAiAE0G10TapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0R0VyAUGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedrP0VQo__Qo__SdQo__AiAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAYyAiAE06pickerP0yQrqd__AA06PickerP0Rd__lFQOyAA6PickerVyAESdAA7ForEachVySaySdGSdAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAU_SdQo_GG_AA011WheelPickerP0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAEGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SdQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SdQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAiAE0G10TapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0R0VyAUGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedrP0VQo__Qo__SiQo__AiAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAYyAiAE06pickerP0yQrqd__AA06PickerP0Rd__lFQOyAA6PickerVyAESiAA7ForEachVySaySiGSiAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAU_SiQo_GG_AA011WheelPickerP0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAEGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SiQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

id MediaMomentBridge.artwork.getter()
{
  v0 = type metadata accessor for Artwork();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MediaMoment.artwork.getter();
  v4 = type metadata accessor for ArtworkBridge();
  v5 = objc_allocWithZone(v4);
  (*(v1 + 16))(v5 + OBJC_IVAR___SMArtwork_artwork, v3, v0);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v1 + 8))(v3, v0);
  return v6;
}

id MediaMomentBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaMomentBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaMomentBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MediaMomentBridge()
{
  result = type metadata singleton initialization cache for MediaMomentBridge;
  if (!type metadata singleton initialization cache for MediaMomentBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MediaMomentBridge()
{
  result = type metadata accessor for MediaMoment();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double one-time initialization function for buttonBackground()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB5DA80;
  static Color.white.getter();
  v1 = Color.opacity(_:)();

  *(v0 + 32) = v1;
  static Color.white.getter();
  v2 = Color.opacity(_:)();

  *(v0 + 40) = v2;
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  MEMORY[0x20F30B340](v0);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v4;
  static EffortColors.buttonBackground = v4;
  *algn_27C7EDE50 = v5;
  qword_27C7EDE60 = v6;
  return result;
}

uint64_t static EffortColors.buttonBackground.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for buttonBackground != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static EffortColors.buttonBackground;
  *(a1 + 8) = *(&static EffortColors.buttonBackground + 8);
  *(a1 + 24) = *&algn_27C7EDE50[8];
}

uint64_t one-time initialization function for defaultGradient()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB5DA80;
  (*(v1 + 104))(v3, *MEMORY[0x277CE0EE0], v0);
  *(v4 + 32) = Color.init(_:red:green:blue:opacity:)();
  *(v4 + 40) = static Color.black.getter();
  result = MEMORY[0x20F30B340](v4);
  static EffortColors.defaultGradient = result;
  return result;
}

uint64_t static EffortColors.defaultGradient.getter()
{
  if (one-time initialization token for defaultGradient != -1)
  {
    swift_once();
  }
}

double one-time initialization function for backgroundSaturationMatrix()
{
  static EffortColors.backgroundSaturationMatrix = xmmword_20CB85360;
  unk_27C80F2A0 = xmmword_20CB85370;
  xmmword_27C80F2B0 = xmmword_20CB85380;
  dword_27C80F2C0 = 1062240036;
  *&algn_27C80F2C4[8] = 0;
  *algn_27C80F2C4 = 0;
  DWORD1(xmmword_27C80F2D0) = 0;
  *&result = 1065353216;
  *(&xmmword_27C80F2D0 + 1) = 1065353216;
  return result;
}

uint64_t specialized static EffortColors.textColor(exertion:)(uint64_t a1)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AppleExertionScale();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  outlined init with copy of AppleExertionScale?(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of AppleExertionScale?(v8);
    static Color.white.getter();
    v16 = Color.opacity(_:)();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    v17 = (*(v10 + 88))(v12, v9);
    if (v17 == *MEMORY[0x277D7E248] || v17 == *MEMORY[0x277D7E250] || v17 == *MEMORY[0x277D7E258] || v17 == *MEMORY[0x277D7E260] || v17 == *MEMORY[0x277D7E268] || v17 == *MEMORY[0x277D7E270] || v17 == *MEMORY[0x277D7E278] || v17 == *MEMORY[0x277D7E280] || v17 == *MEMORY[0x277D7E288] || v17 == *MEMORY[0x277D7E290])
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
      v16 = Color.init(_:red:green:blue:opacity:)();
      (*(v10 + 8))(v15, v9);
    }

    else
    {
      v19 = *MEMORY[0x277D7E298];
      v20 = v17;
      static Color.white.getter();
      v16 = Color.opacity(_:)();

      v21 = *(v10 + 8);
      v21(v15, v9);
      if (v20 != v19)
      {
        v21(v12, v9);
      }
    }
  }

  return v16;
}

uint64_t specialized static EffortColors.midpointColor(exertion:)(uint64_t a1)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AppleExertionScale();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  outlined init with copy of AppleExertionScale?(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of AppleExertionScale?(v8);
    return static Color.black.getter();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    v17 = (*(v10 + 88))(v12, v9);
    if (v17 == *MEMORY[0x277D7E248] || v17 == *MEMORY[0x277D7E250] || v17 == *MEMORY[0x277D7E258] || v17 == *MEMORY[0x277D7E260] || v17 == *MEMORY[0x277D7E268] || v17 == *MEMORY[0x277D7E270] || v17 == *MEMORY[0x277D7E278] || v17 == *MEMORY[0x277D7E280] || v17 == *MEMORY[0x277D7E288] || v17 == *MEMORY[0x277D7E290])
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
      v18 = Color.init(_:red:green:blue:opacity:)();
      (*(v10 + 8))(v15, v9);
    }

    else
    {
      v19 = *MEMORY[0x277D7E298];
      v20 = v17;
      v18 = static Color.black.getter();
      v21 = *(v10 + 8);
      v21(v15, v9);
      if (v20 != v19)
      {
        v21(v12, v9);
      }
    }

    return v18;
  }
}

uint64_t specialized static EffortColors.gradient(exertion:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for AppleExertionScale();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppleExertionScale?(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AppleExertionScale?(v7);
    if (one-time initialization token for defaultGradient != -1)
    {
      swift_once();
    }

    v12 = static EffortColors.defaultGradient;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = *(v9 + 16);
    v13(v4, v11, v8);
    v14 = *(v9 + 56);
    v14(v4, 0, 1, v8);
    specialized static EffortColors.textColor(exertion:)(v4);
    outlined destroy of AppleExertionScale?(v4);
    Color.opacity(_:)();

    v13(v4, v11, v8);
    v14(v4, 0, 1, v8);
    specialized static EffortColors.midpointColor(exertion:)(v4);
    outlined destroy of AppleExertionScale?(v4);
    v13(v4, v11, v8);
    v14(v4, 0, 1, v8);
    specialized static EffortColors.midpointColor(exertion:)(v4);
    Color.opacity(_:)();

    outlined destroy of AppleExertionScale?(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_20CB5EA80;

    *(v15 + 32) = Gradient.Stop.init(color:location:)();
    *(v15 + 40) = v16;

    *(v15 + 48) = Gradient.Stop.init(color:location:)();
    *(v15 + 56) = v17;

    *(v15 + 64) = Gradient.Stop.init(color:location:)();
    *(v15 + 72) = v18;
    v12 = Gradient.init(stops:)();

    (*(v9 + 8))(v11, v8);
  }

  return v12;
}

uint64_t getEnumTagSinglePayload for EffortColors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EffortColors(_WORD *result, int a2, int a3)
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

uint64_t outlined destroy of AppleExertionScale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricGroup()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricGroup()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricGroup@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MetricGroup.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MetricGroup] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MetricGroup] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MetricGroup] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI11MetricGroupOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MetricGroup] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricGroup and conformance MetricGroup()
{
  result = lazy protocol witness table cache variable for type MetricGroup and conformance MetricGroup;
  if (!lazy protocol witness table cache variable for type MetricGroup and conformance MetricGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricGroup and conformance MetricGroup);
  }

  return result;
}

unint64_t specialized MetricGroup.init(rawValue:)(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

id FIUIFormattingManager.distanceSplitsDisplayString(distanceInMeters:distanceType:)(uint64_t a1, double a2)
{
  swift_getObjectType();
  result = [v2 unitManager];
  if (result)
  {
    v6 = result;
    v7 = [result userDistanceUnitForDistanceType_];

    result = [v2 localizedStringWithDistanceInMeters:v7 distanceUnit:2 unitStyle:objc_msgSend(swift_getObjCClassFromMetadata() decimalPrecision:sel_defaultPrecisionForDistanceUnit_ roundingMode:v7) decimalTrimmingMode:{6, 1, a2}];
    if (result)
    {
      v8 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      v9 = StringProtocol.localizedLowercase.getter();

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized FIUIFormattingManager.timeSplitsDisplayString(time:)(double a1)
{
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  result = MEMORY[0x28223BE20](v3 - 8);
  v5 = a1 / 60.0;
  if (a1 / 60.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = COERCE_UNSIGNED_INT64(fabs(a1 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v6)
  {
    goto LABEL_10;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 9.22337204e18)
  {
    v7 = v5;
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for WorkoutUIBundlePlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20CB5DA80;
    v11 = MEMORY[0x277D83B88];
    v12 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v12;
    *(v10 + 32) = v7;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 72) = a1 % 60;
    v13 = static String.localizedStringWithFormat(_:_:)();

    return v13;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for AlertSingleConfigurationView()
{
  result = type metadata singleton initialization cache for AlertSingleConfigurationView;
  if (!type metadata singleton initialization cache for AlertSingleConfigurationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AlertSingleConfigurationView()
{
  type metadata accessor for AlertConfigurationStateManaging();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FIUIWorkoutActivityType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AlertConfigurationContext();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AlertConfigurationSessionContext();
        if (v3 <= 0x3F)
        {
          type metadata accessor for State<AlertSingleConfigurationView.Selection>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for State<AlertSingleConfigurationView.Selection>()
{
  if (!lazy cache variable for type metadata for State<AlertSingleConfigurationView.Selection>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<AlertSingleConfigurationView.Selection>);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlertSingleConfigurationView.Selection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 8;
  v9 = v7 - 8;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlertSingleConfigurationView.Selection(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for AlertSingleConfigurationView.Selection(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for AlertSingleConfigurationView.Selection(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayProtocol.filter(_:)(a1, a2, a3, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized _ArrayProtocol.filter(_:)(a1, a2, a3, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

void specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = type metadata accessor for RaceChartPoint();
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = MEMORY[0x277D84F90];
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
          v23 = v39;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v26 + 1;
        v36 = v23;
        v22((v23 + v13 + v26 * v14), v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

void specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v24 = *(ViewModel - 8);
  MEMORY[0x28223BE20](ViewModel - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      outlined init with copy of AlertSingleConfigurationView(a3 + v14 + v15 * v12, v11, type metadata accessor for TrainingLoadViewModel);
      v16 = a1(v11);
      if (v3)
      {
        outlined destroy of TrainingLoadViewModel(v11);

        goto LABEL_15;
      }

      if (v16)
      {
        outlined init with take of AlertSingleConfigurationView(v11, v23, type metadata accessor for TrainingLoadViewModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        outlined init with take of AlertSingleConfigurationView(v23, v13 + v14 + v19 * v15, type metadata accessor for TrainingLoadViewModel);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        outlined destroy of TrainingLoadViewModel(v11);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v14 = *(a3 + 16);
    v15 = result;
    while (v8 < *(a3 + 16))
    {
      v12 = *(a3 + v8 + 32);
      v16 = v12;
      result = v7(&v16);
      if (v4)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((result & 1) == 0)
        {
          result = a4(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          result = a4(v10 > 1, v11 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + v11 + 32) = v12;
        v6 = v14;
        v7 = v15;
      }

      if (v6 == ++v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlertSingleConfigurationView.Selection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0;
  if (v1 != 8)
  {
    MEMORY[0x20F30CD90](1);
    v2 = v1;
  }

  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AlertSingleConfigurationView.Selection()
{
  v1 = *v0;
  if (v1 == 8)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x20F30CD90](1);
  }

  return MEMORY[0x20F30CD90](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlertSingleConfigurationView.Selection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 8)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x20F30CD90](1);
  }

  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AlertSingleConfigurationView.Selection(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    return v3 == 8;
  }

  if (v3 == 8)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t lazy protocol witness table accessor for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection()
{
  result = lazy protocol witness table cache variable for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection;
  if (!lazy protocol witness table cache variable for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection;
  if (!lazy protocol witness table cache variable for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection);
  }

  return result;
}

BOOL closure #1 in AlertSingleConfigurationView.init(stateHandler:activityType:configurationContext:sessionContext:)(WorkoutUI::AlertConfigurationType *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return AlertConfigurationView.configurationTypeIsEnabled(_:)(v2);
}

uint64_t AlertSingleConfigurationView.headerText.getter()
{
  v1 = type metadata accessor for AlertConfigurationContext();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConfigurationType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for AlertSingleConfigurationView();
  (*(v2 + 16))(v4, v0 + *(v12 + 24), v1);
  if ((*(v2 + 88))(v4, v1) != *MEMORY[0x277D7E4B8])
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  (*(v2 + 96))(v4, v1);
  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 104))(v8, *MEMORY[0x277D7E110], v5);
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v6 + 8);
  v13(v8, v5);
  if (v20[0] != v20[3])
  {
    v13(v11, v5);
    return 0;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = WorkoutUIBundle.super.isa;
  v21._object = 0xE000000000000000;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._object = 0x800000020CBA1AC0;
  v16._countAndFlagsBits = 0xD000000000000022;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v21)._countAndFlagsBits;

  v13(v11, v5);
  return countAndFlagsBits;
}

uint64_t AlertSingleConfigurationView.platformTargetTypePicker()@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_ACyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_AA7ForEachVySayAR22AlertConfigurationTypeOGA7_AEyAgAEAhIQrAK_tFQOyAMyACyAQ_A_tGG_Qo_GSgGtGMd);
  MEMORY[0x28223BE20](v83);
  v3 = (&v67 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAfA6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleJ0VyAA4TextV_ASyAA6SpacerV_AA5ImageVtGSgtGG_Qo_GSgGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  v73 = type metadata accessor for AlertSingleConfigurationView();
  v10 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v74 = v11;
  v75 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AMyAA6SpacerV_AA5ImageVtGSgtGG_Qo_GMd);
  v76 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v69 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v85 = &v67 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV07WorkoutB0024AlertSingleConfigurationF0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleF0VyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA08ModifiedD0VyAmN17HeaderHyphenationVG_ASQo__AA7ForEachVySayAN0lN4TypeOGA5_A1_SgGtGG_AA07DefaultiH0VQo_AUyAA6ButtonVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAUyA0__AUyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A3_yA6_A5_A15_yAgAEA16_A17_QrA19__tFQOyA21_yAUyAM_A27_tGG_Qo_GSgGtG_GMd);
  MEMORY[0x28223BE20](v79);
  v82 = &v67 - v16;
  v80 = type metadata accessor for DefaultPickerStyle();
  v68 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleI0VyAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAeF17HeaderHyphenationVG_AKQo__AA7ForEachVySayAF0fH4TypeOGA_AWSgGtGGMd);
  v67 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v20 = &v67 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV07WorkoutB0024AlertSingleConfigurationC0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAiJ17HeaderHyphenationVG_AOQo__AA7ForEachVySayAJ0iK4TypeOGA1_AYSgGtGG_AA07DefaultfE0VQo_Md);
  v77 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v22 = &v67 - v21;
  if (static Platform.current.getter())
  {
    v67 = v12;
    v71 = v9;
    v77 = v5;
    v72 = v4;
    v68 = v3;
    v23 = v75;
    outlined init with copy of AlertSingleConfigurationView(v1, v75, type metadata accessor for AlertSingleConfigurationView);
    v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v25 = swift_allocObject();
    v26 = outlined init with take of AlertSingleConfigurationView(v23, v25 + v24, type metadata accessor for AlertSingleConfigurationView);
    MEMORY[0x28223BE20](v26);
    v95._object = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AKyAA6SpacerV_AA5ImageVtGSgtGG_Qo_Md);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
    v28 = lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, HeaderHyphenation>, TupleView<(Spacer, Image)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
    *&v90 = v27;
    *(&v90 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    Button.init(action:label:)();
    v29 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v31 = v29[3];
    v30 = v29[4];
    v32 = v29[2];
    v91 = v29[1];
    v92 = v32;
    v93 = v31;
    v94 = v30;
    v90 = *v29;
    MEMORY[0x28223BE20](v29);
    v66 = v33;
    v88._countAndFlagsBits = specialized _ArrayProtocol.filter(_:)(closure #1 in AlertConfigurationView.orderedSupportedConfigurationTypes(with:)partial apply, (&v67 - 4), &outlined read-only object #0 of static AlertConfigurationType.allCases.getter, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    outlined init with copy of AlertConfigurationView(&v90, v89);

    specialized MutableCollection<>.sort(by:)(&v88, &v90);
    outlined destroy of AlertConfigurationView(&v90);

    v89[0] = v88._countAndFlagsBits;
    swift_getKeyPath();
    v34 = v75;
    outlined init with copy of AlertSingleConfigurationView(v1, v75, type metadata accessor for AlertSingleConfigurationView);
    v35 = swift_allocObject();
    outlined init with take of AlertSingleConfigurationView(v34, v35 + v24, type metadata accessor for AlertSingleConfigurationView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI22AlertConfigurationTypeOGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleD0VyAA4TextV_AMyAA6SpacerV_AA5ImageVtGSgtGG_Qo_GSgMd);
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [AlertConfigurationType] and conformance [A], &_sSay9WorkoutUI22AlertConfigurationTypeOGMd);
    lazy protocol witness table accessor for type AlertConfigurationType and conformance AlertConfigurationType();
    v95._object = lazy protocol witness table accessor for type Button<<<opaque return type of View.accessibilityElement(children:)>>.0>? and conformance <A> A?();
    v36 = v71;
    ForEach<>.init(_:id:content:)();
    v37 = *(v76 + 16);
    v38 = v69;
    v39 = v67;
    v37(v69, v85, v67);
    v40 = v77;
    v41 = *(v77 + 16);
    v42 = v70;
    v43 = v72;
    v41(v70, v36, v72);
    v44 = v68;
    v37(v68, v38, v39);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AMyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_AA7ForEachVySayAR22AlertConfigurationTypeOGA7_ACyAeAEAfGQrAI_tFQOyAKyAMyAQ_A_tGG_Qo_GSgGtMd);
    v41((v44 + *(v45 + 48)), v42, v43);
    v46 = *(v40 + 8);
    v77 = v40 + 8;
    v75 = v46;
    (v46)(v42, v43);
    v47 = *(v76 + 8);
    v47(v38, v39);
    sub_20C693FE0(v44, v82);
    swift_storeEnumTagMultiPayload();
    v48 = lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, AlertSingleConfigurationView.Selection, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, ForEach<[AlertConfigurationType], AlertConfigurationType, (<<opaque return type of View.tag<A>(_:includeOptional:)>>.0)?>)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleI0VyAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAeF17HeaderHyphenationVG_AKQo__AA7ForEachVySayAF0fH4TypeOGA_AWSgGtGGMd);
    v89[0] = v78;
    v89[1] = v80;
    v89[2] = v48;
    v89[3] = MEMORY[0x277CDDE48];
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Button<<<opaque return type of View.accessibilityElement(children:)>>.0>, ForEach<[AlertConfigurationType], AlertConfigurationType, Button<<<opaque return type of View.accessibilityElement(children:)>>.0>?>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_ACyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_AA7ForEachVySayAR22AlertConfigurationTypeOGA7_AEyAgAEAhIQrAK_tFQOyAMyACyAQ_A_tGG_Qo_GSgGtGMd);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v44, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_ACyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_AA7ForEachVySayAR22AlertConfigurationTypeOGA7_AEyAgAEAhIQrAK_tFQOyAMyACyAQ_A_tGG_Qo_GSgGtGMd);
    (v75)(v71, v72);
    return (v47)(v85, v39);
  }

  else
  {
    v50 = v73;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v51 = WorkoutUIBundle.super.isa;
    v95._object = 0xE000000000000000;
    v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v52.value._object = 0xEB00000000656C62;
    v53._object = 0x800000020CBA1AF0;
    v53._countAndFlagsBits = 0xD000000000000025;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    v95._countAndFlagsBits = 0;
    v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v52, v51, v54, v95);

    v88 = v55;
    v56 = v1 + *(v50 + 32);
    v57 = *v56;
    v58 = *(v56 + 1);
    v86 = v57;
    v87 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOGMd);
    v59 = State.projectedValue.getter();
    MEMORY[0x28223BE20](v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AL024AlertSingleConfigurationD0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOQo__AA7ForEachVySayAL0nP4TypeOGAyUSgGtGMd);
    lazy protocol witness table accessor for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection();
    v95._object = lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, ForEach<[AlertConfigurationType], AlertConfigurationType, (<<opaque return type of View.tag<A>(_:includeOptional:)>>.0)?>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AL024AlertSingleConfigurationD0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOQo__AA7ForEachVySayAL0nP4TypeOGAyUSgGtGMd);
    v66 = lazy protocol witness table accessor for type String and conformance String();
    Picker<>.init<A>(_:selection:content:)();
    DefaultPickerStyle.init()();
    v60 = lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, AlertSingleConfigurationView.Selection, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, ForEach<[AlertConfigurationType], AlertConfigurationType, (<<opaque return type of View.tag<A>(_:includeOptional:)>>.0)?>)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleI0VyAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAeF17HeaderHyphenationVG_AKQo__AA7ForEachVySayAF0fH4TypeOGA_AWSgGtGGMd);
    v61 = MEMORY[0x277CDDE48];
    v62 = v78;
    v63 = v80;
    View.pickerStyle<A>(_:)();
    v68[1](v18, v63);
    (*(v67 + 8))(v20, v62);
    v64 = v77;
    v65 = v81;
    (*(v77 + 16))(v82, v22, v81);
    swift_storeEnumTagMultiPayload();
    *&v90 = v62;
    *(&v90 + 1) = v63;
    *&v91 = v60;
    *(&v91 + 1) = v61;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Button<<<opaque return type of View.accessibilityElement(children:)>>.0>, ForEach<[AlertConfigurationType], AlertConfigurationType, Button<<<opaque return type of View.accessibilityElement(children:)>>.0>?>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_ACyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_AA7ForEachVySayAR22AlertConfigurationTypeOGA7_AEyAgAEAhIQrAK_tFQOyAMyACyAQ_A_tGG_Qo_GSgGtGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v64 + 8))(v22, v65);
  }
}

uint64_t closure #1 in AlertSingleConfigurationView.platformTargetTypePicker()@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for AlertSingleConfigurationView();
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAfA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAD17HeaderHyphenationVG_AD0f6SinglegI0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOQo_SgGMd);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v43 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AJ024AlertSingleConfigurationC0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOQo_Md);
  v9 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = WorkoutUIBundle.super.isa;
  v55._object = 0xE000000000000000;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._object = 0x800000020CBA1B20;
  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v55);

  v54[0] = v18;
  lazy protocol witness table accessor for type String and conformance String();
  *v13 = Text.init<A>(_:)();
  *(v13 + 1) = v19;
  v13[16] = v20 & 1;
  *(v13 + 3) = v21;
  *(v13 + 16) = 264;
  v22 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v22[3];
  v23 = v22[4];
  v25 = v22[2];
  v54[1] = v22[1];
  v54[2] = v25;
  v54[3] = v24;
  v54[4] = v23;
  v54[0] = *v22;
  MEMORY[0x28223BE20](v22);
  v55._object = v54;
  v42 = v26;
  v53 = specialized _ArrayProtocol.filter(_:)(closure #1 in AlertConfigurationView.orderedSupportedConfigurationTypes(with:)partial apply, (&v43 - 4), &outlined read-only object #0 of static AlertConfigurationType.allCases.getter, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
  outlined init with copy of AlertConfigurationView(v54, &v52);

  specialized MutableCollection<>.sort(by:)(&v53, v54);
  outlined destroy of AlertConfigurationView(v54);

  v52 = v53;
  swift_getKeyPath();
  outlined init with copy of AlertSingleConfigurationView(a1, v5, type metadata accessor for AlertSingleConfigurationView);
  v27 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v28 = swift_allocObject();
  outlined init with take of AlertSingleConfigurationView(v5, v28 + v27, type metadata accessor for AlertSingleConfigurationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI22AlertConfigurationTypeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AJ024AlertSingleConfigurationC0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOQo_SgMd);
  lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [AlertConfigurationType] and conformance [A], &_sSay9WorkoutUI22AlertConfigurationTypeOGMd);
  lazy protocol witness table accessor for type AlertConfigurationType and conformance AlertConfigurationType();
  v55._object = lazy protocol witness table accessor for type (<<opaque return type of View.tag<A>(_:includeOptional:)>>.0)? and conformance <A> A?();
  v29 = v51;
  ForEach<>.init(_:id:content:)();
  v30 = *(v9 + 16);
  v31 = v45;
  v43 = v13;
  v32 = v46;
  v30(v45, v13, v46);
  v33 = v47;
  v44 = *(v47 + 16);
  v34 = v48;
  v35 = v29;
  v36 = v49;
  (v44)(v48, v35, v49);
  v37 = v50;
  v30(v50, v31, v32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AJ024AlertSingleConfigurationC0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOQo__AA7ForEachVySayAJ0mO4TypeOGAwSSgGtMd);
  (v44)(&v37[*(v38 + 48)], v34, v36);
  v39 = *(v33 + 8);
  v39(v51, v36);
  v40 = *(v9 + 8);
  v40(v43, v32);
  v39(v34, v36);
  return (v40)(v31, v32);
}

uint64_t closure #1 in closure #1 in AlertSingleConfigurationView.platformTargetTypePicker()@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AJ024AlertSingleConfigurationC0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOQo_Md);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  type metadata accessor for AlertSingleConfigurationView();
  if (AlertConfigurationView.configurationTypeIsSupported(_:configurationContext:)(v9))
  {
    v18 = AlertConfigurationType.localizedTitle(activityType:)(*(a2 + 40), v9);
    v19 = v10;
    lazy protocol witness table accessor for type String and conformance String();
    *v8 = Text.init<A>(_:)();
    *(v8 + 1) = v11;
    v8[16] = v12 & 1;
    *(v8 + 3) = v13;
    v8[32] = v9;
    v8[33] = 1;
    (*(v17 + 32))(a3, v8, v6);
    return (*(v17 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v15 = *(v17 + 56);

    return v15(a3, 1, 1, v6);
  }
}

uint64_t closure #2 in AlertSingleConfigurationView.platformTargetTypePicker()()
{
  type metadata accessor for AlertSingleConfigurationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #3 in AlertSingleConfigurationView.platformTargetTypePicker()()
{
  v0 = type metadata accessor for AccessibilityChildBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v4 = static VerticalAlignment.center.getter();
  v10 = 1;
  closure #1 in closure #3 in AlertSingleConfigurationView.platformTargetTypePicker()(&v11);
  v9 = v12;
  v6 = v4;
  v7[0] = v10;
  *&v7[8] = v11;
  v7[24] = v12;
  *v8 = *(&v12 + 1);
  *&v8[8] = v13;
  *&v8[24] = v14;
  static AccessibilityChildBehavior.contain.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, HeaderHyphenation>, TupleView<(Spacer, Image)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
  View.accessibilityElement(children:)();
  (*(v1 + 8))(v3, v0);
  v13 = *&v7[16];
  v14 = *v8;
  v15 = *&v8[16];
  v11 = v6;
  v12 = *v7;
  return outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?(&v11, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
}

uint64_t closure #1 in closure #3 in AlertSingleConfigurationView.platformTargetTypePicker()@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v18._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CBA1B20;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v18);

  lazy protocol witness table accessor for type String and conformance String();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  type metadata accessor for AlertSingleConfigurationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOGMd);
  State.wrappedValue.getter();
  v13 = 0;
  v14 = 0;
  if (v17 == 8)
  {
    v14 = Image.init(systemName:)();

    v13 = 1;
  }

  v15 = v10 & 1;
  outlined copy of Text.Storage(v6, v8, v15);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v15;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;

  outlined consume of Text.Storage(v6, v8, v15);
}

uint64_t closure #4 in AlertSingleConfigurationView.platformTargetTypePicker()@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AlertSingleConfigurationView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleD0VyAA4TextV_AMyAA6SpacerV_AA5ImageVtGSgtGG_Qo_GMd);
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (AlertConfigurationView.configurationTypeIsSupported(_:configurationContext:)(v12))
  {
    outlined init with copy of AlertSingleConfigurationView(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlertSingleConfigurationView);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    v15 = outlined init with take of AlertSingleConfigurationView(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AlertSingleConfigurationView);
    *(v14 + v13 + v8) = v12;
    MEMORY[0x28223BE20](v15);
    *(&v20 - 16) = v12;
    *(&v20 - 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AKyAA6SpacerV_AA5ImageVtGSgtGG_Qo_Md);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
    v17 = lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
    v22 = v16;
    v23 = v17;
    swift_getOpaqueTypeConformance2();
    Button.init(action:label:)();
    (*(v21 + 32))(a3, v11, v9);
    return (*(v21 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v19 = *(v21 + 56);

    return v19(a3, 1, 1, v9);
  }
}

uint64_t closure #1 in closure #4 in AlertSingleConfigurationView.platformTargetTypePicker()(void *a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for AlertSingleConfigurationView();
  v5 = a1 + *(v4 + 32);
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v22[0]) = *v5;
  *(&v22[0] + 1) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOGMd);
  result = State.wrappedValue.getter();
  if (v19[0] == 8 || v19[0] != a2)
  {
    v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = a1 + *(v4 + 24);
    v12 = v9[3];
    v11 = v9[4];
    v13 = v9[2];
    v22[1] = v9[1];
    v22[2] = v13;
    v22[3] = v12;
    v22[4] = v11;
    v22[0] = *v9;
    MEMORY[0x28223BE20](v9);
    v18[2] = v22;
    v18[3] = v10;
    v21 = specialized _ArrayProtocol.filter(_:)(closure #1 in AlertConfigurationView.orderedSupportedConfigurationTypes(with:)partial apply, v18, &outlined read-only object #0 of static AlertConfigurationType.allCases.getter, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    outlined init with copy of AlertConfigurationView(v22, v19);

    specialized MutableCollection<>.sort(by:)(&v21, v22);
    outlined destroy of AlertConfigurationView(v22);

    v14 = *(v21 + 2);
    if (v14)
    {
      v15 = v21 + 32;
      do
      {
        while (1)
        {
          v17 = *v15++;
          v16 = v17;
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          if (v17 != a2)
          {
            break;
          }

          AlertConfigurationView.enableAlertConfigurationType(_:configurationContext:)(a2, v10);
          if (!--v14)
          {
            goto LABEL_8;
          }
        }

        AlertConfigurationView.disableAlertConfigurationType(_:)(v16);
        --v14;
      }

      while (v14);
    }

LABEL_8:

    v19[0] = v6;
    v20 = v7;
    LOBYTE(v21) = a2;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #2 in closure #4 in AlertSingleConfigurationView.platformTargetTypePicker()(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v8 = static VerticalAlignment.center.getter();
  v14 = 1;
  closure #1 in closure #2 in closure #4 in AlertSingleConfigurationView.platformTargetTypePicker()(a1, a2, &v15);
  v13 = v16;
  v10 = v8;
  v11[0] = v14;
  *&v11[8] = v15;
  v11[24] = v16;
  *v12 = *(&v16 + 1);
  *&v12[8] = v17;
  *&v12[24] = v18;
  static AccessibilityChildBehavior.contain.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v4);
  v17 = *&v11[16];
  v18 = *v12;
  v19 = *&v12[16];
  v15 = v10;
  v16 = *v11;
  return outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?(&v15, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
}

uint64_t closure #1 in closure #2 in closure #4 in AlertSingleConfigurationView.platformTargetTypePicker()@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AlertConfigurationType.localizedTitle(activityType:)(*(a2 + 40), a1);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for AlertSingleConfigurationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOGMd);
  State.wrappedValue.getter();
  v12 = 0;
  if (v16 == 8)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    if (v16 == a1)
    {
      v13 = Image.init(systemName:)();

      v12 = 1;
    }
  }

  v14 = v9 & 1;
  outlined copy of Text.Storage(v5, v7, v14);
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v14;
  *(a3 + 24) = v11;
  *(a3 + 32) = 0;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;

  outlined consume of Text.Storage(v5, v7, v14);
}

uint64_t AlertSingleConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = type metadata accessor for ListSectionSpacing();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA4FontVSgGGSgAA0H0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalD0VyA6_AAE06pickerQ0yQrqd__AA06PickerQ0Rd__lFQOyAA0Z0VyAM07WorkoutB0024AlertSingleConfigurationH0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAIyA6_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAMA16_17HeaderHyphenationVG_A21_Qo__AA7ForEachVySayA16_22AlertConfigurationTypeOGA31_A27_SgGtGG_AA07DefaultzQ0VQo_AIyAA6ButtonVyA6_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAIyA26__AIyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A29_yA32_A31_A41_yA6_AAEA42_A43_QrA45__tFQOyA47_yAIyAM_A53_tGG_Qo_GSgGtGG_A21_Qo_AA05EmptyH0VG_A11_yA11_yA11_yAIyA16_011AlertsEntryH0V_AIyA16_016PacerAlertsEntryH0VSg_A16_015RaceAlertsEntryH0VSgtGSgtGA16_018HeartRateZoneEntryH0VGA11_yA71_A71_GGA11_yA11_yA16_010TimeSplitsH0VSgA16_014DistanceSplitsH0VSgGA11_yA16_010TrackEntryH0VSgA16_015PowerZonesEntryH0VSgGGGSgtGGAA06_TraitmN0VyAA0ei12SpacingTraitL0VGGAOyAA0eI7SpacingVSgGGMd);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI4CaseOSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAKyAA4FontVSgGGSgAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalG0VyA2_AAE06pickerO0yQrqd__AA06PickerO0Rd__lFQOyAA0X0VyAI07WorkoutB0024AlertSingleConfigurationD0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOACyA2_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyAIA12_17HeaderHyphenationVG_A17_Qo__AA7ForEachVySayA12_0Z17ConfigurationTypeOGA27_A23_SgGtGG_AA07DefaultxO0VQo_ACyAA6ButtonVyA2_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyA22__ACyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A25_yA28_A27_A37_yA2_AAEA38_A39_QrA41__tFQOyA43_yACyAI_A49_tGG_Qo_GSgGtGG_A17_Qo_AA05EmptyD0VG_A7_yA7_yA7_yACyA12_011AlertsEntryD0V_ACyA12_016PacerAlertsEntryD0VSg_A12_015RaceAlertsEntryD0VSgtGSgtGA12_018HeartRateZoneEntryD0VGA7_yA67_A67_GGA7_yA7_yA12_010TimeSplitsD0VSgA12_014DistanceSplitsD0VSgGA7_yA12_010TrackEntryD0VSgA12_015PowerZonesEntryD0VSgGGGSgtGMd);
  lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI4CaseOSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAKyAA4FontVSgGGSgAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalG0VyA2_AAE06pickerO0yQrqd__AA06PickerO0Rd__lFQOyAA0X0VyAI07WorkoutB0024AlertSingleConfigurationD0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOACyA2_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyAIA12_17HeaderHyphenationVG_A17_Qo__AA7ForEachVySayA12_0Z17ConfigurationTypeOGA27_A23_SgGtGG_AA07DefaultxO0VQo_ACyAA6ButtonVyA2_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyA22__ACyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A25_yA28_A27_A37_yA2_AAEA38_A39_QrA41__tFQOyA43_yACyAI_A49_tGG_Qo_GSgGtGG_A17_Qo_AA05EmptyD0VG_A7_yA7_yA7_yACyA12_011AlertsEntryD0V_ACyA12_016PacerAlertsEntryD0VSg_A12_015RaceAlertsEntryD0VSgtGSgtGA12_018HeartRateZoneEntryD0VGA7_yA67_A67_GGA7_yA7_yA12_010TimeSplitsD0VSgA12_014DistanceSplitsD0VSgGA7_yA12_010TrackEntryD0VSgA12_015PowerZonesEntryD0VSgGGGSgtGMd);
  List<>.init(content:)();
  static ListSectionSpacing.compact.getter();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA4FontVSgGGSgAA0H0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalD0VyA6_AAE06pickerQ0yQrqd__AA06PickerQ0Rd__lFQOyAA0Z0VyAM07WorkoutB0024AlertSingleConfigurationH0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAIyA6_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAMA16_17HeaderHyphenationVG_A21_Qo__AA7ForEachVySayA16_22AlertConfigurationTypeOGA31_A27_SgGtGG_AA07DefaultzQ0VQo_AIyAA6ButtonVyA6_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAIyA26__AIyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A29_yA32_A31_A41_yA6_AAEA42_A43_QrA45__tFQOyA47_yAIyAM_A53_tGG_Qo_GSgGtGG_A21_Qo_AA05EmptyH0VG_A11_yA11_yA11_yAIyA16_011AlertsEntryH0V_AIyA16_016PacerAlertsEntryH0VSg_A16_015RaceAlertsEntryH0VSgtGSgtGA16_018HeartRateZoneEntryH0VGA11_yA71_A71_GGA11_yA11_yA16_010TimeSplitsH0VSgA16_014DistanceSplitsH0VSgGA11_yA16_010TrackEntryH0VSgA16_015PowerZonesEntryH0VSgGGGSgtGGAA06_TraitmN0VyAA0ei12SpacingTraitL0VGGMd) + 36);
  (*(v3 + 16))(&v8[v9], v5, v2);
  v10 = *(v3 + 56);
  v10(&v8[v9], 0, 1, v2);
  KeyPath = swift_getKeyPath();
  v12 = &v8[*(v6 + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd) + 28);
  (*(v3 + 32))(v12 + v13, v5, v2);
  v10(v12 + v13, 0, 1, v2);
  *v12 = KeyPath;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = WorkoutUIBundle.super.isa;
  v23._object = 0xE000000000000000;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._object = 0x800000020CB97CD0;
  v16._countAndFlagsBits = 0xD000000000000026;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v23);

  v22 = v18;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();

  return outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v8, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA4FontVSgGGSgAA0H0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalD0VyA6_AAE06pickerQ0yQrqd__AA06PickerQ0Rd__lFQOyAA0Z0VyAM07WorkoutB0024AlertSingleConfigurationH0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAIyA6_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAMA16_17HeaderHyphenationVG_A21_Qo__AA7ForEachVySayA16_22AlertConfigurationTypeOGA31_A27_SgGtGG_AA07DefaultzQ0VQo_AIyAA6ButtonVyA6_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAIyA26__AIyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A29_yA32_A31_A41_yA6_AAEA42_A43_QrA45__tFQOyA47_yAIyAM_A53_tGG_Qo_GSgGtGG_A21_Qo_AA05EmptyH0VG_A11_yA11_yA11_yAIyA16_011AlertsEntryH0V_AIyA16_016PacerAlertsEntryH0VSg_A16_015RaceAlertsEntryH0VSgtGSgtGA16_018HeartRateZoneEntryH0VGA11_yA71_A71_GGA11_yA11_yA16_010TimeSplitsH0VSgA16_014DistanceSplitsH0VSgGA11_yA16_010TrackEntryH0VSgA16_015PowerZonesEntryH0VSgGGGSgtGGAA06_TraitmN0VyAA0ei12SpacingTraitL0VGGAOyAA0eI7SpacingVSgGGMd);
}

uint64_t closure #1 in AlertSingleConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGACyACyAF010TimeSplitsF0VSgAF08DistancepF0VSgGACyAF05TrackiF0VSgAF010PowerZonesiF0VSgGGGMd);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGACyACyAF010TimeSplitsF0VSgAF08DistancepF0VSgGACyAF05TrackiF0VSgAF010PowerZonesiF0VSgGGGSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAGyAA4FontVSgGGSgMd);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAG4CaseOSgGGAA016_ForegroundStyleJ0VyAA5ColorVGGAIyAA4FontVSgGGSgAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalE0VyA0_AAE06pickerM0yQrqd__AA06PickerM0Rd__lFQOyAA0W0VyAG07WorkoutB0024AlertSingleConfigurationP0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleP0VyA0_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAEyAGA10_17HeaderHyphenationVG_A15_Qo__AA7ForEachVySayA10_0Y17ConfigurationTypeOGA27_A23_SgGtGG_AA07DefaultwM0VQo_A17_yAA6ButtonVyA0_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyA17_yA22__A17_yAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A25_yA28_A27_A37_yA0_AAEA38_A39_QrA41__tFQOyA43_yA17_yAG_A49_tGG_Qo_GSgGtGG_A15_Qo_AA05EmptyP0VGMd);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v49 = a1;
  closure #2 in closure #1 in AlertSingleConfigurationView.body.getter(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA19_ConditionalContentVyAcAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV07WorkoutB0024AlertSingleConfigurationC0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA08ModifiedI0VyAnO17HeaderHyphenationVG_ATQo__AA7ForEachVySayAO0oQ4TypeOGA6_A2_SgGtGG_AA07DefaultlK0VQo_AVyAA6ButtonVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAVyA1__AVyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A4_yA7_A6_A16_yAcAEA17_A18_QrA20__tFQOyA22_yAVyAN_A28_tGG_Qo_GSgGtGG_ATQo_Md);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV07WorkoutB0024AlertSingleConfigurationE0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleE0VyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA08ModifiedD0VyAkL17HeaderHyphenationVG_AQQo__AA7ForEachVySayAL0kM4TypeOGA3_A_SgGtGG_AA07DefaulthG0VQo_ASyAA6ButtonVyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyASyAZ_ASyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A1_yA4_A3_A13_yAeAEA14_A15_QrA17__tFQOyA19_yASyAK_A25_tGG_Qo_GSgGtGGMd);
  v18 = lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, TupleView<(Button<<<opaque return type of View.accessibilityElement(children:)>>.0>, ForEach<[AlertConfigurationType], AlertConfigurationType, Button<<<opaque return type of View.accessibilityElement(children:)>>.0>?>)>> and conformance <> _ConditionalContent<A, B>();
  v19 = lazy protocol witness table accessor for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection();
  *&v56 = v17;
  *(&v56 + 1) = &unk_2823A1568;
  *&v57 = v18;
  *(&v57 + 1) = v19;
  v20 = v41;
  swift_getOpaqueTypeConformance2();
  v44 = v16;
  Section<>.init(header:content:)();
  v21 = type metadata accessor for AlertSingleConfigurationView();
  v22 = a1 + *(v21 + 36);
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v56) = v23;
  *(&v56 + 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOGMd);
  State.wrappedValue.getter();
  v25 = v42;
  v26 = LOBYTE(v55[0]);
  if (LOBYTE(v55[0]) == 8 || (outlined init with copy of AlertConfigurationStateManaging(a1, v61), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI31AlertConfigurationStateManaging_pMd), (swift_dynamicCast() & 1) == 0))
  {
    (*(v20 + 56))(v9, 1, 1, v25);
  }

  else
  {
    v55[2] = v58;
    v55[3] = v59;
    v55[4] = v60;
    v55[0] = v56;
    v55[1] = v57;
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v50 = v56;
    v51 = v57;
    v27 = a1 + *(v21 + 28);
    v28 = v40;
    AlertConfigurationView.viewForConfigurationType(_:sessionContext:)(v26, v27, v40);
    outlined destroy of AlertConfigurationView(v55);
    outlined init with take of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>(v28, v9, &_s7SwiftUI19_ConditionalContentVyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGACyACyAF010TimeSplitsF0VSgAF08DistancepF0VSgGACyAF05TrackiF0VSgAF010PowerZonesiF0VSgGGGMd);
    (*(v20 + 56))(v9, 0, 1, v25);
  }

  v30 = v43;
  v29 = v44;
  v31 = *(v43 + 16);
  v33 = v45;
  v32 = v46;
  v31(v45, v44, v46);
  v34 = v47;
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?(v9, v47);
  v35 = v48;
  v31(v48, v33, v32);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAG4CaseOSgGGAA016_ForegroundStyleJ0VyAA5ColorVGGAIyAA4FontVSgGGSgAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalE0VyA0_AAE06pickerM0yQrqd__AA06PickerM0Rd__lFQOyAA0W0VyAG07WorkoutB0024AlertSingleConfigurationP0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleP0VyA0_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAEyAGA10_17HeaderHyphenationVG_A15_Qo__AA7ForEachVySayA10_0Y17ConfigurationTypeOGA27_A23_SgGtGG_AA07DefaultwM0VQo_A17_yAA6ButtonVyA0_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyA17_yA22__A17_yAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A25_yA28_A27_A37_yA0_AAEA38_A39_QrA41__tFQOyA43_yA17_yAG_A49_tGG_Qo_GSgGtGG_A15_Qo_AA05EmptyP0VG_A5_yA5_yA5_yA17_yA10_011AlertsEntryP0V_A17_yA10_016PacerAlertsEntryP0VSg_A10_015RaceAlertsEntryP0VSgtGSgtGA10_018HeartRateZoneEntryP0VGA5_yA67_A67_GGA5_yA5_yA10_010TimeSplitsP0VSgA10_014DistanceSplitsP0VSgGA5_yA10_010TrackEntryP0VSgA10_015PowerZonesEntryP0VSgGGGSgtMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?(v34, &v35[*(v36 + 48)]);
  outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?(v9, &_s7SwiftUI19_ConditionalContentVyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGACyACyAF010TimeSplitsF0VSgAF08DistancepF0VSgGACyAF05TrackiF0VSgAF010PowerZonesiF0VSgGGGSgMd);
  v37 = *(v30 + 8);
  v37(v29, v32);
  outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?(v34, &_s7SwiftUI19_ConditionalContentVyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGACyACyAF010TimeSplitsF0VSgAF08DistancepF0VSgGACyAF05TrackiF0VSgAF010PowerZonesiF0VSgGGGSgMd);
  return (v37)(v33, v32);
}

uint64_t closure #1 in closure #1 in AlertSingleConfigurationView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AlertSingleConfigurationView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV07WorkoutB0024AlertSingleConfigurationE0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleE0VyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA08ModifiedD0VyAkL17HeaderHyphenationVG_AQQo__AA7ForEachVySayAL0kM4TypeOGA3_A_SgGtGG_AA07DefaulthG0VQo_ASyAA6ButtonVyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyASyAZ_ASyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A1_yA4_A3_A13_yAeAEA14_A15_QrA17__tFQOyA19_yASyAK_A25_tGG_Qo_GSgGtGGMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7];
  AlertSingleConfigurationView.platformTargetTypePicker()(&v15[-v7]);
  v9 = a1 + *(v3 + 40);
  v10 = *v9;
  v11 = *(v9 + 8);
  v15[16] = v10;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOGMd);
  State.wrappedValue.getter();
  outlined init with copy of AlertSingleConfigurationView(a1, &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AlertSingleConfigurationView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  outlined init with take of AlertSingleConfigurationView(&v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for AlertSingleConfigurationView);
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, TupleView<(Button<<<opaque return type of View.accessibilityElement(children:)>>.0>, ForEach<[AlertConfigurationType], AlertConfigurationType, Button<<<opaque return type of View.accessibilityElement(children:)>>.0>?>)>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection();
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v8, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV07WorkoutB0024AlertSingleConfigurationE0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleE0VyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA08ModifiedD0VyAkL17HeaderHyphenationVG_AQQo__AA7ForEachVySayAL0kM4TypeOGA3_A_SgGtGG_AA07DefaulthG0VQo_ASyAA6ButtonVyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyASyAZ_ASyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A1_yA4_A3_A13_yAeAEA14_A15_QrA17__tFQOyA19_yASyAK_A25_tGG_Qo_GSgGtGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in AlertSingleConfigurationView.body.getter(void *a1)
{
  v2 = type metadata accessor for AlertSingleConfigurationView();
  v3 = a1 + v2[8];
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v34) = *v3;
  *(&v34 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOGMd);
  State.wrappedValue.getter();
  v6 = v31[0];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = a1 + v2[6];
  if (v31[0] == 8)
  {
    v34 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[4];
    v37 = v7[3];
    v38 = v11;
    v35 = v9;
    v36 = v10;
    MEMORY[0x28223BE20](v7);
    v28 = &v34;
    v29 = v8;
    v33[0] = specialized _ArrayProtocol.filter(_:)(closure #1 in AlertConfigurationView.orderedSupportedConfigurationTypes(with:)partial apply, v27, &outlined read-only object #0 of static AlertConfigurationType.allCases.getter, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    outlined init with copy of AlertConfigurationView(&v34, v31);

    specialized MutableCollection<>.sort(by:)(v33, &v34);
    outlined destroy of AlertConfigurationView(&v34);

    v12 = v33[0];
    v13 = *(v33[0] + 2);
    if (v13)
    {
      v14 = 32;
      do
      {
        v15 = v12[v14];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        AlertConfigurationView.disableAlertConfigurationType(_:)(v15);
        ++v14;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v30 = v4;
    v34 = *v7;
    v16 = v7[1];
    v17 = v7[2];
    v18 = v7[4];
    v37 = v7[3];
    v38 = v18;
    v35 = v16;
    v36 = v17;
    MEMORY[0x28223BE20](v7);
    v28 = &v34;
    v29 = v8;
    v33[0] = specialized _ArrayProtocol.filter(_:)(_s9WorkoutUI22AlertConfigurationViewV016orderedSupportedD5Types4withSayAA0cD4TypeOG0A4Core0cD7ContextO_tFSbAGXEfU_TA_0, v27, &outlined read-only object #0 of static AlertConfigurationType.allCases.getter, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    outlined init with copy of AlertConfigurationView(&v34, v31);

    specialized MutableCollection<>.sort(by:)(v33, &v34);
    outlined destroy of AlertConfigurationView(&v34);

    v19 = v33[0];
    v20 = *(v33[0] + 2);
    if (v20)
    {
      v21 = 32;
      do
      {
        v22 = v19[v21];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        if (v22 == v6)
        {
          AlertConfigurationView.enableAlertConfigurationType(_:configurationContext:)(v6, v8);
        }

        else
        {
          AlertConfigurationView.disableAlertConfigurationType(_:)(v22);
        }

        ++v21;
        --v20;
      }

      while (v20);
    }

    LOBYTE(v4) = v30;
  }

  v31[0] = v4;
  v32 = v5;
  State.wrappedValue.getter();
  v23 = a1 + v2[9];
  v24 = *v23;
  v25 = *(v23 + 1);
  v31[0] = v24;
  v32 = v25;
  return State.wrappedValue.setter();
}

uint64_t closure #2 in closure #1 in AlertSingleConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAGyAA4FontVSgGGMd);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - v3;
  v5 = AlertSingleConfigurationView.headerText.getter();
  if (v6)
  {
    v25 = v5;
    v26 = v6;
    lazy protocol witness table accessor for type String and conformance String();
    v7 = Text.init<A>(_:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd) + 36)];
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
    v16 = type metadata accessor for Text.Case();
    (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
    *v14 = swift_getKeyPath();
    *v4 = v7;
    *(v4 + 1) = v9;
    v4[16] = v11 & 1;
    *(v4 + 3) = v13;
    v17 = static Color.white.getter();
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd) + 36)] = v17;
    v18 = static Font.default.getter();
    KeyPath = swift_getKeyPath();
    v20 = &v4[*(v2 + 36)];
    *v20 = KeyPath;
    v20[1] = v18;
    outlined init with take of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>(v4, a1, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAGyAA4FontVSgGGMd);
    return (*(v24 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v22 = *(v24 + 56);

    return v22(a1, 1, 1, v2);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA4FontVSgGGSgAA0H0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalD0VyA6_AAE06pickerQ0yQrqd__AA06PickerQ0Rd__lFQOyAA0Z0VyAM07WorkoutB0024AlertSingleConfigurationH0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAIyA6_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAMA16_17HeaderHyphenationVG_A21_Qo__AA7ForEachVySayA16_22AlertConfigurationTypeOGA31_A27_SgGtGG_AA07DefaultzQ0VQo_AIyAA6ButtonVyA6_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAIyA26__AIyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A29_yA32_A31_A41_yA6_AAEA42_A43_QrA45__tFQOyA47_yAIyAM_A53_tGG_Qo_GSgGtGG_A21_Qo_AA05EmptyH0VG_A11_yA11_yA11_yAIyA16_011AlertsEntryH0V_AIyA16_016PacerAlertsEntryH0VSg_A16_015RaceAlertsEntryH0VSgtGSgtGA16_018HeartRateZoneEntryH0VGA11_yA71_A71_GGA11_yA11_yA16_010TimeSplitsH0VSgA16_014DistanceSplitsH0VSgGA11_yA16_010TrackEntryH0VSgA16_015PowerZonesEntryH0VSgGGGSgtGGAA06_TraitmN0VyAA0ei12SpacingTraitL0VGGAOyAA0eI7SpacingVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA4FontVSgGGSgAA0H0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalD0VyA6_AAE06pickerQ0yQrqd__AA06PickerQ0Rd__lFQOyAA0Z0VyAM07WorkoutB0024AlertSingleConfigurationH0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAIyA6_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAMA16_17HeaderHyphenationVG_A21_Qo__AA7ForEachVySayA16_22AlertConfigurationTypeOGA31_A27_SgGtGG_AA07DefaultzQ0VQo_AIyAA6ButtonVyA6_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAIyA26__AIyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A29_yA32_A31_A41_yA6_AAEA42_A43_QrA45__tFQOyA47_yAIyAM_A53_tGG_Qo_GSgGtGG_A21_Qo_AA05EmptyH0VG_A11_yA11_yA11_yAIyA16_011AlertsEntryH0V_AIyA16_016PacerAlertsEntryH0VSg_A16_015RaceAlertsEntryH0VSgtGSgtGA16_018HeartRateZoneEntryH0VGA11_yA71_A71_GGA11_yA11_yA16_010TimeSplitsH0VSgA16_014DistanceSplitsH0VSgGA11_yA16_010TrackEntryH0VSgA16_015PowerZonesEntryH0VSgGGGSgtGGAA06_TraitmN0VyAA0ei12SpacingTraitL0VGGMd);
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA15ModifiedContentVyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA4FontVSgGGSgAA0F0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA012_ConditionalI0VyA6_AAE06pickerQ0yQrqd__AA06PickerQ0Rd__lFQOyAA0Z0VyAM07WorkoutB0024AlertSingleConfigurationF0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAGyA6_AAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAKyAMA16_17HeaderHyphenationVG_A21_Qo__AA7ForEachVySayA16_22AlertConfigurationTypeOGA31_A27_SgGtGG_AA07DefaultzQ0VQo_AGyAA6ButtonVyA6_AAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyA26__AGyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A29_yA32_A31_A41_yA6_AAEA42_A43_QrA45__tFQOyA47_yAGyAM_A53_tGG_Qo_GSgGtGG_A21_Qo_AA05EmptyF0VG_A11_yA11_yA11_yAGyA16_011AlertsEntryF0V_AGyA16_016PacerAlertsEntryF0VSg_A16_015RaceAlertsEntryF0VSgtGSgtGA16_018HeartRateZoneEntryF0VGA11_yA71_A71_GGA11_yA11_yA16_010TimeSplitsF0VSgA16_014DistanceSplitsF0VSgGA11_yA16_010TrackEntryF0VSgA16_015PowerZonesEntryF0VSgGGGSgtGGMd);
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAGyAA4FontVSgGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, TupleView<(Button<<<opaque return type of View.accessibilityElement(children:)>>.0>, ForEach<[AlertConfigurationType], AlertConfigurationType, Button<<<opaque return type of View.accessibilityElement(children:)>>.0>?>)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, TupleView<(Button<<<opaque return type of View.accessibilityElement(children:)>>.0>, ForEach<[AlertConfigurationType], AlertConfigurationType, Button<<<opaque return type of View.accessibilityElement(children:)>>.0>?>)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, TupleView<(Button<<<opaque return type of View.accessibilityElement(children:)>>.0>, ForEach<[AlertConfigurationType], AlertConfigurationType, Button<<<opaque return type of View.accessibilityElement(children:)>>.0>?>)>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV07WorkoutB0024AlertSingleConfigurationE0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleE0VyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA08ModifiedD0VyAkL17HeaderHyphenationVG_AQQo__AA7ForEachVySayAL0kM4TypeOGA3_A_SgGtGG_AA07DefaulthG0VQo_ASyAA6ButtonVyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyASyAZ_ASyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_A1_yA4_A3_A13_yAeAEA14_A15_QrA17__tFQOyA19_yASyAK_A25_tGG_Qo_GSgGtGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA4TextV07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleI0VyAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAeF17HeaderHyphenationVG_AKQo__AA7ForEachVySayAF0fH4TypeOGA_AWSgGtGGMd);
    type metadata accessor for DefaultPickerStyle();
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, AlertSingleConfigurationView.Selection, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, ForEach<[AlertConfigurationType], AlertConfigurationType, (<<opaque return type of View.tag<A>(_:includeOptional:)>>.0)?>)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV07WorkoutB028AlertSingleConfigurationViewV9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOAA05TupleI0VyAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAeF17HeaderHyphenationVG_AKQo__AA7ForEachVySayAF0fH4TypeOGA_AWSgGtGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Button<<<opaque return type of View.accessibilityElement(children:)>>.0>, ForEach<[AlertConfigurationType], AlertConfigurationType, Button<<<opaque return type of View.accessibilityElement(children:)>>.0>?>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_ACyAA6SpacerV_AA5ImageVtGSgtGG_Qo_G_AA7ForEachVySayAR22AlertConfigurationTypeOGA7_AEyAgAEAhIQrAK_tFQOyAMyACyAQ_A_tGG_Qo_GSgGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, TupleView<(Button<<<opaque return type of View.accessibilityElement(children:)>>.0>, ForEach<[AlertConfigurationType], AlertConfigurationType, Button<<<opaque return type of View.accessibilityElement(children:)>>.0>?>)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGACyACyAF010TimeSplitsF0VSgAF08DistancepF0VSgGACyAF05TrackiF0VSgAF010PowerZonesiF0VSgGGGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType()
{
  result = lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType;
  if (!lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType)
  {
    type metadata accessor for ConfigurationType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType);
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (qword_20CB85820[v18] < qword_20CB85820[v19])
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        if (qword_20CB85820[*v6] >= qword_20CB85820[v11])
        {
          v13 = v4 + 1;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          LOBYTE(v11) = *v6;
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a1;
  v6 = *a1;
  outlined init with copy of AlertConfigurationView(a4, v23);
  v24 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  }

  v18 = v5;
  v7 = v24;
  *v5 = v24;
  v8 = v7 + 16;
  v9 = *(v7 + 2);
  if (v9 < 2)
  {
LABEL_10:
    outlined destroy of AlertConfigurationView(a4);
    *v18 = v24;
    return 1;
  }

  else
  {
    v19 = (v7 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v5 = &v24[16 * v9];
      v11 = *v5;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      outlined init with copy of AlertConfigurationView(a4, v23);
      specialized _merge<A>(low:mid:high:buffer:by:)(&v11[v10], (v10 + v13), &v14[v10], a2);
      outlined destroy of AlertConfigurationView(a4);
      if (v4)
      {
        *v18 = v24;
        outlined destroy of AlertConfigurationView(a4);
        return 1;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v19;
      v15 = *v19;
      if (v9 - 2 >= *v19)
      {
        goto LABEL_14;
      }

      *v5 = v11;
      v5[1] = v14;
      v16 = v15 - v9;
      if (v15 < v9)
      {
        goto LABEL_15;
      }

      v9 = v15 - 1;
      memmove(v12, v12 + 16, 16 * v16);
      *v19 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    result = outlined destroy of AlertConfigurationView(a4);
    *v18 = v24;
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  v92 = MEMORY[0x277D84F90];
  if (v7 >= 1)
  {
    outlined init with copy of AlertConfigurationView(a5, v91);
    outlined init with copy of AlertConfigurationView(a5, v91);
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v85 = a4;
    while (1)
    {
      v11 = v9 + 1;
      if (v9 + 1 < v7)
      {
        v12 = qword_20CB85820[*(*a3 + v11)];
        v13 = *(*a3 + v11);
        v14 = qword_20CB85820[*(*a3 + v9)];
        v15 = v9 + 2;
        if (v7 <= v9 + 2)
        {
          v11 = v9 + 2;
        }

        else
        {
          v11 = v7;
        }

        while (v11 != v15)
        {
          v16 = *(*a3 + v15);
          v17 = (v12 < v14) ^ (qword_20CB85820[v16] >= qword_20CB85820[v13]);
          ++v15;
          v13 = v16;
          if ((v17 & 1) == 0)
          {
            v11 = v15 - 1;
            break;
          }
        }

        if (v12 < v14)
        {
          if (v11 < v9)
          {
            goto LABEL_112;
          }

          if (v9 < v11)
          {
            v18 = v11 - 1;
            v19 = v9;
            do
            {
              if (v19 != v18)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_117;
                }

                v20 = *(v22 + v19);
                *(v22 + v19) = *(v22 + v18);
                *(v22 + v18) = v20;
              }
            }

            while (++v19 < v18--);
          }
        }
      }

      v23 = a3[1];
      if (v11 < v23)
      {
        if (__OFSUB__(v11, v9))
        {
          goto LABEL_111;
        }

        if (v11 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_113;
          }

          if (v9 + a4 < v23)
          {
            v23 = v9 + a4;
          }

          if (v23 < v9)
          {
LABEL_114:
            __break(1u);
LABEL_115:
            outlined destroy of AlertConfigurationView(a5);
            outlined destroy of AlertConfigurationView(a5);
            __break(1u);
LABEL_116:
            outlined destroy of AlertConfigurationView(a5);
            outlined destroy of AlertConfigurationView(a5);
            __break(1u);
LABEL_117:
            outlined destroy of AlertConfigurationView(a5);
            outlined destroy of AlertConfigurationView(a5);
            __break(1u);
LABEL_118:
            outlined destroy of AlertConfigurationView(a5);
            outlined destroy of AlertConfigurationView(a5);
            __break(1u);
LABEL_119:
            outlined destroy of AlertConfigurationView(a5);
            result = outlined destroy of AlertConfigurationView(a5);
            __break(1u);
            return result;
          }

          if (v11 != v23)
          {
            v24 = *a3;
            v25 = (*a3 + v11);
            v26 = v9 - v11;
            do
            {
              v27 = *(v24 + v11);
              v28 = qword_20CB85820[v27];
              v29 = v26;
              v30 = v25;
              do
              {
                v31 = *(v30 - 1);
                if (v28 >= qword_20CB85820[v31])
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_115;
                }

                *v30 = v31;
                *--v30 = v27;
              }

              while (!__CFADD__(v29++, 1));
              ++v11;
              ++v25;
              --v26;
            }

            while (v11 != v23);
            v11 = v23;
          }
        }
      }

      if (v11 < v9)
      {
        goto LABEL_110;
      }

      v87 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v34 = *(v10 + 2);
      v33 = *(v10 + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v10);
      }

      *(v10 + 2) = v35;
      v36 = v10 + 32;
      v37 = &v10[16 * v34 + 32];
      *v37 = v9;
      *(v37 + 1) = v11;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_118;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v39 = *(v10 + 4);
            v40 = *(v10 + 5);
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_58:
            if (v42)
            {
              goto LABEL_100;
            }

            v55 = &v10[16 * v35];
            v57 = *v55;
            v56 = *(v55 + 1);
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_102;
            }

            v61 = &v36[16 * v38];
            v63 = *v61;
            v62 = *(v61 + 1);
            v49 = __OFSUB__(v62, v63);
            v64 = v62 - v63;
            if (v49)
            {
              goto LABEL_105;
            }

            if (__OFADD__(v59, v64))
            {
              goto LABEL_107;
            }

            if (v59 + v64 >= v41)
            {
              if (v41 < v64)
              {
                v38 = v35 - 2;
              }

              goto LABEL_80;
            }

            goto LABEL_73;
          }

          if (v35 < 2)
          {
            goto LABEL_108;
          }

          v65 = &v10[16 * v35];
          v67 = *v65;
          v66 = *(v65 + 1);
          v49 = __OFSUB__(v66, v67);
          v59 = v66 - v67;
          v60 = v49;
LABEL_73:
          if (v60)
          {
            goto LABEL_104;
          }

          v68 = &v36[16 * v38];
          v70 = *v68;
          v69 = *(v68 + 1);
          v49 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v49)
          {
            goto LABEL_106;
          }

          if (v71 < v59)
          {
            goto LABEL_3;
          }

LABEL_80:
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
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
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          v76 = *a3;
          if (!*a3)
          {
            goto LABEL_116;
          }

          v77 = &v36[16 * v38 - 16];
          v78 = *v77;
          v79 = v38;
          v80 = &v36[16 * v38];
          v81 = *(v80 + 1);
          v90 = *v80;
          outlined init with copy of AlertConfigurationView(a5, v91);
          specialized _merge<A>(low:mid:high:buffer:by:)((v76 + v78), (v76 + v90), v76 + v81, v88);
          if (v5)
          {
            outlined destroy of AlertConfigurationView(a5);
            v92 = v10;
            goto LABEL_92;
          }

          outlined destroy of AlertConfigurationView(a5);
          if (v81 < v78)
          {
            goto LABEL_95;
          }

          v82 = *(v10 + 2);
          if (v79 > v82)
          {
            goto LABEL_96;
          }

          *v77 = v78;
          *(v77 + 1) = v81;
          if (v79 >= v82)
          {
            goto LABEL_97;
          }

          v35 = v82 - 1;
          memmove(v80, v80 + 16, 16 * (v82 - 1 - v79));
          *(v10 + 2) = v82 - 1;
          v36 = v10 + 32;
          if (v82 <= 2)
          {
            goto LABEL_3;
          }
        }

        v43 = &v36[16 * v35];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_98;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_99;
        }

        v50 = &v10[16 * v35];
        v52 = *v50;
        v51 = *(v50 + 1);
        v49 = __OFSUB__(v51, v52);
        v53 = v51 - v52;
        if (v49)
        {
          goto LABEL_101;
        }

        v49 = __OFADD__(v41, v53);
        v54 = v41 + v53;
        if (v49)
        {
          goto LABEL_103;
        }

        if (v54 >= v46)
        {
          v72 = &v36[16 * v38];
          v74 = *v72;
          v73 = *(v72 + 1);
          v49 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v49)
          {
            goto LABEL_109;
          }

          if (v41 < v75)
          {
            v38 = v35 - 2;
          }

          goto LABEL_80;
        }

        goto LABEL_58;
      }

LABEL_3:
      v7 = a3[1];
      v9 = v87;
      a4 = v85;
      if (v87 >= v7)
      {
        v92 = v10;
        goto LABEL_90;
      }
    }
  }

  outlined init with copy of AlertConfigurationView(a5, v91);
  outlined init with copy of AlertConfigurationView(a5, v91);
LABEL_90:
  v83 = *a1;
  if (!*a1)
  {
    goto LABEL_119;
  }

  outlined init with copy of AlertConfigurationView(a5, v91);
  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v92, v83, a3, a5);
  outlined destroy of AlertConfigurationView(a5);
LABEL_92:

  outlined destroy of AlertConfigurationView(a5);
  return outlined destroy of AlertConfigurationView(a5);
}