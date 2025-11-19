@interface UISMutableDeviceContext
- (id)_dictionaryWithOnlyValidKeysFromDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDeviceInfoValue:(id)a3 forKey:(id)a4;
@end

@implementation UISMutableDeviceContext

- (void)setDeviceInfoValue:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (![(UISDeviceContext *)self _isDeviceInfoValue:v9 appropriateForKey:v7])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:207 description:{@"values like '%@' aren't valid for the key '%@'", v9, v7}];
  }

  [(NSDictionary *)self->super._deviceInfoKeysToValues setObject:v9 forKey:v7];
}

- (id)_dictionaryWithOnlyValidKeysFromDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = UISMutableDeviceContext;
  v3 = [(UISDeviceContext *)&v6 _dictionaryWithOnlyValidKeysFromDictionary:a3];
  v4 = [v3 mutableCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISDeviceContext alloc];
  deviceInfoKeysToValues = self->super._deviceInfoKeysToValues;

  return [(UISDeviceContext *)v4 initWithDeviceInfoValues:deviceInfoKeysToValues];
}

@end