@interface FedStatsGeoHashType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
+ (unint64_t)geoHashCharToInteger:(char)integer;
- (FedStatsGeoHashType)initWithGeoHashLength:(unint64_t)length;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)sampleForIndex:(unint64_t)index;
@end

@implementation FedStatsGeoHashType

+ (unint64_t)geoHashCharToInteger:(char)integer
{
  v3 = integer - 106;
  if ((integer - 106) <= 0x10)
  {
    if (((1 << v3) & 0x1FFC0) != 0)
    {
      return (integer - 91);
    }

    if (((1 << v3) & 3) != 0)
    {
      return (integer - 89);
    }

    if (((1 << v3) & 0x18) != 0)
    {
      return (integer - 90);
    }
  }

  v4 = -1;
  if ((integer - 98) < 7)
  {
    v4 = (integer - 88);
  }

  if ((integer - 48) >= 0xA)
  {
    return v4;
  }

  else
  {
    return (integer - 48);
  }
}

- (FedStatsGeoHashType)initWithGeoHashLength:(unint64_t)length
{
  v5.receiver = self;
  v5.super_class = FedStatsGeoHashType;
  result = [(FedStatsBoundedULongType *)&v5 initWithBound:1 << (5 * length)];
  if (result)
  {
    result->_hashLength = length;
  }

  return result;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v5 = [dict objectForKey:@"hashLength"];
  if (!v5)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing key %@", @"hashLength"];
    v11 = 300;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 doubleValue];
    v7 = v6;
    [v5 doubleValue];
    if (v7 == round(v8))
    {
      unsignedLongValue = [v5 unsignedLongValue];
      if (unsignedLongValue == [v5 longValue])
      {
        if ([v5 unsignedLongValue])
        {
          error = -[FedStatsGeoHashType initWithGeoHashLength:]([FedStatsGeoHashType alloc], "initWithGeoHashLength:", [v5 unsignedLongValue]);
          goto LABEL_12;
        }
      }
    }
  }

  if (error)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"The value for key %@ must be a positive integer", @"hashLength"];
    v11 = 302;
LABEL_11:
    *error = [FedStatsError errorWithCode:v11 description:v10];

    error = 0;
  }

LABEL_12:

  return error;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  null = [MEMORY[0x277CBEB68] null];
  v8 = [indexCopy isEqual:null];

  if (v8)
  {
    v9 = &unk_282B4B9D0;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [FedStatsError errorWithCode:401 description:@"The geohash type accepts only a string to encode"];
      *error = v9 = 0;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v10 = [indexCopy length];
  if (v10 > [(FedStatsGeoHashType *)self hashLength])
  {
    if (error)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"This geohash encoder accepts hashes of length %lu", -[FedStatsGeoHashType hashLength](self, "hashLength")];
      *error = [FedStatsError errorWithCode:401 description:v11];
    }

LABEL_9:
    v9 = 0;
    goto LABEL_18;
  }

  v12 = 1;
  v13 = [indexCopy cStringUsingEncoding:1];
  if ([(FedStatsGeoHashType *)self hashLength])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = [FedStatsGeoHashType geoHashCharToInteger:*(v13 + v14)];
      if (v17 == -1)
      {
        break;
      }

      v16 = v17 + 32 * v16;
      v14 = ++v15;
      if ([(FedStatsGeoHashType *)self hashLength]<= v15)
      {
        v12 = v16 + 1;
        goto LABEL_15;
      }
    }

    v18 = MEMORY[0x277CCABB0];
    v19 = 0;
  }

  else
  {
LABEL_15:
    v18 = MEMORY[0x277CCABB0];
    v19 = v12;
  }

  v9 = [v18 numberWithUnsignedLong:v19];
LABEL_18:

  return v9;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  unsignedLongValue = [indexCopy unsignedLongValue];
  if (unsignedLongValue == [indexCopy longValue])
  {
    if (unsignedLongValue)
    {
      v8 = unsignedLongValue - 1;
      v9 = malloc_type_malloc([(FedStatsGeoHashType *)self hashLength]+ 1, 0x100004077774924uLL);
      v9[[(FedStatsGeoHashType *)self hashLength]] = 0;
      hashLength = [(FedStatsGeoHashType *)self hashLength];
      do
      {
        v9[--hashLength] = kFedStatsGeoHashMap[v8 & 0x1F];
        v8 >>= 5;
      }

      while (hashLength);
      v11 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:1];
      free(v9);
    }

    else
    {
      v11 = [(FedStatsGeoHashType *)self sampleForIndex:0];
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:500 description:@"The geohash decoder accepts only positive integers"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)sampleForIndex:(unint64_t)index
{
  if (index)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
    v5 = [(FedStatsGeoHashType *)self decodeFromIndex:v4 possibleError:0];
  }

  else
  {
    v5 = [&stru_282B43830 stringByPaddingToLength:-[FedStatsGeoHashType hashLength](self withString:"hashLength") startingAtIndex:{@"@", 0}];
  }

  return v5;
}

@end