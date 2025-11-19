uint64_t WorkoutConfiguration.detailDisplayImage.getter()
{
  type metadata accessor for RaceWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      _HKWorkoutGoalType.symbolName.getter();
    }

    else
    {
      WorkoutConfiguration.displaySymbolName.getter();
    }
  }

  return Image.init(_internalSystemName:)();
}

uint64_t WorkoutConfiguration.gradientBackgroundColor.getter()
{
  v1 = type metadata accessor for ConfigurationType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 != *MEMORY[0x277D7E0F8])
  {
    if (v5 == *MEMORY[0x277D7E110])
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
LABEL_12:
      Color.init(uiColor:)();
      v9 = Color.opacity(_:)();
      goto LABEL_13;
    }

    if (v5 != *MEMORY[0x277D7E100])
    {
      if (v5 == *MEMORY[0x277D7E108])
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
        goto LABEL_12;
      }

      if (v5 == *MEMORY[0x277D7E0F0])
      {
        v10 = [objc_opt_self() keyColors];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 nonGradientTextColor];

          if (v12)
          {
            goto LABEL_12;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x20F30BC00](0xD000000000000032, 0x800000020CB9AA90);
    v14 = [v0 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    MEMORY[0x20F30BC00](v15, v17);

    goto LABEL_18;
  }

  type metadata accessor for GoalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v6 = v0;
    v7 = GoalWorkoutConfiguration.goal.getter();
    v8 = [v7 goalTypeIdentifier];

    _HKWorkoutGoalType.color.getter(v8);
    Color.init(uiColor:)();
    v9 = Color.opacity(_:)();

LABEL_13:

    return v9;
  }

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t WorkoutConfiguration.displayNameShort(formattingManager:)(void *a1)
{
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    v3 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v4 = [v3 localizedName];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }

  else
  {
    type metadata accessor for GoalWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v7 = v1;
      v8 = GoalWorkoutConfiguration.goal.getter();
      v9 = [v8 goalTypeIdentifier];

      _HKWorkoutGoalType.displayNameShort(formattingManager:)(a1, v9);
      v11 = v10;

      return v11;
    }

    else
    {

      return WorkoutConfiguration.displayName(formattingManager:)();
    }
  }
}

uint64_t WorkoutConfiguration.titleForPreview(_:)()
{
  type metadata accessor for GoalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v1 = one-time initialization token for WorkoutUIBundle;
    v2 = v0;
    if (v1 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v37._object = 0xE000000000000000;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._object = 0x800000020CB9AAD0;
    v5._countAndFlagsBits = 0xD000000000000022;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20CB5DA80;
    v8 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v9 = [v8 localizedName];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 64) = v14;
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    v15 = GoalWorkoutConfiguration.goal.getter();
    [v15 goalTypeIdentifier];

    v16 = _HKWorkoutGoalType.displayName(formattingManager:)();
    *(v7 + 96) = v13;
    *(v7 + 104) = v14;
    *(v7 + 72) = v16;
    *(v7 + 80) = v17;
    v18 = String.init(format:_:)();
  }

  else
  {
    type metadata accessor for PacerWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v19 = WorkoutUIBundle.super.isa;
      v38._object = 0xE000000000000000;
      v20._object = 0x800000020CB9AAD0;
      v20._countAndFlagsBits = 0xD000000000000022;
      v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v21.value._object = 0xEB00000000656C62;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v38._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v38);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_20CB5DA80;
      v24 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v25 = [v24 localizedName];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      v30 = lazy protocol witness table accessor for type String and conformance String();
      *(v23 + 64) = v30;
      *(v23 + 32) = v26;
      *(v23 + 40) = v28;
      v31 = WorkoutUIBundle.super.isa;
      v32._countAndFlagsBits = 0xD000000000000012;
      v39._object = 0xE000000000000000;
      v32._object = 0x800000020CB9AB00;
      v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v33.value._object = 0xEB00000000656C62;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v39._countAndFlagsBits = 0;
      v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v39);

      *(v23 + 96) = v29;
      *(v23 + 104) = v30;
      *(v23 + 72) = v35;
      v18 = String.init(format:_:)();
    }

    else
    {
      return WorkoutConfiguration.displayDetail(_:)();
    }
  }

  return v18;
}

BOOL WorkoutConfiguration.displayDetailUseLowercaseSmallCaps.getter()
{
  type metadata accessor for IntervalWorkoutConfiguration();
  result = 0;
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for GoalWorkoutConfiguration();
      if (!swift_dynamicCastClass())
      {
        return 1;
      }

      v2 = v0;
      v3 = GoalWorkoutConfiguration.goal.getter();
      v4 = [v3 goalTypeIdentifier];

      if (v4)
      {
        return 1;
      }
    }
  }

  return result;
}

id static RaceWorkoutConfiguration.highContrastDisplayColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.521568627 green:1.0 blue:0.835294118 alpha:1.0];
}

id static PacerWorkoutConfiguration.highContrastDisplayColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.623529412 green:1.0 blue:0.992156863 alpha:1.0];
}

void static MultiSportWorkoutConfiguration.displayColor.getter()
{
  v0 = [objc_opt_self() keyColors];
  if (!v0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = [v0 nonGradientTextColor];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

id static IntervalWorkoutConfiguration.platterColor.getter(SEL *a1, double a2, double a3, double a4)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) *a1];
  v5 = [v4 colorWithAlphaComponent_];

  return v5;
}

void static MultiSportWorkoutConfiguration.platterColor.getter()
{
  v0 = [objc_opt_self() keyColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 nonGradientTextColor];

    if (v2)
    {
      [v2 colorWithAlphaComponent_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id WorkoutConfiguration.displayThumbnailColor.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D7E0F8])
  {
    type metadata accessor for GoalWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_13:
        v15[0] = 0;
        v15[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        v1 = [v1 description];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        MEMORY[0x20F30BC00](v12, v14);
      }
    }

    v7 = v0;
    v8 = GoalWorkoutConfiguration.goal.getter();
    v9 = [v8 goalTypeIdentifier];

    v10 = _HKWorkoutGoalType.gradientStartingColor.getter(v9);
    return v10;
  }

  else if (v6 == *MEMORY[0x277D7E110])
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.133333333 green:0.0941176471 blue:0.215686275 alpha:1.0];
  }

  else if (v6 == *MEMORY[0x277D7E100])
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  }

  else if (v6 == *MEMORY[0x277D7E108])
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0941176471 green:0.196078431 blue:0.2 alpha:1.0];
  }

  else
  {
    if (v6 != *MEMORY[0x277D7E0F0])
    {
      goto LABEL_13;
    }

    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.117647059 green:0.160784314 blue:0.0235294118 alpha:1.0];
  }
}

uint64_t WorkoutConfiguration.displaySymbolName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D7E0F8])
  {
    type metadata accessor for GoalWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_13:
        v15[0] = 0;
        v15[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        MEMORY[0x20F30BC00](0xD000000000000033, 0x800000020CB9AB20);
        v1 = [v1 description];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        MEMORY[0x20F30BC00](v12, v14);
      }
    }

    v7 = v0;
    v8 = GoalWorkoutConfiguration.goal.getter();
    [v8 goalTypeIdentifier];

    v9 = _HKWorkoutGoalType.symbolName.getter();
    return v9;
  }

  else if (v6 == *MEMORY[0x277D7E110])
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    return static IntervalWorkoutConfiguration.displaySymbolName.getter();
  }

  else if (v6 == *MEMORY[0x277D7E100])
  {
    return 0x6574756F72;
  }

  else
  {
    v11 = v6;
    result = 0xD00000000000001ALL;
    if (v11 == *MEMORY[0x277D7E108])
    {
      return 0xD000000000000022;
    }

    else if (v11 != *MEMORY[0x277D7E0F0])
    {
      goto LABEL_13;
    }
  }

  return result;
}

id static IntervalWorkoutConfiguration.colors.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.415686275 green:0.160784314 blue:0.952941176 alpha:1.0];
  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v5 = [v3 colorWithAlphaComponent_];
  result = [v2 colorWithAlphaComponent_];
  *a1 = v4;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = result;
  return result;
}

void static MultiSportWorkoutConfiguration.colors.getter(void *a1@<X8>)
{
  v2 = [objc_opt_self() keyColors];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 nonGradientTextColor];

    if (v4)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.717647059 green:1.0 blue:0.0 alpha:1.0];
      v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.215686275 green:0.980392157 blue:0.0 alpha:1.0];
      v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0823529412 green:0.109803922 blue:0.00784313725 alpha:1.0];
      v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.145098039 green:0.196078431 blue:0.0666666667 alpha:1.0];
      *a1 = v4;
      a1[1] = v5;
      a1[2] = v6;
      a1[3] = v7;
      a1[4] = v8;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t WorkoutConfiguration.firstActivityType.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v1 = v0;
    result = MultiSportWorkoutConfiguration.subConfigs.getter();
    if ((result & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x20F30C990](0, result);
      goto LABEL_5;
    }

    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(result + 32);
LABEL_5:
      v4 = v3;

      v5 = dispatch thunk of WorkoutConfiguration.activityType.getter();

      return v5;
    }

    __break(1u);
  }

  else
  {

    return dispatch thunk of WorkoutConfiguration.activityType.getter();
  }

  return result;
}

BOOL WorkoutConfiguration.canBeModified.getter()
{
  v0 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  if (v0)
  {
  }

  return v0 == 0;
}

uint64_t WorkoutConfiguration.canBeSaved.getter()
{
  if (WorkoutConfiguration.isOpenGoal.getter())
  {
    return 0;
  }

  result = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  if (result)
  {

    return 1;
  }

  return result;
}

BOOL WorkoutConfiguration.showExternalProviderDescription.getter()
{
  v0 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  if (v0)
  {
  }

  return v0 != 0;
}

uint64_t WorkoutConfiguration.externalProviderTextView(text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd) - 8;
  MEMORY[0x28223BE20](v44);
  v42 = &v41 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd) - 8;
  MEMORY[0x28223BE20](v47);
  v45 = &v41 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd) - 8;
  MEMORY[0x28223BE20](v46);
  v43 = &v41 - v11;
  *&v49 = a1;
  *(&v49 + 1) = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Color.secondary.getter();
  v17 = Text.foregroundColor(_:)();
  v19 = v18;
  v21 = v20;
  v41 = v22;

  outlined consume of Text.Storage(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v24 = &v8[*(v6 + 44)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
  v26 = type metadata accessor for Text.Case();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  *v24 = swift_getKeyPath();
  *v8 = v17;
  *(v8 + 1) = v19;
  v8[16] = v21 & 1;
  *(v8 + 3) = v41;
  *(v8 + 4) = KeyPath;
  v8[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v42;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>(v8, v42, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd);
  v28 = (v27 + *(v44 + 44));
  v29 = v54;
  v28[4] = v53;
  v28[5] = v29;
  v28[6] = v55;
  v30 = v50;
  *v28 = v49;
  v28[1] = v30;
  v31 = v52;
  v28[2] = v51;
  v28[3] = v31;
  v32 = static Font.subheadline.getter();
  v33 = swift_getKeyPath();
  v34 = v27;
  v35 = v45;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>(v34, v45, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd);
  v36 = (v35 + *(v47 + 44));
  *v36 = v33;
  v36[1] = v32;
  v37 = swift_getKeyPath();
  v38 = v43;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>(v35, v43, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd);
  v39 = v38 + *(v46 + 44);
  *v39 = v37;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  return outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>(v38, v48, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd);
}

uint64_t WorkoutConfiguration.saveConfigurationFooterText.getter()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v1._countAndFlagsBits = 0xD000000000000018;
  v60._object = 0xE000000000000000;
  v1._object = 0x800000020CB9AC80;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v60);

  v4 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v5 = [v4 requiresLocationDisambiguation];

  v6 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v7 = v6;
  if (v5)
  {
    v8 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)();

    v9 = [v8 localizedName];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v13 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)();

    v14 = [v13 localizedName];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = WorkoutUIBundle.super.isa;
    v61._object = 0xE000000000000000;
    v19._object = 0x800000020CB9ACA0;
    v19._countAndFlagsBits = 0xD000000000000034;
    v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v20.value._object = 0xEB00000000656C62;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v61._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v61);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20CB5DA80;
    v23 = MEMORY[0x277D837D0];
    *(v22 + 56) = MEMORY[0x277D837D0];
    v24 = lazy protocol witness table accessor for type String and conformance String();
    *(v22 + 32) = v59;
    *(v22 + 40) = v11;
    *(v22 + 96) = v23;
    *(v22 + 104) = v24;
    *(v22 + 64) = v24;
    *(v22 + 72) = v15;
    *(v22 + 80) = v17;
    v25 = static String.localizedStringWithFormat(_:_:)();
    v27 = v26;

    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20CB5DA70;
    *(v28 + 56) = v23;
    *(v28 + 64) = v24;
    *(v28 + 32) = v25;
  }

  else
  {
    v29 = [v6 requiresSwimmingLocationDisambiguation];

    if (v29)
    {
      v30 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v31 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)();

      v32 = [v31 localizedName];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v37 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)();

      v38 = [v37 localizedName];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = WorkoutUIBundle.super.isa;
      v62._object = 0xE000000000000000;
      v43._object = 0x800000020CB9ACA0;
      v43._countAndFlagsBits = 0xD000000000000034;
      v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v44.value._object = 0xEB00000000656C62;
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      v62._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v62);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_20CB5DA80;
      v47 = MEMORY[0x277D837D0];
      *(v46 + 56) = MEMORY[0x277D837D0];
      v48 = lazy protocol witness table accessor for type String and conformance String();
      *(v46 + 32) = v33;
      *(v46 + 40) = v35;
      *(v46 + 96) = v47;
      *(v46 + 104) = v48;
      *(v46 + 64) = v48;
      *(v46 + 72) = v39;
      *(v46 + 80) = v41;
      v49 = static String.localizedStringWithFormat(_:_:)();
      v27 = v50;

      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_20CB5DA70;
      *(v28 + 56) = v47;
      *(v28 + 64) = v48;
      *(v28 + 32) = v49;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_20CB5DA70;
      v52 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v53 = [v52 localizedName];

      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v55;

      *(v51 + 56) = MEMORY[0x277D837D0];
      v56 = lazy protocol witness table accessor for type String and conformance String();
      v28 = v51;
      *(v51 + 64) = v56;
      *(v51 + 32) = v54;
    }
  }

  *(v28 + 40) = v27;
  v57 = static String.localizedStringWithFormat(_:_:)();

  return v57;
}

uint64_t WorkoutConfiguration.saveConfigurationText()@<X0>(uint64_t a1@<X8>)
{
  WorkoutConfiguration.saveConfigurationFooterText.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t WorkoutConfiguration.externalProviderDescriptionHeaderStack()@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAQyAO4CaseOSgGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAKyA13_A14_GGSg_A14_tGGMd);
  return closure #2 in WorkoutConfiguration.externalProviderDescriptionHeaderStack()(v1, a1 + *(v3 + 44));
}

uint64_t closure #2 in WorkoutConfiguration.externalProviderDescriptionHeaderStack()@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGG07WorkoutB015BodyHyphenationVGA7_Sg_GMd);
  MEMORY[0x28223BE20](v108);
  v109 = &v103 - v3;
  v107 = type metadata accessor for Calendar();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGA5_SgGMd);
  MEMORY[0x28223BE20](v117);
  v110 = &v103 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGG07WorkoutB015BodyHyphenationVGSgACyA7_A8_G_GMd);
  MEMORY[0x28223BE20](v115);
  v116 = &v103 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd);
  v125 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v103 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
  MEMORY[0x28223BE20](v114);
  v120 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v119 = &v103 - v10;
  MEMORY[0x28223BE20](v11);
  v104 = &v103 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v103 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v103 - v20;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v111 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v103 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGSgACyA5_A6_GGSgMd);
  MEMORY[0x28223BE20](v28 - 8);
  v118 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v124 = &v103 - v31;
  dispatch thunk of WorkoutConfiguration.lastCompletedDate.getter();
  v32 = *(v23 + 48);
  if (v32(v21, 1, v22) == 1)
  {
    outlined destroy of WorkoutPlan.Route?(v21, &_s10Foundation4DateVSgMd);
    dispatch thunk of WorkoutConfiguration.scheduledDate.getter();
    if (v32(v18, 1, v22) == 1)
    {
      outlined destroy of WorkoutPlan.Route?(v18, &_s10Foundation4DateVSgMd);
      v33 = 1;
      v35 = v123;
      v34 = v124;
      v36 = v119;
    }

    else
    {
      v112 = v23;
      v113 = v22;
      v54 = v111;
      (*(v23 + 32))(v111, v18);
      v55 = v105;
      static Calendar.current.getter();
      v56 = Calendar.isDateInToday(_:)();
      (*(v106 + 8))(v55, v107);
      v57 = v123;
      v36 = v119;
      if (v56)
      {
        v58 = v110;
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v59 = WorkoutUIBundle.super.isa;
        v127._object = 0xE000000000000000;
        v60._countAndFlagsBits = 0xD000000000000026;
        v60._object = 0x800000020CB9AC20;
        v61.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v61.value._object = 0xEB00000000656C62;
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        v127._countAndFlagsBits = 0;
        v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v61, v59, v62, v127);

        v64 = v122;
        WorkoutConfiguration.externalProviderTextView(text:)(v63._countAndFlagsBits, v63._object, v122);

        outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?>>?(v64, v109, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>? and conformance <A> A?();
        _ConditionalContent<>.init(storage:)();
        outlined destroy of WorkoutPlan.Route?(v64, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd);
        v34 = v124;
      }

      else
      {
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v66 = WorkoutUIBundle.super.isa;
        v128._object = 0xE000000000000000;
        v67._object = 0x800000020CB9ABF0;
        v67._countAndFlagsBits = 0xD000000000000020;
        v68.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v68.value._object = 0xEB00000000656C62;
        v69._countAndFlagsBits = 0;
        v69._object = 0xE000000000000000;
        v128._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v66, v69, v128);

        v70 = objc_opt_self();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v72 = [v70 stringWithDayNameAndShortMonthFromDate_];

        if (v72)
        {
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v76 = swift_allocObject();
          *(v76 + 16) = xmmword_20CB5DA70;
          *(v76 + 56) = MEMORY[0x277D837D0];
          *(v76 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v76 + 32) = v73;
          *(v76 + 40) = v75;
          v77 = static String.localizedStringWithFormat(_:_:)();
          v79 = v78;

          v80 = v122;
          WorkoutConfiguration.externalProviderTextView(text:)(v77, v79, v122);

          v81 = v80;
          v82 = v104;
          outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>(v81, v104, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd);
          v83 = 0;
          v34 = v124;
        }

        else
        {

          v83 = 1;
          v34 = v124;
          v82 = v104;
        }

        (*(v125 + 56))(v82, v83, 1, v57);
        outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?>>?(v82, v109, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>? and conformance <A> A?();
        v58 = v110;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of WorkoutPlan.Route?(v82, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
        v54 = v111;
      }

      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?>>?(v58, v116, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGA5_SgGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>? and conformance <A> A?();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of WorkoutPlan.Route?(v58, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGA5_SgGMd);
      (*(v112 + 8))(v54, v113);
      v33 = 0;
      v35 = v123;
    }
  }

  else
  {
    v111 = a1;
    v112 = v23;
    v37 = *(v23 + 32);
    v113 = v22;
    v37(v27, v21, v22);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v38 = WorkoutUIBundle.super.isa;
    v126._object = 0xE000000000000000;
    v39._object = 0x800000020CB9AC50;
    v39._countAndFlagsBits = 0xD000000000000020;
    v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v40.value._object = 0xEB00000000656C62;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v126._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v126);

    v42 = objc_opt_self();
    v43 = Date._bridgeToObjectiveC()().super.isa;
    v44 = [v42 stringWithDayNameAndShortMonthFromDate_];

    if (v44)
    {
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_20CB5DA70;
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v48 + 32) = v45;
      *(v48 + 40) = v47;
      v49 = static String.localizedStringWithFormat(_:_:)();
      v51 = v50;

      v52 = v122;
      WorkoutConfiguration.externalProviderTextView(text:)(v49, v51, v122);

      outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>(v52, v15, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd);
      v53 = 0;
    }

    else
    {

      v53 = 1;
    }

    v36 = v119;
    v65 = v112;
    v35 = v123;
    (*(v125 + 56))(v15, v53, 1, v123);
    outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?>>?(v15, v116, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>? and conformance <A> A?();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?> and conformance <> _ConditionalContent<A, B>();
    v34 = v124;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of WorkoutPlan.Route?(v15, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
    (*(v65 + 8))(v27, v113);
    v33 = 0;
  }

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGSgACyA5_A6_GGMd);
  v85 = 1;
  (*(*(v84 - 8) + 56))(v34, v33, 1, v84);
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v86 = WorkoutUIBundle.super.isa;
    v87._countAndFlagsBits = 0xD00000000000001FLL;
    v129._object = 0xE000000000000000;
    v87._object = 0x800000020CB9ABD0;
    v88.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v88.value._object = 0xEB00000000656C62;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    v129._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v86, v89, v129);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_20CB5DA70;
    v91 = dispatch thunk of ExternalProvider.sourceName.getter();
    v93 = v92;
    *(v90 + 56) = MEMORY[0x277D837D0];
    *(v90 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v90 + 32) = v91;
    *(v90 + 40) = v93;
    v94 = static String.localizedStringWithFormat(_:_:)();
    v96 = v95;

    v97 = v122;
    WorkoutConfiguration.externalProviderTextView(text:)(v94, v96, v122);

    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>(v97, v36, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd);
    v85 = 0;
    v34 = v124;
  }

  (*(v125 + 56))(v36, v85, 1, v35);
  v98 = v118;
  outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?>>?(v34, v118, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGSgACyA5_A6_GGSgMd);
  v99 = v120;
  outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?>>?(v36, v120, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
  v100 = v121;
  outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?>>?(v98, v121, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGSgACyA5_A6_GGSgMd);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGSgACyA5_A6_GGSg_A6_tMd);
  outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?>>?(v99, v100 + *(v101 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
  outlined destroy of WorkoutPlan.Route?(v36, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
  outlined destroy of WorkoutPlan.Route?(v34, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGSgACyA5_A6_GGSgMd);
  outlined destroy of WorkoutPlan.Route?(v99, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
  return outlined destroy of WorkoutPlan.Route?(v98, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGSgACyA5_A6_GGSgMd);
}

uint64_t WorkoutConfiguration.externalProviderDescriptionHeaderListSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _Environme();
  return Section<>.init(content:)();
}

double closure #1 in WorkoutConfiguration.externalProviderDescriptionHeaderListSection()@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAQyAO4CaseOSgGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAKyA13_A14_GGSg_A14_tGGMd);
  closure #2 in WorkoutConfiguration.externalProviderDescriptionHeaderStack()(a1, a2 + *(v4 + 44));
  static Color.clear.getter();
  v5 = AnyView.init<A>(_:)();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGMd) + 36)) = v5;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMd) + 36);
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  return result;
}

