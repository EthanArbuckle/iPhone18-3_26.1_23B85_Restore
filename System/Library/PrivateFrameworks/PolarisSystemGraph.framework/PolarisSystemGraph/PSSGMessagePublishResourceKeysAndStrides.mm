@interface PSSGMessagePublishResourceKeysAndStrides
+ (id)messageWithKeysAndStrides:(id)a3 sender:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)resourceOptions;
- (id)description;
@end

@implementation PSSGMessagePublishResourceKeysAndStrides

+ (id)messageWithKeysAndStrides:(id)a3 sender:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v29 = a4;
  v32 = [MEMORY[0x277CBEB28] data];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v5;
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
        v10 = [v9 mutableBytes];
        [v8 UTF8String];
        __strlcpy_chk();
        v11 = [v6 objectForKeyedSubscript:v8];
        v12 = [v11 supportedStrides];
        v13 = [v12 count];

        if (v13)
        {
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v14 = [v11 supportedStrides];
          v15 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v35 + 1) + 8 * j);
                v34 = 0;
                v20 = [v19 objectAtIndexedSubscript:0];
                LODWORD(v34) = [v20 unsignedIntValue];
                v21 = [v19 objectAtIndexedSubscript:1];
                HIDWORD(v34) = [v21 unsignedIntValue];

                [v9 appendBytes:&v34 length:8];
              }

              v16 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v16);
          }

          v22 = [v11 supportedStrides];
          *(v10 + 256) = [v22 count];

          v23 = [v11 defaultStride];
          v6 = v30;
        }

        else
        {
          v23 = 0;
          *(v10 + 256) = 0;
        }

        *(v10 + 260) = v23;
        v24 = [v11 baseMSGSyncID];

        if (!v24)
        {
          [v11 setBaseMSGSyncID:&unk_2870DE248];
        }

        v25 = [v11 baseMSGSyncID];
        *(v10 + 264) = [v25 unsignedIntValue];

        *(v10 + 268) = [v11 setupResumeSupported];
        [v32 appendData:v9];
      }

      v33 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v33);
  }

  v26 = [(PSSGMessageBase *)[PSSGMessagePublishResourceKeysAndStrides alloc] initWithType:24 string1:v29 data:v32];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (NSDictionary)resourceOptions
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [(PSSGMessageBase *)self data];
  v4 = [v3 bytes];

  v5 = [(PSSGMessageBase *)self data];
  v6 = [v5 bytes];
  v7 = v6 + [(PSSGMessageBase *)self dataLength];

  if (v4 < v7)
  {
    do
    {
      if (*(v4 + 256))
      {
        v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
        if (*(v4 + 256))
        {
          v9 = 0;
          v10 = (v4 + 276);
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

          while (v9 < *(v4 + 256));
        }
      }

      else
      {
        v8 = 0;
      }

      v15 = *(v4 + 260);
      v16 = *(v4 + 268);
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v4 + 264)];
      v18 = [PSSGResourceOptions optionsWithDefaultStride:v15 supportedStrides:v8 setupSupported:v16 baseMSGSyncID:v17];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
      [v25 setObject:v18 forKeyedSubscript:v19];

      v4 += 8 * *(v4 + 256) + 272;
      v20 = [(PSSGMessageBase *)self data];
      v21 = [v20 bytes];
      v22 = v21 + [(PSSGMessageBase *)self dataLength];
    }

    while (v4 < v22);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if ([(PSSGMessageBase *)v6 type]== 24)
    {
      v7 = v6;
      v8 = [(PSSGMessagePublishResourceKeysAndStrides *)self sender];
      v9 = [(PSSGMessagePublishResourceKeysAndStrides *)v7 sender];
      if ([v8 isEqual:v9])
      {
        v10 = [(PSSGMessagePublishResourceKeysAndStrides *)self resourceOptions];
        v11 = [(PSSGMessagePublishResourceKeysAndStrides *)v7 resourceOptions];
        v12 = [v10 isEqual:v11];
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
  v4 = [(PSSGMessagePublishResourceKeysAndStrides *)self sender];
  v5 = [(PSSGMessagePublishResourceKeysAndStrides *)self resourceOptions];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end