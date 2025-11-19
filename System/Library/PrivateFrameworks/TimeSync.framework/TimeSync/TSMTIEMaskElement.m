@interface TSMTIEMaskElement
- (TSMTIEMaskElement)initWithCoefficient:(double)a3 offset:(double)a4 lowerLimit:(double)a5 upperLimit:(double)a6;
- (TSMTIEMaskElement)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSMTIEMaskElement

- (TSMTIEMaskElement)initWithCoefficient:(double)a3 offset:(double)a4 lowerLimit:(double)a5 upperLimit:(double)a6
{
  v11.receiver = self;
  v11.super_class = TSMTIEMaskElement;
  result = [(TSMTIEMaskElement *)&v11 init];
  if (result)
  {
    result->_a = a3;
    result->_b = a4;
    result->_lowerLimit = a5;
    result->_upperLimit = a6;
  }

  return result;
}

- (TSMTIEMaskElement)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"coefficient"];
  v6 = [v4 objectForKeyedSubscript:@"offset"];
  v7 = [v4 objectForKeyedSubscript:@"lowerLimit"];
  v8 = [v4 objectForKeyedSubscript:@"upperLimit"];

  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    if (v8)
    {
LABEL_3:
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:INFINITY];
  if (!v5)
  {
LABEL_11:

    v16 = 0;
    goto LABEL_12;
  }

LABEL_7:
  if (!v6 || !v7 || !v8)
  {
    goto LABEL_11;
  }

  [v5 doubleValue];
  v10 = v9;
  [v6 doubleValue];
  v12 = v11;
  [v7 doubleValue];
  v14 = v13;
  [v8 doubleValue];
  v16 = [(TSMTIEMaskElement *)self initWithCoefficient:v10 offset:v12 lowerLimit:v14 upperLimit:v15];
LABEL_12:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  [(TSMTIEMaskElement *)self a];
  v6 = v5;
  [(TSMTIEMaskElement *)self b];
  v8 = v7;
  [(TSMTIEMaskElement *)self lowerLimit];
  v10 = v9;
  [(TSMTIEMaskElement *)self upperLimit];

  return [v4 initWithCoefficient:v6 offset:v8 lowerLimit:v10 upperLimit:v11];
}

@end