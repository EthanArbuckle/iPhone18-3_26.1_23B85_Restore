@interface ACTSelectPopupVariant
- (ACTSelectPopupVariant)initWithIntendedKey:(id)a3 timestamp:(double)a4;
- (id)description;
- (void)applyWithTyper:(id)a3 log:(id)a4;
@end

@implementation ACTSelectPopupVariant

- (void)applyWithTyper:(id)a3 log:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ACTSelectPopupVariant *)self intendedKey];
  [(ACTSelectPopupVariant *)self timestamp];
  v8 = [v9 _performVariantKey:v7 timestamp:v6 typingLog:?];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACTSelectPopupVariant *)self intendedKey];
  [(ACTSelectPopupVariant *)self timestamp];
  v8 = [v3 stringWithFormat:@"<%@: intended=%@, t=%.2f>", v5, v6, v7];

  return v8;
}

- (ACTSelectPopupVariant)initWithIntendedKey:(id)a3 timestamp:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ACTSelectPopupVariant;
  v7 = [(ACTSelectPopupVariant *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    intendedKey = v7->_intendedKey;
    v7->_intendedKey = v8;

    v7->_timestamp = a4;
  }

  return v7;
}

@end