id static IntervalWorkoutConfiguration.displayListColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.122 green:0.086 blue:0.196 alpha:1.0];
}

id static RaceWorkoutConfiguration.behindGhostColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
}

id static RaceWorkoutConfiguration.raceCompleteColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
}

id static RaceWorkoutConfiguration.raceGhostColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.568627451 green:0.568627451 blue:0.568627451 alpha:1.0];
}

id RaceWorkoutConfiguration.colorsFor(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for RacePositionState();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D7E218])
  {
LABEL_2:
    v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.654901961 green:0.654901961 blue:0.654901961 alpha:1.0];
    v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.133333333 green:0.133333333 blue:0.133333333 alpha:1.0];
    v12 = v10;
    v13 = [v11 colorWithAlphaComponent_];
    result = [v12 colorWithAlphaComponent_];
    *a2 = v12;
    a2[1] = v12;
    a2[2] = v11;
    a2[3] = v13;
LABEL_8:
    a2[4] = result;
    return result;
  }

  if (v9 == *MEMORY[0x277D7E210])
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
    v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.62745098 blue:0.525490196 alpha:1.0];
    v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
    v18 = [v16 colorWithAlphaComponent_];
    v19 = [v15 colorWithAlphaComponent_];
LABEL_7:
    result = v19;
    *a2 = v17;
    a2[1] = v15;
    a2[2] = v16;
    a2[3] = v18;
    goto LABEL_8;
  }

  if (v9 == *MEMORY[0x277D7E220])
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
    v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.2 green:0.0823529412 blue:0.0666666667 alpha:1.0];
    v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
    v18 = [v16 colorWithAlphaComponent_];
    v19 = [v15 colorWithAlphaComponent_];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D7E238] || v9 == *MEMORY[0x277D7E228])
  {
    goto LABEL_2;
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.62745098 blue:0.525490196 alpha:1.0];
  v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v24 = [v22 colorWithAlphaComponent_];
  v25 = [v21 colorWithAlphaComponent_];
  *a2 = v23;
  a2[1] = v21;
  a2[2] = v22;
  a2[3] = v24;
  a2[4] = v25;
  return (*(v5 + 8))(v8, v4);
}

uint64_t RaceWorkoutConfiguration.colorsFor(_:)@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RacePositionState();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  RacePosition.racePositionState.getter();
  RaceWorkoutConfiguration.colorsFor(_:)(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

id static RaceWorkoutConfiguration.metricStoppedUpdatingColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.564705882 green:0.564705882 blue:0.564705882 alpha:1.0];
}

id PacerWorkoutConfiguration.localizedPaceString(formatter:)(void *a1)
{
  v2 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v3 = FIUIPaceFormatForWorkoutActivityType();

  v4 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v5 = FIUIDistanceTypeForActivityType();

  v6 = PacerWorkoutConfiguration.distanceGoal.getter();
  v7 = [v6 value];

  v8 = PacerWorkoutConfiguration.timeGoal.getter();
  [v8 doubleValue];
  v10 = v9;

  v11 = [a1 localizedPaceStringWithDistance:v7 overDuration:v3 paceFormat:v5 distanceType:v10];
  if (!v11)
  {
    return 0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 != 4)
  {
    return v12;
  }

  result = [a1 unitManager];
  if (result)
  {
    v14 = result;
    v15 = [result paceDistanceUnitForDistanceType_];

    v16 = [a1 localizedSpeedUnitStringForDistanceUnit:v15 unitStyle:1];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      MEMORY[0x20F30BC00](v18, v20);

      return v12;
    }

    return 0;
  }

  __break(1u);
  return result;
}

id static MultiSportWorkoutConfiguration.displayListColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.09 green:0.141 blue:0.0 alpha:1.0];
}

id one-time initialization function for primaryPlatterColor()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.216 green:0.302 blue:0.0 alpha:1.0];
  static MultiSportWorkoutConfiguration.primaryPlatterColor = result;
  return result;
}

id one-time initialization function for secondaryPlatterColor()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.149 green:0.212 blue:0.0 alpha:1.0];
  static MultiSportWorkoutConfiguration.secondaryPlatterColor = result;
  return result;
}

id one-time initialization function for tertiaryPlatterColor()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.106 green:0.149 blue:0.0 alpha:1.0];
  static MultiSportWorkoutConfiguration.tertiaryPlatterColor = result;
  return result;
}

id static MultiSportWorkoutConfiguration.primaryPlatterColor.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t static IntervalWorkoutConfiguration.accessibilityIdentifier.getter(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t static IntervalWorkoutConfiguration.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

id specialized static RaceWorkoutConfiguration.performanceColorFor(_:)(double a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (a1 >= 0.0)
  {
    v3 = [v2 initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
    v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.62745098 blue:0.525490196 alpha:1.0];
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  }

  else
  {
    v3 = [v2 initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
    v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.2 green:0.0823529412 blue:0.0666666667 alpha:1.0];
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
  }

  v6 = v5;
  v7 = [v4 colorWithAlphaComponent_];

  return v6;
}

id specialized static RaceWorkoutConfiguration.pointOuterColorFor(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RacePosition();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7DF68])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.662745098 green:1.0 blue:0.882352941 alpha:1.0];
    v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:1.0 green:0.721568627 blue:0.682352941 alpha:1.0];
    v11 = v10;
    if (v8 >= 0.0)
    {

      return v9;
    }

    else
    {

      return v11;
    }
  }

  else if (v7 == *MEMORY[0x277D7DF78])
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.835294118 green:0.835294118 blue:0.835294118 alpha:1.0];
  }

  else
  {
    v13 = [objc_opt_self() whiteColor];
    (*(v3 + 8))(v6, v2);
    return v13;
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BodyHyphenation and conformance BodyHyphenation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Bod(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Bod(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Bod(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGG07WorkoutB015BodyHyphenationVGA5_SgGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?>>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of WorkoutPlan.Route?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TrainingLoadBaselineMarks()
{
  result = type metadata singleton initialization cache for TrainingLoadBaselineMarks;
  if (!type metadata singleton initialization cache for TrainingLoadBaselineMarks)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrainingLoadBaselineMarks()
{
  type metadata accessor for TrainingLoadViewModel.ChartPoint(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TrainingLoadViewModel.ChartPoint?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for TrainingLoadViewModel.ChartPoint?()
{
  if (!lazy cache variable for type metadata for TrainingLoadViewModel.ChartPoint?)
  {
    type metadata accessor for TrainingLoadViewModel.ChartPoint(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrainingLoadViewModel.ChartPoint?);
    }
  }
}

uint64_t closure #1 in TrainingLoadBaselineMarks.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySSGMd);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = type metadata accessor for LineMark();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_Md);
  v46 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = &v31 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE19interpolationMethodyQrAA013InterpolationE0VFQOyAcAE9lineStyleyQr7SwiftUI06StrokeH0VFQOyAA8LineMarkV_Qo__Qo_Md);
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v15 = &v31 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyle2byQrAA14PlottableValueVyqd__G_tAA0G0Rd__lFQOyAcAE19interpolationMethodyQrAA013InterpolationJ0VFQOyAcAE04lineE0yQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo__Qo__SSQo_Md);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v31 - v16;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for Date();
  v40 = a1;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v51[0] = a3;
  static PlottableValue.value(_:_:)();

  v17 = v42;
  v18 = v15;
  LineMark.init<A, B>(x:y:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v19 = MEMORY[0x277CBB438];
  v20 = v43;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(v51);
  (*(v45 + 8))(v11, v20);
  v47 = v20;
  v48 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ChartContent.interpolationMethod(_:)();
  (*(v46 + 8))(v13, v17);
  result = LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for baselineMarksForegroundStyle != -1)
  {
    result = swift_once();
  }

  if (*(static TrainingLoadBaselineMarks.baselineMarksForegroundStyle + 16))
  {
    v23 = *(static TrainingLoadBaselineMarks.baselineMarksForegroundStyle + 40);
    v47 = *(static TrainingLoadBaselineMarks.baselineMarksForegroundStyle + 32);
    v48 = v23;

    v24 = MEMORY[0x277D837D0];
    v25 = MEMORY[0x277CBB570];
    v26 = v37;
    static PlottableValue.value(_:_:)();

    v47 = v17;
    v48 = OpaqueTypeConformance2;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = v33;
    v29 = v35;
    ChartContent.foregroundStyle<A>(by:)();
    (*(v38 + 8))(v26, v39);
    (*(v32 + 8))(v18, v29);
    type metadata accessor for TrainingLoadBaselineMarks();
    v47 = v29;
    v48 = v24;
    v49 = v27;
    v50 = v25;
    swift_getOpaqueTypeConformance2();
    v30 = v36;
    ChartContent.opacity(_:)();
    return (*(v34 + 8))(v28, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for baselineMarksForegroundStyle()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_7SwiftUI13AnyShapeStyleVtGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB5DA70;
  *(v0 + 32) = 0x656E696C65736162;
  *(v0 + 40) = 0xE800000000000000;
  static Color.white.getter();
  result = AnyShapeStyle.init<A>(_:)();
  *(v0 + 48) = result;
  static TrainingLoadBaselineMarks.baselineMarksForegroundStyle = v0;
  return result;
}

uint64_t protocol witness for ChartContent.body.getter in conformance TrainingLoadBaselineMarks@<X0>(uint64_t a1@<X8>)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  if (*(v1 + *(View + 32) + 8))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts4PlotVyAA12ChartContentPAAE7opacityyQrSdFQOyAeAE15foregroundStyle2byQrAA14PlottableValueVyqd__G_tAA0I0Rd__lFQOyAeAE19interpolationMethodyQrAA013InterpolationL0VFQOyAeAE04lineG0yQr7SwiftUI06StrokeG0VFQOyAA8LineMarkV_Qo__Qo__SSQo__Qo_GMd);
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }

  else
  {
    MEMORY[0x28223BE20](View);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE15foregroundStyle2byQrAA14PlottableValueVyqd__G_tAA0H0Rd__lFQOyAcAE19interpolationMethodyQrAA013InterpolationK0VFQOyAcAE04lineF0yQr7SwiftUI06StrokeF0VFQOyAA8LineMarkV_Qo__Qo__SSQo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyle2byQrAA14PlottableValueVyqd__G_tAA0G0Rd__lFQOyAcAE19interpolationMethodyQrAA013InterpolationJ0VFQOyAcAE04lineE0yQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo__Qo__SSQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE19interpolationMethodyQrAA013InterpolationE0VFQOyAcAE9lineStyleyQr7SwiftUI06StrokeH0VFQOyAA8LineMarkV_Qo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_Md);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    Plot.init(content:)();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts4PlotVyAA12ChartContentPAAE7opacityyQrSdFQOyAeAE15foregroundStyle2byQrAA14PlottableValueVyqd__G_tAA0I0Rd__lFQOyAeAE19interpolationMethodyQrAA013InterpolationL0VFQOyAeAE04lineG0yQr7SwiftUI06StrokeG0VFQOyAA8LineMarkV_Qo__Qo__SSQo__Qo_GMd);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }
}

unint64_t lazy protocol witness table accessor for type Plot<<<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Plot<<<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Plot<<<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts4PlotVyAA12ChartContentPAAE7opacityyQrSdFQOyAeAE15foregroundStyle2byQrAA14PlottableValueVyqd__G_tAA0I0Rd__lFQOyAeAE19interpolationMethodyQrAA013InterpolationL0VFQOyAeAE04lineG0yQr7SwiftUI06StrokeG0VFQOyAA8LineMarkV_Qo__Qo__SSQo__Qo_GSgMd);
    lazy protocol witness table accessor for type Plot<<<opaque return type of ChartContent.opacity(_:)>>.0> and conformance Plot<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Plot<<<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Plot<<<opaque return type of ChartContent.opacity(_:)>>.0> and conformance Plot<A>()
{
  result = lazy protocol witness table cache variable for type Plot<<<opaque return type of ChartContent.opacity(_:)>>.0> and conformance Plot<A>;
  if (!lazy protocol witness table cache variable for type Plot<<<opaque return type of ChartContent.opacity(_:)>>.0> and conformance Plot<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts4PlotVyAA12ChartContentPAAE7opacityyQrSdFQOyAeAE15foregroundStyle2byQrAA14PlottableValueVyqd__G_tAA0I0Rd__lFQOyAeAE19interpolationMethodyQrAA013InterpolationL0VFQOyAeAE04lineG0yQr7SwiftUI06StrokeG0VFQOyAA8LineMarkV_Qo__Qo__SSQo__Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Plot<<<opaque return type of ChartContent.opacity(_:)>>.0> and conformance Plot<A>);
  }

  return result;
}

uint64_t static WorkoutAccessibilityIdentifier.build(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t one-time initialization function for guided(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  MEMORY[0x20F30BC00](46, 0xE100000000000000);
  result = MEMORY[0x20F30BC00](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x800000020CB994A0;
  return result;
}

uint64_t one-time initialization function for goalConfiguration()
{
  _StringGuts.grow(_:)(20);

  result = MEMORY[0x20F30BC00](0xD000000000000012, 0x800000020CB9B0C0);
  static WorkoutAccessibilityIdentifier.ActivityPicker.goalConfiguration = 0xD000000000000016;
  unk_27C7E8660 = 0x800000020CB994A0;
  return result;
}

uint64_t one-time initialization function for alertConfiguration()
{
  _StringGuts.grow(_:)(21);

  result = MEMORY[0x20F30BC00](0xD000000000000013, 0x800000020CB9B0A0);
  static WorkoutAccessibilityIdentifier.ActivityPicker.alertConfiguration = 0xD000000000000016;
  unk_27C7E8680 = 0x800000020CB994A0;
  return result;
}

uint64_t one-time initialization function for tvConnectButton(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F30BC00](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x800000020CB994A0;
  return result;
}

uint64_t static WorkoutAccessibilityIdentifier.ActivityPicker.scrollViewAccessibilityIdentifier(activityType:activeIndex:numberOfItems:)(void *a1)
{
  _StringGuts.grow(_:)(51);
  if (one-time initialization token for scrollView != -1)
  {
    swift_once();
  }

  MEMORY[0x20F30BC00](static WorkoutAccessibilityIdentifier.ActivityPicker.scrollView, qword_27C7E8690);
  MEMORY[0x20F30BC00](0x746976697463615BLL, 0xEE003D6570795479);
  v2 = getter of activityTypeAccessibilityIdentifierString #1 in static WorkoutAccessibilityIdentifier.ActivityPicker.scrollViewAccessibilityIdentifier(activityType:activeIndex:numberOfItems:)(a1);
  MEMORY[0x20F30BC00](v2);

  MEMORY[0x20F30BC00](0x496576697463612CLL, 0xED00003D7865646ELL);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v3);

  MEMORY[0x20F30BC00](0x4F7265626D756E2CLL, 0xEF3D736D65744966);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v4);

  MEMORY[0x20F30BC00](93, 0xE100000000000000);
  return 0;
}

uint64_t getter of activityTypeAccessibilityIdentifierString #1 in static WorkoutAccessibilityIdentifier.ActivityPicker.scrollViewAccessibilityIdentifier(activityType:activeIndex:numberOfItems:)(void *a1)
{
  v2 = type metadata accessor for CompoundActivityPickerItemValue();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    return 0x4E574F4E4B4E55;
  }

  v6 = a1;
  CompoundActivityPickerItem.value.getter();
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x277D7E680])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = StandardActivityPickerItem.activityType.getter();
    v10 = FIUIWorkoutActivityType.accessibilityIdentifierString.getter();
  }

  else if (v7 == *MEMORY[0x277D7E678])
  {
    (*(v3 + 96))(v5, v2);
    v11 = *v5;
    v12 = GuidedFeaturedActivityPickerItem.mediaType.getter();
    if (v12 <= 1)
    {
      if (v12)
      {

        return 0x6157646564697547;
      }

      else
      {

        return 0x7552646564697547;
      }
    }

    else
    {
      v10 = 0x646564697547;
    }
  }

  else
  {
    v13 = CompoundActivityPickerItem.activityType.getter();
    v10 = FIUIWorkoutActivityType.accessibilityIdentifierString.getter();

    (*(v3 + 8))(v5, v2);
  }

  return v10;
}

uint64_t one-time initialization function for createWorkout()
{
  _StringGuts.grow(_:)(16);

  result = MEMORY[0x20F30BC00](0x576574616572432ELL, 0xEE0074756F6B726FLL);
  static WorkoutAccessibilityIdentifier.ActivityTypeRoom.createWorkout = 0xD000000000000018;
  unk_27C7E86A0 = 0x800000020CB9ACE0;
  return result;
}

{
  _StringGuts.grow(_:)(16);

  result = MEMORY[0x20F30BC00](0x576574616572432ELL, 0xEE0074756F6B726FLL);
  static WorkoutAccessibilityIdentifier.StartOrCreateButtonRow.createWorkout = 0xD00000000000001ELL;
  unk_27C7E88F0 = 0x800000020CB9AE10;
  return result;
}

uint64_t one-time initialization function for quickWorkoutStart()
{
  _StringGuts.grow(_:)(20);

  result = MEMORY[0x20F30BC00](0xD000000000000012, 0x800000020CB9B080);
  static WorkoutAccessibilityIdentifier.ActivityTypeRoom.quickWorkoutStart = 0xD000000000000018;
  unk_27C7E86B0 = 0x800000020CB9ACE0;
  return result;
}

uint64_t one-time initialization function for addWorkout()
{
  result = MEMORY[0x20F30BC00](0x6B726F576464412ELL, 0xEB0000000074756FLL);
  static WorkoutAccessibilityIdentifier.AddWorkoutActivityPickerItemRow.addWorkout = 0xD000000000000027;
  unk_27C7E86C0 = 0x800000020CB9AD00;
  return result;
}

uint64_t one-time initialization function for endWorkout(uint64_t a1)
{
  return one-time initialization function for dismiss(a1, 0x6B726F57646E452ELL, 0xEB0000000074756FLL, &static WorkoutAccessibilityIdentifier.Alerts.endWorkout, &qword_27C7E86E0);
}

{
  return one-time initialization function for endWorkout(a1, 0x6B726F57646E452ELL, 0xEB0000000074756FLL, &static WorkoutAccessibilityIdentifier.SessionControls.endWorkout, &qword_27C7E8750);
}

uint64_t one-time initialization function for dismiss(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  strcpy(v9, "Workout.Alerts");
  HIBYTE(v9[1]) = -18;
  result = MEMORY[0x20F30BC00](a2, a3);
  v8 = v9[1];
  *a4 = v9[0];
  *a5 = v8;
  return result;
}

uint64_t one-time initialization function for picker()
{
  result = MEMORY[0x20F30BC00](0x72656B6369502ELL, 0xE700000000000000);
  static WorkoutAccessibilityIdentifier.AlertsEntryView.picker = 0xD000000000000017;
  unk_27C7E86F0 = 0x800000020CB9AD30;
  return result;
}

uint64_t one-time initialization function for deleteWorkout()
{
  _StringGuts.grow(_:)(16);

  result = MEMORY[0x20F30BC00](0x576574656C65442ELL, 0xEE0074756F6B726FLL);
  static WorkoutAccessibilityIdentifier.DeleteButton.deleteWorkout = 0xD000000000000014;
  unk_27C7E8700 = 0x800000020CB9AD50;
  return result;
}

uint64_t one-time initialization function for off()
{
  result = MEMORY[0x20F30BC00](1717980974, 0xE400000000000000);
  static WorkoutAccessibilityIdentifier.MetricPicker.off = 0xD000000000000014;
  unk_27C7E8710 = 0x800000020CB9AD70;
  return result;
}

uint64_t one-time initialization function for toggle()
{
  result = MEMORY[0x20F30BC00](0x656C67676F542ELL, 0xE700000000000000);
  static WorkoutAccessibilityIdentifier.PacerAlertsEntryView.toggle = 0xD00000000000001CLL;
  unk_27C7E8720 = 0x800000020CB9AD90;
  return result;
}

uint64_t one-time initialization function for workoutFigure()
{
  _StringGuts.grow(_:)(16);

  result = MEMORY[0x20F30BC00](0x74756F6B726F572ELL, 0xEE00657275676946);
  static WorkoutAccessibilityIdentifier.SessionMetrics.workoutFigure = 0xD000000000000016;
  unk_27C7E8730 = 0x800000020CB9ADB0;
  return result;
}

uint64_t one-time initialization function for multisportFigure()
{
  if (one-time initialization token for workoutFigure != -1)
  {
    swift_once();
  }

  v1 = static WorkoutAccessibilityIdentifier.SessionMetrics.workoutFigure;
  v2 = unk_27C7E8730;

  result = MEMORY[0x20F30BC00](0x707369746C754D2ELL, 0xEB0000000074726FLL);
  static WorkoutAccessibilityIdentifier.SessionMetrics.multisportFigure = v1;
  unk_27C7E8740 = v2;
  return result;
}

