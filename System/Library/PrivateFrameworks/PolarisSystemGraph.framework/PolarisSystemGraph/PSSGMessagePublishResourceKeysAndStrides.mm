@interface PSSGMessagePublishResourceKeysAndStrides
+ (id)messageWithKeysAndStrides:(id)strides sender:(id)sender;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)resourceOptions;
- (id)description;
@end

@implementation PSSGMessagePublishResourceKeysAndStrides

+ (id)messageWithKeysAndStrides:(id)strides sender:(id)sender
{
  v45 = *MEMORY[0x277D85DE8];
  stridesCopy = strides;
  senderCopy = sender;
  data = [MEMORY[0x277CBEB28] data];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = stridesCopy;
  v33 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v33)
  {
    v30 = v6;
    v31 = *v40;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(v6);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        v9 = [MEMORY[0x277CBEB28] dataWithLength:272];
        mutableBytes = [v9 mutableBytes];
        [v8 UTF8String];
        __strlcpy_chk();
        v11 = [v6 objectForKeyedSubscript:v8];
        supportedStrides = [v11 supportedStrides];
        v13 = [supportedStrides count];

        if (v13)
        {
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          supportedStrides2 = [v11 supportedStrides];
          v15 = [supportedStrides2 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v36;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v36 != v17)
                {
                  objc_enumerationMutation(supportedStrides2);
                }

                v19 = *(*(&v35 + 1) + 8 * j);
                v34 = 0;
                v20 = [v19 objectAtIndexedSubscript:0];
                LODWORD(v34) = [v20 unsignedIntValue];
                v21 = [v19 objectAtIndexedSubscript:1];
                HIDWORD(v34) = [v21 unsignedIntValue];

                [v9 appendBytes:&v34 length:8];
              }

              v16 = [supportedStrides2 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v16);
          }

          supportedStrides3 = [v11 supportedStrides];
          *(mutableBytes + 256) = [supportedStrides3 count];

          defaultStride = [v11 defaultStride];
          v6 = v30;
        }

        else
        {
          defaultStride = 0;
          *(mutableBytes + 256) = 0;
        }

        *(mutableBytes + 260) = defaultStride;
        baseMSGSyncID = [v11 baseMSGSyncID];

        if (!baseMSGSyncID)
        {
          [v11 setBaseMSGSyncID:&unk_2870DE248];
        }

        baseMSGSyncID2 = [v11 baseMSGSyncID];
        *(mutableBytes + 264) = [baseMSGSyncID2 unsignedIntValue];

        *(mutableBytes + 268) = [v11 setupResumeSupported];
        [data appendData:v9];
      }

      v33 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v33);
  }

  v26 = [(PSSGMessageBase *)[PSSGMessagePublishResourceKeysAndStrides alloc] initWithType:24 string1:senderCopy data:data];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (NSDictionary)resourceOptions
{
  v26[2] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  data = [(PSSGMessageBase *)self data];
  bytes = [data bytes];

  data2 = [(PSSGMessageBase *)self data];
  bytes2 = [data2 bytes];
  v7 = bytes2 + [(PSSGMessageBase *)self dataLength];

  if (bytes < v7)
  {
    do
    {
      if (*(bytes + 256))
      {
        v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
        if (*(bytes + 256))
        {
          v9 = 0;
          v10 = (bytes + 276);
          do
          {
            v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v10 - 1)];
            v26[0] = v11;
            v12 = *v10;
            v10 += 2;
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
            v26[1] = v13;
            v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
            [v8 addObject:v14];

            ++v9;
          }

          while (v9 < *(bytes + 256));
        }
      }

      else
      {
        v8 = 0;
      }

      v15 = *(bytes + 260);
      v16 = *(bytes + 268);
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 264)];
      v18 = [PSSGResourceOptions optionsWithDefaultStride:v15 supportedStrides:v8 setupSupported:v16 baseMSGSyncID:v17];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:bytes];
      [dictionary setObject:v18 forKeyedSubscript:v19];

      bytes += 8 * *(bytes + 256) + 272;
      data3 = [(PSSGMessageBase *)self data];
      bytes3 = [data3 bytes];
      v22 = bytes3 + [(PSSGMessageBase *)self dataLength];
    }

    while (bytes < v22);
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if ([(PSSGMessageBase *)v6 type]== 24)
    {
      v7 = v6;
      sender = [(PSSGMessagePublishResourceKeysAndStrides *)self sender];
      sender2 = [(PSSGMessagePublishResourceKeysAndStrides *)v7 sender];
      if ([sender isEqual:sender2])
      {
        resourceOptions = [(PSSGMessagePublishResourceKeysAndStrides *)self resourceOptions];
        resourceOptions2 = [(PSSGMessagePublishResourceKeysAndStrides *)v7 resourceOptions];
        v12 = [resourceOptions isEqual:resourceOptions2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sender = [(PSSGMessagePublishResourceKeysAndStrides *)self sender];
  resourceOptions = [(PSSGMessagePublishResourceKeysAndStrides *)self resourceOptions];
  v6 = [v3 stringWithFormat:@"%@: %@", sender, resourceOptions];

  return v6;
}

@end