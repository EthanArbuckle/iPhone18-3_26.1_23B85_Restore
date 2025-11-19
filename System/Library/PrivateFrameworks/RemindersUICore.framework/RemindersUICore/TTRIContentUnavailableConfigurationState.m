@interface TTRIContentUnavailableConfigurationState
- (NSString)searchControllerText;
- (TTRIContentUnavailableConfigurationState)initWithTraitCollection:(id)a3;
- (UITraitCollection)traitCollection;
- (id)customStateForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)setCustomState:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
- (void)setSearchControllerText:(id)a3;
@end

@implementation TTRIContentUnavailableConfigurationState

- (NSString)searchControllerText
{
  v2 = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  v3 = [v2 searchControllerText];

  return v3;
}

- (void)setSearchControllerText:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  [v5 setSearchControllerText:v4];
}

- (TTRIContentUnavailableConfigurationState)initWithTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D75398];
  v5 = a3;
  v6 = [[v4 alloc] initWithTraitCollection:v5];

  v7 = [objc_opt_class() instanceWrappingImpl:v6];

  return v7;
}

- (UITraitCollection)traitCollection
{
  v2 = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  v3 = [v2 traitCollection];

  return v3;
}

- (id)customStateForKey:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  v6 = [v5 customStateForKey:v4];

  return v6;
}

- (void)setCustomState:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  [v8 setCustomState:v7 forKey:v6];
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

@end