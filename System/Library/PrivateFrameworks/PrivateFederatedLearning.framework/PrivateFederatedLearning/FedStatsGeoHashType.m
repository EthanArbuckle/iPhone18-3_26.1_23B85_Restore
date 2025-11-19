@interface FedStatsGeoHashType
+ (id)createFromDict:(id)a3 possibleError:(id *)a4;
+ (unint64_t)geoHashCharToInteger:(char)a3;
- (FedStatsGeoHashType)initWithGeoHashLength:(unint64_t)a3;
- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4;
- (id)encodeToIndex:(id)a3 possibleError:(id *)a4;
- (id)sampleForIndex:(unint64_t)a3;
@end

@implementation FedStatsGeoHashType

+ (unint64_t)geoHashCharToInteger:(char)a3
{
  v3 = a3 - 106;
  if ((a3 - 106) <= 0x10)
  {
    if (((1 << v3) & 0x1FFC0) != 0)
    {
      return (a3 - 91);
    }

    if (((1 << v3) & 3) != 0)
    {
      return (a3 - 89);
    }

    if (((1 << v3) & 0x18) != 0)
    {
      return (a3 - 90);
    }
  }

  v4 = -1;
  if ((a3 - 98) < 7)
  {
    v4 = (a3 - 88);
  }

  if ((a3 - 48) >= 0xA)
  {
    return v4;
  }

  else
  {
    return (a3 - 48);
  }
}

- (FedStatsGeoHashType)initWithGeoHashLength:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = FedStatsGeoHashType;
  result = [(FedStatsBoundedULongType *)&v5 initWithBound:1 << (5 * a3)];
  if (result)
  {
    result->_hashLength = a3;
  }

  return result;
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v5 = [a3 objectForKey:@"hashLength"];
  if (!v5)
  {
    if (!a4)
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
      v9 = [v5 unsignedLongValue];
      if (v9 == [v5 longValue])
      {
        if ([v5 unsignedLongValue])
        {
          a4 = -[FedStatsGeoHashType initWithGeoHashLength:]([FedStatsGeoHashType alloc], "initWithGeoHashLength:", [v5 unsignedLongValue]);
          goto LABEL_12;
        }
      }
    }
  }

  if (a4)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"The value for key %@ must be a positive integer", @"hashLength"];
    v11 = 302;
LABEL_11:
    *a4 = [FedStatsError errorWithCode:v11 description:v10];

    a4 = 0;
  }

LABEL_12:

  return a4;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB68] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = &unk_282B4B9D0;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      [FedStatsError errorWithCode:401 description:@"The geohash type accepts only a string to encode"];
      *a4 = v9 = 0;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v10 = [v6 length];
  if (v10 > [(FedStatsGeoHashType *)self hashLength])
  {
    if (a4)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"This geohash encoder accepts hashes of length %lu", -[FedStatsGeoHashType hashLength](self, "hashLength")];
      *a4 = [FedStatsError errorWithCode:401 description:v11];
    }

LABEL_9:
    v9 = 0;
    goto LABEL_18;
  }

  v12 = 1;
  v13 = [v6 cStringUsingEncoding:1];
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

- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [v6 unsignedLongValue];
  if (v7 == [v6 longValue])
  {
    if (v7)
    {
      v8 = v7 - 1;
      v9 = malloc_type_malloc([(FedStatsGeoHashType *)self hashLength]+ 1, 0x100004077774924uLL);
      v9[[(FedStatsGeoHashType *)self hashLength]] = 0;
      v10 = [(FedStatsGeoHashType *)self hashLength];
      do
      {
        v9[--v10] = kFedStatsGeoHashMap[v8 & 0x1F];
        v8 >>= 5;
      }

      while (v10);
      v11 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:1];
      free(v9);
    }

    else
    {
      v11 = [(FedStatsGeoHashType *)self sampleForIndex:0];
    }
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:500 description:@"The geohash decoder accepts only positive integers"];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)sampleForIndex:(unint64_t)a3
{
  if (a3)
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