uint64_t one-time initialization function for resumeWorkout()
{
  _StringGuts.grow(_:)(16);

  result = MEMORY[0x20F30BC00](0x57656D757365522ELL, 0xEE0074756F6B726FLL);
  static WorkoutAccessibilityIdentifier.SessionControls.resumeWorkout = 0xD000000000000010;
  unk_27C7E8780 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for startMirroring()
{
  _StringGuts.grow(_:)(17);

  result = MEMORY[0x20F30BC00](0x694D74726174532ELL, 0xEF676E69726F7272);
  static WorkoutAccessibilityIdentifier.SessionControls.startMirroring = 0xD000000000000010;
  unk_27C7E87B0 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for stopMirroring()
{
  _StringGuts.grow(_:)(16);

  result = MEMORY[0x20F30BC00](0x72694D706F74532ELL, 0xEE00676E69726F72);
  static WorkoutAccessibilityIdentifier.SessionControls.stopMirroring = 0xD000000000000010;
  unk_27C7E87C0 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for safetyCheckInSession()
{
  _StringGuts.grow(_:)(23);

  result = MEMORY[0x20F30BC00](0xD000000000000015, 0x800000020CB9B060);
  static WorkoutAccessibilityIdentifier.SessionControls.safetyCheckInSession = 0xD000000000000010;
  unk_27C7E87D0 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for muteWorkoutBuddy()
{
  _StringGuts.grow(_:)(19);

  result = MEMORY[0x20F30BC00](0xD000000000000011, 0x800000020CB9B040);
  static WorkoutAccessibilityIdentifier.SessionControls.muteWorkoutBuddy = 0xD000000000000010;
  unk_27C7E87E0 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for unMuteWorkoutBuddy()
{
  _StringGuts.grow(_:)(21);

  result = MEMORY[0x20F30BC00](0xD000000000000013, 0x800000020CB9B020);
  static WorkoutAccessibilityIdentifier.SessionControls.unMuteWorkoutBuddy = 0xD000000000000010;
  unk_27C7E87F0 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for nextInterval(uint64_t a1)
{
  return one-time initialization function for endWorkout(a1, 0x746E497478654E2ELL, 0xED00006C61767265, &static WorkoutAccessibilityIdentifier.SessionControls.nextInterval, &qword_27C7E8810);
}

{
  return one-time initialization function for nextInterval(a1, 0x7478654E2ELL, 0xE500000000000000, static WorkoutAccessibilityIdentifier.WorkoutIntervalAlertView.nextInterval, &static WorkoutAccessibilityIdentifier.WorkoutIntervalAlertView.nextInterval[1]);
}

uint64_t one-time initialization function for endWorkout(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F30BC00](a2, a3);
  *a4 = 0xD000000000000010;
  *a5 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for expandControls()
{
  _StringGuts.grow(_:)(17);

  result = MEMORY[0x20F30BC00](0x43646E617078452ELL, 0xEF736C6F72746E6FLL);
  static WorkoutAccessibilityIdentifier.SessionControls.expandControls = 0xD000000000000010;
  unk_27C7E8850 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for collapseControls()
{
  _StringGuts.grow(_:)(19);

  result = MEMORY[0x20F30BC00](0xD000000000000011, 0x800000020CB9B000);
  static WorkoutAccessibilityIdentifier.SessionControls.collapseControls = 0xD000000000000010;
  unk_27C7E8860 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for pauseResumeWorkout()
{
  _StringGuts.grow(_:)(21);

  result = MEMORY[0x20F30BC00](0xD000000000000013, 0x800000020CB9AFE0);
  static WorkoutAccessibilityIdentifier.SessionControls.pauseResumeWorkout = 0xD000000000000010;
  unk_27C7E8870 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for precisionStart()
{
  _StringGuts.grow(_:)(17);

  result = MEMORY[0x20F30BC00](0x697369636572502ELL, 0xEF74726174536E6FLL);
  static WorkoutAccessibilityIdentifier.SessionControls.precisionStart = 0xD000000000000010;
  unk_27C7E8880 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for precisionStartWatch()
{
  _StringGuts.grow(_:)(22);

  result = MEMORY[0x20F30BC00](0xD000000000000014, 0x800000020CB9AFC0);
  static WorkoutAccessibilityIdentifier.SessionControls.precisionStartWatch = 0xD000000000000010;
  unk_27C7E8890 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for workoutDevices()
{
  _StringGuts.grow(_:)(17);

  result = MEMORY[0x20F30BC00](0x74756F6B726F572ELL, 0xEF73656369766544);
  static WorkoutAccessibilityIdentifier.SessionControls.workoutDevices = 0xD000000000000010;
  unk_27C7E88A0 = 0x800000020CB9ADD0;
  return result;
}

uint64_t one-time initialization function for stopWorkoutEnd()
{
  _StringGuts.grow(_:)(17);

  result = MEMORY[0x20F30BC00](0x726F57706F74532ELL, 0xEF646E4574756F6BLL);
  static WorkoutAccessibilityIdentifier.SessionExtraControls.stopWorkoutEnd = 0xD000000000000015;
  unk_27C7E88B0 = 0x800000020CB9ADF0;
  return result;
}

uint64_t one-time initialization function for stopWorkoutCancel()
{
  _StringGuts.grow(_:)(20);

  result = MEMORY[0x20F30BC00](0xD000000000000012, 0x800000020CB9AFA0);
  static WorkoutAccessibilityIdentifier.SessionExtraControls.stopWorkoutCancel = 0xD000000000000015;
  unk_27C7E88C0 = 0x800000020CB9ADF0;
  return result;
}

uint64_t one-time initialization function for lockControls()
{
  result = MEMORY[0x20F30BC00](0x6E6F436B636F4C2ELL, 0xED0000736C6F7274);
  static WorkoutAccessibilityIdentifier.SessionExtraControls.lockControls = 0xD000000000000015;
  unk_27C7E88D0 = 0x800000020CB9ADF0;
  return result;
}

uint64_t one-time initialization function for safetyCheckIn()
{
  _StringGuts.grow(_:)(16);

  result = MEMORY[0x20F30BC00](0x437974656661532ELL, 0xEE006E496B636568);
  static WorkoutAccessibilityIdentifier.SessionExtraControls.safetyCheckIn = 0xD000000000000015;
  unk_27C7E88E0 = 0x800000020CB9ADF0;
  return result;
}

uint64_t one-time initialization function for startWorkout()
{
  result = MEMORY[0x20F30BC00](0x6F5774726174532ELL, 0xED000074756F6B72);
  static WorkoutAccessibilityIdentifier.StartOrCreateButtonRow.startWorkout = 0xD00000000000001ELL;
  unk_27C7E8900 = 0x800000020CB9AE10;
  return result;
}

uint64_t one-time initialization function for closeButtonIdentifier()
{
  result = MEMORY[0x20F30BC00](0x65736F6C432ELL, 0xE600000000000000);
  static WorkoutAccessibilityIdentifier.SummaryView.closeButtonIdentifier = 0xD000000000000013;
  unk_27C7E8910 = 0x800000020CB9AE30;
  return result;
}

uint64_t one-time initialization function for transitioningTimeIdentifier()
{
  _StringGuts.grow(_:)(20);

  result = MEMORY[0x20F30BC00](0xD000000000000012, 0x800000020CB9AF80);
  static WorkoutAccessibilityIdentifier.TransitionIndicatorView.transitioningTimeIdentifier = 0xD00000000000001FLL;
  unk_27C7E8920 = 0x800000020CB9AE50;
  return result;
}

uint64_t one-time initialization function for connectedDevices()
{
  _StringGuts.grow(_:)(19);

  result = MEMORY[0x20F30BC00](0xD000000000000011, 0x800000020CB9AF60);
  static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.connectedDevices = 0xD00000000000001CLL;
  unk_27C7E8930 = 0x800000020CB9AE70;
  return result;
}

uint64_t one-time initialization function for noConnectedDevices()
{
  _StringGuts.grow(_:)(21);

  result = MEMORY[0x20F30BC00](0xD000000000000013, 0x800000020CB9AF40);
  static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.noConnectedDevices = 0xD00000000000001CLL;
  unk_27C7E8940 = 0x800000020CB9AE70;
  return result;
}

uint64_t one-time initialization function for smartRoutingHeadphones()
{
  _StringGuts.grow(_:)(25);

  result = MEMORY[0x20F30BC00](0xD000000000000017, 0x800000020CB9AF20);
  static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.smartRoutingHeadphones = 0xD00000000000001CLL;
  unk_27C7E8960 = 0x800000020CB9AE70;
  return result;
}

uint64_t one-time initialization function for heartRateMonitor()
{
  _StringGuts.grow(_:)(19);

  result = MEMORY[0x20F30BC00](0xD000000000000011, 0x800000020CB9AF00);
  static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.heartRateMonitor = 0xD00000000000001CLL;
  unk_27C7E8970 = 0x800000020CB9AE70;
  return result;
}

uint64_t one-time initialization function for watch(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F30BC00](a2, a3);
  *a4 = 0xD00000000000001CLL;
  *a5 = 0x800000020CB9AE70;
  return result;
}

uint64_t one-time initialization function for testsmartRoutingHeadphones()
{
  _StringGuts.grow(_:)(29);

  result = MEMORY[0x20F30BC00](0xD00000000000001BLL, 0x800000020CB9AEE0);
  static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.testsmartRoutingHeadphones = 0xD00000000000001CLL;
  unk_27C7E89A0 = 0x800000020CB9AE70;
  return result;
}

uint64_t one-time initialization function for testHeartRateMonitor()
{
  _StringGuts.grow(_:)(23);

  result = MEMORY[0x20F30BC00](0xD000000000000015, 0x800000020CB9AEC0);
  static WorkoutAccessibilityIdentifier.DeviceConnectionMenu.testHeartRateMonitor = 0xD00000000000001CLL;
  unk_27C7E89B0 = 0x800000020CB9AE70;
  return result;
}

uint64_t one-time initialization function for nextInterval(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F30BC00](a2, a3);
  *a4 = 0xD000000000000020;
  *a5 = 0x800000020CB9AE90;
  return result;
}

uint64_t static WorkoutAccessibilityIdentifier.ActivityPicker.tvConnectButton.getter(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

uint64_t getEnumTagSinglePayload for WorkoutAccessibilityIdentifier(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorkoutAccessibilityIdentifier(_WORD *result, int a2, int a3)
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

uint64_t WorkoutVoiceOnboardingPicker.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
  lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);
  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t WorkoutVoiceOnboardingPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for InlinePickerStyle();
  v40 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextVSiSgAA7ForEachVySnySiGSiAA4ViewPAAE19highPriorityGesture_9includingQrqd___AA0J4MaskVtAA0J0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleG0VyAA6VStackVyAVyAE_AESgtGG_AA6SpacerVARyAA012_ConditionalN0VyA3_yARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressG0VyAA05EmptyG0VA16_GGA17_GSgSgAA16_FixedSizeLayoutVGtGGAA01_n5ShapeX0VyAA9RectangleVGG_AA06_EndedJ0VyAA03TapJ0VGQo_GGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextVSiSgAA7ForEachVySnySiGSiAcAE19highPriorityGesture_9includingQrqd___AA0L4MaskVtAA0L0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAA6VStackVyAXyAI_AISgtGG_AA6SpacerVATyAA012_ConditionalP0VyA5_yATyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressC0VyAA05EmptyC0VA18_GGA19_GSgSgAA16_FixedSizeLayoutVGtGGAA01_p5ShapeZ0VyAA9RectangleVGG_AA06_EndedL0VyAA03TapL0VGQo_GG_AA06InlinefE0VQo_Md);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v48 = v39 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA4TextVSiSgAA7ForEachVySnySiGSiAcAE19highPriorityGesture_9includingQrqd___AA0P4MaskVtAA0P0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAA6VStackVyA_yAL_ALSgtGG_AA6SpacerVAWyAA012_ConditionalT0VyA8_yAWyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressC0VyAA05EmptyC0VA21_GGA22_GSgSgAA16_FixedSizeLayoutVGtGGAA01_T13ShapeModifierVyAA9RectangleVGG_AA06_EndedP0VyAA03TapP0VGQo_GG_AA06InlinejI0VQo__Say19FitnessIntelligence19AudioSynthesisVoiceVGQo_Md);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = v39 - v10;
  v12 = *v1;
  v11 = v1[1];
  v13 = type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
  v14 = lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);
  v39[1] = v13;
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  v39[0] = v14;
  EnvironmentObject.Wrapper.subscript.getter();

  v50 = v12;
  v51 = v11;
  v49 = v11;
  v55 = v58;
  v56 = v59;
  v57 = v60;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  v61._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._object = 0x800000020CB9B0E0;
  v17._countAndFlagsBits = 0xD000000000000014;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v61._countAndFlagsBits = 0;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v61);

  v52 = v19;
  lazy protocol witness table accessor for type String and conformance String();
  v52._countAndFlagsBits = Text.init<A>(_:)();
  v52._object = v20;
  LOBYTE(v53) = v21 & 1;
  v54 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE19highPriorityGesture_9includingQrqd___AA0H4MaskVtAA0H0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleE0VyAA6VStackVyAQyAA4TextV_AUSgtGG_AA6SpacerVAMyAA012_ConditionalL0VyA0_yAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressE0VyAA05EmptyE0VA13_GGA14_GSgSgAA16_FixedSizeLayoutVGtGGAA01_l5ShapeW0VyAA9RectangleVGG_AA06_EndedH0VyAA03TapH0VGQo_GMd);
  lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?);
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.highPriorityGesture<A>(_:including:)>>.0> and conformance <> ForEach<A, B, C>();
  v41 = v23;
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  v24 = lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Picker<Text, Int?, ForEach<Range<Int>, Int, <<opaque return type of View.highPriorityGesture<A>(_:including:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextVSiSgAA7ForEachVySnySiGSiAA4ViewPAAE19highPriorityGesture_9includingQrqd___AA0J4MaskVtAA0J0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleG0VyAA6VStackVyAVyAE_AESgtGG_AA6SpacerVARyAA012_ConditionalN0VyA3_yARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressG0VyAA05EmptyG0VA16_GGA17_GSgSgAA16_FixedSizeLayoutVGtGGAA01_n5ShapeX0VyAA9RectangleVGG_AA06_EndedJ0VyAA03TapJ0VGQo_GGMd);
  v25 = MEMORY[0x277CDDDA0];
  View.pickerStyle<A>(_:)();
  (*(v40 + 8))(v4, v2);
  (*(v6 + 8))(v8, v5);
  if (v12)
  {

    v26 = WorkoutVoiceOnboardingPickerViewModel.voices.getter();

    *&v58 = v26;
    v27 = swift_allocObject();
    v28 = v49;
    *(v27 + 16) = v12;
    *(v27 + 24) = v28;

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19FitnessIntelligence19AudioSynthesisVoiceVGMd);
    v52._countAndFlagsBits = v5;
    v52._object = v2;
    v53 = v24;
    v54 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = lazy protocol witness table accessor for type [AudioSynthesisVoice] and conformance <A> [A]();
    v32 = v44;
    v33 = v43;
    v34 = v48;
    View.onChange<A>(of:initial:_:)();

    (*(v42 + 8))(v34, v33);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    *&v58 = v52._countAndFlagsBits;
    BYTE8(v58) = v52._object;
    v35 = swift_allocObject();
    v36 = v49;
    *(v35 + 16) = v12;
    *(v35 + 24) = v36;

    v52._countAndFlagsBits = v33;
    v52._object = v29;
    v53 = OpaqueTypeConformance2;
    v54 = v31;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?);
    v37 = v46;
    View.onChange<A>(of:initial:_:)();

    return (*(v45 + 8))(v32, v37);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t key path getter for WorkoutVoiceOnboardingPickerViewModel.selectedRow : WorkoutVoiceOnboardingPickerViewModel@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t key path setter for WorkoutVoiceOnboardingPickerViewModel.selectedRow : WorkoutVoiceOnboardingPickerViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t closure #1 in WorkoutVoiceOnboardingPicker.body.getter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    dispatch thunk of VoiceAssetsObserver.assets.getter();

    swift_getKeyPath();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19highPriorityGesture_9includingQrqd___AA0F4MaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAA6VStackVyANyAA4TextV_ARSgtGG_AA6SpacerVAJyAA012_ConditionalJ0VyAYyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressC0VyAA05EmptyC0VA10_GGA11_GSgSgAA16_FixedSizeLayoutVGtGGAA01_j5ShapeU0VyAA9RectangleVGG_AA06_EndedF0VyAA03TapF0VGQo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKSgtGG_AA6SpacerVACyAA012_ConditionalD0VyARyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressG0VyAA05EmptyG0VA3_GGA4_GSgSgAA16_FixedSizeLayoutVGtGGAA01_d5ShapeP0VyAA9RectangleVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_EndedGestureVyAA03TapD0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVyAA03TapD0VGMd);
    swift_getOpaqueTypeConformance2();
    return ForEach<>.init(_:id:content:)();
  }

  else
  {
    type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
    lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.highPriorityGesture<A>(_:including:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.highPriorityGesture<A>(_:including:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.highPriorityGesture<A>(_:including:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE19highPriorityGesture_9includingQrqd___AA0H4MaskVtAA0H0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleE0VyAA6VStackVyAQyAA4TextV_AUSgtGG_AA6SpacerVAMyAA012_ConditionalL0VyA0_yAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressE0VyAA05EmptyE0VA13_GGA14_GSgSgAA16_FixedSizeLayoutVGtGGAA01_l5ShapeW0VyAA9RectangleVGG_AA06_EndedH0VyAA03TapH0VGQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKSgtGG_AA6SpacerVACyAA012_ConditionalD0VyARyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressG0VyAA05EmptyG0VA3_GGA4_GSgSgAA16_FixedSizeLayoutVGtGGAA01_d5ShapeP0VyAA9RectangleVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_EndedGestureVyAA03TapD0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVyAA03TapD0VGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.highPriorityGesture<A>(_:including:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKSgtGG_AA6SpacerVACyAA012_ConditionalD0VyARyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressG0VyAA05EmptyG0VA3_GGA4_GSgSgAA16_FixedSizeLayoutVGtGGAA01_d5ShapeP0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AISgtGG_AA6SpacerVAA15ModifiedContentVyAA012_ConditionalJ0VyARyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressE0VyAA05EmptyE0VA3_GGA4_GSgSgAA16_FixedSizeLayoutVGtGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t closure #1 in closure #1 in WorkoutVoiceOnboardingPicker.body.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = type metadata accessor for TapGesture();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_EndedGestureVyAA03TapD0VGMd);
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKSgtGG_AA6SpacerVACyAA012_ConditionalD0VyARyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressG0VyAA05EmptyG0VA3_GGA4_GSgSgAA16_FixedSizeLayoutVGtGGAA01_d5ShapeP0VyAA9RectangleVGGMd);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = *a1;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAIyAA4TextV_AMSgtGG_AA6SpacerVAA15ModifiedContentVyAA012_ConditionalM0VyAVyATyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressD0VyAA05EmptyD0VA7_GGA8_GSgSgAA010_FixedSizeG0VGtGGMd);
  closure #1 in closure #1 in closure #1 in WorkoutVoiceOnboardingPicker.body.getter(v17, a2, a3, &v16[*(v18 + 44)]);
  v16[*(v14 + 36)] = 0;
  TapGesture.init(count:)();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v17;

  Gesture.onEnded(_:)();

  (*(v8 + 8))(v10, v7);
  static GestureMask.all.getter();
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVyAA03TapD0VGMd);
  v20 = v24;
  View.highPriorityGesture<A>(_:including:)();
  (*(v23 + 8))(v13, v20);
  return outlined destroy of ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>>(v16, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKSgtGG_AA6SpacerVACyAA012_ConditionalD0VyARyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressG0VyAA05EmptyG0VA3_GGA4_GSgSgAA16_FixedSizeLayoutVGtGGAA01_d5ShapeP0VyAA9RectangleVGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutVoiceOnboardingPicker.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgSgAA16_FixedSizeLayoutVGMd);
  MEMORY[0x28223BE20](v28);
  v29 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v30 = static HorizontalAlignment.leading.getter();
  LOBYTE(v33[0]) = 1;
  v27 = a3;
  closure #1 in closure #1 in closure #1 in closure #1 in WorkoutVoiceOnboardingPicker.body.getter(a1, v40);
  *&v39[7] = v40[0];
  *&v39[23] = v40[1];
  *&v39[39] = v40[2];
  *&v39[55] = v40[3];
  if (a2)
  {
    v18 = v33[0];

    WorkoutVoiceOnboardingPickerViewModel.selectedVoiceIcon(_:)(a1, v10);

    outlined init with take of _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??(v10, v14, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgSgMd);
    *&v14[*(v28 + 36)] = 257;
    outlined init with take of _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??(v14, v17, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgSgAA16_FixedSizeLayoutVGMd);
    v19 = v29;
    outlined init with copy of ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>(v17, v29, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgSgAA16_FixedSizeLayoutVGMd);
    v20 = v30;
    v31[0] = v30;
    v31[1] = 0;
    v32[0] = v18;
    *&v32[1] = *v39;
    *&v32[17] = *&v39[16];
    *&v32[33] = *&v39[32];
    *&v32[49] = *&v39[48];
    v21 = *&v39[63];
    *&v32[64] = *&v39[63];
    v22 = *v32;
    *a4 = v30;
    *(a4 + 16) = v22;
    v23 = *&v32[16];
    v24 = *&v32[48];
    *(a4 + 48) = *&v32[32];
    *(a4 + 64) = v24;
    *(a4 + 32) = v23;
    *(a4 + 80) = v21;
    *(a4 + 88) = 0;
    *(a4 + 96) = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGG_AA6SpacerVAA15ModifiedContentVyAA012_ConditionalI0VyAPyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressE0VyAA05EmptyE0VA1_GGA2_GSgSgAA16_FixedSizeLayoutVGtMd);
    outlined init with copy of ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>(v19, a4 + *(v25 + 64), &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgSgAA16_FixedSizeLayoutVGMd);
    outlined init with copy of ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>(v31, v33, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd);
    outlined destroy of ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>>(v17, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgSgAA16_FixedSizeLayoutVGMd);
    outlined destroy of ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>>(v19, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgSgAA16_FixedSizeLayoutVGMd);
    v33[0] = v20;
    v33[1] = 0;
    v34 = v18;
    v36 = *&v39[16];
    v37 = *&v39[32];
    *v38 = *&v39[48];
    *&v38[15] = *&v39[63];
    v35 = *v39;
    return outlined destroy of ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>>(v33, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd);
  }

  else
  {
    type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
    lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in WorkoutVoiceOnboardingPicker.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = WorkoutUIBundle.super.isa;
  v24._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._object = 0x800000020CB93CD0;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_20CB5DA70;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v9;
    *(result + 32) = a1 + 1;
    String.init(format:_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v10 = Text.init<A>(_:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = WorkoutVoiceOnboardingPicker.subtitle(_:)(a1);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14 & 1;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
    *(a2 + 48) = v20;
    *(a2 + 56) = v22;
    outlined copy of Text.Storage(v10, v12, v14 & 1);

    outlined copy of Text?(v17, v19, v21, v23);
    outlined consume of Text?(v17, v19, v21, v23);
    outlined consume of Text.Storage(v10, v12, v14 & 1);
  }

  return result;
}

uint64_t WorkoutVoiceOnboardingPicker.subtitle(_:)(unint64_t a1)
{
  v3 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioSynthesisVoiceAsset();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v1)
  {
    type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
    lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v11 = dispatch thunk of VoiceAssetsObserver.assets.getter();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v11 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  (*(v8 + 16))(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, v7);

  AudioSynthesisVoiceAsset.downloadStatus.getter();
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D0A528])
  {
    (*(v4 + 96))(v6, v3);
    outlined destroy of ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>>(v6, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd);
    v3 = "WORKOUT_BUDDY_VOICES";
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_6:
      swift_beginAccess();
      v12 = WorkoutUIBundle.super.isa;
      v21._object = 0xE000000000000000;
      v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v13.value._object = 0xEB00000000656C62;
      v14._object = (v3 | 0x8000000000000000);
      v14._countAndFlagsBits = 0xD000000000000019;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      v21._countAndFlagsBits = 0;
      v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v21);

      v20 = v16;
      lazy protocol witness table accessor for type String and conformance String();
      v17 = Text.init<A>(_:)();
      (*(v8 + 8))(v10, v7);
      return v17;
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  (*(v8 + 8))(v10, v7);
  (*(v4 + 8))(v6, v3);
  return 0;
}

uint64_t closure #2 in closure #1 in closure #1 in WorkoutVoiceOnboardingPicker.body.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
    lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in WorkoutVoiceOnboardingPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  if (a3)
  {

    v13 = WorkoutVoiceOnboardingPickerViewModel.voices.getter();

    v14 = *(v13 + 2);

    if (v14)
    {

      dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
      v16 = v15;

      if (v16)
      {
        v17 = type metadata accessor for TaskPriority();
        (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
        type metadata accessor for MainActor();

        v18 = static MainActor.shared.getter();
        v19 = swift_allocObject();
        v20 = MEMORY[0x277D85700];
        v19[2] = v18;
        v19[3] = v20;
        v19[4] = a3;
        v19[5] = a4;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter, v19);
      }

      else
      {

        v25 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
        v27 = v26;

        swift_getKeyPath();
        swift_getKeyPath();
        v28 = v25;
        v29 = v27 & 1;
        return static Published.subscript.setter();
      }
    }

    else
    {
      static WOLog.app.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_20C66F000, v22, v23, "Voice assets are empty. Not selecting by default.", v24, 2u);
        MEMORY[0x20F30E080](v24, -1, -1);
      }

      return (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
    lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter, v8, v7);
}

