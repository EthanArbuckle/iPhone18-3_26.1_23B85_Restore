@interface IPAManualAutoSettings
- (IPAManualAutoSettings)init;
- (IPAManualAutoSettings)initWithIdentifier:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation IPAManualAutoSettings

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    if (v11)
    {
      [(NSMutableDictionary *)self->_state setObject:v11 forKeyedSubscript:v6];
    }
  }

  else
  {
    v8 = _PFAssertFailHandler();
    [(IPAManualAutoSettings *)v8 valueForUndefinedKey:v9, v10];
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(NSMutableDictionary *)self->_state objectForKeyedSubscript:v4];

    return v6;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    return [(IPAManualAutoSettings *)v8 _applyArchiveDictionary:v9, v10];
  }
}

- (IPAManualAutoSettings)initWithIdentifier:(id)a3
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