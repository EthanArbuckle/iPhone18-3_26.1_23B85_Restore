@interface TRILevelChecked
+ (id)wrapLevel:(id)a3;
- (BOOL)BOOLeanValue;
- (TRILevelChecked)initWithLevel:(id)a3;
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
  v4 = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (v4 == 100 || v4 == 0)
  {
    v7 = [(TRILevel *)self->_wrapped fileValue];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:141 description:{@"requested fileValue, but TRILevel contained type (%u) is not File", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    v7 = 0;
  }

  return v7;
}

- (id)directoryValue
{
  v4 = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (v4 == 101 || v4 == 0)
  {
    v7 = [(TRILevel *)self->_wrapped directoryValue];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:154 description:{@"requested directoryValue, but TRILevel contained type (%u) is not Directory", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    v7 = 0;
  }

  return v7;
}

- (double)doubleValue
{
  v4 = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (v4 == 15 || v4 == 0)
  {
    wrapped = self->_wrapped;

    [(TRILevel *)wrapped doubleValue];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:115 description:{@"requested doubleValue, but TRILevel contained type (%u) is not Double", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0.0;
  }

  return result;
}

- (BOOL)BOOLeanValue
{
  v4 = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (v4 == 10 || v4 == 0)
  {
    wrapped = self->_wrapped;

    return [(TRILevel *)wrapped BOOLeanValue];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:50 description:{@"requested BOOLeanValue, but TRILevel contained type (%u) is not Boolean", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0;
  }
}

- (int64_t)longValue
{
  v4 = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (v4 == 13 || v4 == 0)
  {
    wrapped = self->_wrapped;

    return [(TRILevel *)wrapped longValue];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:89 description:{@"requested longValue, but TRILevel contained type (%u) is not Long", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0;
  }
}

- (id)stringValue
{
  v4 = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (v4 == 11 || v4 == 0)
  {
    v7 = [(TRILevel *)self->_wrapped stringValue];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:63 description:{@"requested stringValue, but TRILevel contained type (%u) is not String", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    v7 = 0;
  }

  return v7;
}

- (TRILevelChecked)initWithLevel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRILevelChecked;
  v6 = [(TRILevelChecked *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapped, a3);
  }

  return v7;
}

+ (id)wrapLevel:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"TRILevelChecked.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"level"}];
  }

  v6 = [[TRILevelChecked alloc] initWithLevel:v5];

  return v6;
}

- (int)intValue
{
  v4 = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (v4 == 12 || v4 == 0)
  {
    wrapped = self->_wrapped;

    return [(TRILevel *)wrapped intValue];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:76 description:{@"requested intValue, but TRILevel contained type (%u) is not Int", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0;
  }
}

- (float)floatValue
{
  v4 = [(TRILevel *)self->_wrapped levelOneOfCase];
  if (v4 == 14 || v4 == 0)
  {
    wrapped = self->_wrapped;

    [(TRILevel *)wrapped floatValue];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:102 description:{@"requested floatValue, but TRILevel contained type (%u) is not Float", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    return 0.0;
  }

  return result;
}

- (id)binaryValue
{
  if (([(TRILevel *)self->_wrapped levelOneOfCase]| 0x10) == 0x10)
  {
    v4 = [(TRILevel *)self->_wrapped binaryValue];
  }

  else
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"TRILevelChecked.m" lineNumber:128 description:{@"requested binaryValue, but TRILevel contained type (%u) is not Binary", -[TRILevel levelOneOfCase](self->_wrapped, "levelOneOfCase")}];

    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(TRILevel *)self->_wrapped description];
  v5 = [v3 initWithFormat:@"[TRILevelChecked] %@", v4];

  return v5;
}

@end