uint64_t closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter()
{
  static WOLog.app.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20C66F000, v1, v2, "Selecting initial voice to voice asset at index 0.", v3, 2u);
    MEMORY[0x20F30E080](v3, -1, -1);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  (*(v5 + 8))(v4, v6);
  if (v7)
  {

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter;

    return WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:)(0);
  }

  else
  {
    type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
    lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);

    return EnvironmentObject.error()();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #4 in WorkoutVoiceOnboardingPicker.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v11, v12))
  {

    (*(v8 + 8))(v10, v7);
    goto LABEL_5;
  }

  v25 = v7;
  v26 = a2;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v27 = v14;
  *v13 = 136315138;
  if (a1)
  {
    v15 = v14;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
    v16 = Optional.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v27);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20C66F000, v11, v12, "Selected row changed: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F30E080](v15, -1, -1);
    MEMORY[0x20F30E080](v13, -1, -1);

    (*(v8 + 8))(v10, v25);
    a2 = v26;
LABEL_5:
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    type metadata accessor for MainActor();

    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = a1;
    v21[5] = a2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #4 in WorkoutVoiceOnboardingPicker.body.getter, v21);
  }

  type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
  lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #4 in WorkoutVoiceOnboardingPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](closure #1 in closure #4 in WorkoutVoiceOnboardingPicker.body.getter, v7, v6);
}

uint64_t closure #1 in closure #4 in WorkoutVoiceOnboardingPicker.body.getter()
{
  if (*(v0 + 16))
  {

    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = closure #1 in closure #4 in WorkoutVoiceOnboardingPicker.body.getter;

    return WorkoutVoiceOnboardingPickerViewModel.electVoice()();
  }

  else
  {
    type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
    lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel, type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);

    return EnvironmentObject.error()();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](closure #1 in closure #4 in WorkoutVoiceOnboardingPicker.body.getter, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type [AudioSynthesisVoice] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AudioSynthesisVoice] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AudioSynthesisVoice] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19FitnessIntelligence19AudioSynthesisVoiceVGMd);
    lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(&lazy protocol witness table cache variable for type AudioSynthesisVoice and conformance AudioSynthesisVoice, MEMORY[0x277D0A278]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AudioSynthesisVoice] and conformance <A> [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutVoiceOnboardingPickerViewModel and conformance WorkoutVoiceOnboardingPickerViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type Int? and conformance <A> A?(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceOnboardingPicker(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutVoiceOnboardingPicker(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #1 in closure #4 in WorkoutVoiceOnboardingPicker.body.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #4 in WorkoutVoiceOnboardingPicker.body.getter;

  return closure #1 in closure #4 in WorkoutVoiceOnboardingPicker.body.getter(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_12Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter;

  return closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #3 in WorkoutVoiceOnboardingPicker.body.getter()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with take of _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
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

uint64_t outlined destroy of ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>>, _ContentShapeModifier<Rectangle>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for WorkoutNotificationResultView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationResultView(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((*(*(v6 - 8) + 64) + (v11 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 56;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))();
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for WorkoutNotificationResultView(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 56;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFC8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFC8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFC8)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t WorkoutNotificationResultView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = *(a1 + 16);
  v26 = *(a1 + 24);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for VStack();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for ModifiedContent();
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v28 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v29 = &v25 - v14;
  static HorizontalAlignment.leading.getter();
  v33 = v3;
  v34 = v26;
  v35 = *(a1 + 32);
  v36 = v27;
  VStack.init(alignment:spacing:content:)();
  static Edge.Set.bottom.getter();
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  LOBYTE(v5) = static Edge.Set.leading.getter();
  *(inited + 32) = v5;
  v17 = static Edge.Set.trailing.getter();
  *(inited + 33) = v17;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v5)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    Edge.Set.init(rawValue:)();
  }

  v18 = MEMORY[0x277CDF918];
  v39 = WitnessTable;
  v40 = MEMORY[0x277CDF918];
  v19 = swift_getWitnessTable();
  v20 = v28;
  View.padding(_:_:)();
  (*(v30 + 8))(v10, v8);
  v37 = v19;
  v38 = v18;
  v21 = swift_getWitnessTable();
  v22 = v29;
  static ViewBuilder.buildExpression<A>(_:)(v20, v11, v21);
  v23 = *(v31 + 8);
  v23(v20, v11);
  static ViewBuilder.buildBlock<A>(_:)(v22, v11, v21);
  return (v23)(v22, v11);
}

uint64_t closure #1 in WorkoutNotificationResultView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33[1] = a6;
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v33[0] = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v33 - v22;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v28 = type metadata accessor for WorkoutNotificationResultView();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v28 + 52), a3, a5);
  static ViewBuilder.buildExpression<A>(_:)(a1, a2, a4);
  (*(v17 + 16))(v20, v23, a3);
  v35 = 0;
  v36 = 1;
  v37 = v20;
  v38 = &v35;
  v29 = v33[0];
  (*(v11 + 16))(v33[0], v15, a2);
  v39 = v29;
  v34[0] = a3;
  v34[1] = MEMORY[0x277CE1180];
  v34[2] = a2;
  v33[2] = a5;
  v33[3] = MEMORY[0x277CE1170];
  v33[4] = a4;
  static ViewBuilder.buildBlock<each A>(_:)(&v37, 3uLL, v34);
  v30 = *(v11 + 8);
  v30(v15, a2);
  v31 = *(v17 + 8);
  v31(v23, a3);
  v30(v29, a2);
  return (v31)(v20, a3);
}

id @objc static UIColor.drewGradientColorActive.getter()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  return v1;
}

Class @objc static UIColor.drewPlatterGradientColors(activeAppearance:)()
{
  specialized static UIColor.drewPlatterGradientColors(activeAppearance:)();
  type metadata accessor for CGColorRef(0);
  v0.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

uint64_t specialized static UIColor.drewPlatterGradientColors(activeAppearance:)()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20CB761F0;
  v3 = objc_opt_self();
  v4 = v1;
  v5 = [v3 clearColor];
  v6 = [v5 CGColor];

  *(v2 + 32) = v6;
  v7 = [v3 clearColor];
  v8 = [v7 CGColor];

  *(v2 + 40) = v8;
  v9 = [v4 CGColor];

  *(v2 + 48) = v9;
  return v2;
}

void *LiveActivityMonitor.init(publisher:notificationCenter:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v3[4] = 0;
  v3[5] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v18 = a2;
  v13 = a1;

  MetricsPublisher.workoutStatePublisher.getter();
  WorkoutStatePublisher.$workoutActive.getter();

  swift_allocObject();
  swift_weakInit();
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);

  v14 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  v3[4] = v14;

  MetricsPublisher.elapsedTimeMetricsPublisher.getter();
  ElapsedTimeMetricsPublisher.$elapsedTime.getter();

  swift_allocObject();
  swift_weakInit();

  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type Published<Double>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySd_GMd);
  v15 = v19;
  v16 = Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v8, v15);
  v3[5] = v16;

  return v3;
}

uint64_t closure #1 in LiveActivityMonitor.init(publisher:notificationCenter:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LiveActivityMonitor.pushLiveActivityUpdate()();
  }

  return result;
}

uint64_t closure #2 in LiveActivityMonitor.init(publisher:notificationCenter:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 applicationState];

  if (v5)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      LiveActivityMonitor.pushLiveActivityUpdate()();
    }
  }

  else
  {
    static WOLog.dataLink.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20C66F000, v7, v8, "Timed update received while app is active, ignoring LiveActivity update", v9, 2u);
      MEMORY[0x20F30E080](v9, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

Swift::Void __swiftcall LiveActivityMonitor.pushLiveActivityUpdate()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v3 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in LiveActivityMonitor.pushLiveActivityUpdate();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_20;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v5, v2, v8);
  _Block_release(v8);

  (*(v10 + 8))(v2, v0);
  (*(v3 + 8))(v5, v9);
}

uint64_t closure #1 in LiveActivityMonitor.pushLiveActivityUpdate()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v5 = &v14[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    MetricsPublisher.workoutStatePublisher.getter();
    v8 = WorkoutStatePublisher.workoutStarted.getter();

    if (v8)
    {
      MetricsPublisher.workoutStatePublisher.getter();
      v9 = WorkoutStatePublisher.workoutEnded.getter();

      if ((v9 & 1) == 0)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v10 = *(v7 + 16);
        MetricsPublisher.workoutIdentifier.getter();
        v11 = type metadata accessor for UUID();
        v12 = *(*(v11 - 8) + 56);
        v12(v5, 0, 1, v11);
        v12(v2, 1, 1, v11);
        v15 = 0;
        v13 = dispatch thunk of WorkoutNotificationCenter.notification.getter();
        MirrorLiveActivity.update(publisher:sessionUUID:workoutUUID:monitorState:notification:)(v10, v5, v2, &v15, v13);

        outlined destroy of UUID?(v2);
        outlined destroy of UUID?(v5);
      }
    }
  }

  return result;
}

uint64_t LiveActivityMonitor.deinit()
{

  return v0;
}

uint64_t LiveActivityMonitor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void LiveActivityMonitor.workout(_:didMoveToState:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v39 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v39 - v12);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  if (a2 == 5)
  {
    [a1 elapsedTime];
    v23 = v22;
    NLWorkoutAutoDiscardDurationLimit();
    if (v23 >= v24)
    {
      v39 = v2;
      static WOLog.dataLink.getter();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_20C66F000, v28, v29, "Workout completed", v30, 2u);
        MEMORY[0x20F30E080](v30, -1, -1);
      }

      (*(v15 + 8))(v17, v14);
      v31 = v39;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v32 = *(v31 + 16);
      MetricsPublisher.workoutIdentifier.getter();
      v33 = type metadata accessor for UUID();
      v34 = *(*(v33 - 8) + 56);
      v34(v13, 0, 1, v33);
      v35 = [a1 hkWorkout];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 fiui_finalWorkoutUUID];

        if (v37)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = 0;
        }

        else
        {
          v38 = 1;
        }

        v34(v7, v38, 1, v33);
        outlined init with take of UUID?(v7, v10);
      }

      else
      {
        v34(v10, 1, 1, v33);
      }

      v40 = 2;
      MirrorLiveActivity.update(publisher:sessionUUID:workoutUUID:monitorState:notification:)(v32, v13, v10, &v40, 0);
      outlined destroy of UUID?(v10);
      outlined destroy of UUID?(v13);
    }

    else
    {
      static WOLog.dataLink.getter();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_20C66F000, v25, v26, "Workout discarded", v27, 2u);
        MEMORY[0x20F30E080](v27, -1, -1);
      }

      (*(v15 + 8))(v21, v14);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      MirrorLiveActivity.discard()();
    }
  }
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized LiveActivityMonitor.workout(_:pausedReasonsDidUpdate:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v20[-v10];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = *(v1 + 16);
  MetricsPublisher.workoutIdentifier.getter();
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 0, 1, v13);
  v15 = [a1 hkWorkout];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 fiui_finalWorkoutUUID];

    if (v17)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v14(v5, v18, 1, v13);
    outlined init with take of UUID?(v5, v8);
  }

  else
  {
    v14(v8, 1, 1, v13);
  }

  v21 = 0;
  MirrorLiveActivity.update(publisher:sessionUUID:workoutUUID:monitorState:notification:)(v12, v11, v8, &v21, 0);
  outlined destroy of UUID?(v8);
  return outlined destroy of UUID?(v11);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_1(unint64_t *a1, uint64_t *a2)
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

id one-time initialization function for sharedRenderer()
{
  result = [objc_allocWithZone(MEMORY[0x277CE8E88]) init];
  static ARUIRendererCache.sharedRenderer = result;
  return result;
}

id static ARUIRendererCache.sharedRenderer.getter()
{
  if (one-time initialization token for sharedRenderer != -1)
  {
    swift_once();
  }

  v1 = static ARUIRendererCache.sharedRenderer;

  return v1;
}

id ARUIRendererCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ARUIRendererCache.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARUIRendererCache();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ARUIRendererCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARUIRendererCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11WorkoutCore0B13ConfigurationC_SD6ValuesVy10Foundation4UUIDVAF_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v3 + 32), v2, a1);
  outlined consume of [UUID : WorkoutConfiguration].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x20F30C990](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for WorkoutConfiguration();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, MEMORY[0x277D7DD30], &lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, MEMORY[0x277D7DD60], &lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_18:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  while (1)
  {
    if (v10 == v11)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F30C990](v11, a2);
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    a3(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(a4, a5);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v12)
    {
      return v11;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_17;
    }
  }
}

void MockQueryClient.fetchConfiguration(uuid:completion:)(uint64_t a1, void (*a2)(void *, void))
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = v8;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  a2(v8, 0);
}

void *MockQueryClient.fetchDeletedConfigurationSynchronously(uuid:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v5)
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t MockQueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  swift_beginAccess();
  v7 = *(v3 + 40);
  if (*(v7 + 16))
  {

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  a3(v10, 0);
}

void (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t MockQueryClient.removeManagedConfigurations(managedConfigurations:completion:)(unint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v27 = v4;
    v28 = v4 & 0xFFFFFFFFFFFFFF8;
    v26 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v8 = MEMORY[0x20F30C990](v6, v4);
      }

      else
      {
        if (v6 >= *(v28 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v3[5];
      if (*(v11 + 16))
      {
        v12 = v3[6];
        v13 = v3[7];

        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
        if (v15)
        {
          v16 = i;
          v17 = *(*(v11 + 56) + 8 * v14);

          v18 = specialized Collection<>.firstIndex(of:)(v9, v17);
          v20 = v19;

          if ((v20 & 1) == 0)
          {
            v21 = MockQueryClient.managedConfigurations.modify();
            v22 = specialized Dictionary.subscript.modify(v29, v12, v13);
            if (*v23)
            {
            }

            (v22)(v29, 0);
            (v21)(v30, 0);
          }

          i = v16;
          v7 = v26;
          v4 = v27;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v6;
      if (v10 == i)
      {
        return a2(1, 0);
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return a2(1, 0);
}

void *MockQueryClient.fetchConfigurationSynchronously(uuid:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v5)
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t MockQueryClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for QueryClientProtocol.fetchConfigurations(completion:) in conformance MockQueryClient(void (*a1)(void))
{
  swift_beginAccess();

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11WorkoutCore0B13ConfigurationC_SD6ValuesVy10Foundation4UUIDVAF_GTt0g5(v2);
  a1();
}

uint64_t protocol witness for QueryClientProtocol.fetchConfigurationsSynchronously() in conformance MockQueryClient()
{
  swift_beginAccess();

  return _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11WorkoutCore0B13ConfigurationC_SD6ValuesVy10Foundation4UUIDVAF_GTt0g5(v0);
}

uint64_t protocol witness for QueryClientProtocol.fetchDeletedConfigurations(completion:) in conformance MockQueryClient(void (*a1)(void))
{
  swift_beginAccess();

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11WorkoutCore0B13ConfigurationC_SD6ValuesVy10Foundation4UUIDVAF_GTt0g5(v2);
  a1();
}

uint64_t protocol witness for QueryClientProtocol.fetchConfigurations(activityType:completion:) in conformance MockQueryClient(void *a1, void (*a2)(void))
{
  swift_beginAccess();
  v4 = a1;

  v6 = specialized _NativeDictionary.filter(_:)(v5, v4);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11WorkoutCore0B13ConfigurationC_SD6ValuesVy10Foundation4UUIDVAF_GTt0g5(v6);
  a2();
}

uint64_t protocol witness for QueryClientProtocol.save(_:completion:) in conformance MockQueryClient(void *a1, uint64_t (*a2)(uint64_t, void))
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  dispatch thunk of WorkoutConfiguration.uuid.getter();
  swift_beginAccess();
  v10 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v9 + 16);
  *(v9 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v8, isUniquelyReferenced_nonNull_native);
  (*(v6 + 8))(v8, v5);
  *(v9 + 16) = v13;
  swift_endAccess();
  return a2(1, 0);
}

uint64_t protocol witness for QueryClientProtocol.deleteConfiguration(uuid:completion:) in conformance MockQueryClient(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = specialized Dictionary.removeValue(forKey:)(a1);
  swift_endAccess();
  if (v8)
  {
    (*(v5 + 16))(v7, a1, v4);
    swift_beginAccess();
    v9 = v8;
    specialized Dictionary.subscript.setter(v8, v7);
    swift_endAccess();
  }

  return a2(1, 0);
}

uint64_t protocol witness for QueryClientProtocol.fetchManagedConfigurationsByProvider(completion:) in conformance MockQueryClient(void (*a1)(unint64_t, void))
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore23QueriedExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1(v2, 0);
}

uint64_t protocol witness for QueryClientProtocol.addManagedConfigurations(managedConfigurations:completion:) in conformance MockQueryClient(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = *v2;
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = MockQueryClient.managedConfigurations.modify();
  v8 = specialized Dictionary.subscript.modify(v12, v5, v6);
  if (*v9)
  {

    specialized Array.append<A>(contentsOf:)(v10);
  }

  (v8)(v12, 0);
  (v7)(v13, 0);
  return a2(1, 0);
}

uint64_t protocol witness for QueryClientProtocol.setManagedConfigurations(managedConfigurations:completion:) in conformance MockQueryClient(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 56);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v6, v7, isUniquelyReferenced_nonNull_native);

  *(v5 + 40) = v10;
  swift_endAccess();
  return a2(1, 0);
}

uint64_t protocol witness for QueryClientProtocol.deleteManagedConfigurations(sourceIdentifier:completion:) in conformance MockQueryClient(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  swift_beginAccess();

  specialized Dictionary.subscript.setter(0, a1, a2);
  swift_endAccess();
  return a3(1, 0);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n03_s9k103UI15MockQueryClientC19fetchConfigurations12activityType10completionySo019FIUIWorkoutActivityI0C_ySay0A4w3A13m5CG_s5z12_pSgtctFSb10U26UUIDV3key_AK5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v36 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMd);
  result = static _DictionaryStorage.allocate(capacity:)();
  v46 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = a4;
  v39 = v9 + 16;
  v45 = v9 + 32;
  v16 = v46 + 64;
  v37 = a1;
  v40 = v9;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v44 = *(v9 + 72);
    v22 = v41;
    (*(v9 + 16))(v41, v21 + v44 * v20, v8);
    v23 = *(a4[7] + 8 * v20);
    v43 = *(v9 + 32);
    v43(v47, v22, v8);
    v24 = v46;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v25 = v23;
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(v24 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v9 = v40;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v9 = v40;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = v46;
    result = (v43)(*(v46 + 48) + v29 * v44, v47, v8);
    *(*(v34 + 56) + 8 * v29) = v25;
    ++*(v34 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a1 = v37;
    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v46;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v46;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    outlined destroy of String(*(v7 + 48) + 16 * v6);
    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v48 = a4;
  v36 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd);
  MEMORY[0x28223BE20](v47);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v35 - v7;
  v44 = type metadata accessor for UUID();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v44);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v8;
  v11 = 0;
  v49 = a3;
  v12 = *(a3 + 64);
  v37 = 0;
  v38 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v40 = v8 + 8;
  v41 = v8 + 16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v52 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v11 << 6);
    v21 = v49;
    v23 = v42;
    v22 = v43;
    v24 = *(v43 + 16);
    v25 = v44;
    v24(v42, v49[6] + *(v43 + 72) * v20, v44, v9);
    v26 = v21[7];
    v39 = v20;
    v27 = *(v26 + 8 * v20);
    v28 = v45;
    (v24)(v45, v23, v25);
    v29 = v47;
    *(v28 + *(v47 + 48)) = v27;
    v50 = type metadata accessor for NSObject();
    v30 = v46;
    outlined init with copy of (key: UUID, value: WorkoutConfiguration)(v28, v46);
    v31 = *(v30 + *(v29 + 48));
    v51 = v27;
    v32 = dispatch thunk of WorkoutConfiguration.activityType.getter();

    LOBYTE(v31) = static NSObject.== infix(_:_:)();
    outlined destroy of (key: UUID, value: WorkoutConfiguration)(v28);
    v33 = *(v22 + 8);
    v33(v30, v25);

    v33(v23, v25);
    v15 = v52;
    if (v31)
    {
      *(v36 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(v36, v35, v37, v49);
        return;
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_15;
    }

    v19 = *(v38 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v9;
      ClientC19fetchConfigurations12activityType10completionySo019FIUIWorkoutActivityI0C_ySay0A4w3A13m5CG_s5z12_pSgtctFSb10U26UUIDV3key_AK5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n03_s9k103UI15MockQueryClientC19fetchConfigurations12activityType10completionySo019FIUIWorkoutActivityI0C_ySay0A4w3A13m5CG_s5z12_pSgtctFSb10U26UUIDV3key_AK5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n(v14, v6, a1, v15);
      MEMORY[0x20F30E080](v14, -1, -1);

      return ClientC19fetchConfigurations12activityType10completionySo019FIUIWorkoutActivityI0C_ySay0A4w3A13m5CG_s5z12_pSgtctFSb10U26UUIDV3key_AK5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  specialized closure #1 in _NativeDictionary.filter(_:)((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);
  ClientC19fetchConfigurations12activityType10completionySo019FIUIWorkoutActivityI0C_ySay0A4w3A13m5CG_s5z12_pSgtctFSb10U26UUIDV3key_AK5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n = v11;

  if (v2)
  {
    swift_willThrow();
  }

  return ClientC19fetchConfigurations12activityType10completionySo019FIUIWorkoutActivityI0C_ySay0A4w3A13m5CG_s5z12_pSgtctFSb10U26UUIDV3key_AK5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n;
}

uint64_t outlined init with copy of (key: UUID, value: WorkoutConfiguration)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (key: UUID, value: WorkoutConfiguration)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TrainingLoadDayWidgetEntryView()
{
  result = type metadata singleton initialization cache for TrainingLoadDayWidgetEntryView;
  if (!type metadata singleton initialization cache for TrainingLoadDayWidgetEntryView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrainingLoadDayWidgetEntryView()
{
  type metadata accessor for TrainingLoadDayEntry();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<WidgetFamily>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<WidgetFamily>()
{
  if (!lazy cache variable for type metadata for Environment<WidgetFamily>)
  {
    type metadata accessor for WidgetFamily();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<WidgetFamily>);
    }
  }
}

uint64_t TrainingLoadDayWidgetEntryView.family.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E6FamilyO_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  DayWidgetEntryView = type metadata accessor for TrainingLoadDayWidgetEntryView();
  outlined init with copy of Environment<WidgetFamily>.Content(v1 + *(DayWidgetEntryView + 20), v9, &_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E6FamilyO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for WidgetFamily();
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

uint64_t TrainingLoadDayWidgetEntryView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAF0ghij11SystemSmallL0VGAHGGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-v5];
  closure #1 in TrainingLoadDayWidgetEntryView.body.getter(v0, &v9[-v5]);
  v11 = 0;
  TrainingLoadDayWidgetEntryView.widgetURLSource.getter(&v10);
  TrainingLoadURLBuilder.url(route:source:)(&v11, &v10, v3);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView>> and conformance <A> Group<A>();
  View.widgetURL(_:)();
  _s10Foundation3URLVSgWOhTm_2(v3, &_s10Foundation3URLVSgMd);
  return _s10Foundation3URLVSgWOhTm_2(v6, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAF0ghij11SystemSmallL0VGAHGGMd);
}

uint64_t closure #1 in TrainingLoadDayWidgetEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  DayWidgetSystemSmallView = type metadata accessor for TrainingLoadDayWidgetSystemSmallView(0);
  MEMORY[0x28223BE20](DayWidgetSystemSmallView);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAF0ghij11SystemSmallL0VGAH_GMd);
  MEMORY[0x28223BE20](v31);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAF0ghij11SystemSmallL0V_GMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAD0fghi11SystemSmallK0VGMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  DayWidgetRectangularView = type metadata accessor for TrainingLoadDayWidgetRectangularView();
  MEMORY[0x28223BE20](DayWidgetRectangularView);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WidgetFamily();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrainingLoadDayWidgetEntryView.family.getter(v17);
  v28 = v15;
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277CE3B68])
  {
    v19 = v29;
    outlined init with copy of TrainingLoadDayEntry(a1, v29, type metadata accessor for TrainingLoadDayEntry);
    outlined init with copy of TrainingLoadDayEntry(v19, v8, type metadata accessor for TrainingLoadDayWidgetSystemSmallView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView, type metadata accessor for TrainingLoadDayWidgetRectangularView);
    lazy protocol witness table accessor for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetSystemSmallView and conformance TrainingLoadDayWidgetSystemSmallView, type metadata accessor for TrainingLoadDayWidgetSystemSmallView);
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of Environment<WidgetFamily>.Content(v11, v5, &_s7SwiftUI19_ConditionalContentVy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAD0fghi11SystemSmallK0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    _s10Foundation3URLVSgWOhTm_2(v11, &_s7SwiftUI19_ConditionalContentVy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAD0fghi11SystemSmallK0VGMd);
    return outlined destroy of TrainingLoadDayWidgetRectangularView(v19, type metadata accessor for TrainingLoadDayWidgetSystemSmallView);
  }

  else
  {
    v21 = v18;
    v27 = v11;
    v29 = v9;
    v22 = *MEMORY[0x277CE3B98];
    outlined init with copy of TrainingLoadDayEntry(a1, v13, type metadata accessor for TrainingLoadDayEntry);
    KeyPath = swift_getKeyPath();
    v24 = DayWidgetRectangularView;
    *&v13[*(DayWidgetRectangularView + 20)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E13RenderingModeV_GMd);
    swift_storeEnumTagMultiPayload();
    *&v13[*(v24 + 24)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
    swift_storeEnumTagMultiPayload();
    if (v21 == v22)
    {
      outlined init with copy of TrainingLoadDayEntry(v13, v8, type metadata accessor for TrainingLoadDayWidgetRectangularView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView, type metadata accessor for TrainingLoadDayWidgetRectangularView);
      lazy protocol witness table accessor for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetSystemSmallView and conformance TrainingLoadDayWidgetSystemSmallView, type metadata accessor for TrainingLoadDayWidgetSystemSmallView);
      v25 = v27;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of Environment<WidgetFamily>.Content(v25, v5, &_s7SwiftUI19_ConditionalContentVy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAD0fghi11SystemSmallK0VGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      _s10Foundation3URLVSgWOhTm_2(v25, &_s7SwiftUI19_ConditionalContentVy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAD0fghi11SystemSmallK0VGMd);
      return outlined destroy of TrainingLoadDayWidgetRectangularView(v13, type metadata accessor for TrainingLoadDayWidgetRectangularView);
    }

    else
    {
      outlined init with copy of TrainingLoadDayEntry(v13, v5, type metadata accessor for TrainingLoadDayWidgetRectangularView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView, type metadata accessor for TrainingLoadDayWidgetRectangularView);
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TrainingLoadDayWidgetRectangularView(v13, type metadata accessor for TrainingLoadDayWidgetRectangularView);
      return (*(v28 + 8))(v17, v14);
    }
  }
}

