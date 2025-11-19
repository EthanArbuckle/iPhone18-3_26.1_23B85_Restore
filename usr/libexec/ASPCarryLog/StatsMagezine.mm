@interface StatsMagezine
- (StatsMagezine)initWithNandDriver:(id)a3;
- (float)_getStatsVal:(int64_t)a3 :(int64_t)a4;
- (float)_getStatsVal:(int64_t)a3 startIdx:(unsigned int)a4 endIdx:(unsigned int)a5 :(int64_t)a6;
- (float)getStatsDelta:(int64_t)a3 :(unsigned int)a4;
@end

@implementation StatsMagezine

- (StatsMagezine)initWithNandDriver:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = StatsMagezine;
  v6 = [(StatsMagezine *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    statsDictDict = v6->_statsDictDict;
    v6->_statsDictDict = v7;

    objc_storeStrong(&v6->_nandDriver, a3);
    v9 = v6;
  }

  return v6;
}

- (float)_getStatsVal:(int64_t)a3 :(int64_t)a4
{
  [(StatsMagezine *)self _lazyLoadStatsDict:a4];
  v7 = [(StatsMagezine *)self statsDictDict];
  v8 = [NSNumber numberWithInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [NSNumber numberWithInteger:a3];
  v11 = [v9 objectForKeyedSubscript:v10];

  objc_opt_class();
  v12 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v11 floatValue];
    v12 = v13;
  }

  return v12;
}

- (float)_getStatsVal:(int64_t)a3 startIdx:(unsigned int)a4 endIdx:(unsigned int)a5 :(int64_t)a6
{
  [(StatsMagezine *)self _lazyLoadStatsDict:a6];
  v11 = [(StatsMagezine *)self statsDictDict];
  v12 = [NSNumber numberWithInteger:a6];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [NSNumber numberWithInteger:a3];
  v15 = [v13 objectForKeyedSubscript:v14];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = 0.0;
  if (a4 <= a5 && (isKindOfClass & 1) != 0)
  {
    v18 = 0;
    while (1)
    {
      v19 = v18;
      v18 = [v15 objectAtIndexedSubscript:a4];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [v18 floatValue];
      v17 = v17 + v20;
      if (++a4 > a5)
      {
        goto LABEL_8;
      }
    }

    v17 = 0.0;
LABEL_8:
  }

  return v17;
}

- (float)getStatsDelta:(int64_t)a3 :(unsigned int)a4
{
  [(StatsMagezine *)self _getStatsVal:a3];
  v8 = v7;
  if (a4)
  {
    [(StatsMagezine *)self _getStatsVal:a3];
    return v8 - v9;
  }

  return v8;
}

@end