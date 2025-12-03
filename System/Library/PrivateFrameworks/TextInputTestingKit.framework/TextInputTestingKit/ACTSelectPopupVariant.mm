@interface ACTSelectPopupVariant
- (ACTSelectPopupVariant)initWithIntendedKey:(id)key timestamp:(double)timestamp;
- (id)description;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTSelectPopupVariant

- (void)applyWithTyper:(id)typer log:(id)log
{
  typerCopy = typer;
  logCopy = log;
  intendedKey = [(ACTSelectPopupVariant *)self intendedKey];
  [(ACTSelectPopupVariant *)self timestamp];
  v8 = [typerCopy _performVariantKey:intendedKey timestamp:logCopy typingLog:?];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  intendedKey = [(ACTSelectPopupVariant *)self intendedKey];
  [(ACTSelectPopupVariant *)self timestamp];
  v8 = [v3 stringWithFormat:@"<%@: intended=%@, t=%.2f>", v5, intendedKey, v7];

  return v8;
}

- (ACTSelectPopupVariant)initWithIntendedKey:(id)key timestamp:(double)timestamp
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = ACTSelectPopupVariant;
  v7 = [(ACTSelectPopupVariant *)&v11 init];
  if (v7)
  {
    v8 = [keyCopy copy];
    intendedKey = v7->_intendedKey;
    v7->_intendedKey = v8;

    v7->_timestamp = timestamp;
  }

  return v7;
}

@end