uint64_t TrainingLoadDayWidgetEntryView.widgetURLSource.getter@<X0>(char *a1@<X8>)
{
  v17 = a1;
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E6FamilyO_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for WidgetFamily();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWidgetEntryView = type metadata accessor for TrainingLoadDayWidgetEntryView();
  outlined init with copy of Environment<WidgetFamily>.Content(v1 + *(DayWidgetEntryView + 20), v7, &_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E6FamilyO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  result = (*(v9 + 88))(v11, v8);
  if (result == *MEMORY[0x277CE3B68])
  {
    v15 = 5;
  }

  else
  {
    if (result != *MEMORY[0x277CE3B98])
    {
      result = (*(v9 + 8))(v11, v8);
    }

    v15 = 2;
  }

  *v17 = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAF0ghij11SystemSmallL0VGAHGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAD0fghi11SystemSmallK0VGAFGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView, type metadata accessor for TrainingLoadDayWidgetRectangularView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAD0fghi11SystemSmallK0VGMd);
    lazy protocol witness table accessor for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView, type metadata accessor for TrainingLoadDayWidgetRectangularView);
    lazy protocol witness table accessor for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetSystemSmallView and conformance TrainingLoadDayWidgetSystemSmallView, type metadata accessor for TrainingLoadDayWidgetSystemSmallView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TrainingLoadDayWidgetRectangularView and conformance TrainingLoadDayWidgetRectangularView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path setter for EnvironmentValues.widgetRenderingMode : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for WidgetRenderingMode();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.widgetRenderingMode.setter();
}

uint64_t outlined init with copy of TrainingLoadDayEntry(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Environment<WidgetFamily>.Content(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation3URLVSgWOhTm_2(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of TrainingLoadDayWidgetRectangularView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int QuickStartWorkoutViewStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QuickStartWorkoutViewStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QuickStartWorkoutViewStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type QuickStartWorkoutViewStyle and conformance QuickStartWorkoutViewStyle()
{
  result = lazy protocol witness table cache variable for type QuickStartWorkoutViewStyle and conformance QuickStartWorkoutViewStyle;
  if (!lazy protocol witness table cache variable for type QuickStartWorkoutViewStyle and conformance QuickStartWorkoutViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickStartWorkoutViewStyle and conformance QuickStartWorkoutViewStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuickStartWorkoutViewStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QuickStartWorkoutViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaConfigurationRoomButtonPhone(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for MediaConfigurationRoomButtonPhone(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MediaConfigurationRoomButtonPhone.mediaConfigurationRoom()@<X0>(uint64_t *a1@<X8>)
{
  v34 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v39 = *(v1 + 16);
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.projectedValue.getter();
  v10 = v37;
  v33 = v36;
  v11 = v38;
  LOBYTE(v36) = v7;
  v37 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v35 = v39;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for MediaConfigurationRoom();
  v13 = v12[5];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  swift_storeEnumTagMultiPayload();
  v14 = v12[7];
  type metadata accessor for MediaPlaybackStore();
  *(a1 + v14) = static MediaPlaybackStore.sharedInstance.getter();
  v15 = a1 + v12[9];
  LOBYTE(v39) = 0;
  State.init(wrappedValue:)();
  v16 = v37;
  *v15 = v36;
  *(v15 + 1) = v16;
  v17 = a1 + v12[11];
  LOBYTE(v39) = 0;
  State.init(wrappedValue:)();
  v18 = v37;
  *v17 = v36;
  *(v17 + 1) = v18;
  *(a1 + v12[6]) = v9;
  v19 = swift_allocObject();
  v21 = v33;
  v20 = v34;
  v19[2] = v9;
  v19[3] = v21;
  v19[4] = v10;
  v19[5] = v11;
  v22 = a1 + v12[8];
  *v22 = _s9WorkoutUI22MediaConfigurationRoomV12activityType05mediaD0013shouldPresentC20CompatibilityWarningACSo019FIUIWorkoutActivityG0C_05SwiftB07BindingVy0A4Core0c8PlaybackD4ItemCSgGSbtcfcAA0cdE9ViewModelCycfu_TA_0;
  *(v22 + 1) = v19;
  v22[16] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277D2AE20], v20);
  v23 = v11;
  v24 = v9;

  static MusicDataRequest.preferredExecutionMethod.setter();
  static Platform.current.getter();
  v25 = Platform.rawValue.getter();
  if (v25 == Platform.rawValue.getter() && (FIHasSeenWorkoutMediaOnboarding() & 1) == 0 && (v26 = MediaPlaybackStore.migratedUser.getter()) != 0)
  {

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = a1 + v12[10];
  LOBYTE(v39) = v27;
  State.init(wrappedValue:)();
  v29 = v37;
  *v28 = v36;
  *(v28 + 1) = v29;
  v30 = a1 + v12[12];
  LOBYTE(v39) = v35;
  State.init(wrappedValue:)();

  v32 = v37;
  *v30 = v36;
  *(v30 + 1) = v32;
  return result;
}

double MediaConfigurationRoomButtonPhone.init(activityType:placement:)@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore30MediaPlaybackConfigurationItemCSgMd);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  *(a3 + 32) = v8;
  *(a3 + 40) = *(&v8 + 1);
  State.init(wrappedValue:)();
  *(a3 + 48) = v8;
  *(a3 + 56) = *(&v8 + 1);
  *a3 = a1;
  type metadata accessor for MediaPlaybackStore();
  v6 = a1;
  *(a3 + 8) = static MediaPlaybackStore.sharedInstance.getter();
  State.init(wrappedValue:)();

  result = *&v8;
  *(a3 + 16) = v8;
  *(a3 + 64) = v5;
  return result;
}

uint64_t MediaConfigurationRoomButtonPhone.description()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.wrappedValue.getter();
  if (v17)
  {
    if ((dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter() & 1) == 0)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = WorkoutUIBundle.super.isa;
      v19._object = 0xE000000000000000;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v9._object = 0x800000020CB9B360;
      v9._countAndFlagsBits = 0xD000000000000017;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      v19._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v19);

      lazy protocol witness table accessor for type String and conformance String();
      v1 = Text.init<A>(_:)();
      goto LABEL_13;
    }

    if (dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter())
    {
      LocalizedStringKey.init(stringLiteral:)();
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v0 = WorkoutUIBundle.super.isa;
      v1 = Text.init(_:tableName:bundle:comment:)();
LABEL_13:
      v11 = v1;

      return v11;
    }

    v12 = dispatch thunk of MediaPlaybackConfigurationItem.mediaSuggestion.getter();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 title];
      if (v14)
      {
        v15 = v14;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        lazy protocol witness table accessor for type String and conformance String();
        v16 = Text.init<A>(_:)();

        return v16;
      }
    }

    return 0;
  }

  else
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
    v4._object = 0x800000020CB9B360;
    v4._countAndFlagsBits = 0xD000000000000017;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v18);

    lazy protocol witness table accessor for type String and conformance String();
    return Text.init<A>(_:)();
  }
}

uint64_t MediaConfigurationRoomButtonPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyACyACyACyACyACyAA0K0VyACy07FitnessB013AdaptiveStackVyAA05TupleG0VyAEyAGyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAiAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundiT0VyAA017HierarchicalShapeI0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainkI0VQo_AA011_BackgroundT0VyAA06_ShapeG0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGACyAiAE12onTapGesture5count7performQrSi_yyctFQOyAiAEAJyQrqd__AaKRd__lFQOyAMyACyACyACyACyACyACyACyAEyAGyACyAtA023AccessibilityAttachmentT0VGA73_GGA46_GA49_GAA011_BackgroundiT0VyA42_GGAVyA42_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA39_GA83_GG_A53_Qo__Qo_A65_yA88_GGGSgGAA05_TaskT0VGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v25[-v3 - 8];
  v5 = v1[2];
  v30 = v1[3];
  v31 = *(v1 + 64);
  v6 = *v1;
  v28 = v1[1];
  v29 = v5;
  v27 = v6;
  closure #1 in MediaConfigurationRoomButtonPhone.body.getter(&v27, &v25[-v3 - 8]);
  v7 = &v4[*(v2 + 36)];
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  v8 = swift_allocObject();
  v9 = v29;
  v10 = v30;
  *(v8 + 48) = v29;
  *(v8 + 64) = v10;
  *(v8 + 80) = v31;
  v11 = v28;
  *(v8 + 16) = v27;
  *(v8 + 32) = v11;
  *v7 = &async function pointer to partial apply for closure #2 in MediaConfigurationRoomButtonPhone.body.getter;
  *(v7 + 1) = v8;
  v26 = v9;
  outlined init with copy of MediaConfigurationRoomButtonPhone(&v27, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v12 = swift_allocObject();
  v13 = v28;
  v14 = v30;
  *(v12 + 48) = v29;
  *(v12 + 64) = v14;
  *(v12 + 80) = v31;
  *(v12 + 16) = v27;
  *(v12 + 32) = v13;
  outlined init with copy of MediaConfigurationRoomButtonPhone(&v27, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVy07WorkoutB022MediaConfigurationRoomVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type NavigationView<MediaConfigurationRoom> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVy07WorkoutB022MediaConfigurationRoomVGMd);
  v15 = v24;
  View.sheet<A>(isPresented:onDismiss:content:)();

  outlined destroy of ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier>(v4, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyACyACyACyACyACyAA0K0VyACy07FitnessB013AdaptiveStackVyAA05TupleG0VyAEyAGyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAiAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundiT0VyAA017HierarchicalShapeI0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainkI0VQo_AA011_BackgroundT0VyAA06_ShapeG0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGACyAiAE12onTapGesture5count7performQrSi_yyctFQOyAiAEAJyQrqd__AaKRd__lFQOyAMyACyACyACyACyACyACyACyAEyAGyACyAtA023AccessibilityAttachmentT0VGA73_GGA46_GA49_GAA011_BackgroundiT0VyA42_GGAVyA42_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA39_GA83_GG_A53_Qo__Qo_A65_yA88_GGGSgGAA05_TaskT0VGMd);
  v16 = [objc_opt_self() defaultCenter];
  type metadata accessor for MediaPlaybackStore();
  v17 = static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaIRd__lFQOyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalQ0VyATyATyAjAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyATyATyATyATyATyAA0W0VyATy07FitnessB013AdaptiveStackVyAA05TupleD0VyAVyAXyAA5ImageVATyA7_AA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ATyAjAE10fontWeightyQrAA4FontV6WeightVSgFQOyATyATyAA4TextVA9_ySiSgGGA9_yAA13TextAlignmentOGG_Qo_AA011_ForegroundU8ModifierVyAA017HierarchicalShapeU0VGGAA6SpacerVSgATyATyA23_A29_GA25_GSgtGGAA01_Q13ShapeModifierVyAA9RectangleVGGGA9_yA18_SgGGA33_yAA5ColorVGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA64_G_AA05PlainwU0VQo_AA19_BackgroundModifierVyAA06_ShapeD0VyAA8AnyShapeVA57_GGGAA01_Q17ShapeKindModifierVyA75_GGATyAjAE0L10TapGesture5count7performQrSi_yyctFQOyAjAEAYyQrqd__AaZRd__lFQOyA0_yATyATyATyATyATyATyATyAVyAXyATyA7_AA31AccessibilityAttachmentModifierVGA88_GGA61_GA64_GAA011_BackgroundU8ModifierVyA57_GGA9_yA57_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA54_GA98_GG_A68_Qo__Qo_A80_yA103_GGGSgGAA13_TaskModifierVG_AA010NavigationD0Vy07WorkoutB022MediaConfigurationRoomVGQo_GMd);
  NSNotificationCenter.publisher(for:object:)();

  v19 = swift_allocObject();
  v20 = v28;
  v21 = v30;
  *(v19 + 48) = v29;
  *(v19 + 64) = v21;
  *(v19 + 80) = v31;
  *(v19 + 16) = v27;
  *(v19 + 32) = v20;
  v22 = (v15 + *(v18 + 56));
  *v22 = partial apply for closure #4 in MediaConfigurationRoomButtonPhone.body.getter;
  v22[1] = v19;
  return outlined init with copy of MediaConfigurationRoomButtonPhone(&v27, v25);
}

