@interface PreferencePane
+ (_TtC9WeatherUI14PreferencePane)aegirRenderingPreferencePane;
+ (_TtC9WeatherUI14PreferencePane)calliopeRenderingPreferencePane;
- (NSArray)panes;
- (NSDictionary)pickerOptions;
- (NSString)name;
- (_TtC9WeatherUI14PreferencePane)initWithName:(id)name panes:(id)panes;
- (_TtC9WeatherUI14PreferencePane)initWithName:(id)name userDefaults:(id)defaults sliders:(id)sliders toggles:(id)toggles pickerOptions:(id)options pickerSelections:(id)selections;
- (_TtP9WeatherUI22PreferencePaneDelegate_)delegate;
- (id)fractionValueForOption:(id)option;
- (id)getValueForKey:(id)key;
- (void)preferencePaneDidChangeWithPreference:(id)preference;
- (void)reset;
- (void)set:(id)set forKey:(id)key;
- (void)setDefaultPickersSelections:(id)selections;
- (void)setDefaultSliders:(id)sliders;
- (void)setDefaultToggles:(id)toggles;
- (void)setDelegate:(id)delegate;
- (void)setName:(id)name;
- (void)setPanes:(id)panes;
- (void)setPickerOptions:(id)options;
- (void)setPickersSelections:(id)selections;
- (void)setSliders:(id)sliders;
- (void)setToggles:(id)toggles;
@end

@implementation PreferencePane

- (NSString)name
{
  selfCopy = self;
  sub_1BCDC0E5C();

  v3 = sub_1BCE1D240();

  return v3;
}

- (void)setName:(id)name
{
  sub_1BCE1D280();
  selfCopy = self;
  sub_1BCDC0F40();
}

- (NSArray)panes
{
  selfCopy = self;
  v3 = sub_1BCDC1410();

  if (v3)
  {
    type metadata accessor for PreferencePane();
    v4 = sub_1BCE1D560();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPanes:(id)panes
{
  if (panes)
  {
    type metadata accessor for PreferencePane();
    sub_1BCE1D570();
  }

  selfCopy = self;
  sub_1BCDC14F8();
}

- (void)setSliders:(id)sliders
{
  v4 = sub_1BCE1D570();
  selfCopy = self;
  sub_1BCDC19A8(v4);
}

- (void)setToggles:(id)toggles
{
  v4 = sub_1BCE1D570();
  selfCopy = self;
  sub_1BCDC1B10(v4);
}

- (void)setPickersSelections:(id)selections
{
  v4 = sub_1BCE1D570();
  selfCopy = self;
  sub_1BCDC1C20(v4);
}

- (void)setDefaultSliders:(id)sliders
{
  v4 = sub_1BCE1D110();
  selfCopy = self;
  sub_1BCDC1D4C(v4);
}

- (void)setDefaultToggles:(id)toggles
{
  v4 = sub_1BCE1D110();
  selfCopy = self;
  sub_1BCDC1EE0(v4);
}

- (void)setDefaultPickersSelections:(id)selections
{
  v4 = sub_1BCE1D110();
  selfCopy = self;
  sub_1BCDC2038(v4);
}

- (NSDictionary)pickerOptions
{
  if (sub_1BCDC2184())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
    v2 = sub_1BCE1D100();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setPickerOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
    optionsCopy = sub_1BCE1D110();
  }

  selfCopy = self;
  sub_1BCDC224C(optionsCopy);
}

- (_TtP9WeatherUI22PreferencePaneDelegate_)delegate
{
  v2 = sub_1BCDC2340();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BCDC23D8();
}

- (_TtC9WeatherUI14PreferencePane)initWithName:(id)name panes:(id)panes
{
  sub_1BCE1D280();
  type metadata accessor for PreferencePane();
  sub_1BCE1D570();
  return PreferencePane.init(name:panes:)();
}

- (_TtC9WeatherUI14PreferencePane)initWithName:(id)name userDefaults:(id)defaults sliders:(id)sliders toggles:(id)toggles pickerOptions:(id)options pickerSelections:(id)selections
{
  v9 = sub_1BCE1D280();
  v11 = v10;
  v12 = sub_1BCE1D110();
  v13 = sub_1BCE1D110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
  v14 = sub_1BCE1D110();
  v15 = sub_1BCE1D110();
  defaultsCopy = defaults;
  return PreferencePane.init(name:userDefaults:sliders:toggles:pickerOptions:pickerSelections:)(v9, v11, defaults, v12, v13, v14, v15);
}

- (id)getValueForKey:(id)key
{
  sub_1BCE1D280();
  selfCopy = self;
  sub_1BCDC33E4(v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1BCE1E070();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)set:(id)set forKey:(id)key
{
  if (set)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BCE1DBF0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  sub_1BCE1D280();

  sub_1BCDC3758(v10);

  sub_1BCD808E0(v10);
}

- (void)preferencePaneDidChangeWithPreference:(id)preference
{
  preferenceCopy = preference;
  selfCopy = self;
  sub_1BCDC3A10(preferenceCopy);
}

- (void)reset
{
  selfCopy = self;
  sub_1BCDC3B04();
}

+ (_TtC9WeatherUI14PreferencePane)calliopeRenderingPreferencePane
{
  v2 = static PreferencePane.calliopeRenderingPreferencePane.getter();

  return v2;
}

+ (_TtC9WeatherUI14PreferencePane)aegirRenderingPreferencePane
{
  v2 = static PreferencePane.aegirRenderingPreferencePane.getter();

  return v2;
}

- (id)fractionValueForOption:(id)option
{
  v4 = sub_1BCE1D280();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = PreferencePane.fractionValue(forOption:)(v8);

  return v9;
}

@end