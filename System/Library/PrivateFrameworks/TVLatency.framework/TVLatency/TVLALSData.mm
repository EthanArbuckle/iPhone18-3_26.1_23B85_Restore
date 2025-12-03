@interface TVLALSData
+ (id)instanceFromDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation TVLALSData

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<TVLALSData (%p) ", self];
  [v3 appendString:v4];

  v5 = [(TVLALSData *)self x];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(TVLALSData *)self x];
    [v7 floatValue];
    v9 = [v6 stringWithFormat:@"X: %.2f, ", v8];
    [v3 appendString:v9];
  }

  v10 = [(TVLALSData *)self y];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [(TVLALSData *)self y];
    [v12 floatValue];
    v14 = [v11 stringWithFormat:@"Y: %.2f, ", v13];
    [v3 appendString:v14];
  }

  v15 = [(TVLALSData *)self z];

  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [(TVLALSData *)self z];
    [v17 floatValue];
    v19 = [v16 stringWithFormat:@"Z: %.2f, ", v18];
    [v3 appendString:v19];
  }

  v20 = [(TVLALSData *)self lux];

  if (v20)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [(TVLALSData *)self lux];
    [v22 floatValue];
    v24 = [v21 stringWithFormat:@"Lux: %.2f, ", v23];
    [v3 appendString:v24];
  }

  v25 = [(TVLALSData *)self cct];

  if (v25)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [(TVLALSData *)self cct];
    [v27 floatValue];
    v29 = [v26 stringWithFormat:@"CCT: %.2f, ", v28];
    [v3 appendString:v29];
  }

  channelData = [(TVLALSData *)self channelData];

  if (channelData)
  {
    v31 = MEMORY[0x277CCACA8];
    channelData2 = [(TVLALSData *)self channelData];
    v33 = [v31 stringWithFormat:@"Channel Data: %@", channelData2];
    [v3 appendString:v33];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = [(TVLALSData *)self x];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [(TVLALSData *)self y];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [(TVLALSData *)self y];
  if (!v7)
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [(TVLALSData *)self lux];
  if (!v9)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = v9;
  v11 = [(TVLALSData *)self cct];
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  channelData = [(TVLALSData *)self channelData];

  if (channelData)
  {
    v23[0] = @"ALS_DATA_X";
    v14 = [(TVLALSData *)self x];
    v24[0] = v14;
    v23[1] = @"ALS_DATA_Y";
    v15 = [(TVLALSData *)self y];
    v24[1] = v15;
    v23[2] = @"ALS_DATA_Z";
    v16 = [(TVLALSData *)self z];
    v24[2] = v16;
    v23[3] = @"ALS_DATA_LUX";
    v17 = [(TVLALSData *)self lux];
    v24[3] = v17;
    v23[4] = @"ALS_DATA_CCT";
    v18 = [(TVLALSData *)self cct];
    v24[4] = v18;
    v23[5] = @"ALS_DATA_CHANNELS";
    channelData2 = [(TVLALSData *)self channelData];
    v24[5] = channelData2;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];

    goto LABEL_13;
  }

LABEL_12:
  v20 = MEMORY[0x277CBEC10];
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)instanceFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(TVLALSData);
  v5 = [dictionaryCopy objectForKey:@"ALS_DATA_X"];
  [(TVLALSData *)v4 setX:v5];

  v6 = [dictionaryCopy objectForKey:@"ALS_DATA_Y"];
  [(TVLALSData *)v4 setY:v6];

  v7 = [dictionaryCopy objectForKey:@"ALS_DATA_Z"];
  [(TVLALSData *)v4 setZ:v7];

  v8 = [dictionaryCopy objectForKey:@"ALS_DATA_LUX"];
  [(TVLALSData *)v4 setLux:v8];

  v9 = [dictionaryCopy objectForKey:@"ALS_DATA_CCT"];
  [(TVLALSData *)v4 setCct:v9];

  v10 = [dictionaryCopy objectForKey:@"ALS_DATA_CHANNELS"];

  [(TVLALSData *)v4 setChannelData:v10];
  v11 = [(TVLALSData *)v4 x];
  if (v11)
  {
    v12 = [(TVLALSData *)v4 y];
    if (v12)
    {
      v13 = v12;
      v14 = [(TVLALSData *)v4 y];
      if (v14)
      {
        v15 = v14;
        v16 = [(TVLALSData *)v4 lux];
        if (v16)
        {
          v17 = v16;
          v18 = [(TVLALSData *)v4 cct];
          if (v18)
          {
            v19 = v18;
            channelData = [(TVLALSData *)v4 channelData];

            if (channelData)
            {
              v11 = v4;
              goto LABEL_13;
            }

            goto LABEL_12;
          }
        }
      }
    }

LABEL_12:
    v11 = 0;
  }

LABEL_13:

  return v11;
}

@end