@interface _SUIAAbstractDictionaryBackedConfiguration
- (_SUIAAbstractDictionaryBackedConfiguration)init;
- (double)delayForApplicationOfKeypath:(id)keypath;
- (id)behaviorSettingsForKeypath:(id)keypath;
- (void)_setBehaviorSettings:(id)settings forKeypath:(id)keypath;
- (void)_setDelay:(double)delay forApplicationOfKeypath:(id)keypath;
@end

@implementation _SUIAAbstractDictionaryBackedConfiguration

- (_SUIAAbstractDictionaryBackedConfiguration)init
{
  v10.receiver = self;
  v10.super_class = _SUIAAbstractDictionaryBackedConfiguration;
  v2 = [(_SUIAAbstractDictionaryBackedConfiguration *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    propertyDictionary = v2->_propertyDictionary;
    v2->_propertyDictionary = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    behaviorSettingsDictionary = v2->_behaviorSettingsDictionary;
    v2->_behaviorSettingsDictionary = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    delayDictionary = v2->_delayDictionary;
    v2->_delayDictionary = dictionary3;
  }

  return v2;
}

- (void)_setBehaviorSettings:(id)settings forKeypath:(id)keypath
{
  behaviorSettingsDictionary = self->_behaviorSettingsDictionary;
  if (settings)
  {
    [(NSMutableDictionary *)behaviorSettingsDictionary setObject:settings forKey:keypath];
  }

  else
  {
    [(NSMutableDictionary *)behaviorSettingsDictionary removeObjectForKey:keypath];
  }
}

- (id)behaviorSettingsForKeypath:(id)keypath
{
  v3 = [(NSMutableDictionary *)self->_behaviorSettingsDictionary objectForKey:keypath];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (void)_setDelay:(double)delay forApplicationOfKeypath:(id)keypath
{
  keypathCopy = keypath;
  IsZero = BSFloatIsZero();
  delayDictionary = self->_delayDictionary;
  if (IsZero)
  {
    [(NSMutableDictionary *)delayDictionary removeObjectForKey:keypathCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:delay];
    [(NSMutableDictionary *)delayDictionary setObject:v8 forKey:keypathCopy];
  }
}

- (double)delayForApplicationOfKeypath:(id)keypath
{
  v3 = [(NSMutableDictionary *)self->_delayDictionary objectForKey:keypath];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 bs_CGFloatValue];
    v9 = v8;
    UIAnimationDragCoefficient();
    v11 = v9 * v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

@end