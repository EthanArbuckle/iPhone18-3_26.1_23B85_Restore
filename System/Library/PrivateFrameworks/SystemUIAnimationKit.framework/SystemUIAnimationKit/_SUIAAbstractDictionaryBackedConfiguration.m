@interface _SUIAAbstractDictionaryBackedConfiguration
- (_SUIAAbstractDictionaryBackedConfiguration)init;
- (double)delayForApplicationOfKeypath:(id)a3;
- (id)behaviorSettingsForKeypath:(id)a3;
- (void)_setBehaviorSettings:(id)a3 forKeypath:(id)a4;
- (void)_setDelay:(double)a3 forApplicationOfKeypath:(id)a4;
@end

@implementation _SUIAAbstractDictionaryBackedConfiguration

- (_SUIAAbstractDictionaryBackedConfiguration)init
{
  v10.receiver = self;
  v10.super_class = _SUIAAbstractDictionaryBackedConfiguration;
  v2 = [(_SUIAAbstractDictionaryBackedConfiguration *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    propertyDictionary = v2->_propertyDictionary;
    v2->_propertyDictionary = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    behaviorSettingsDictionary = v2->_behaviorSettingsDictionary;
    v2->_behaviorSettingsDictionary = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    delayDictionary = v2->_delayDictionary;
    v2->_delayDictionary = v7;
  }

  return v2;
}

- (void)_setBehaviorSettings:(id)a3 forKeypath:(id)a4
{
  behaviorSettingsDictionary = self->_behaviorSettingsDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)behaviorSettingsDictionary setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)behaviorSettingsDictionary removeObjectForKey:a4];
  }
}

- (id)behaviorSettingsForKeypath:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_behaviorSettingsDictionary objectForKey:a3];
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

- (void)_setDelay:(double)a3 forApplicationOfKeypath:(id)a4
{
  v9 = a4;
  IsZero = BSFloatIsZero();
  delayDictionary = self->_delayDictionary;
  if (IsZero)
  {
    [(NSMutableDictionary *)delayDictionary removeObjectForKey:v9];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [(NSMutableDictionary *)delayDictionary setObject:v8 forKey:v9];
  }
}

- (double)delayForApplicationOfKeypath:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_delayDictionary objectForKey:a3];
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