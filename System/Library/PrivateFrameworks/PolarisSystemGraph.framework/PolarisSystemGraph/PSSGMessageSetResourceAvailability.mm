@interface PSSGMessageSetResourceAvailability
+ (id)messageWithKeysAndResourceAvailability:(id)availability sender:(id)sender;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)getResourceAvailabilityMap;
- (id)description;
- (unint64_t)hash;
@end

@implementation PSSGMessageSetResourceAvailability

+ (id)messageWithKeysAndResourceAvailability:(id)availability sender:(id)sender
{
  v25 = *MEMORY[0x277D85DE8];
  availabilityCopy = availability;
  senderCopy = sender;
  data = [MEMORY[0x277CBEB28] data];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = availabilityCopy;
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
        mutableBytes = [v14 mutableBytes];
        [v13 UTF8String];
        __strlcpy_chk();
        v16 = [v8 objectForKeyedSubscript:v13];
        *(mutableBytes + 256) = [v16 unsignedIntValue];

        [data appendData:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [(PSSGMessageBase *)[PSSGMessageSetResourceAvailability alloc] initWithType:30 string1:senderCopy data:data];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSDictionary)getResourceAvailabilityMap
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  data = [(PSSGMessageBase *)self data];
  bytes = [data bytes];

  data2 = [(PSSGMessageBase *)self data];
  bytes2 = [data2 bytes];
  v8 = bytes2 + [(PSSGMessageBase *)self dataLength];

  if (bytes < v8)
  {
    do
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 256)];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:bytes];
      [dictionary setObject:v9 forKeyedSubscript:v10];

      bytes += 257;
      data3 = [(PSSGMessageBase *)self data];
      bytes3 = [data3 bytes];
      v13 = bytes3 + [(PSSGMessageBase *)self dataLength];
    }

    while (bytes < v13);
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(PSSGMessageBase *)v5 type]== 30)
      {
        v6 = v5;
        sender = [(PSSGMessageSetResourceAvailability *)self sender];
        sender2 = [(PSSGMessageSetResourceAvailability *)v6 sender];
        if ([sender isEqual:sender2])
        {
          getResourceAvailabilityMap = [(PSSGMessageSetResourceAvailability *)self getResourceAvailabilityMap];
          getResourceAvailabilityMap2 = [(PSSGMessageSetResourceAvailability *)v6 getResourceAvailabilityMap];
          v11 = [getResourceAvailabilityMap isEqual:getResourceAvailabilityMap2];
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
  type = [(PSSGMessageBase *)self type];
  string1 = [(PSSGMessageBase *)self string1];
  v5 = [string1 hash] ^ type;
  data = [(PSSGMessageBase *)self data];
  v7 = [data hash];

  return v5 ^ v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sender = [(PSSGMessageSetResourceAvailability *)self sender];
  getResourceAvailabilityMap = [(PSSGMessageSetResourceAvailability *)self getResourceAvailabilityMap];
  v6 = [v3 stringWithFormat:@"%@: %@", sender, getResourceAvailabilityMap];

  return v6;
}

@end