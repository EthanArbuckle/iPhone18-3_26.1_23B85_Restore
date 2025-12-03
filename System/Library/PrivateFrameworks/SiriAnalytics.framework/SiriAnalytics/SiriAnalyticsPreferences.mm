@interface SiriAnalyticsPreferences
- (SiriAnalyticsPreferences)initWithPreferencesDomain:(__CFString *)domain;
- (id)pluginStateForBundleIdentifier:(id)identifier;
- (id)pluginsState;
- (void)setKillSwitchEnabled:(BOOL)enabled;
- (void)setPluginState:(id)state forBundleIdentifier:(id)identifier;
@end

@implementation SiriAnalyticsPreferences

- (void)setKillSwitchEnabled:(BOOL)enabled
{
  if (enabled)
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

- (void)setPluginState:(id)state forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stateCopy = state;
  pluginsState = [(SiriAnalyticsPreferences *)self pluginsState];
  [pluginsState setObject:stateCopy forKey:identifierCopy];

  [(SiriAnalyticsPreferences *)self setPluginsState:pluginsState];
}

- (id)pluginStateForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pluginsState = [(SiriAnalyticsPreferences *)self pluginsState];
  v6 = [pluginsState objectForKey:identifierCopy];

  return v6;
}

- (SiriAnalyticsPreferences)initWithPreferencesDomain:(__CFString *)domain
{
  v6.receiver = self;
  v6.super_class = SiriAnalyticsPreferences;
  v4 = [(SiriAnalyticsPreferences *)&v6 init];
  if (v4)
  {
    v4->_domain = CFStringCreateCopy(*MEMORY[0x1E695E480], domain);
  }

  return v4;
}

@end