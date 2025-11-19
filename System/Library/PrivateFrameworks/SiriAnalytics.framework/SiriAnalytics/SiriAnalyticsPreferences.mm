@interface SiriAnalyticsPreferences
- (SiriAnalyticsPreferences)initWithPreferencesDomain:(__CFString *)a3;
- (id)pluginStateForBundleIdentifier:(id)a3;
- (id)pluginsState;
- (void)setKillSwitchEnabled:(BOOL)a3;
- (void)setPluginState:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation SiriAnalyticsPreferences

- (void)setKillSwitchEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  domain = self->_domain;

  CFPreferencesSetAppValue(@"Kill Switch", v4, domain);
}

- (id)pluginsState
{
  v2 = CFPreferencesCopyAppValue(@"Plugins State", self->_domain);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v2];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  }

  v4 = v3;

  return v4;
}

- (void)setPluginState:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SiriAnalyticsPreferences *)self pluginsState];
  [v8 setObject:v7 forKey:v6];

  [(SiriAnalyticsPreferences *)self setPluginsState:v8];
}

- (id)pluginStateForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SiriAnalyticsPreferences *)self pluginsState];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (SiriAnalyticsPreferences)initWithPreferencesDomain:(__CFString *)a3
{
  v6.receiver = self;
  v6.super_class = SiriAnalyticsPreferences;
  v4 = [(SiriAnalyticsPreferences *)&v6 init];
  if (v4)
  {
    v4->_domain = CFStringCreateCopy(*MEMORY[0x1E695E480], a3);
  }

  return v4;
}

@end