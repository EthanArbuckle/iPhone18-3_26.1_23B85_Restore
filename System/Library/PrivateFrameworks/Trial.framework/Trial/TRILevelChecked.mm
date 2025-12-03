@interface TRILevelChecked
+ (id)wrapLevel:(id)level;
- (BOOL)BOOLeanValue;
- (TRILevelChecked)initWithLevel:(id)level;
- (double)doubleValue;
- (float)floatValue;
- (id)binaryValue;
- (id)description;
- (id)directoryValue;
- (id)fileValue;
- (id)stringValue;
- (int)intValue;
- (int64_t)longValue;
@end

@implementation TRILevelChecked

- (id)fileValue
{
  levelOneOfCase = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (levelOneOfCase == 100 || levelOneOfCase == 0)
  {
    fileValue = [(TRILevel *)self->_wrapped fileValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:141 description:{@"requested fileValue, but TRILevel contained type (%u) is not File", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    fileValue = 0;
  }

  return fileValue;
}

- (id)directoryValue
{
  levelOneOfCase = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (levelOneOfCase == 101 || levelOneOfCase == 0)
  {
    directoryValue = [(TRILevel *)self->_wrapped directoryValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:154 description:{@"requested directoryValue, but TRILevel contained type (%u) is not Directory", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    directoryValue = 0;
  }

  return directoryValue;
}

- (double)doubleValue
{
  levelOneOfCase = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (levelOneOfCase == 15 || levelOneOfCase == 0)
  {
    wrapped = self->_wrapped;

    [(TRILevel *)wrapped doubleValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:115 description:{@"requested doubleValue, but TRILevel contained type (%u) is not Double", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0.0;
  }

  return result;
}

- (BOOL)BOOLeanValue
{
  levelOneOfCase = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (levelOneOfCase == 10 || levelOneOfCase == 0)
  {
    wrapped = self->_wrapped;

    return [(TRILevel *)wrapped BOOLeanValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:50 description:{@"requested BOOLeanValue, but TRILevel contained type (%u) is not Boolean", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0;
  }
}

- (int64_t)longValue
{
  levelOneOfCase = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (levelOneOfCase == 13 || levelOneOfCase == 0)
  {
    wrapped = self->_wrapped;

    return [(TRILevel *)wrapped longValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:89 description:{@"requested longValue, but TRILevel contained type (%u) is not Long", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0;
  }
}

- (id)stringValue
{
  levelOneOfCase = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (levelOneOfCase == 11 || levelOneOfCase == 0)
  {
    stringValue = [(TRILevel *)self->_wrapped stringValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:63 description:{@"requested stringValue, but TRILevel contained type (%u) is not String", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    stringValue = 0;
  }

  return stringValue;
}

- (TRILevelChecked)initWithLevel:(id)level
{
  levelCopy = level;
  v9.receiver = self;
  v9.super_class = TRILevelChecked;
  v6 = [(TRILevelChecked *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapped, level);
  }

  return v7;
}

+ (id)wrapLevel:(id)level
{
  levelCopy = level;
  if (!levelCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"level"}];
  }

  v6 = [[TRILevelChecked alloc] initWithLevel:levelCopy];

  return v6;
}

- (int)intValue
{
  levelOneOfCase = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (levelOneOfCase == 12 || levelOneOfCase == 0)
  {
    wrapped = self->_wrapped;

    return [(TRILevel *)wrapped intValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:76 description:{@"requested intValue, but TRILevel contained type (%u) is not Int", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0;
  }
}

- (float)floatValue
{
  levelOneOfCase = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (levelOneOfCase == 14 || levelOneOfCase == 0)
  {
    wrapped = self->_wrapped;

    [(TRILevel *)wrapped floatValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:102 description:{@"requested floatValue, but TRILevel contained type (%u) is not Float", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0.0;
  }

  return result;
}

- (id)binaryValue
{
  if (([(TRILevel *)self->_wrapped levelOneOfCase]| 0x10) == 0x10)
  {
    binaryValue = [(TRILevel *)self->_wrapped binaryValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:128 description:{@"requested binaryValue, but TRILevel contained type (%u) is not Binary", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    binaryValue = 0;
  }

  return binaryValue;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(TRILevel *)self->_wrapped description];
  v5 = [v3 initWithFormat:@"[TRILevelChecked] %@", v4];

  return v5;
}

@end