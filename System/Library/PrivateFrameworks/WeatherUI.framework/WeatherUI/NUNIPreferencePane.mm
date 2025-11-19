@interface NUNIPreferencePane
- (NUNIPreferencePane)initWithPreferencePane:(id)a3;
- (NUNIPreferencePane)initWithSliders:(id)a3 toggles:(id)a4 pickerOptions:(id)a5 pickerSelections:(id)a6;
- (NUNIPreferencePaneDelegate)delegate;
- (void)preferencePaneDidChangeWithPreference:(id)a3;
@end

@implementation NUNIPreferencePane

- (NUNIPreferencePane)initWithSliders:(id)a3 toggles:(id)a4 pickerOptions:(id)a5 pickerSelections:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [_TtC9WeatherUI14PreferencePane alloc];
  v15 = [MEMORY[0x1E695E000] standardUserDefaults];
  v16 = [(PreferencePane *)v14 initWithName:&stru_1F3B5C700 userDefaults:v15 sliders:v13 toggles:v12 pickerOptions:v11 pickerSelections:v10];

  v17 = [(NUNIPreferencePane *)self initWithPreferencePane:v16];
  return v17;
}

- (NUNIPreferencePane)initWithPreferencePane:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUNIPreferencePane;
  v6 = [(NUNIPreferencePane *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preference, a3);
  }

  return v7;
}

- (void)preferencePaneDidChangeWithPreference:(id)a3
{
  v4 = [(NUNIPreferencePane *)self delegate];
  [v4 preferencePaneDidChange:self];
}

- (NUNIPreferencePaneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end