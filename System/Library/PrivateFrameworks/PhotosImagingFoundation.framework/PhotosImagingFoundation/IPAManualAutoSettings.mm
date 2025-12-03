@interface IPAManualAutoSettings
- (IPAManualAutoSettings)init;
- (IPAManualAutoSettings)initWithIdentifier:(id)identifier;
- (id)valueForUndefinedKey:(id)key;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation IPAManualAutoSettings

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    v7 = keyCopy;
    if (valueCopy)
    {
      [(NSMutableDictionary *)self->_state setObject:valueCopy forKeyedSubscript:keyCopy];
    }
  }

  else
  {
    v8 = _PFAssertFailHandler();
    [(IPAManualAutoSettings *)v8 valueForUndefinedKey:v9, v10];
  }
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = keyCopy;
    v6 = [(NSMutableDictionary *)self->_state objectForKeyedSubscript:keyCopy];

    return v6;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    return [(IPAManualAutoSettings *)v8 _applyArchiveDictionary:v9, v10];
  }
}

- (IPAManualAutoSettings)initWithIdentifier:(id)identifier
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"unsupported method for manual settings"];

  return 0;
}

- (IPAManualAutoSettings)init
{
  v6.receiver = self;
  v6.super_class = IPAManualAutoSettings;
  v2 = [(IPAAutoSettings *)&v6 initWithIdentifier:@"manual"];
  if (v2)
  {
    v3 = objc_opt_new();
    state = v2->_state;
    v2->_state = v3;
  }

  return v2;
}

@end