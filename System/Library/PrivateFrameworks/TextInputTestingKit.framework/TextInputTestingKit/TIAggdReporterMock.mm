@interface TIAggdReporterMock
- (TIAggdReporterMock)init;
- (id)getDistributionObject:(id)object;
- (id)toDictionary;
- (id)toJsonString;
- (int64_t)_getScalar:(id)scalar;
- (int64_t)getScalar:(id)scalar;
- (void)_setScalar:(id)scalar withValue:(int64_t)value;
- (void)addValue:(int64_t)value forKey:(id)key;
- (void)clear;
- (void)clearDistributionKey:(id)key;
- (void)clearScalarKey:(id)key;
- (void)decrementKey:(id)key;
- (void)incrementKey:(id)key;
- (void)pushValue:(double)value forKey:(id)key;
- (void)setScalar:(id)scalar withValue:(int64_t)value;
- (void)setValue:(double)value forDistributionKey:(id)key;
- (void)setValue:(int64_t)value forScalarKey:(id)key;
- (void)subtractValue:(int64_t)value forKey:(id)key;
@end

@implementation TIAggdReporterMock

- (id)getDistributionObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  distributions = [(TIAggdReporterMock *)selfCopy distributions];
  v7 = [distributions objectForKeyedSubscript:objectCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)pushValue:(double)value forKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    distributions = [(TIAggdReporterMock *)selfCopy distributions];
    v8 = [distributions objectForKeyedSubscript:keyCopy];

    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB18] arrayWithArray:MEMORY[0x277CBEBF8]];
      distributions2 = [(TIAggdReporterMock *)selfCopy distributions];
      [distributions2 setObject:v8 forKey:keyCopy];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:value];
    [v8 addObject:v10];

    objc_sync_exit(selfCopy);
  }
}

- (void)setValue:(double)value forDistributionKey:(id)key
{
  v13[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    distributions = [(TIAggdReporterMock *)selfCopy distributions];
    v9 = MEMORY[0x277CBEB18];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:value];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v12 = [v9 arrayWithArray:v11];
    [distributions setObject:v12 forKey:keyCopy];

    objc_sync_exit(selfCopy);
  }
}

- (void)clearDistributionKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v7 = keyCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    distributions = [(TIAggdReporterMock *)selfCopy distributions];
    [distributions removeObjectForKey:v7];

    objc_sync_exit(selfCopy);
    keyCopy = v7;
  }
}

- (void)decrementKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(TIAggdReporterMock *)selfCopy _setScalar:keyCopy withValue:[(TIAggdReporterMock *)selfCopy getScalar:keyCopy]- 1];
  objc_sync_exit(selfCopy);
}

- (void)incrementKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(TIAggdReporterMock *)selfCopy _setScalar:keyCopy withValue:[(TIAggdReporterMock *)selfCopy getScalar:keyCopy]+ 1];
  objc_sync_exit(selfCopy);
}

- (void)subtractValue:(int64_t)value forKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(TIAggdReporterMock *)selfCopy _setScalar:keyCopy withValue:[(TIAggdReporterMock *)selfCopy getScalar:keyCopy]- value];
  objc_sync_exit(selfCopy);
}

- (void)addValue:(int64_t)value forKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(TIAggdReporterMock *)selfCopy _setScalar:keyCopy withValue:[(TIAggdReporterMock *)selfCopy getScalar:keyCopy]+ value];
  objc_sync_exit(selfCopy);
}

- (void)setValue:(int64_t)value forScalarKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(TIAggdReporterMock *)selfCopy _setScalar:keyCopy withValue:value];
  objc_sync_exit(selfCopy);
}

- (void)clearScalarKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v7 = keyCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    scalars = [(TIAggdReporterMock *)selfCopy scalars];
    [scalars removeObjectForKey:v7];

    objc_sync_exit(selfCopy);
    keyCopy = v7;
  }
}

- (void)_setScalar:(id)scalar withValue:(int64_t)value
{
  if (scalar)
  {
    scalarCopy = scalar;
    scalars = [(TIAggdReporterMock *)self scalars];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:value];
    [scalars setObject:v7 forKey:scalarCopy];
  }
}

- (void)setScalar:(id)scalar withValue:(int64_t)value
{
  scalarCopy = scalar;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(TIAggdReporterMock *)selfCopy _setScalar:scalarCopy withValue:value];
  objc_sync_exit(selfCopy);
}

- (int64_t)_getScalar:(id)scalar
{
  scalarCopy = scalar;
  if (scalarCopy && (-[TIAggdReporterMock scalars](self, "scalars"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:scalarCopy], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    scalars = [(TIAggdReporterMock *)self scalars];
    v8 = [scalars objectForKeyedSubscript:scalarCopy];
    longLongValue = [v8 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (int64_t)getScalar:(id)scalar
{
  scalarCopy = scalar;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(TIAggdReporterMock *)selfCopy _getScalar:scalarCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)toJsonString
{
  v2 = MEMORY[0x277CCAAA0];
  toDictionary = [(TIAggdReporterMock *)self toDictionary];
  v7 = 0;
  v4 = [v2 dataWithJSONObject:toDictionary options:1 error:&v7];

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];

  return v5;
}

- (id)toDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7[0] = @"scalars";
  scalars = [(TIAggdReporterMock *)selfCopy scalars];
  v7[1] = @"distributions";
  v8[0] = scalars;
  distributions = [(TIAggdReporterMock *)selfCopy distributions];
  v8[1] = distributions;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)clear
{
  obj = self;
  objc_sync_enter(obj);
  scalars = [(TIAggdReporterMock *)obj scalars];
  [scalars removeAllObjects];

  distributions = [(TIAggdReporterMock *)obj distributions];
  [distributions removeAllObjects];

  objc_sync_exit(obj);
}

- (TIAggdReporterMock)init
{
  v8.receiver = self;
  v8.super_class = TIAggdReporterMock;
  v2 = [(TIAggdReporterMock *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    scalars = v2->_scalars;
    v2->_scalars = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    distributions = v2->_distributions;
    v2->_distributions = v5;
  }

  return v2;
}

@end