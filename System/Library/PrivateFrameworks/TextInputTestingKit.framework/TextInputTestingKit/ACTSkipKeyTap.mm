@interface ACTSkipKeyTap
- (ACTSkipKeyTap)initWithIntendedKey:(id)key timestamp:(double)timestamp;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTSkipKeyTap

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  intendedKey = [(ACTSkipKeyTap *)self intendedKey];
  representedString = [intendedKey representedString];
  v5 = [v2 stringWithFormat:@"SkipKey intended: %@", representedString];

  return v5;
}

- (void)applyWithTyper:(id)typer log:(id)log
{
  logCopy = log;
  typerCopy = typer;
  [(ACTSkipKeyTap *)self timestamp];
  v9 = v8;
  intendedKey = [(ACTSkipKeyTap *)self intendedKey];
  [typerCopy _skipTapTimestamp:intendedKey intendedKey:logCopy typingLog:v9];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  intendedKey = [(ACTSkipKeyTap *)self intendedKey];
  representedString = [intendedKey representedString];
  [(ACTSkipKeyTap *)self timestamp];
  v9 = [v3 stringWithFormat:@"<%@: intended=%@, t=%.2f>", v5, representedString, v8];

  return v9;
}

- (ACTSkipKeyTap)initWithIntendedKey:(id)key timestamp:(double)timestamp
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = ACTSkipKeyTap;
  v8 = [(ACTSkipKeyTap *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_intendedKey, key);
    v9->_timestamp = timestamp;
  }

  return v9;
}

@end