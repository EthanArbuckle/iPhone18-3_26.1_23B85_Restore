@interface PSSGMessageSetResourceAvailability
+ (id)messageWithKeysAndResourceAvailability:(id)a3 sender:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)getResourceAvailabilityMap;
- (id)description;
- (unint64_t)hash;
@end

@implementation PSSGMessageSetResourceAvailability

+ (id)messageWithKeysAndResourceAvailability:(id)a3 sender:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB28] data];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [MEMORY[0x277CBEB28] dataWithLength:{257, v20}];
        v15 = [v14 mutableBytes];
        [v13 UTF8String];
        __strlcpy_chk();
        v16 = [v8 objectForKeyedSubscript:v13];
        *(v15 + 256) = [v16 unsignedIntValue];

        [v7 appendData:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [(PSSGMessageBase *)[PSSGMessageSetResourceAvailability alloc] initWithType:30 string1:v6 data:v7];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSDictionary)getResourceAvailabilityMap
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(PSSGMessageBase *)self data];
  v5 = [v4 bytes];

  v6 = [(PSSGMessageBase *)self data];
  v7 = [v6 bytes];
  v8 = v7 + [(PSSGMessageBase *)self dataLength];

  if (v5 < v8)
  {
    do
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v5 + 256)];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      [v3 setObject:v9 forKeyedSubscript:v10];

      v5 += 257;
      v11 = [(PSSGMessageBase *)self data];
      v12 = [v11 bytes];
      v13 = v12 + [(PSSGMessageBase *)self dataLength];
    }

    while (v5 < v13);
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(PSSGMessageBase *)v5 type]== 30)
      {
        v6 = v5;
        v7 = [(PSSGMessageSetResourceAvailability *)self sender];
        v8 = [(PSSGMessageSetResourceAvailability *)v6 sender];
        if ([v7 isEqual:v8])
        {
          v9 = [(PSSGMessageSetResourceAvailability *)self getResourceAvailabilityMap];
          v10 = [(PSSGMessageSetResourceAvailability *)v6 getResourceAvailabilityMap];
          v11 = [v9 isEqual:v10];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(PSSGMessageBase *)self type];
  v4 = [(PSSGMessageBase *)self string1];
  v5 = [v4 hash] ^ v3;
  v6 = [(PSSGMessageBase *)self data];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PSSGMessageSetResourceAvailability *)self sender];
  v5 = [(PSSGMessageSetResourceAvailability *)self getResourceAvailabilityMap];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end