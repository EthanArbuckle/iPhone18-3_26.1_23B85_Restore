@interface RUIActionSignal
+ (id)signalWithString:(id)string;
+ (id)signalWithType:(unint64_t)type;
+ (id)stringForActionSignal:(unint64_t)signal;
+ (unint64_t)signalTypeForString:(id)string;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation RUIActionSignal

+ (id)signalWithType:(unint64_t)type
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTopSignal:type];
  array = [MEMORY[0x277CBEB18] array];
  [v4 setSubActions:array];

  return v4;
}

+ (id)signalWithString:(id)string
{
  v3 = [RUIActionSignal signalTypeForString:string];
  if (v3)
  {
    v3 = [RUIActionSignal signalWithType:v3];
  }

  return v3;
}

+ (id)stringForActionSignal:(unint64_t)signal
{
  if (signal > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_2782E82B0 + signal);
  }
}

+ (unint64_t)signalTypeForString:(id)string
{
  v3 = [&unk_282D7AC48 objectForKeyedSubscript:string];
  intValue = [v3 intValue];

  return intValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    topSignal = [(RUIActionSignal *)self topSignal];
    if (topSignal != [v6 topSignal])
    {
      v11 = 0;
LABEL_12:

      goto LABEL_13;
    }

    subActions = [(RUIActionSignal *)self subActions];
    if (subActions || ([v6 subActions], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      subActions2 = [(RUIActionSignal *)self subActions];
      subActions3 = [v6 subActions];
      v11 = [subActions2 isEqual:subActions3];

      if (subActions)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_11;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() description];
  v5 = [objc_opt_class() stringForActionSignal:self->_topSignal];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_topSignal];
  v7 = [v3 stringWithFormat:@"<%@ : %p - %@ (%@), subactions = %@", v4, self, v5, v6, self->_subActions];

  return v7;
}

@end