uint64_t closure #1 in MediaConfigurationRoomButtonPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGANGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA016_BackgroundStyleK0VyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAZSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA2_yAA4FontVSgGGA4_GGMd);
  v123 = *(v128 - 1);
  MEMORY[0x28223BE20](v128);
  v4 = &v115 - v3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAIyAIyAIyAA5GroupVyAA012_ConditionalI0VyAIyAA5ImageVAA31AccessibilityAttachmentModifierVGARGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA011_BackgroundeO0VyAA5ColorVGGAA022_EnvironmentKeyWritingO0VyA2_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA6_yAA4FontVSgGGA8_GG_AA05PlaingE0VQo_Md);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v126 = &v115 - v5;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyACyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAUGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAA011_BackgroundlT0VyAA5ColorVGGAA022_EnvironmentKeyWritingT0VyA5_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA9_yAA4FontVSgGGA11_GG_AA05PlainnL0VQo__Qo_AA01_d9ShapeKindT0VyA16_GGMd);
  MEMORY[0x28223BE20](v145);
  v131 = &v115 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAGyAGyAGyAGyAGyAA0K0VyAGy07FitnessB013AdaptiveStackVyAA05TupleG0VyAA5GroupVyACyAA5ImageVAGyAvA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AGyAiAE10fontWeightyQrAA4FontV0Y0VSgFQOyAGyAGyAA4TextVAXySiSgGGAXyAA13TextAlignmentOGG_Qo_AA011_ForegroundiU0VyAA017HierarchicalShapeI0VGGAA6SpacerVSgAGyAGyA10_A16_GA12_GSgtGGAA01_d5ShapeU0VyAA9RectangleVGGGAXyA5_SgGGA20_yAA5ColorVGGAA010_FlexFrameV0VGAA08_PaddingV0VGA51_G_AA05PlainkI0VQo_AA011_BackgroundU0VyAA06_ShapeG0VyAA8AnyShapeVA44_GGGAA01_d9ShapeKindU0VyA62_GGAGyAiAE12onTapGesture5count7performQrSi_yyctFQOyAiAEAJyQrqd__AaKRd__lFQOyAMyAGyAGyAGyAGyAGyAGyAGyATyACyAGyAvA023AccessibilityAttachmentU0VGA75_GGA48_GA51_GAA011_BackgroundiU0VyA44_GGAXyA44_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA41_GA85_GG_A55_Qo__Qo_A67_yA90_GG_GMd);
  MEMORY[0x28223BE20](v143);
  v144 = &v115 - v7;
  v8 = type metadata accessor for ContentShapeKinds();
  v138 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v137 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v142);
  v136 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for Capsule();
  MEMORY[0x28223BE20](v135);
  v134 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v141 = type metadata accessor for PlainButtonStyle();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Font.Leading();
  v13 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGMd);
  MEMORY[0x28223BE20](v116);
  v17 = &v115 - v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGMd);
  MEMORY[0x28223BE20](v118);
  v19 = &v115 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGAA08_PaddingR0VGMd);
  MEMORY[0x28223BE20](v119);
  v21 = &v115 - v20;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGAA08_PaddingR0VGA47_GMd);
  MEMORY[0x28223BE20](v121);
  v23 = &v115 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAGyAGyAGyAA0G0VyAGy07FitnessB013AdaptiveStackVyAA05TupleC0VyAA5GroupVyAA012_ConditionalI0VyAA5ImageVAGyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AGyAcAE10fontWeightyQrAA4FontV0X0VSgFQOyAGyAGyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundeT0VyAA017HierarchicalShapeE0VGGAA6SpacerVSgAGyAGyA8_A14_GA10_GSgtGGAA01_i5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlaingE0VQo_Md);
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v120 = &v115 - v24;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyACyACyACyAA0I0VyACy07FitnessB013AdaptiveStackVyAA05TupleE0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAeAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundgT0VyAA017HierarchicalShapeG0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA8AnyShapeVA42_GGGMd);
  MEMORY[0x28223BE20](v124);
  v133 = &v115 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyACyACyACyAA0I0VyACy07FitnessB013AdaptiveStackVyAA05TupleE0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAeAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundgT0VyAA017HierarchicalShapeG0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGMd);
  MEMORY[0x28223BE20](v26);
  v132 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = *(a1 + 64);
  if (v30 == 2)
  {
    v31 = swift_allocObject();
    v32 = *(a1 + 48);
    *(v31 + 48) = *(a1 + 32);
    *(v31 + 64) = v32;
    *(v31 + 80) = *(a1 + 64);
    v33 = *(a1 + 16);
    *(v31 + 16) = *a1;
    *(v31 + 32) = v33;
    MEMORY[0x28223BE20](v31);
    outlined init with copy of MediaConfigurationRoomButtonPhone(a1, &v147);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGA2_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    Button.init(action:label:)();
    v34 = v139;
    PlainButtonStyle.init()();
    v35 = lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGANGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA016_BackgroundStyleK0VyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAZSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA2_yAA4FontVSgGGA4_GGMd);
    v36 = _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    v37 = v126;
    v38 = v128;
    v39 = v141;
    View.buttonStyle<A>(_:)();
    (*(v140 + 8))(v34, v39);
    (*(v123 + 8))(v4, v38);
    v40 = swift_allocObject();
    v41 = *(a1 + 48);
    *(v40 + 48) = *(a1 + 32);
    *(v40 + 64) = v41;
    *(v40 + 80) = *(a1 + 64);
    v42 = *(a1 + 16);
    *(v40 + 16) = *a1;
    *(v40 + 32) = v42;
    outlined init with copy of MediaConfigurationRoomButtonPhone(a1, &v147);
    *&v147 = v38;
    *(&v147 + 1) = v39;
    *&v148 = v35;
    *(&v148 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    v43 = v131;
    v44 = v130;
    View.onTapGesture(count:perform:)();

    (*(v129 + 8))(v37, v44);
    v45 = (v43 + *(v145 + 36));
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    static ContentShapeKinds.accessibility.getter();
    v47 = *(v142 + 20);
    v48 = *MEMORY[0x277CE0118];
    v49 = type metadata accessor for RoundedCornerStyle();
    (*(*(v49 - 8) + 104))(&v45[v47], v48, v49);
    __asm { FMOV            V0.2D, #16.0 }

    *v45 = _Q0;
    v45[*(v46 + 36)] = 0;
    v55 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyACyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAUGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAA011_BackgroundlT0VyAA5ColorVGGAA022_EnvironmentKeyWritingT0VyA5_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA9_yAA4FontVSgGGA11_GG_AA05PlainnL0VQo__Qo_AA01_d9ShapeKindT0VyA16_GGMd;
    outlined init with copy of ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>(v43, v144, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyACyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAUGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAA011_BackgroundlT0VyAA5ColorVGGAA022_EnvironmentKeyWritingT0VyA5_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA9_yAA4FontVSgGGA11_GG_AA05PlainnL0VQo__Qo_AA01_d9ShapeKindT0VyA16_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    v56 = v146;
    _ConditionalContent<>.init(storage:)();
    v57 = v43;
  }

  else
  {
    v129 = &v115 - v29;
    v130 = v8;
    v131 = v26;
    v128 = v21;
    v122 = v30;
    v58 = swift_allocObject();
    v59 = *(a1 + 48);
    *(v58 + 48) = *(a1 + 32);
    *(v58 + 64) = v59;
    *(v58 + 80) = *(a1 + 64);
    v60 = *(a1 + 16);
    *(v58 + 16) = *a1;
    *(v58 + 32) = v60;
    MEMORY[0x28223BE20](v58);
    outlined init with copy of MediaConfigurationRoomButtonPhone(a1, &v147);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAnA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0I0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyACyACyAA4TextVAPySiSgGGAPyAA0V9AlignmentOGG_Qo_AA016_ForegroundStyleP0VyAA017HierarchicalShapeY0VGGAA6SpacerVSgACyACyA4_A10_GA6_GSgtGGAA01_d5ShapeP0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    Button.init(action:label:)();
    static Font.subheadline.getter();
    v61 = v117;
    (*(v13 + 104))(v15, *MEMORY[0x277CE0A10], v117);
    v62 = Font.leading(_:)();

    (*(v13 + 8))(v15, v61);
    KeyPath = swift_getKeyPath();
    v64 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGMd) + 36)];
    *v64 = KeyPath;
    v64[1] = v62;
    *&v17[*(v116 + 36)] = static Color.white.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    outlined init with take of ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v17, v19, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGMd);
    v65 = &v19[*(v118 + 36)];
    v66 = v152;
    *(v65 + 4) = v151;
    *(v65 + 5) = v66;
    *(v65 + 6) = v153;
    v67 = v148;
    *v65 = v147;
    *(v65 + 1) = v67;
    v68 = v150;
    *(v65 + 2) = v149;
    *(v65 + 3) = v68;
    v69 = static Edge.Set.all.getter();
    v70 = v128;
    outlined init with take of ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v19, v128, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGMd);
    v71 = v70 + *(v119 + 36);
    *v71 = v69;
    *(v71 + 8) = 0u;
    *(v71 + 24) = 0u;
    *(v71 + 40) = 1;
    v72 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    outlined init with take of ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v70, v23, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGAA08_PaddingR0VGMd);
    v81 = &v23[*(v121 + 36)];
    *v81 = v72;
    *(v81 + 1) = v74;
    *(v81 + 2) = v76;
    *(v81 + 3) = v78;
    *(v81 + 4) = v80;
    v81[40] = 0;
    v82 = v139;
    PlainButtonStyle.init()();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGAA08_PaddingR0VGA47_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGAA08_PaddingR0VGA47_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    v83 = v120;
    v84 = v141;
    View.buttonStyle<A>(_:)();
    (*(v140 + 8))(v82, v84);
    outlined destroy of ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier>(v23, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGAA08_PaddingR0VGA47_GMd);
    __asm { FMOV            V0.2D, #26.0 }

    v141 = _Q0;
    if (v122)
    {
      v86 = *MEMORY[0x277CE0118];
      v87 = type metadata accessor for RoundedCornerStyle();
      (*(*(v87 - 8) + 104))(v134, v86, v87);
      _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260]);
      v88 = AnyShape.init<A>(_:)();
      v89 = v142;
    }

    else
    {
      v89 = v142;
      v90 = *(v142 + 20);
      v86 = *MEMORY[0x277CE0118];
      v91 = type metadata accessor for RoundedCornerStyle();
      v92 = v136;
      (*(*(v91 - 8) + 104))(&v136[v90], v86, v91);
      *v92 = v141;
      _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
      v88 = AnyShape.init<A>(_:)();
    }

    v93 = v131;
    v94 = v137;
    v95 = v133;
    v96 = [objc_opt_self() secondarySystemBackgroundColor];
    v97 = Color.init(uiColor:)();
    v98 = static Alignment.center.getter();
    v100 = v99;
    (*(v125 + 32))(v95, v83, v127);
    v101 = v95 + *(v124 + 36);
    *v101 = v88;
    *(v101 + 8) = v97;
    *(v101 + 16) = 256;
    *(v101 + 24) = v98;
    *(v101 + 32) = v100;
    static ContentShapeKinds.accessibility.getter();
    v56 = v146;
    if (v122)
    {
      v102 = type metadata accessor for RoundedCornerStyle();
      (*(*(v102 - 8) + 104))(v134, v86, v102);
      _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260]);
    }

    else
    {
      v103 = *(v89 + 20);
      v104 = type metadata accessor for RoundedCornerStyle();
      v105 = v136;
      (*(*(v104 - 8) + 104))(&v136[v103], v86, v104);
      *v105 = v141;
      _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
    }

    v106 = AnyShape.init<A>(_:)();
    v107 = v144;
    v108 = v132;
    v109 = &v132[*(v93 + 9)];
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA03AnyD0VGMd);
    (*(v138 + 32))(&v109[*(v110 + 40)], v94, v130);
    *v109 = v106;
    v109[8] = 0;
    outlined init with take of ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v95, v108, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyACyACyACyAA0I0VyACy07FitnessB013AdaptiveStackVyAA05TupleE0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAeAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundgT0VyAA017HierarchicalShapeG0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA8AnyShapeVA42_GGGMd);
    v55 = &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyACyACyACyAA0I0VyACy07FitnessB013AdaptiveStackVyAA05TupleE0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAeAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundgT0VyAA017HierarchicalShapeG0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGMd;
    v111 = v108;
    v112 = v129;
    outlined init with take of ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v111, v129, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyACyACyACyAA0I0VyACy07FitnessB013AdaptiveStackVyAA05TupleE0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAeAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundgT0VyAA017HierarchicalShapeG0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGMd);
    outlined init with copy of ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>(v112, v107, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyACyACyACyAA0I0VyACy07FitnessB013AdaptiveStackVyAA05TupleE0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAeAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundgT0VyAA017HierarchicalShapeG0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v57 = v112;
  }

  outlined destroy of ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier>(v57, v55);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAEyAEyAEyAEyAEyAA0J0VyAEy07FitnessB013AdaptiveStackVyAA05TupleF0VyAA5GroupVyACyAA5ImageVAEyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AEyAgAE10fontWeightyQrAA4FontV0X0VSgFQOyAEyAEyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundhT0VyAA017HierarchicalShapeH0VGGAA6SpacerVSgAEyAEyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainjH0VQo_AA011_BackgroundT0VyAA06_ShapeF0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGAEyAgAE12onTapGesture5count7performQrSi_yyctFQOyAgAEAHyQrqd__AaIRd__lFQOyAKyAEyAEyAEyAEyAEyAEyAEyARyACyAEyAtA023AccessibilityAttachmentT0VGA73_GGA46_GA49_GAA011_BackgroundhT0VyA42_GGAVyA42_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA39_GA83_GG_A53_Qo__Qo_A65_yA88_GGGMd);
  return (*(*(v113 - 8) + 56))(v56, 0, 1, v113);
}

uint64_t closure #2 in closure #1 in MediaConfigurationRoomButtonPhone.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for AdaptiveStackType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9FitnessUI13AdaptiveStackVy05SwiftB09TupleViewVyAD5GroupVyAD19_ConditionalContentVyAD5ImageVAD08ModifiedJ0VyAlD30_EnvironmentKeyWritingModifierVyAD15LayoutDirectionOGGGG_ANyAD0G0PADE10fontWeightyQrAD4FontV0T0VSgFQOyANyANyAD4TextVAPySiSgGGAPyAD0V9AlignmentOGG_Qo_AD016_ForegroundStyleP0VyAD017HierarchicalShapeY0VGGAD6SpacerVSgANyANyA4_A10_GA6_GSgtGGMd);
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = *(v6 + 104);
  v15 = 0x4024000000000000;
  if ((a1 & 1) == 0)
  {
    v15 = 0;
  }

  v22[1] = v15;
  v16 = MEMORY[0x277D0A6E8];
  if ((a1 & 1) == 0)
  {
    v16 = MEMORY[0x277D0A6F0];
  }

  v14(v8, *v16, v5, v11);
  static VerticalAlignment.center.getter();
  static HorizontalAlignment.center.getter();
  v17 = swift_allocObject();
  v18 = *(a2 + 48);
  *(v17 + 48) = *(a2 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a2 + 64);
  v19 = *(a2 + 16);
  *(v17 + 16) = *a2;
  *(v17 + 32) = v19;
  *(v17 + 81) = a1;
  outlined init with copy of MediaConfigurationRoomButtonPhone(a2, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA5GroupVyAA19_ConditionalContentVyAA5ImageVAA08ModifiedG0VyAiA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AKyAA0D0PAAE10fontWeightyQrAA4FontV0Q0VSgFQOyAKyAKyAA4TextVAMySiSgGGAMyAA0S9AlignmentOGG_Qo_AA016_ForegroundStyleM0VyAA017HierarchicalShapeV0VGGAA6SpacerVSgAKyAKyA1_A7_GA3_GSgtGMd);
  lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA5GroupVyAA19_ConditionalContentVyAA5ImageVAA08ModifiedG0VyAiA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AKyAA0D0PAAE10fontWeightyQrAA4FontV0Q0VSgFQOyAKyAKyAA4TextVAMySiSgGGAMyAA0S9AlignmentOGG_Qo_AA016_ForegroundStyleM0VyAA017HierarchicalShapeV0VGGAA6SpacerVSgAKyAKyA1_A7_GA3_GSgtGMd);
  AdaptiveStack.init(type:verticalAlignment:horizontalAlignment:spacing:content:)();
  v20 = v23;
  (*(v10 + 32))(v23, v13, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAnA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0I0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyACyACyAA4TextVAPySiSgGGAPyAA0V9AlignmentOGG_Qo_AA016_ForegroundStyleP0VyAA017HierarchicalShapeY0VGGAA6SpacerVSgACyACyA4_A10_GA6_GSgtGGAA01_d5ShapeP0VyAA9RectangleVGGMd);
  *(v20 + *(result + 36)) = 0;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in MediaConfigurationRoomButtonPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA0I9AlignmentOGG_Qo_Md);
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v65 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA0I9AlignmentOGG_Qo_AA016_ForegroundStyleM0VyAA017HierarchicalShapeP0VGGMd);
  MEMORY[0x28223BE20](v67);
  v74 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  MEMORY[0x28223BE20](v11);
  v77 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA5ImageVAA08ModifiedE0VyAgA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGGMd);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = a1;
  v76 = &v65 - v16;
  closure #1 in closure #1 in closure #2 in closure #1 in MediaConfigurationRoomButtonPhone.body.getter(a1);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v95._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB976C0;
  v19._countAndFlagsBits = 0xD000000000000020;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v95._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v95);

  v88 = v21;
  lazy protocol witness table accessor for type String and conformance String();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = a2 & 1;
  v72 = a2;
  v30 = a2 ^ 1;
  v31 = (a2 ^ 1) & 1;
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v94 = v26 & 1;
  v93 = v31;
  v88._countAndFlagsBits = v22;
  v88._object = v24;
  LOBYTE(v89) = v26 & 1;
  *(&v89 + 1) = v28;
  *&v90 = KeyPath;
  *(&v90 + 1) = v29;
  LOBYTE(v91) = v31;
  *(&v91 + 1) = v33;
  v92 = 1;
  v69 = v30;
  if (v30)
  {
    static Font.Weight.bold.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
  v34 = v68;
  View.fontWeight(_:)();
  v86[2] = v90;
  v86[3] = v91;
  v87 = v92;
  v86[0] = v88;
  v86[1] = v89;
  _sSo8NSObjectCSgWOhTm_3(v86, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMd);
  v35 = static HierarchicalShapeStyle.primary.getter();
  (*(v70 + 32))(v10, v34, v71);
  *&v10[*(v67 + 36)] = v35;
  outlined init with take of ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v10, v77, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA0I9AlignmentOGG_Qo_AA016_ForegroundStyleM0VyAA017HierarchicalShapeP0VGGMd);
  v36 = MediaConfigurationRoomButtonPhone.description()();
  if (v39)
  {
    v40 = v36;
    v41 = v37;
    v42 = v38;
    LODWORD(v84[0]) = static HierarchicalShapeStyle.secondary.getter();
    LOBYTE(v79) = v42 & 1;
    v75 = Text.foregroundStyle<A>(_:)();
    v70 = v44;
    v71 = v43;
    v46 = v45;
    outlined consume of Text.Storage(v40, v41, v42 & 1);

    v68 = swift_getKeyPath();
    v47 = swift_getKeyPath();
    LOBYTE(v84[0]) = v46 & 1;
    LOBYTE(v79) = 0;
    v66 = v46 & 1;
    v67 = v47;
    v48 = 1;
  }

  else
  {
    v75 = 0;
    v70 = 0;
    v71 = 0;
    v67 = 0;
    v68 = 0;
    v48 = 0;
    v66 = 0;
  }

  LODWORD(v72) = v72 & 1;
  v49 = v78;
  outlined init with copy of Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>(v76, v78, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA5ImageVAA08ModifiedE0VyAgA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGGMd);
  v50 = v77;
  v51 = v74;
  outlined init with copy of ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>(v77, v74, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA0I9AlignmentOGG_Qo_AA016_ForegroundStyleM0VyAA017HierarchicalShapeP0VGGMd);
  v52 = v73;
  outlined init with copy of Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>(v49, v73, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA5ImageVAA08ModifiedE0VyAgA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGGMd);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA5ImageVAA08ModifiedE0VyAgA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AIyAA4ViewPAAE10fontWeightyQrAA4FontV0P0VSgFQOyAIyAIyAA4TextVAKySiSgGGAKyAA0R9AlignmentOGG_Qo_AA016_ForegroundStyleK0VyAA017HierarchicalShapeU0VGGAA6SpacerVSgAIyAIyA_A5_GA1_GSgtMd);
  outlined init with copy of ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>(v51, v52 + v53[12], &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA0I9AlignmentOGG_Qo_AA016_ForegroundStyleM0VyAA017HierarchicalShapeP0VGGMd);
  v54 = v52 + v53[16];
  *v54 = 0;
  *(v54 + 8) = v72;
  *(v54 + 9) = v69 & 1;
  v55 = v52 + v53[20];
  v56 = v75;
  v57 = v70;
  v58 = v71;
  *&v79 = v75;
  *(&v79 + 1) = v71;
  v59 = v66;
  v60 = v67;
  *&v80 = v66;
  *(&v80 + 1) = v70;
  v61 = v68;
  *&v81 = v68;
  *(&v81 + 1) = v48;
  *&v82 = v67;
  *(&v82 + 1) = v48;
  v83 = 0;
  v62 = v82;
  *(v55 + 32) = v81;
  *(v55 + 48) = v62;
  *(v55 + 64) = 0;
  v63 = v80;
  *v55 = v79;
  *(v55 + 16) = v63;
  outlined init with copy of Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>(&v79, v84, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGySiSgGGSgMd);
  outlined destroy of ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier>(v50, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA0I9AlignmentOGG_Qo_AA016_ForegroundStyleM0VyAA017HierarchicalShapeP0VGGMd);
  _sSo8NSObjectCSgWOhTm_3(v76, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA5ImageVAA08ModifiedE0VyAgA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGGMd);
  v84[0] = v56;
  v84[1] = v58;
  v84[2] = v59;
  v84[3] = v57;
  v84[4] = v61;
  v84[5] = v48;
  v84[6] = v60;
  v84[7] = v48;
  v85 = 0;
  _sSo8NSObjectCSgWOhTm_3(v84, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGySiSgGGSgMd);
  outlined destroy of ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier>(v51, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA0I9AlignmentOGG_Qo_AA016_ForegroundStyleM0VyAA017HierarchicalShapeP0VGGMd);
  return _sSo8NSObjectCSgWOhTm_3(v78, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA5ImageVAA08ModifiedE0VyAgA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGGMd);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in MediaConfigurationRoomButtonPhone.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = (&v17 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA5ImageVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGG_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = (&v17 - v6);
  v19 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.wrappedValue.getter();
  v8 = v18;
  if (v18 && (v9 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter(), v8, (v9 & 1) != 0))
  {
    *v7 = Image.init(_internalSystemName:)();
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v11 = Image.init(systemName:)();
    KeyPath = swift_getKeyPath();
    v13 = (v4 + *(v2 + 36));
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd) + 28);
    v15 = *MEMORY[0x277CDFA88];
    v16 = type metadata accessor for LayoutDirection();
    (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
    *v13 = KeyPath;
    *v4 = v11;
    outlined init with copy of Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>(v4, v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return _sSo8NSObjectCSgWOhTm_3(v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
  }
}

uint64_t closure #4 in closure #1 in MediaConfigurationRoomButtonPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v65 - v4;
  v74 = type metadata accessor for Font.TextStyle();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGMd);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGMd);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v66);
  v18 = &v65 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGMd);
  MEMORY[0x28223BE20](v68);
  v20 = &v65 - v19;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  MEMORY[0x28223BE20](v67);
  v22 = &v65 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v70);
  v69 = &v65 - v23;
  closure #1 in closure #4 in closure #1 in MediaConfigurationRoomButtonPhone.body.getter(a1);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>(v8, v12, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGMd);
  v24 = &v12[*(v10 + 44)];
  v25 = v83;
  *(v24 + 4) = v82;
  *(v24 + 5) = v25;
  *(v24 + 6) = v84;
  v26 = v79;
  *v24 = v78;
  *(v24 + 1) = v26;
  v27 = v81;
  *(v24 + 2) = v80;
  *(v24 + 3) = v27;
  LOBYTE(v10) = static Edge.Set.all.getter();
  outlined init with take of Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>(v12, v16, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGMd);
  v28 = &v16[*(v14 + 44)];
  *v28 = v10;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  type metadata accessor for NLSessionActivityGoal();
  v29 = static NLSessionActivityGoal.makeOpenGoal()();
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    v30 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v31 = [v30 colorWithAlphaComponent_];
  }

  else
  {
    _HKWorkoutGoalType.platterColor.getter([v29 goalTypeIdentifier]);
  }

  Color.init(uiColor:)();
  v77 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.wrappedValue.getter();
  v32 = v76;
  if (v76)
  {
    dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();
  }

  v33 = Color.opacity(_:)();

  v34 = static Edge.Set.all.getter();
  outlined init with take of Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>(v16, v18, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGMd);
  v35 = &v18[*(v66 + 36)];
  *v35 = v33;
  v35[8] = v34;
  static Color.white.getter();
  v77 = *(a1 + 16);
  State.wrappedValue.getter();
  v36 = v76;
  if (v76)
  {
    dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();
  }

  v37 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  outlined init with take of Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>(v18, v20, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGMd);
  v39 = &v20[*(v68 + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  v40 = &v22[*(v67 + 36)];
  v41 = *(type metadata accessor for RoundedRectangle() + 20);
  v42 = *MEMORY[0x277CE0118];
  v43 = type metadata accessor for RoundedCornerStyle();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  __asm { FMOV            V0.2D, #16.0 }

  *v40 = _Q0;
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  outlined init with take of Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>(v20, v22, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGMd);
  v49 = v72;
  v50 = v71;
  v51 = v74;
  (*(v72 + 104))(v71, *MEMORY[0x277CE0A68], v74);
  v52 = *MEMORY[0x277CE0990];
  v53 = type metadata accessor for Font.Design();
  v54 = *(v53 - 8);
  v55 = v73;
  (*(v54 + 104))(v73, v52, v53);
  (*(v54 + 56))(v55, 0, 1, v53);
  static Font.system(_:design:weight:)();
  _sSo8NSObjectCSgWOhTm_3(v55, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v49 + 8))(v50, v51);
  static Font.Weight.semibold.getter();
  v56 = Font.weight(_:)();

  v57 = swift_getKeyPath();
  v58 = v69;
  outlined init with take of Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>(v22, v69, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v59 = (v58 + *(v70 + 36));
  *v59 = v57;
  v59[1] = v56;
  v60 = static Color.primary.getter();
  v61 = swift_getKeyPath();
  v62 = v75;
  outlined init with take of Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>(v58, v75, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGA2_GMd);
  v64 = (v62 + *(result + 36));
  *v64 = v61;
  v64[1] = v60;
  return result;
}

uint64_t closure #1 in closure #4 in closure #1 in MediaConfigurationRoomButtonPhone.body.getter(Swift::String *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAL_GMd);
  MEMORY[0x28223BE20](v2);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  v21[1] = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.wrappedValue.getter();
  countAndFlagsBits = v21[0]._countAndFlagsBits;
  if (v21[0]._countAndFlagsBits && (v9 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter(), countAndFlagsBits, (v9 & 1) != 0))
  {
    v22 = Image.init(_internalSystemName:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v23._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000017;
    v11._object = 0x800000020CB97710;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v23);

    v21[0] = v14;
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();
  }

  else
  {
    v22 = Image.init(systemName:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v24._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD00000000000001BLL;
    v16._object = 0x800000020CB976F0;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v24);

    v21[0] = v19;
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();
  }

  outlined init with copy of Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>(v7, v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return _sSo8NSObjectCSgWOhTm_3(v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
}

void closure #5 in closure #1 in MediaConfigurationRoomButtonPhone.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.wrappedValue.getter();
  if (!v1 || (v0 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter(), v1, (v0 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.setter();
  }
}

uint64_t closure #2 in MediaConfigurationRoomButtonPhone.body.getter(uint64_t a1)
{
  *(v1 + 88) = type metadata accessor for MainActor();
  *(v1 + 96) = static MainActor.shared.getter();
  v3 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v3;
  *(v1 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = swift_task_alloc();
  *(v1 + 104) = v5;
  *v5 = v1;
  v5[1] = closure #2 in MediaConfigurationRoomButtonPhone.body.getter;

  return MediaConfigurationRoomButtonPhone.loadMediaConfiguration()();
}

uint64_t closure #2 in MediaConfigurationRoomButtonPhone.body.getter()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MediaConfigurationRoomButtonPhone.body.getter, v1, v0);
}

uint64_t MediaConfigurationRoomButtonPhone.loadMediaConfiguration()()
{
  v2 = type metadata accessor for MediaPlaybackStoreError();
  *(v1 + 456) = v2;
  *(v1 + 464) = *(v2 - 8);
  *(v1 + 472) = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  *(v1 + 480) = v3;
  *(v1 + 488) = *(v3 - 8);
  *(v1 + 496) = swift_task_alloc();
  *(v1 + 504) = swift_task_alloc();
  *(v1 + 512) = swift_task_alloc();
  *(v1 + 520) = swift_task_alloc();
  *(v1 + 528) = swift_task_alloc();
  v4 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v4;
  *(v1 + 80) = *(v0 + 64);
  v5 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v5;
  type metadata accessor for MainActor();
  *(v1 + 536) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 544) = v7;
  *(v1 + 552) = v6;

  return MEMORY[0x2822009F8](MediaConfigurationRoomButtonPhone.loadMediaConfiguration(), v7, v6);
}

{
  v21 = v0;
  static WOLog.mediaPlayback.getter();
  outlined init with copy of MediaConfigurationRoomButtonPhone(v0 + 16, v0 + 88);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of MediaConfigurationRoomButtonPhone(v0 + 16);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 528);
  v6 = *(v0 + 480);
  v5 = *(v0 + 488);
  if (v3)
  {
    v18 = *(v0 + 528);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = [*(v0 + 16) localizedName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_20C66F000, v1, v2, "Searching for media config for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F30E080](v8, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);

    v14 = *(v5 + 8);
    v14(v18, v6);
  }

  else
  {

    v14 = *(v5 + 8);
    v14(v4, v6);
  }

  *(v0 + 560) = v14;
  v15 = *(v0 + 16);
  *(v0 + 568) = v15;
  v19 = (*MEMORY[0x277D7E2C8] + MEMORY[0x277D7E2C8]);
  v16 = swift_task_alloc();
  *(v0 + 576) = v16;
  *v16 = v0;
  v16[1] = MediaConfigurationRoomButtonPhone.loadMediaConfiguration();

  return v19(v15);
}

{
  v28 = v0;
  v1 = v0[74];

  v2 = v0[4];
  v3 = v0[5];
  v0[49] = v2;
  v0[50] = v3;
  v0[54] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.wrappedValue.setter();
  static WOLog.mediaPlayback.getter();
  outlined init with copy of MediaConfigurationRoomButtonPhone((v0 + 2), (v0 + 38));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of MediaConfigurationRoomButtonPhone((v0 + 2));
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[71];
    v25 = v0[65];
    v26 = v0[70];
    v24 = v0[60];
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v7 = 136315394;
    v8 = [v6 localizedName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v27);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v0[51] = v2;
    v0[52] = v3;
    State.wrappedValue.getter();
    v13 = v0[55];
    v0[56] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore30MediaPlaybackConfigurationItemCSgMd);
    v14 = Optional.debugDescription.getter();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v27);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_20C66F000, v4, v5, "Found %s media playback configuration: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v23, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);

    v26(v25, v24);
  }

  else
  {
    v18 = v0[70];
    v19 = v0[65];
    v20 = v0[60];

    v18(v19, v20);
  }

  v21 = v0[1];

  return v21();
}

