@interface NUNIPreferencePane
- (NUNIPreferencePane)initWithPreferencePane:(id)pane;
- (NUNIPreferencePane)initWithSliders:(id)sliders toggles:(id)toggles pickerOptions:(id)options pickerSelections:(id)selections;
- (NUNIPreferencePaneDelegate)delegate;
- (void)preferencePaneDidChangeWithPreference:(id)preference;
@end

@implementation NUNIPreferencePane

- (NUNIPreferencePane)initWithSliders:(id)sliders toggles:(id)toggles pickerOptions:(id)options pickerSelections:(id)selections
{
  selectionsCopy = selections;
  optionsCopy = options;
  togglesCopy = toggles;
  slidersCopy = sliders;
  v14 = [_TtC9WeatherUI14PreferencePane alloc];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v16 = [(PreferencePane *)v14 initWithName:&stru_1F3B5C700 userDefaults:standardUserDefaults sliders:slidersCopy toggles:togglesCopy pickerOptions:optionsCopy pickerSelections:selectionsCopy];

  v17 = [(NUNIPreferencePane *)self initWithPreferencePane:v16];
  return v17;
}

- (NUNIPreferencePane)initWithPreferencePane:(id)pane
{
  paneCopy = pane;
  v9.receiver = self;
  v9.super_class = NUNIPreferencePane;
  v6 = [(NUNIPreferencePane *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preference, pane);
  }

  return v7;
}

- (void)preferencePaneDidChangeWithPreference:(id)preference
{
  delegate = [(NUNIPreferencePane *)self delegate];
  [delegate preferencePaneDidChange:self];
}

- (NUNIPreferencePaneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end