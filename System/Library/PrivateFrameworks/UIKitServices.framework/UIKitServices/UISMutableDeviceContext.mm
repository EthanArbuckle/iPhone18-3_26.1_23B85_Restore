@interface UISMutableDeviceContext
- (id)_dictionaryWithOnlyValidKeysFromDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDeviceInfoValue:(id)value forKey:(id)key;
@end

@implementation UISMutableDeviceContext

- (void)setDeviceInfoValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (![(UISDeviceContext *)self _isDeviceInfoValue:valueCopy appropriateForKey:keyCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:207 description:{@"values like '%@' aren't valid for the key '%@'", valueCopy, keyCopy}];
  }

  [(NSDictionary *)self->super._deviceInfoKeysToValues setObject:valueCopy forKey:keyCopy];
}

- (id)_dictionaryWithOnlyValidKeysFromDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = UISMutableDeviceContext;
  v3 = [(UISDeviceContext *)&v6 _dictionaryWithOnlyValidKeysFromDictionary:dictionary];
  v4 = [v3 mutableCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISDeviceContext alloc];
  deviceInfoKeysToValues = self->super._deviceInfoKeysToValues;

  return [(UISDeviceContext *)v4 initWithDeviceInfoValues:deviceInfoKeysToValues];
}

@end