{
  v53 = v0;
  v1 = *(v0 + 584);

  *(v0 + 424) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 464) + 88))(*(v0 + 472), *(v0 + 456));
    if (v3 == *MEMORY[0x277D7E3F8])
    {

      static WOLog.mediaPlayback.getter();
      outlined init with copy of MediaConfigurationRoomButtonPhone(v0 + 16, v0 + 232);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      outlined destroy of MediaConfigurationRoomButtonPhone(v0 + 16);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v0 + 568);
        v48 = *(v0 + 512);
        v50 = *(v0 + 560);
        v7 = *(v0 + 480);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v52 = v9;
        *v8 = 136315138;
        v10 = [v6 localizedName];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v52);

        *(v8 + 4) = v14;
        _os_log_impl(&dword_20C66F000, v4, v5, "No media configuration found for %s, Creating new configuration", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x20F30E080](v9, -1, -1);
        MEMORY[0x20F30E080](v8, -1, -1);

        v50(v48, v7);
      }

      else
      {
        v22 = *(v0 + 560);
        v23 = *(v0 + 512);
        v24 = *(v0 + 480);

        v22(v23, v24);
      }

LABEL_10:

      goto LABEL_15;
    }

    if (v3 == *MEMORY[0x277D7E400])
    {

      static WOLog.mediaPlayback.getter();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_20C66F000, v15, v16, "Unable to play selected media suggestion on device - displaying warning", v17, 2u);
        MEMORY[0x20F30E080](v17, -1, -1);
      }

      v18 = *(v0 + 560);
      v19 = *(v0 + 504);
      v20 = *(v0 + 480);

      v18(v19, v20);
      v21 = *(v0 + 72);
      *(v0 + 376) = *(v0 + 64);
      *(v0 + 384) = v21;
      *(v0 + 81) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.wrappedValue.setter();
      goto LABEL_10;
    }

    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
  }

  v25 = *(v0 + 584);

  static WOLog.mediaPlayback.getter();
  outlined init with copy of MediaConfigurationRoomButtonPhone(v0 + 16, v0 + 160);
  v26 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  outlined destroy of MediaConfigurationRoomButtonPhone(v0 + 16);

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 584);
  if (v29)
  {
    v31 = *(v0 + 568);
    v49 = *(v0 + 496);
    v51 = *(v0 + 560);
    v47 = *(v0 + 480);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v52 = v34;
    *v32 = 136315394;
    v35 = [v31 localizedName];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v52);

    *(v32 + 4) = v39;
    *(v32 + 12) = 2112;
    v40 = v30;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v41;
    *v33 = v41;
    _os_log_impl(&dword_20C66F000, v27, v28, "Failed to fetch %s media playback configuration with error: %@", v32, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v33, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x20F30E080](v34, -1, -1);
    MEMORY[0x20F30E080](v32, -1, -1);

    v51(v49, v47);
  }

  else
  {
    v42 = *(v0 + 560);
    v43 = *(v0 + 496);
    v44 = *(v0 + 480);

    v42(v43, v44);
  }

LABEL_15:

  v45 = *(v0 + 8);

  return v45();
}

uint64_t MediaConfigurationRoomButtonPhone.loadMediaConfiguration()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {
    v5 = v4[69];
    v6 = v4[68];
    v7 = MediaConfigurationRoomButtonPhone.loadMediaConfiguration();
  }

  else
  {
    v4[74] = a1;
    v5 = v4[69];
    v6 = v4[68];
    v7 = MediaConfigurationRoomButtonPhone.loadMediaConfiguration();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t closure #3 in MediaConfigurationRoomButtonPhone.body.getter()
{
  type metadata accessor for MediaConfigurationRoom();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type MediaConfigurationRoom and conformance MediaConfigurationRoom, type metadata accessor for MediaConfigurationRoom);
  return NavigationView.init(content:)();
}

uint64_t closure #4 in MediaConfigurationRoomButtonPhone.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.mediaPlayback.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20C66F000, v10, v11, "Recieved media configurations updated notifications, reloading media configuration room button.", v12, 2u);
    MEMORY[0x20F30E080](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v20[0] = *(a2 + 16);
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.wrappedValue.setter();
  static TaskPriority.userInitiated.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  type metadata accessor for MainActor();
  outlined init with copy of MediaConfigurationRoomButtonPhone(a2, v20);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v17 = *(a2 + 48);
  *(v15 + 64) = *(a2 + 32);
  *(v15 + 80) = v17;
  *(v15 + 96) = *(a2 + 64);
  v18 = *(a2 + 16);
  *(v15 + 32) = *a2;
  *(v15 + 48) = v18;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in MediaConfigurationRoomButtonPhone.resetMediaConfiguration(), v15);
}

uint64_t closure #1 in MediaConfigurationRoomButtonPhone.resetMediaConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = type metadata accessor for MainActor();
  *(v4 + 96) = static MainActor.shared.getter();
  v6 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v6;
  *(v4 + 80) = *(a4 + 64);
  v7 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = swift_task_alloc();
  *(v4 + 104) = v8;
  *v8 = v4;
  v8[1] = closure #1 in MediaConfigurationRoomButtonPhone.resetMediaConfiguration();

  return MediaConfigurationRoomButtonPhone.loadMediaConfiguration()();
}

uint64_t closure #1 in MediaConfigurationRoomButtonPhone.resetMediaConfiguration()()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomButtonPhone.resetMediaConfiguration(), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in MediaConfigurationRoomButtonPhone.body.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #2 in MediaConfigurationRoomButtonPhone.body.getter;

  return closure #2 in MediaConfigurationRoomButtonPhone.body.getter(v0 + 16);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyACyACyACyACyACyAA0K0VyACy07FitnessB013AdaptiveStackVyAA05TupleG0VyAEyAGyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAiAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundiT0VyAA017HierarchicalShapeI0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainkI0VQo_AA011_BackgroundT0VyAA06_ShapeG0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGACyAiAE12onTapGesture5count7performQrSi_yyctFQOyAiAEAJyQrqd__AaKRd__lFQOyAMyACyACyACyACyACyACyACyAEyAGyACyAtA023AccessibilityAttachmentT0VGA73_GGA46_GA49_GAA011_BackgroundiT0VyA42_GGAVyA42_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA39_GA83_GG_A53_Qo__Qo_A65_yA88_GGGSgGAA05_TaskT0VGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?> and conformance <A> Group<A>();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAGyAGyAGyAGyAGyAA0K0VyAGy07FitnessB013AdaptiveStackVyAA05TupleG0VyACyAEyAA5ImageVAGyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AGyAiAE10fontWeightyQrAA4FontV0X0VSgFQOyAGyAGyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundiT0VyAA017HierarchicalShapeI0VGGAA6SpacerVSgAGyAGyA8_A14_GA10_GSgtGGAA01_e5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainkI0VQo_AA011_BackgroundT0VyAA06_ShapeG0VyAA8AnyShapeVA42_GGGAA01_e9ShapeKindT0VyA60_GGAGyAiAE12onTapGesture5count7performQrSi_yyctFQOyAiAEAJyQrqd__AaKRd__lFQOyAMyAGyAGyAGyAGyAGyAGyAGyACyAEyAGyAtA023AccessibilityAttachmentT0VGA73_GGA46_GA49_GAA011_BackgroundiT0VyA42_GGAVyA42_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA39_GA83_GG_A53_Qo__Qo_A65_yA88_GGGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAEyAEyAEyAEyAEyAA0J0VyAEy07FitnessB013AdaptiveStackVyAA05TupleF0VyAA5GroupVyACyAA5ImageVAEyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AEyAgAE10fontWeightyQrAA4FontV0X0VSgFQOyAEyAEyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundhT0VyAA017HierarchicalShapeH0VGGAA6SpacerVSgAEyAEyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainjH0VQo_AA011_BackgroundT0VyAA06_ShapeF0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGAEyAgAE12onTapGesture5count7performQrSi_yyctFQOyAgAEAHyQrqd__AaIRd__lFQOyAKyAEyAEyAEyAEyAEyAEyAEyARyACyAEyAtA023AccessibilityAttachmentT0VGA73_GGA46_GA49_GAA011_BackgroundhT0VyA42_GGAVyA42_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA39_GA83_GG_A53_Qo__Qo_A65_yA88_GGGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAEyAEyAEyAEyAEyAA0J0VyAEy07FitnessB013AdaptiveStackVyAA05TupleF0VyAA5GroupVyACyAA5ImageVAEyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AEyAgAE10fontWeightyQrAA4FontV0X0VSgFQOyAEyAEyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundhT0VyAA017HierarchicalShapeH0VGGAA6SpacerVSgAEyAEyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainjH0VQo_AA011_BackgroundT0VyAA06_ShapeF0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGAEyAgAE12onTapGesture5count7performQrSi_yyctFQOyAgAEAHyQrqd__AaIRd__lFQOyAKyAEyAEyAEyAEyAEyAEyAEyARyACyAEyAtA023AccessibilityAttachmentT0VGA73_GGA46_GA49_GAA011_BackgroundhT0VyA42_GGAVyA42_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA39_GA83_GG_A53_Qo__Qo_A65_yA88_GGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyACyACyACyAA0I0VyACy07FitnessB013AdaptiveStackVyAA05TupleE0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAeAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundgT0VyAA017HierarchicalShapeG0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA8AnyShapeVA42_GGGAA01_d9ShapeKindT0VyA60_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<AnyShape> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA03AnyD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyACyACyACyAA0I0VyACy07FitnessB013AdaptiveStackVyAA05TupleE0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAtA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAeAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAA4TextVAVySiSgGGAVyAA0Z9AlignmentOGG_Qo_AA011_ForegroundgT0VyAA017HierarchicalShapeG0VGGAA6SpacerVSgACyACyA8_A14_GA10_GSgtGGAA01_d5ShapeT0VyAA9RectangleVGGGAVyA3_SgGGA18_yAA5ColorVGGAA010_FlexFrameU0VGAA08_PaddingU0VGA49_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA8AnyShapeVA42_GGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGAA08_PaddingR0VGA47_GMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGAA08_PaddingR0VGA47_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGAA08_PaddingR0VGA47_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<AnyShape, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA03AnyE0VAA5ColorVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGAA010_FlexFrameR0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGA16_yAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyACyACyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgACyACyA6_A12_GA8_GSgtGGAA01_d5ShapeQ0VyAA9RectangleVGGGARyA1_SgGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalE0VyAA5ImageVAEyApA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_AEyAA0J0PAAE10fontWeightyQrAA4FontV0U0VSgFQOyAEyAEyAA4TextVARySiSgGGARyAA0W9AlignmentOGG_Qo_AA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGAA6SpacerVSgAEyAEyA6_A12_GA8_GSgtGGAA01_e5ShapeQ0VyAA9RectangleVGGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in MediaConfigurationRoomButtonPhone.resetMediaConfiguration()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in MediaConfigurationRoomButtonPhone.resetMediaConfiguration();

  return closure #1 in MediaConfigurationRoomButtonPhone.resetMediaConfiguration()(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in MediaConfigurationRoomButtonPhone.resetMediaConfiguration()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGA2_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGAA022_EnvironmentKeyWritingJ0VyAXSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA016_BackgroundStyleJ0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA31AccessibilityAttachmentModifierVGALGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07FitnessB013AdaptiveStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAA5ImageVACyAnA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGGG_ACyAA0I0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyACyACyAA4TextVAPySiSgGGAPyAA0V9AlignmentOGG_Qo_AA016_ForegroundStyleP0VyAA017HierarchicalShapeY0VGGAA6SpacerVSgACyACyA4_A10_GA6_GSgtGGAA01_d5ShapeP0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>> and conformance AdaptiveStack<A>, &_s9FitnessUI13AdaptiveStackVy05SwiftB09TupleViewVyAD5GroupVyAD19_ConditionalContentVyAD5ImageVAD08ModifiedJ0VyAlD30_EnvironmentKeyWritingModifierVyAD15LayoutDirectionOGGGG_ANyAD0G0PADE10fontWeightyQrAD4FontV0T0VSgFQOyANyANyAD4TextVAPySiSgGGAPyAD0V9AlignmentOGG_Qo_AD016_ForegroundStyleP0VyAD017HierarchicalShapeY0VGGAD6SpacerVSgANyANyA4_A10_GA6_GSgtGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_46()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<AnyShape, Color>>>, _ContentShapeKindModifier<AnyShape>>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>>?>, _TaskModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSo8NSObjectCSgWOhTm_3(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t DistanceDetailMetricView.init(distance:formattingManager:distanceType:distanceUnit:metricType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = a7;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4 & 1;
  *(a6 + 40) = a5;
  return result;
}

uint64_t DistanceDetailMetricView.detailFormat.getter()
{
  result = *(v0 + 40);
  if (result > 34)
  {
    if (result == 35)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v3 = WorkoutUIBundle.super.isa;
      v11 = 0xE000000000000000;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v7 = 0x800000020CB9B3E0;
      v6 = 0xD00000000000001CLL;
      goto LABEL_17;
    }

    if (result == 42)
    {
      v2 = "tation to play during a workout";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v3 = WorkoutUIBundle.super.isa;
      v11 = 0xE000000000000000;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xD00000000000001FLL;
      goto LABEL_12;
    }

    return 0x6E776F6E6B6E550ALL;
  }

  if (!result)
  {
    return result;
  }

  if (result != 22)
  {
    return 0x6E776F6E6B6E550ALL;
  }

  v2 = "SPLIT_DISTANCE_METRIC_DETAIL";
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = WorkoutUIBundle.super.isa;
  v11 = 0xE000000000000000;
  v4 = 0x617A696C61636F4CLL;
  v5 = 0xEB00000000656C62;
  v6 = 0xD00000000000001ELL;
LABEL_12:
  v7 = v2 | 0x8000000000000000;
LABEL_17:
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v4, v3, v8, *(&v11 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t DistanceDetailMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = v1[1];
  result = DistanceDetailMetricView.detailFormat.getter();
  *a1 = v3;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = result;
  *(a1 + 48) = v9;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance DistanceDetailMetricView@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = v1[1];
  result = DistanceDetailMetricView.detailFormat.getter();
  *a1 = v3;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = result;
  *(a1 + 48) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for DistanceDetailMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for DistanceDetailMetricView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SessionControls.execute(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v11 = *a1;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v7 = (*(a3 + 24))(&v11);
  if (v7)
  {
    v8 = v7;
    v7();

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F30BC00](0xD000000000000012, 0x800000020CB9B440);
    swift_getDynamicType();
    v10 = _typeName(_:qualified:)();
    MEMORY[0x20F30BC00](v10);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

BOOL SessionControls.supports(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v5 = (*(a3 + 24))(&v8);
  v6 = v5;
  if (v5)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
  }

  return v6 != 0;
}

WorkoutUI::RaceCompleteRaceTimeMetricView __swiftcall RaceCompleteRaceTimeMetricView.init(raceTime:didWinRace:)(Swift::Double raceTime, Swift::Bool didWinRace)
{
  *v2 = raceTime;
  *(v2 + 8) = didWinRace;
  result.raceTime = raceTime;
  result.didWinRace = didWinRace;
  return result;
}

uint64_t RaceCompleteRaceTimeMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration.TimeFormatStyle();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v1 + 8);
  static Duration.seconds(_:)();
  v29[1] = v14;
  (*(v4 + 104))(v6, *MEMORY[0x277D84670], v3);
  static Duration.TimeFormatStyle.Pattern.hourMinuteSecond(padHourToLength:fractionalSecondsLength:roundFractionalSeconds:)();
  (*(v4 + 8))(v6, v3);
  static FormatStyle<>.time(pattern:)();
  (*(v7 + 8))(v9, v30);
  lazy protocol witness table accessor for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle();
  Duration.formatted<A>(_:)();
  (*(v11 + 8))(v13, v10);
  v32 = v34;
  v33 = v35;
  lazy protocol witness table accessor for type String and conformance String();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  LOBYTE(v3) = v18;
  v20 = v19;
  KeyPath = swift_getKeyPath();
  v22 = v3 & 1;
  LOBYTE(v34) = v3 & 1;
  LOBYTE(v32) = 0;
  v23 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v31 == 1)
  {
    v24 = 0.62745098;
    v25 = 0.0;
    v26 = 1.0;
  }

  else
  {
    v26 = 0.407843137;
    v24 = 0.321568627;
    v25 = 1.0;
  }

  [v23 initWithRed:v25 green:v26 blue:v24 alpha:1.0];
  v27 = Color.init(uiColor:)();
  result = swift_getKeyPath();
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v22;
  *(a1 + 24) = v20;
  *(a1 + 32) = 256;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = result;
  *(a1 + 64) = v27;
  return result;
}

uint64_t getEnumTagSinglePayload for RaceCompleteRaceTimeMetricView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RaceCompleteRaceTimeMetricView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd);
    lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t GuidedWorkoutPickerItem.ItemType.hash(into:)()
{
  v1 = type metadata accessor for CatalogLockup();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GuidedWorkoutPickerItem.ItemType(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI06GuidedA10PickerItemV8TileTypeO04tileG0_11SeymourCore13CatalogLockupV07catalogL0tMd);
    (*(v2 + 32))(v4, &v7[*(v10 + 48)], v1);
    MEMORY[0x20F30CD90](1);
    MEMORY[0x20F30CD90](v9);
    lazy protocol witness table accessor for type CatalogLockup and conformance CatalogLockup(&lazy protocol witness table cache variable for type CatalogLockup and conformance CatalogLockup, MEMORY[0x277D504F8]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    MEMORY[0x20F30CD90](0);
    MEMORY[0x20F30CD90](v9);
    String.hash(into:)();
  }
}

Swift::Int GuidedWorkoutPickerItem.ItemType.hashValue.getter()
{
  Hasher.init(_seed:)();
  GuidedWorkoutPickerItem.ItemType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GuidedWorkoutPickerItem.ItemType()
{
  Hasher.init(_seed:)();
  GuidedWorkoutPickerItem.ItemType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int GuidedWorkoutPickerItem.TileType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GuidedWorkoutPickerItem.TileType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GuidedWorkoutPickerItem.TileType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t GuidedWorkoutPickerItem.hash(into:)()
{
  v1 = type metadata accessor for CatalogLockup();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GuidedWorkoutPickerItem.ItemType(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI06GuidedA10PickerItemV8TileTypeO04tileG0_11SeymourCore13CatalogLockupV07catalogL0tMd);
    (*(v2 + 32))(v4, &v7[*(v9 + 48)], v1);
    MEMORY[0x20F30CD90](v8);
    CatalogLockup.identifier.getter();
    String.hash(into:)();

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    outlined destroy of GuidedWorkoutPickerItem.ItemType(v7);
    return GuidedWorkoutPickerItem.ItemType.hash(into:)();
  }
}

Swift::Int GuidedWorkoutPickerItem.hashValue.getter()
{
  v1 = type metadata accessor for CatalogLockup();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of GuidedWorkoutPickerItem.ItemType(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI06GuidedA10PickerItemV8TileTypeO04tileG0_11SeymourCore13CatalogLockupV07catalogL0tMd);
    (*(v2 + 32))(v4, &v7[*(v9 + 48)], v1);
    MEMORY[0x20F30CD90](v8);
    CatalogLockup.identifier.getter();
    String.hash(into:)();

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    outlined destroy of GuidedWorkoutPickerItem.ItemType(v7);
    GuidedWorkoutPickerItem.ItemType.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GuidedWorkoutPickerItem.ItemType(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t GuidedWorkoutPickerItem.ItemType.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CatalogLockup();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of GuidedWorkoutPickerItem.ItemType(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v8;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI06GuidedA10PickerItemV8TileTypeO04tileG0_11SeymourCore13CatalogLockupV07catalogL0tMd);
    (*(v3 + 32))(v5, &v8[*(v11 + 48)], v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    MEMORY[0x20F30BC00](0xD000000000000013, 0x800000020CB9B460);
    v18 = v10;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F30BC00](8236, 0xE200000000000000);
    lazy protocol witness table accessor for type CatalogLockup and conformance CatalogLockup(&lazy protocol witness table cache variable for type CatalogLockup and conformance CatalogLockup, MEMORY[0x277D504F8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F30BC00](v12);

    v13 = v19;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v14 = *(v8 + 1);
    v15 = *(v8 + 2);
    v19 = 0;
    v20 = 0xE000000000000000;
    MEMORY[0x20F30BC00](0x203A6E6F74747562, 0xE800000000000000);
    v18 = v10;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F30BC00](8236, 0xE200000000000000);
    MEMORY[0x20F30BC00](v14, v15);

    return v19;
  }

  return v13;
}

uint64_t specialized static GuidedWorkoutPickerItem.ItemType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogLockup();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI06GuidedA10PickerItemV0E4TypeO_AEtMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - v17;
  v20 = &v33 + *(v19 + 56) - v17;
  outlined init with copy of GuidedWorkoutPickerItem.ItemType(a1, &v33 - v17);
  outlined init with copy of GuidedWorkoutPickerItem.ItemType(a2, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of GuidedWorkoutPickerItem.ItemType(v18, v15);
    v27 = *(v15 + 1);
    v26 = *(v15 + 2);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_8;
    }

    if (*v15 != *v20)
    {

LABEL_11:
      outlined destroy of GuidedWorkoutPickerItem.ItemType(v18);
      goto LABEL_12;
    }

    if (v27 == *(v20 + 1) && v26 == *(v20 + 2))
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    outlined destroy of GuidedWorkoutPickerItem.ItemType(v18);
    v28 = 1;
    return v28 & 1;
  }

  outlined init with copy of GuidedWorkoutPickerItem.ItemType(v18, v12);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI06GuidedA10PickerItemV8TileTypeO04tileG0_11SeymourCore13CatalogLockupV07catalogL0tMd) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v12;
    v33 = *v20;
    v34 = v22;
    v23 = v35;
    v24 = *(v35 + 32);
    v24(v9, &v12[v21], v4);
    v24(v6, &v20[v21], v4);
    if (v34 == v33)
    {
      v28 = MEMORY[0x20F302F60](v9, v6);
      v30 = *(v23 + 8);
      v30(v6, v4);
      v30(v9, v4);
      outlined destroy of GuidedWorkoutPickerItem.ItemType(v18);
      return v28 & 1;
    }

    v25 = *(v23 + 8);
    v25(v6, v4);
    v25(v9, v4);
    goto LABEL_11;
  }

  (*(v35 + 8))(&v12[v21], v4);
