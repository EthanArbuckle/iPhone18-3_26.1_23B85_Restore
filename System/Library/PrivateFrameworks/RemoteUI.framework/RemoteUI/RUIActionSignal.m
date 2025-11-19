@interface RUIActionSignal
+ (id)signalWithString:(id)a3;
+ (id)signalWithType:(unint64_t)a3;
+ (id)stringForActionSignal:(unint64_t)a3;
+ (unint64_t)signalTypeForString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation RUIActionSignal

+ (id)signalWithType:(unint64_t)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTopSignal:a3];
  v5 = [MEMORY[0x277CBEB18] array];
  [v4 setSubActions:v5];

  return v4;
}

+ (id)signalWithString:(id)a3
{
  v3 = [RUIActionSignal signalTypeForString:a3];
  if (v3)
  {
    v3 = [RUIActionSignal signalWithType:v3];
  }

  return v3;
}

+ (id)stringForActionSignal:(unint64_t)a3
{
  if (a3 > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_2782E82B0 + a3);
  }
}

+ (unint64_t)signalTypeForString:(id)a3
{
  v3 = [&unk_282D7AC48 objectForKeyedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(RUIActionSignal *)self topSignal];
    if (v7 != [v6 topSignal])
    {
      v11 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v8 = [(RUIActionSignal *)self subActions];
    if (v8 || ([v6 subActions], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = [(RUIActionSignal *)self subActions];
      v10 = [v6 subActions];
      v11 = [v9 isEqual:v10];

      if (v8)
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