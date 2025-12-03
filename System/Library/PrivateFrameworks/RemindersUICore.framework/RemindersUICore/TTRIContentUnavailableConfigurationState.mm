@interface TTRIContentUnavailableConfigurationState
- (NSString)searchControllerText;
- (TTRIContentUnavailableConfigurationState)initWithTraitCollection:(id)collection;
- (UITraitCollection)traitCollection;
- (id)customStateForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)setCustomState:(id)state forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setSearchControllerText:(id)text;
@end

@implementation TTRIContentUnavailableConfigurationState

- (NSString)searchControllerText
{
  asUIKit = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  searchControllerText = [asUIKit searchControllerText];

  return searchControllerText;
}

- (void)setSearchControllerText:(id)text
{
  textCopy = text;
  asUIKit = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  [asUIKit setSearchControllerText:textCopy];
}

- (TTRIContentUnavailableConfigurationState)initWithTraitCollection:(id)collection
{
  v4 = MEMORY[0x277D75398];
  collectionCopy = collection;
  v6 = [[v4 alloc] initWithTraitCollection:collectionCopy];

  v7 = [objc_opt_class() instanceWrappingImpl:v6];

  return v7;
}

- (UITraitCollection)traitCollection
{
  asUIKit = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  traitCollection = [asUIKit traitCollection];

  return traitCollection;
}

- (id)customStateForKey:(id)key
{
  keyCopy = key;
  asUIKit = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  v6 = [asUIKit customStateForKey:keyCopy];

  return v6;
}

- (void)setCustomState:(id)state forKey:(id)key
{
  keyCopy = key;
  stateCopy = state;
  asUIKit = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  [asUIKit setCustomState:stateCopy forKey:keyCopy];
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  asUIKit = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  v6 = [asUIKit objectForKeyedSubscript:subscriptCopy];

  return v6;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  objectCopy = object;
  asUIKit = [(TTRIContentUnavailableConfigurationState *)self asUIKit];
  [asUIKit setObject:objectCopy forKeyedSubscript:subscriptCopy];
}

@end