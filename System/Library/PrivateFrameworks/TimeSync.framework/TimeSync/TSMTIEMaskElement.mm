@interface TSMTIEMaskElement
- (TSMTIEMaskElement)initWithCoefficient:(double)coefficient offset:(double)offset lowerLimit:(double)limit upperLimit:(double)upperLimit;
- (TSMTIEMaskElement)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSMTIEMaskElement

- (TSMTIEMaskElement)initWithCoefficient:(double)coefficient offset:(double)offset lowerLimit:(double)limit upperLimit:(double)upperLimit
{
  v11.receiver = self;
  v11.super_class = TSMTIEMaskElement;
  result = [(TSMTIEMaskElement *)&v11 init];
  if (result)
  {
    result->_a = coefficient;
    result->_b = offset;
    result->_lowerLimit = limit;
    result->_upperLimit = upperLimit;
  }

  return result;
}

- (TSMTIEMaskElement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"coefficient"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"offset"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"lowerLimit"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"upperLimit"];

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

- (id)copyWithZone:(_NSZone *)zone
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