LABEL_8:
  outlined destroy of (GuidedWorkoutPickerItem.ItemType, GuidedWorkoutPickerItem.ItemType)(v18);
LABEL_12:
  v28 = 0;
  return v28 & 1;
}

uint64_t outlined init with copy of GuidedWorkoutPickerItem.ItemType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GuidedWorkoutPickerItem.ItemType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static GuidedWorkoutPickerItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogLockup();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-v8];
  v10 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v36[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI06GuidedA10PickerItemV0E4TypeO_AEtMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36[-v17];
  v20 = &v36[*(v19 + 56) - v17];
  outlined init with copy of GuidedWorkoutPickerItem.ItemType(a1, &v36[-v17]);
  outlined init with copy of GuidedWorkoutPickerItem.ItemType(a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of GuidedWorkoutPickerItem.ItemType(v18, v12);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI06GuidedA10PickerItemV8TileTypeO04tileG0_11SeymourCore13CatalogLockupV07catalogL0tMd) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v12;
      v22 = *v20;
      v23 = *(v5 + 32);
      v23(v9, &v12[v21], v4);
      v24 = &v20[v21];
      v25 = v38;
      v23(v38, v24, v4);
      if (v37 == v22)
      {
        v29 = CatalogLockup.identifier.getter();
        v31 = v30;
        if (v29 == CatalogLockup.identifier.getter() && v31 == v32)
        {
          v26 = 1;
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v26 = 0;
      }

      v34 = *(v5 + 8);
      v34(v25, v4);
      v34(v9, v4);
      goto LABEL_24;
    }

    (*(v5 + 8))(&v12[v21], v4);
  }

  else
  {
    outlined init with copy of GuidedWorkoutPickerItem.ItemType(v18, v15);
    v28 = *(v15 + 1);
    v27 = *(v15 + 2);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (*v15 == *v20)
      {
        if (v28 == *(v20 + 1) && v27 == *(v20 + 2))
        {
          v26 = 1;
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v26 = 0;
      }

LABEL_24:
      outlined destroy of GuidedWorkoutPickerItem.ItemType(v18);
      return v26 & 1;
    }
  }

  outlined destroy of (GuidedWorkoutPickerItem.ItemType, GuidedWorkoutPickerItem.ItemType)(v18);
  v26 = 0;
  return v26 & 1;
}

uint64_t outlined destroy of GuidedWorkoutPickerItem.ItemType(uint64_t a1)
{
  v2 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CatalogLockup and conformance CatalogLockup(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type GuidedWorkoutPickerItem.TileType and conformance GuidedWorkoutPickerItem.TileType()
{
  result = lazy protocol witness table cache variable for type GuidedWorkoutPickerItem.TileType and conformance GuidedWorkoutPickerItem.TileType;
  if (!lazy protocol witness table cache variable for type GuidedWorkoutPickerItem.TileType and conformance GuidedWorkoutPickerItem.TileType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GuidedWorkoutPickerItem.TileType and conformance GuidedWorkoutPickerItem.TileType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GuidedWorkoutPickerItem.ButtonType and conformance GuidedWorkoutPickerItem.ButtonType()
{
  result = lazy protocol witness table cache variable for type GuidedWorkoutPickerItem.ButtonType and conformance GuidedWorkoutPickerItem.ButtonType;
  if (!lazy protocol witness table cache variable for type GuidedWorkoutPickerItem.ButtonType and conformance GuidedWorkoutPickerItem.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GuidedWorkoutPickerItem.ButtonType and conformance GuidedWorkoutPickerItem.ButtonType);
  }

  return result;
}

uint64_t type metadata accessor for GuidedWorkoutPickerItem.ItemType(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GuidedWorkoutPickerItem()
{
  result = type metadata accessor for GuidedWorkoutPickerItem.ItemType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for GuidedWorkoutPickerItem.ItemType()
{
  type metadata accessor for (buttonType: GuidedWorkoutPickerItem.ButtonType, title: String)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (tileType: GuidedWorkoutPickerItem.TileType, catalogLockup: CatalogLockup)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (buttonType: GuidedWorkoutPickerItem.ButtonType, title: String)()
{
  if (!lazy cache variable for type metadata for (buttonType: GuidedWorkoutPickerItem.ButtonType, title: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (buttonType: GuidedWorkoutPickerItem.ButtonType, title: String));
    }
  }
}

void type metadata accessor for (tileType: GuidedWorkoutPickerItem.TileType, catalogLockup: CatalogLockup)()
{
  if (!lazy cache variable for type metadata for (tileType: GuidedWorkoutPickerItem.TileType, catalogLockup: CatalogLockup))
  {
    type metadata accessor for CatalogLockup();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (tileType: GuidedWorkoutPickerItem.TileType, catalogLockup: CatalogLockup));
    }
  }
}

uint64_t getEnumTagSinglePayload for GuidedWorkoutPickerItem.TileType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GuidedWorkoutPickerItem.TileType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of (GuidedWorkoutPickerItem.ItemType, GuidedWorkoutPickerItem.ItemType)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI06GuidedA10PickerItemV0E4TypeO_AEtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ListRowBackgroundViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB0017ListRowBackgroundgH0VGAA013_TraitWritingH0VyAA0jklM3KeyVGGAM_GMd);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v48 - v6;
  v7 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v7);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0017ListRowBackgroundeF0VGAA013_TraitWritingF0VyAA0hijK3KeyVGGMd);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  if (*v2 == 1)
  {
    v49 = v22;
    v50 = &v48 - v21;
    if (static Solarium.isEnabled.getter())
    {
      v23 = 26.0;
    }

    else
    {
      v23 = 10.0;
    }

    v24 = *(v7 + 20);
    v25 = *MEMORY[0x277CE0118];
    v26 = type metadata accessor for RoundedCornerStyle();
    (*(*(v26 - 8) + 104))(v9 + v24, v25, v26);
    *v9 = v23;
    v9[1] = v23;
    LODWORD(v25) = static HierarchicalShapeStyle.tertiary.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    outlined init with copy of RoundedRectangle(v9, v12);
    v27 = *&v56 * 0.5;
    v28 = &v12[*(v10 + 68)];
    outlined init with copy of RoundedRectangle(v9, v28);
    *(v28 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v27;
    v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMd) + 36);
    v30 = v57;
    *v29 = v56;
    *(v29 + 16) = v30;
    *(v29 + 32) = v58;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalC5StyleVGMd);
    *(v28 + *(v31 + 52)) = v25;
    *(v28 + *(v31 + 56)) = 256;
    v32 = static Alignment.center.getter();
    v34 = v33;
    outlined destroy of RoundedRectangle(v9);
    v35 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMd) + 36));
    *v35 = v32;
    v35[1] = v34;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    outlined init with take of StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>(v12, v18, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd);
    v36 = v53;
    v37 = &v18[*(v53 + 36)];
    v38 = v64;
    *(v37 + 4) = v63;
    *(v37 + 5) = v38;
    *(v37 + 6) = v65;
    v39 = v60;
    *v37 = v59;
    *(v37 + 1) = v39;
    v40 = v62;
    *(v37 + 2) = v61;
    *(v37 + 3) = v40;
    v41 = v52;
    (*(v52 + 56))(v18, 0, 1, v36);
    sub_20C6885C8(v18, v15);
    if ((*(v41 + 48))(v15, 1, v36) == 1)
    {
      sub_20C688638(v18);
      v42 = 0;
    }

    else
    {
      outlined init with take of StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>(v15, v51, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd);
      lazy protocol witness table accessor for type ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
      v42 = AnyView.init<A>(_:)();
      sub_20C688638(v18);
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0017ListRowBackgroundcD0VGMd);
    v46 = v49;
    (*(*(v45 - 8) + 16))(v49, v54, v45);
    *(v46 + *(v19 + 36)) = v42;
    v47 = v50;
    outlined init with take of ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v46, v50);
    outlined init with copy of ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v47, v5);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0017ListRowBackgroundcD0VGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v47);
  }

  else
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0017ListRowBackgroundcD0VGMd);
    (*(*(v43 - 8) + 16))(v5, v54, v43);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0017ListRowBackgroundcD0VGMd);
    return _ConditionalContent<>.init(storage:)();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0017ListRowBackgroundeF0VGAA013_TraitWritingF0VyAA0hijK3KeyVGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0017ListRowBackgroundcD0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0017ListRowBackgroundeF0VGAA013_TraitWritingF0VyAA0hijK3KeyVGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0017ListRowBackgroundeF0VGAA013_TraitWritingF0VyAA0hijK3KeyVGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0017ListRowBackgroundeF0VGAA013_TraitWritingF0VyAA0hijK3KeyVGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView> and conformance StrokeBorderShapeView<A, B, C>, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ListRowBackgroundViewModifier(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListRowBackgroundViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _ViewModifier_Content<ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _ViewModifier_Content<ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _ViewModifier_Content<ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB0017ListRowBackgroundfG0VGAA013_TraitWritingG0VyAA0ijkL3KeyVGGAKGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ListRowBackgroundViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0017ListRowBackgroundcD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ListRowBackgroundViewModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _ViewModifier_Content<ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void RingDetailView.init(ringType:value:goal:isWheelchairUser:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  v9 = objc_opt_self();
  v10 = [v9 currentDevice];
  v11 = specialized UIDevice.screenType.getter();

  v12 = dbl_20CB76F28[v11];
  v13 = objc_opt_self();
  v14 = [v13 mainScreen];
  [v14 scale];
  v16 = v15;

  v17 = [v13 mainScreen];
  [v17 nativeScale];
  v19 = v18;

  if (v16 != v19)
  {
    v20 = [v13 mainScreen];
    [v20 scale];
    v22 = v21;

    v23 = [v13 mainScreen];
    [v23 nativeScale];
    v25 = v24;

    v12 = v12 * (v22 / v25 * 0.95);
  }

  *(a3 + 48) = v12;
  v26 = [v9 currentDevice];
  v27 = specialized UIDevice.screenType.getter();

  v28 = dbl_20CB76F80[v27];
  v29 = [v13 mainScreen];
  [v29 scale];
  v31 = v30;

  v32 = [v13 mainScreen];
  [v32 nativeScale];
  v34 = v33;

  if (v31 != v34)
  {
    v35 = [v13 mainScreen];
    [v35 scale];
    v37 = v36;

    v38 = [v13 mainScreen];
    [v38 nativeScale];
    v40 = v39;

    v28 = v28 * (v37 / v40 * 0.95);
  }

  *(a3 + 56) = v28;
  v41 = [v9 currentDevice];
  v42 = specialized UIDevice.screenType.getter();

  v43 = dbl_20CB76FD8[v42];
  v44 = [v13 mainScreen];
  [v44 scale];
  v46 = v45;

  v47 = [v13 mainScreen];
  [v47 nativeScale];
  v49 = v48;

  if (v46 != v49)
  {
    v50 = [v13 mainScreen];
    [v50 scale];
    v52 = v51;

    v53 = [v13 mainScreen];
    [v53 nativeScale];
    v55 = v54;

    v43 = v43 * (v52 / v55 * 0.95);
  }

  *(a3 + 64) = v43;
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2 & 1;
}

uint64_t RingDetailView.valueOutOfGoalString.getter()
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v40 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v31 - v9;
  v11 = *(v0 + 8);
  v10 = *(v0 + 16);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v44._object = 0xE000000000000000;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._object = 0x800000020CB9B520;
  v14._countAndFlagsBits = 0xD000000000000011;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v44);
  object = v16._object;
  countAndFlagsBits = v16._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20CB5DA80;
  v41 = v11;
  static Locale.autoupdatingCurrent.getter();
  v39 = lazy protocol witness table accessor for type Double and conformance Double();
  v18 = v7;
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  v19 = v38;
  MEMORY[0x20F3024C0](v3, v5);
  v20 = *(v40 + 8);
  v40 += 8;
  v34 = v20;
  v20(v3, v1);
  v33 = v1;
  v21 = *(v35 + 8);
  v21(v18, v5);
  v32 = v21;
  v35 = lazy protocol witness table accessor for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
  BinaryFloatingPoint.formatted<A>(_:)();
  v21(v19, v5);
  v22 = v42;
  v23 = v43;
  *(v17 + 56) = MEMORY[0x277D837D0];
  v24 = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 64) = v24;
  *(v17 + 32) = v22;
  *(v17 + 40) = v23;
  v41 = v10;
  static Locale.autoupdatingCurrent.getter();
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  MEMORY[0x20F3024C0](v3, v5);
  v34(v3, v33);
  v25 = v18;
  v26 = v32;
  v32(v25, v5);
  BinaryFloatingPoint.formatted<A>(_:)();
  v26(v19, v5);
  v27 = v42;
  v28 = v43;
  *(v17 + 96) = MEMORY[0x277D837D0];
  *(v17 + 104) = v24;
  *(v17 + 72) = v27;
  *(v17 + 80) = v28;
  v29 = static String.localizedStringWithFormat(_:_:)();

  return v29;
}

Swift::String __swiftcall ARUIRingType.name(isWheelchairUser:)(Swift::Bool isWheelchairUser)
{
  if (v1 > 1)
  {
    if (v1 == 3)
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
      goto LABEL_23;
    }

    if (v1 == 2)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v2 = WorkoutUIBundle.super.isa;
      v20 = 0xE000000000000000;
      v5 = 0x4E49525F45564F4DLL;
      v6 = 0xEF454C5449545F47;
      v3 = 0x617A696C61636F4CLL;
      v4 = 0xEB00000000656C62;
      goto LABEL_12;
    }

LABEL_13:
    object = 0xE700000000000000;
    countAndFlagsBits = 0x6E776F6E6B6E55;
    goto LABEL_23;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v2 = WorkoutUIBundle.super.isa;
      v20 = 0xE000000000000000;
      v3 = 0x617A696C61636F4CLL;
      v4 = 0xEB00000000656C62;
      v5 = 0xD000000000000013;
      v6 = 0x800000020CB9B500;
LABEL_12:
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      v8 = 0;
      v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, *&v3, v2, v7, *(&v20 - 1));

      object = v9._object;
      countAndFlagsBits = v9._countAndFlagsBits;
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  if (isWheelchairUser)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = WorkoutUIBundle.super.isa;
    v21 = 0xE000000000000000;
    v13 = 0xD00000000000001BLL;
    v14 = 0x800000020CB9B4E0;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = WorkoutUIBundle.super.isa;
    v21 = 0xE000000000000000;
    v14 = 0x800000020CB9B4C0;
    v13 = 0xD000000000000010;
  }

  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, v15, v12, v16, *(&v21 - 1));

  object = v18._object;
  countAndFlagsBits = v18._countAndFlagsBits;
LABEL_23:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t RingDetailView.accessibilityLabel.getter()
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v34 = v33 - v11;
  v13 = *(v0 + 8);
  v12 = *(v0 + 16);
  v14 = *(v0 + 24);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  v42._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._object = 0x800000020CB9B540;
  v17._countAndFlagsBits = 0xD000000000000015;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v42);
  v33[1] = v19._object;
  v33[2] = v19._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20CB5EA80;
  v21 = ARUIRingType.name(isWheelchairUser:)(v14);
  *(v20 + 56) = MEMORY[0x277D837D0];
  v38 = lazy protocol witness table accessor for type String and conformance String();
  *(v20 + 64) = v38;
  *(v20 + 32) = v21;
  v39 = v13;
  v33[0] = v6;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  v22 = v9;
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  v23 = v34;
  MEMORY[0x20F3024C0](v3, v7);
  v36 = *(v36 + 8);
  (v36)(v3, v37);
  v24 = *(v35 + 8);
  v24(v22, v7);
  v35 = lazy protocol witness table accessor for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
  BinaryFloatingPoint.formatted<A>(_:)();
  v24(v23, v7);
  v25 = v40;
  v26 = v41;
  v27 = v38;
  *(v20 + 96) = MEMORY[0x277D837D0];
  *(v20 + 104) = v27;
  *(v20 + 72) = v25;
  *(v20 + 80) = v26;
  v39 = v12;
  static Locale.autoupdatingCurrent.getter();
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  MEMORY[0x20F3024C0](v3, v7);
  (v36)(v3, v37);
  v24(v22, v7);
  BinaryFloatingPoint.formatted<A>(_:)();
  v24(v23, v7);
  v28 = v40;
  v29 = v41;
  v30 = v38;
  *(v20 + 136) = MEMORY[0x277D837D0];
  *(v20 + 144) = v30;
  *(v20 + 112) = v28;
  *(v20 + 120) = v29;
  v31 = static String.localizedStringWithFormat(_:_:)();

  return v31;
}

uint64_t RingDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA4TextV_AMtGG_Qo_Md);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAA4TextV_AOtGG_Qo_AA0I18AttachmentModifierVGMd);
  MEMORY[0x28223BE20](v43);
  v41 = &v37 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGAGyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0VyAA0I0V_A0_tGG_Qo_AA0r10AttachmentL0VG_GMd);
  MEMORY[0x28223BE20](v42);
  v10 = &v37 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[3];
  v62 = v1[2];
  v63 = v15;
  v64 = *(v1 + 8);
  v16 = v1[1];
  v60 = *v1;
  v61 = v16;
  if (BYTE8(v62))
  {
    if (v62 != 5)
    {
LABEL_3:
      v17 = static HorizontalAlignment.leading.getter();
      v18 = v64;
      LOBYTE(v47) = 0;
      closure #1 in RingDetailView.body.getter(&v60, v52);
      *&v51[55] = v53;
      *&v51[39] = v52[2];
      *&v51[23] = v52[1];
      *&v51[7] = v52[0];
      *&v50[17] = *&v51[16];
      *&v49 = v17;
      *(&v49 + 1) = v18;
      v50[0] = v47;
      *&v50[33] = *&v51[32];
      *&v50[49] = *&v51[48];
      *&v50[64] = *(&v53 + 1);
      *&v50[1] = *v51;
      static AccessibilityChildBehavior.ignore.getter();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
      v20 = lazy protocol witness table accessor for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
      View.accessibilityElement(children:)();
      (*(v37 + 8))(v4, v38);
      v56 = *&v50[16];
      v57 = *&v50[32];
      v58 = *&v50[48];
      v59 = *&v50[64];
      v54 = v49;
      v55 = *v50;
      outlined destroy of VStack<TupleView<(Text, Text)>>(&v54, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
      *&v50[16] = v62;
      *&v50[32] = v63;
      *&v50[48] = v64;
      v49 = v60;
      *v50 = v61;
      v47 = RingDetailView.accessibilityLabel.getter();
      v48 = v21;
      v45 = v19;
      v46 = v20;
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type String and conformance String();
      v23 = v40;
      v22 = v41;
      View.accessibilityLabel<A>(_:)();

      (*(v39 + 8))(v7, v23);
      sub_20C6886AC(v22, v10);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
      lazy protocol witness table accessor for type ModifiedContent<MetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return sub_20C68871C(v22);
    }
  }

  else
  {
    outlined init with copy of RingDetailView(&v60, &v54);
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of RingDetailView(&v60);
    (*(v12 + 8))(v14, v11);
    if (v54 != 5)
    {
      goto LABEL_3;
    }
  }

  v56 = v62;
  v57 = v63;
  *&v58 = v64;
  v54 = v60;
  v55 = v61;
  v26 = RingDetailView.valueOutOfGoalString.getter();
  v28 = v27;
  v29 = v60;
  v52[0] = ARUIRingType.name(isWheelchairUser:)(SBYTE8(v61));
  lazy protocol witness table accessor for type String and conformance String();
  v30 = StringProtocol.localizedUppercase.getter();
  v32 = v31;

  *&v50[16] = v62;
  *&v50[32] = v63;
  *&v50[48] = v64;
  v49 = v60;
  *v50 = v61;
  v33 = RingDetailView.accessibilityLabel.getter();
  v35 = v34;
  ARUIRingType.color.getter(v29);
  *v10 = v26;
  *(v10 + 1) = v28;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v30;
  *(v10 + 5) = v32;
  *(v10 + 24) = 256;
  *(v10 + 7) = v33;
  *(v10 + 8) = v35;
  *(v10 + 9) = v36;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<MetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  return _ConditionalContent<>.init(storage:)();
}

void ARUIRingType.color.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = [objc_opt_self() sedentaryColors];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 nonGradientTextColor];

        if (v9)
        {
          goto LABEL_16;
        }

LABEL_22:
        __break(1u);
        return;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (a1 != 1)
    {
LABEL_11:

      static Color.white.getter();
      return;
    }

    v1 = [objc_opt_self() briskColors];
    if (!v1)
    {
      __break(1u);
      goto LABEL_20;
    }

    v2 = v1;
    v3 = [v1 nonGradientTextColor];

    if (v3)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (a1 != 2)
  {
    goto LABEL_11;
  }

  v4 = [objc_opt_self() energyColors];
  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = v4;
  v6 = [v4 nonGradientTextColor];

  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_16:

  Color.init(uiColor:)();
}