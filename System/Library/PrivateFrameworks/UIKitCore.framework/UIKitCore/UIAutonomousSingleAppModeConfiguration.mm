@interface UIAutonomousSingleAppModeConfiguration
+ (id)defaultConfigurationForStyle:(unint64_t)style;
- (BOOL)_BOOLValueForFeatureKey:(id)key;
- (NSDictionary)propertiesAsDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setBoolValue:(BOOL)value forFeatureKey:(id)key;
@end

@implementation UIAutonomousSingleAppModeConfiguration

+ (id)defaultConfigurationForStyle:(unint64_t)style
{
  v4 = objc_alloc_init(self);
  [v4 setStyle:style];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  [v5 setStyle:{-[UIAutonomousSingleAppModeConfiguration style](self, "style")}];
  v6 = [(NSDictionary *)self->_managedConfigurationSettings copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSMutableDictionary *)self->_propertiesAsDictionary mutableCopy];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (NSDictionary)propertiesAsDictionary
{
  v2 = [(NSMutableDictionary *)self->_propertiesAsDictionary copy];

  return v2;
}

- (BOOL)_BOOLValueForFeatureKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_propertiesAsDictionary objectForKeyedSubscript:keyCopy];
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    +[UIApplication _accessibilityLoadSettingsLoaderIfNeeded];
    bOOLValue = [(UIAutonomousSingleAppModeConfiguration *)self __gaxTrampoline_defaultBoolValueForFeatureKey:keyCopy];
  }

  v8 = bOOLValue;

  return v8;
}

- (void)_setBoolValue:(BOOL)value forFeatureKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (!self->_propertiesAsDictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    propertiesAsDictionary = self->_propertiesAsDictionary;
    self->_propertiesAsDictionary = dictionary;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:valueCopy];
  [(NSMutableDictionary *)self->_propertiesAsDictionary setObject:v8 forKeyedSubscript:keyCopy];
}

@end