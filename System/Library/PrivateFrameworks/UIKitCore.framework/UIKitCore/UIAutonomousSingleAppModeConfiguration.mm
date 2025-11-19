@interface UIAutonomousSingleAppModeConfiguration
+ (id)defaultConfigurationForStyle:(unint64_t)a3;
- (BOOL)_BOOLValueForFeatureKey:(id)a3;
- (NSDictionary)propertiesAsDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setBoolValue:(BOOL)a3 forFeatureKey:(id)a4;
@end

@implementation UIAutonomousSingleAppModeConfiguration

+ (id)defaultConfigurationForStyle:(unint64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setStyle:a3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  [v5 setStyle:{-[UIAutonomousSingleAppModeConfiguration style](self, "style")}];
  v6 = [(NSDictionary *)self->_managedConfigurationSettings copyWithZone:a3];
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

- (BOOL)_BOOLValueForFeatureKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_propertiesAsDictionary objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    +[UIApplication _accessibilityLoadSettingsLoaderIfNeeded];
    v7 = [(UIAutonomousSingleAppModeConfiguration *)self __gaxTrampoline_defaultBoolValueForFeatureKey:v4];
  }

  v8 = v7;

  return v8;
}

- (void)_setBoolValue:(BOOL)a3 forFeatureKey:(id)a4
{
  v4 = a3;
  v9 = a4;
  if (!self->_propertiesAsDictionary)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    propertiesAsDictionary = self->_propertiesAsDictionary;
    self->_propertiesAsDictionary = v6;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [(NSMutableDictionary *)self->_propertiesAsDictionary setObject:v8 forKeyedSubscript:v9];
}

@end