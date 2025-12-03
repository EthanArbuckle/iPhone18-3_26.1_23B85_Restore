@interface UARPSuperBinaryOS
- (BOOL)expandMetaData:(UARPSuperBinaryHeader *)data;
- (BOOL)expandSuperBinary;
- (BOOL)expandTLVs;
- (BOOL)generateTatsuMeasurements:(unint64_t)measurements relativeURL:(id)l;
- (BOOL)preparePayload:(UARPPayloadHeader2 *)payload;
- (BOOL)queryTatsuSigningServer:(id)server ssoOnly:(BOOL)only error:(id *)error;
- (UARPSuperBinaryOS)initWithData:(id)data delegate:(id)delegate delegateQueue:(id)queue;
- (UARPSuperBinaryOS)initWithFilePath:(id)path delegate:(id)delegate delegateQueue:(id)queue;
- (UARPSuperBinaryOS)initWithURL:(id)l delegate:(id)delegate delegateQueue:(id)queue;
- (id)composeTSSRequest:(unint64_t)request asMeasurement:(BOOL)measurement;
- (id)generatePersonalizedSuperBinaryInternal:(id)internal;
- (id)generatePersonalizedSuperBinaryWithoutRRKO;
- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset;
- (id)payloadWith4ccTag:(id)tag;
- (id)payloadsWithout4ccTag:(id)tag;
- (id)personalizedMetaData;
- (id)requiredTSSOptions;
- (id)tatsuMeasurements:(unint64_t)measurements;
- (id)tssKeyName:(id)name unitNumber:(unint64_t)number;
- (void)generateTatsuMeasurements:(unint64_t)measurements;
- (void)generateTatsuMeasurementsPerPayload:(unint64_t)payload;
- (void)logInternal:(id)internal arguments:(char *)arguments;
- (void)processMeasurementsForTSSOptions:(id)options unitNumber:(unint64_t)number asMeasurement:(BOOL)measurement;
- (void)processTLVsForPersonalization;
@end

@implementation UARPSuperBinaryOS

- (UARPSuperBinaryOS)initWithData:(id)data delegate:(id)delegate delegateQueue:(id)queue
{
  dataCopy = data;
  delegateCopy = delegate;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = UARPSuperBinaryOS;
  v11 = [(UARPSuperBinaryOS *)&v23 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  if (!dataCopy)
  {
    goto LABEL_5;
  }

  objc_storeWeak(&v11->_delegate, delegateCopy);
  objc_storeStrong(&v12->_delegateQueue, queue);
  v13 = [dataCopy copy];
  data = v12->_data;
  v12->_data = v13;

  v15 = objc_opt_new();
  tlvs = v12->_tlvs;
  v12->_tlvs = v15;

  v17 = objc_opt_new();
  trimmedTlvs = v12->_trimmedTlvs;
  v12->_trimmedTlvs = v17;

  v19 = objc_opt_new();
  measurements = v12->_measurements;
  v12->_measurements = v19;

  v12->_totalLength = [(NSData *)v12->_data length];
  if ([(UARPSuperBinaryOS *)v12 expandSuperBinary])
  {
LABEL_4:
    v21 = v12;
  }

  else
  {
LABEL_5:
    v21 = 0;
  }

  return v21;
}

- (UARPSuperBinaryOS)initWithFilePath:(id)path delegate:(id)delegate delegateQueue:(id)queue
{
  v8 = MEMORY[0x29EDB8DA0];
  queueCopy = queue;
  delegateCopy = delegate;
  stringByExpandingTildeInPath = [path stringByExpandingTildeInPath];
  v12 = [v8 dataWithContentsOfFile:stringByExpandingTildeInPath];
  v13 = [(UARPSuperBinaryOS *)self initWithData:v12 delegate:delegateCopy delegateQueue:queueCopy];

  return v13;
}

- (UARPSuperBinaryOS)initWithURL:(id)l delegate:(id)delegate delegateQueue:(id)queue
{
  v8 = MEMORY[0x29EDB8DA0];
  queueCopy = queue;
  delegateCopy = delegate;
  v11 = [v8 dataWithContentsOfURL:l];
  v12 = [(UARPSuperBinaryOS *)self initWithData:v11 delegate:delegateCopy delegateQueue:queueCopy];

  return v12;
}

- (BOOL)expandSuperBinary
{
  v3 = objc_opt_new();
  payloads = self->_payloads;
  self->_payloads = v3;

  data = self->_data;
  if (!data)
  {
    return 0;
  }

  if ([(NSData *)data length]< 0x2C)
  {
    return 0;
  }

  memset(v17, 0, 44);
  [(NSData *)self->_data getBytes:v17 range:0, 44];
  uarpSuperBinaryHeaderEndianSwap(v17, v17);
  v6 = DWORD2(v17[0]);
  if ([(NSData *)self->_data length]< v6)
  {
    return 0;
  }

  self->_formatVersion = v17[0];
  v7 = [UARPAssetVersionOS alloc];
  v8 = [(UARPAssetVersionOS *)v7 initWithMajorVersion:HIDWORD(v17[0]) minorVersion:LODWORD(v17[1]) releaseVersion:DWORD1(v17[1]) buildVersion:DWORD2(v17[1])];
  version = self->_version;
  self->_version = v8;

  if (![(UARPSuperBinaryOS *)self expandMetaData:v17])
  {
    return 0;
  }

  v10 = DWORD1(v17[2]);
  v11 = DWORD2(v17[2]);
  do
  {
    v12 = v11 >= 0x28;
    v11 -= 40;
    v13 = !v12;
    if (!v12)
    {
      break;
    }

    v16 = 0;
    memset(v15, 0, sizeof(v15));
    [(NSData *)self->_data getBytes:v15 range:v10, 40];
    uarpPayloadHeaderEndianSwap(v15, v15);
    v10 += 40;
  }

  while ([(UARPSuperBinaryOS *)self preparePayload:v15]);
  return v13;
}

- (BOOL)expandMetaData:(UARPSuperBinaryHeader *)data
{
  var5 = data->var5;
  if (!var5)
  {
    return 1;
  }

  v6 = data->var4 + var5;
  if ([(NSData *)self->_data length]< v6)
  {
    return 0;
  }

  v8 = [(NSData *)self->_data subdataWithRange:data->var4, data->var5];
  metaData = self->_metaData;
  self->_metaData = v8;

  return [(UARPSuperBinaryOS *)self expandTLVs];
}

- (BOOL)preparePayload:(UARPPayloadHeader2 *)payload
{
  v5 = [[UARPAssetTagOS alloc] initWithChar1:payload->var1.var0 char2:payload->var1.var1 char3:payload->var1.var2 char4:payload->var1.var3];
  v6 = [[UARPAssetVersionOS alloc] initWithMajorVersion:payload->var2.var0 minorVersion:payload->var2.var1 releaseVersion:payload->var2.var2 buildVersion:payload->var2.var3];
  v7 = payload->var4 + payload->var3;
  if ([(NSData *)self->_data length]>= v7)
  {
    if (payload->var4)
    {
      v9 = [(NSData *)self->_data subdataWithRange:payload->var3];
    }

    else
    {
      v9 = 0;
    }

    v10 = payload->var6 + payload->var5;
    if ([(NSData *)self->_data length]>= v10)
    {
      if (payload->var6)
      {
        v11 = [(NSData *)self->_data subdataWithRange:payload->var5];
      }

      else
      {
        v11 = 0;
      }

      v12 = [[UARPSuperBinaryPayloadOS alloc] initWithData:v11 metaData:v9 tag:v5 version:v6];
      v13 = v12;
      if (v12 && [(UARPSuperBinaryPayloadOS *)v12 expandTLVs])
      {
        [(NSMutableArray *)self->_payloads addObject:v13];
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)payloadWith4ccTag:(id)tag
{
  v19 = *MEMORY[0x29EDCA608];
  tagCopy = tag;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_payloads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 tag];
        v11 = [v10 isEqual:tagCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)payloadsWithout4ccTag:(id)tag
{
  v22 = *MEMORY[0x29EDCA608];
  tagCopy = tag;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_payloads;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 tag];
        v13 = [v12 isEqual:tagCopy];

        if ((v13 & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x29EDB8D80] arrayWithArray:v5];
  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

- (id)personalizedMetaData
{
  v32 = *MEMORY[0x29EDCA608];
  [(NSMutableArray *)self->_trimmedTlvs removeAllObjects];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  v3 = self->_tlvs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      [(NSMutableArray *)selfCopy->_trimmedTlvs addObject:v8];
                    }
                  }
                }
              }
            }
          }
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  manifest = selfCopy->_manifest;
  if (manifest)
  {
    v10 = [UARPMetaDataTLVOS tlvFromType:2293403952 length:[(NSData *)manifest length] value:[(NSData *)selfCopy->_manifest bytes]];
    if (v10)
    {
      [(NSMutableArray *)selfCopy->_trimmedTlvs addObject:v10];
    }
  }

  v11 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = selfCopy->_trimmedTlvs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        generateTLV = [*(*(&v22 + 1) + 8 * j) generateTLV];
        [v11 appendData:generateTLV];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x29EDB8DA0] dataWithData:v11];
  v19 = *MEMORY[0x29EDCA608];

  return v18;
}

- (BOOL)expandTLVs
{
  bytes = [(NSData *)self->_metaData bytes];
  if ([(NSData *)self->_metaData length])
  {
    v4 = 0;
    do
    {
      if (v4 + 4 > [(NSData *)self->_metaData length])
      {
        break;
      }

      v5 = uarpHtonl(*&bytes[v4]);
      v6 = v4 + 8;
      if (v4 + 8 > [(NSData *)self->_metaData length])
      {
        break;
      }

      v7 = uarpHtonl(*&bytes[v4 + 4]);
      v4 = v6 + v7;
      if (v4 > [(NSData *)self->_metaData length])
      {
        break;
      }

      v8 = [UARPMetaDataTLVOS tlvFromType:v5 length:v7 value:&bytes[v6]];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      [(NSMutableArray *)self->_tlvs addObject:v8];
    }

    while (v4 < [(NSData *)self->_metaData length]);
  }

  [(UARPSuperBinaryOS *)self processTLVsForPersonalization];
  return 1;
}

- (BOOL)queryTatsuSigningServer:(id)server ssoOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  serverCopy = server;
  if (!serverCopy)
  {
    serverCopy = [MEMORY[0x29EDB8E70] URLWithString:@"https://gs.apple.com:443"];
  }

  tssRequest = self->_tssRequest;
  if (onlyCopy)
  {
    v9 = UARPPersonalizationTSSRequestWithSigningServerSSO(tssRequest, serverCopy);
  }

  else
  {
    v9 = UARPPersonalizationTSSRequestWithSigningServer(tssRequest, serverCopy);
  }

  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:self->_keyManifest];
    manifest = self->_manifest;
    self->_manifest = v11;
  }

  return v10 != 0;
}

- (id)generatePersonalizedSuperBinaryWithoutRRKO
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = [[UARPAssetTagOS alloc] initWithString:@"RRKO"];
  v4 = [[UARPAssetTagOS alloc] initWithString:@"rrko"];
  selfCopy = self;
  v18 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_payloads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 tag];
        if ([v11 isEqual:v3])
        {
        }

        else
        {
          v12 = [v10 tag];
          v13 = [v12 isEqual:v4];

          if ((v13 & 1) == 0)
          {
            [v18 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = [(UARPSuperBinaryOS *)selfCopy generatePersonalizedSuperBinaryInternal:v18];
  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

- (id)generatePersonalizedSuperBinaryInternal:(id)internal
{
  internalCopy = internal;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v33 = objc_opt_new();
  v34[0] = self->_formatVersion;
  v34[1] = 44;
  majorVersion = [(UARPAssetVersionOS *)self->_version majorVersion];
  minorVersion = [(UARPAssetVersionOS *)self->_version minorVersion];
  releaseVersion = [(UARPAssetVersionOS *)self->_version releaseVersion];
  buildVersion = [(UARPAssetVersionOS *)self->_version buildVersion];
  v42 = 44;
  v43 = 40 * [internalCopy count];
  personalizedMetaData = [(UARPSuperBinaryOS *)self personalizedMetaData];
  v40 = v43 + 44;
  v8 = [personalizedMetaData length];
  v9 = v43 + 44 + v8;
  v41 = v8;
  v35 = v9;
  v32 = personalizedMetaData;
  [v6 appendData:personalizedMetaData];
  v10 = calloc([internalCopy count], 0x28uLL);
  if ([internalCopy count])
  {
    v11 = 0;
    v12 = v10 + 4;
    do
    {
      v13 = [internalCopy objectAtIndex:v11];
      personalizedMetaData2 = [v13 personalizedMetaData];
      *(v12 - 4) = 40;
      v15 = [v13 tag];
      *(v12 - 12) = [v15 char1];

      v16 = [v13 tag];
      *(v12 - 11) = [v16 char2];

      v17 = [v13 tag];
      *(v12 - 10) = [v17 char3];

      v18 = [v13 tag];
      *(v12 - 9) = [v18 char4];

      version = [v13 version];
      *(v12 - 2) = [version majorVersion];

      version2 = [v13 version];
      *(v12 - 1) = [version2 minorVersion];

      version3 = [v13 version];
      *v12 = [version3 releaseVersion];

      version4 = [v13 version];
      v12[1] = [version4 buildVersion];

      v12[2] = v9;
      v23 = [personalizedMetaData2 length];
      v12[3] = v23;
      v9 += v23;
      [v6 appendData:personalizedMetaData2];

      ++v11;
      v12 += 10;
    }

    while (v11 < [internalCopy count]);
  }

  if ([internalCopy count])
  {
    v24 = 0;
    v25 = v10 + 9;
    v26 = v33;
    do
    {
      v27 = [internalCopy objectAtIndex:v24];
      personalizedData = [v27 personalizedData];
      *(v25 - 1) = v9;
      v29 = [personalizedData length];
      *v25 = v29;
      v25 += 10;
      v9 += v29;
      [v33 appendData:personalizedData];

      ++v24;
    }

    while (v24 < [internalCopy count]);
  }

  else
  {
    v26 = v33;
  }

  v35 = v9;
  uarpSuperBinaryHeaderEndianSwap(v34, v34);
  [v5 appendBytes:v34 length:44];
  if ([internalCopy count])
  {
    v30 = 0;
    do
    {
      uarpPayloadHeaderEndianSwap(v10, v10);
      [v5 appendBytes:v10 length:40];
      ++v30;
      v10 += 10;
    }

    while (v30 < [internalCopy count]);
  }

  [v5 appendData:v6];
  [v5 appendData:v26];

  return v5;
}

- (BOOL)generateTatsuMeasurements:(unint64_t)measurements relativeURL:(id)l
{
  lCopy = l;
  v7 = objc_opt_new();
  tatsuMeasurements = self->_tatsuMeasurements;
  self->_tatsuMeasurements = v7;

  if ([(UARPSuperBinaryOS *)self expandTLVs])
  {
    [(UARPSuperBinaryOS *)self processTLVsForPersonalization];
  }

  if (self->_needsHostPersonalization)
  {
    [(UARPSuperBinaryOS *)self generateTatsuMeasurements:measurements];
  }

  else
  {
    [(UARPSuperBinaryOS *)self generateTatsuMeasurementsPerPayload:measurements];
  }

  v9 = MEMORY[0x29EDBA0F8];
  lastPathComponent = [lCopy lastPathComponent];
  v11 = [v9 stringWithFormat:@"%@.plist", lastPathComponent];

  v12 = MEMORY[0x29EDB8E70];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];

  v14 = [v12 fileURLWithPath:v11 isDirectory:0 relativeToURL:uRLByDeletingLastPathComponent];
  v15 = [(NSMutableDictionary *)self->_tatsuMeasurements writeToURL:v14 error:0];

  return v15;
}

- (void)generateTatsuMeasurementsPerPayload:(unint64_t)payload
{
  v19 = *MEMORY[0x29EDCA608];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_payloads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (payload)
        {
          v10 = *(*(&v14 + 1) + 8 * v9);
          v11 = 1;
          do
          {
            v12 = [v10 tatsuMeasurements:{v11, v14}];
            if (v12)
            {
              [(NSMutableDictionary *)self->_tatsuMeasurements addEntriesFromDictionary:v12];
            }

            ++v11;
          }

          while (v11 <= payload);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (void)generateTatsuMeasurements:(unint64_t)measurements
{
  manifest = self->_manifest;
  self->_manifest = 0;

  v6 = objc_opt_new();
  tssRequest = self->_tssRequest;
  self->_tssRequest = v6;

  if (measurements)
  {
    v8 = 0;
    do
    {
      v9 = [(UARPSuperBinaryOS *)self tatsuMeasurements:v8];
      if (v9)
      {
        [(NSMutableDictionary *)self->_tatsuMeasurements addEntriesFromDictionary:v9];
      }

      ++v8;
    }

    while (measurements != v8);
  }
}

- (void)processTLVsForPersonalization
{
  v20 = *MEMORY[0x29EDCA608];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_tlvs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_needsHostPersonalization = [v8 isRequired] != 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          ticketPrefix = [v9 ticketPrefix];
          ticketPrefix = self->_ticketPrefix;
          self->_ticketPrefix = ticketPrefix;
LABEL_12:

          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          manifestSuffix = [v9 manifestSuffix];
          ticketPrefix = self->_ticketSuffix;
          self->_ticketSuffix = manifestSuffix;
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_ticketNeedsUnitNumber = [v8 ticketNeedsLogicalUnitNumber] != 0;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            self->_prefixNeedsUnitNumber = [v8 prefixNeedsLogicalUnitNumber] != 0;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              self->_suffixNeedsUnitNumber = [v8 suffixNeedsLogicalUnitNumber] != 0;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(NSMutableArray *)self->_measurements addObject:v8, v15];
              }
            }
          }
        }

LABEL_13:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_life = [v8 life];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_provisioning = [v8 provisioning] != 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_manifestEpoch = [v8 manifestEpoch];
        }

        ++v7;
      }

      while (v5 != v7);
      v13 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v5 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (id)tatsuMeasurements:(unint64_t)measurements
{
  v5 = [(NSMutableArray *)self->_tlvs count];
  if (v5)
  {
    v5 = [(UARPSuperBinaryOS *)self composeTSSRequest:measurements asMeasurement:1];
  }

  return v5;
}

- (id)composeTSSRequest:(unint64_t)request asMeasurement:(BOOL)measurement
{
  measurementCopy = measurement;
  v39 = *MEMORY[0x29EDCA608];
  manifest = self->_manifest;
  self->_manifest = 0;

  v7 = objc_opt_new();
  tssRequest = self->_tssRequest;
  self->_tssRequest = v7;

  requiredTSSOptions = [(UARPSuperBinaryOS *)self requiredTSSOptions];
  v10 = objc_opt_new();
  keyManifest = self->_keyManifest;
  self->_keyManifest = v10;

  [(NSMutableString *)self->_keyManifest appendFormat:@"%@", self->_ticketPrefix];
  if (self->_ticketNeedsUnitNumber)
  {
    [(NSMutableString *)self->_keyManifest appendFormat:@"%lu", request];
  }

  [(NSMutableString *)self->_keyManifest appendFormat:@", Ticket"];
  v12 = objc_opt_new();
  [v12 appendFormat:@"@%@", self->_keyManifest];
  [(NSMutableDictionary *)self->_tssRequest setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:v12];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = requiredTSSOptions;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        unsignedLongValue = [*(*(&v34 + 1) + 8 * v17) unsignedLongValue];
        if (unsignedLongValue <= 9)
        {
          if (unsignedLongValue <= 6)
          {
            if (unsignedLongValue == 4)
            {
              v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"BoardID" unitNumber:request];
              v24 = MEMORY[0x29EDBA070];
              boardID = [(UARPSuperBinaryOS *)self boardID];
            }

            else
            {
              if (unsignedLongValue != 5)
              {
                goto LABEL_40;
              }

              v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"ChipID" unitNumber:request];
              v24 = MEMORY[0x29EDBA070];
              boardID = [(UARPSuperBinaryOS *)self chipID];
            }

            nonce = [v24 numberWithUnsignedInt:boardID];
            goto LABEL_32;
          }

          if (unsignedLongValue == 7)
          {
            v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"ECID" unitNumber:request];
            nonce = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{-[UARPSuperBinaryOS ecID](self, "ecID")}];
            goto LABEL_32;
          }

          if (unsignedLongValue != 8)
          {
            v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"SecurityMode" unitNumber:request];
            securityMode = [(UARPSuperBinaryOS *)self securityMode];
            goto LABEL_34;
          }

          v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"SecurityDomain" unitNumber:request];
          v20 = MEMORY[0x29EDBA070];
          securityDomain = [(UARPSuperBinaryOS *)self securityDomain];
          goto LABEL_30;
        }

        if (unsignedLongValue > 25)
        {
          if (unsignedLongValue == 26)
          {
            v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"Provisioning" unitNumber:request];
            if (![(UARPSuperBinaryOS *)self provisioning])
            {
              goto LABEL_39;
            }

            v28 = self->_tssRequest;
            ecidData = MEMORY[0x29EDB8EB0];
            goto LABEL_38;
          }

          if (unsignedLongValue != 27)
          {
            if (unsignedLongValue != 29)
            {
              goto LABEL_40;
            }

            v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"ECID" unitNumber:request];
            ecidData = self->_ecidData;
LABEL_37:
            v28 = self->_tssRequest;
LABEL_38:
            [(NSMutableDictionary *)v28 setObject:ecidData forKeyedSubscript:v19];
            goto LABEL_39;
          }

          v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"ManifestEpoch" unitNumber:request];
          v20 = MEMORY[0x29EDBA070];
          securityDomain = [(UARPSuperBinaryOS *)self manifestEpoch];
          goto LABEL_30;
        }

        if (unsignedLongValue == 10)
        {
          v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"ProductionMode" unitNumber:request];
          securityMode = [(UARPSuperBinaryOS *)self productionMode];
LABEL_34:
          if (securityMode)
          {
            ecidData = MEMORY[0x29EDB8EB0];
          }

          else
          {
            ecidData = MEMORY[0x29EDB8EA8];
          }

          goto LABEL_37;
        }

        if (unsignedLongValue != 24)
        {
          if (unsignedLongValue != 25)
          {
            goto LABEL_40;
          }

          v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"Life" unitNumber:request];
          v20 = MEMORY[0x29EDBA070];
          securityDomain = [(UARPSuperBinaryOS *)self life];
LABEL_30:
          nonce = [v20 numberWithUnsignedChar:securityDomain];
          goto LABEL_32;
        }

        v19 = [(UARPSuperBinaryOS *)self tssKeyName:@"Nonce" unitNumber:request];
        nonce = [(UARPSuperBinaryOS *)self nonce];
LABEL_32:
        v27 = nonce;
        [(NSMutableDictionary *)self->_tssRequest setObject:nonce forKeyedSubscript:v19];

LABEL_39:
LABEL_40:
        ++v17;
      }

      while (v15 != v17);
      v29 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      v15 = v29;
    }

    while (v29);
  }

  [(UARPSuperBinaryOS *)self processMeasurementsForTSSOptions:self->_tssRequest unitNumber:request asMeasurement:measurementCopy];
  v30 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:self->_tssRequest];

  v31 = *MEMORY[0x29EDCA608];

  return v30;
}

- (id)tssKeyName:(id)name unitNumber:(unint64_t)number
{
  nameCopy = name;
  v7 = objc_opt_new();
  [v7 appendFormat:@"%@", self->_ticketPrefix];
  if (self->_prefixNeedsUnitNumber)
  {
    [v7 appendFormat:@"%lu", number];
  }

  [v7 appendFormat:@", %@", nameCopy];
  if (self->_suffixNeedsUnitNumber)
  {
    [v7 appendFormat:@", %lu", number];
  }

  v8 = [MEMORY[0x29EDBA0F8] stringWithString:v7];

  return v8;
}

- (void)processMeasurementsForTSSOptions:(id)options unitNumber:(unint64_t)number asMeasurement:(BOOL)measurement
{
  v53 = *MEMORY[0x29EDCA608];
  optionsCopy = options;
  selfCopy = self;
  v36 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_payloads;
  v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v29)
  {
    v28 = *v47;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(obj);
        }

        measurements = [*(*(&v46 + 1) + 8 * i) measurements];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v31 = measurements;
        v33 = [measurements countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v33)
        {
          v30 = i;
          v8 = 0;
          v9 = 0;
          v32 = *v43;
          do
          {
            v10 = 0;
            do
            {
              if (*v43 != v32)
              {
                objc_enumerationMutation(v31);
              }

              v34 = v10;
              v11 = *(*(&v42 + 1) + 8 * v10);
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              tlvs = [v11 tlvs];
              v13 = [tlvs countByEnumeratingWithState:&v38 objects:v50 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v39;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v39 != v15)
                    {
                      objc_enumerationMutation(tlvs);
                    }

                    v17 = *(*(&v38 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v18 = v17;
                      longname = [v18 longname];

                      v9 = longname;
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v20 = v17;
                        digest = [v20 digest];

                        v8 = digest;
                      }

                      else
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) != 0 && !measurement)
                        {
                          if ([(UARPSuperBinaryOS *)selfCopy productionMode])
                          {
                            v22 = MEMORY[0x29EDB8EB0];
                          }

                          else
                          {
                            v22 = MEMORY[0x29EDB8EA8];
                          }

                          [v36 setObject:v22 forKeyedSubscript:@"EPRO"];
                        }
                      }
                    }
                  }

                  v14 = [tlvs countByEnumeratingWithState:&v38 objects:v50 count:16];
                }

                while (v14);
              }

              v10 = v34 + 1;
            }

            while (v34 + 1 != v33);
            v33 = [v31 countByEnumeratingWithState:&v42 objects:v51 count:16];
          }

          while (v33);
          if (v9)
          {
            i = v30;
            if (v8)
            {
              [v36 setObject:v8 forKeyedSubscript:v9];
            }
          }

          else
          {
            i = v30;
          }
        }

        else
        {
          v9 = 0;
          v8 = 0;
        }
      }

      v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v29);
  }

  v23 = objc_opt_new();
  [v23 appendFormat:@"%@", selfCopy->_ticketPrefix];
  if (selfCopy->_prefixNeedsUnitNumber)
  {
    [v23 appendFormat:@"%lu", number];
  }

  [v23 appendFormat:@", %@", selfCopy->_ticketSuffix];
  [optionsCopy setObject:v36 forKeyedSubscript:v23];

  v24 = *MEMORY[0x29EDCA608];
}

- (id)requiredTSSOptions
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_tlvs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 tssOption] == -2001563388)
          {
            v11 = 4;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563387)
          {
            v11 = 5;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563386)
          {
            v11 = 7;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563339)
          {
            v11 = 29;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563385)
          {
            v11 = 24;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563383)
          {
            v11 = 8;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563382)
          {
            v11 = 9;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563381)
          {
            v11 = 10;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563343)
          {
            v11 = 25;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563342)
          {
            v11 = 26;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563341)
          {
            v11 = 27;
LABEL_29:
            v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:v11];
            [v3 addObject:v12];
          }

          continue;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset
{
  block = [(NSData *)self->_data subdataWithRange:offset, block];
  self->_totalBytesRequested += [(NSData *)block length];

  return block;
}

- (void)logInternal:(id)internal arguments:(char *)arguments
{
  v6 = MEMORY[0x29EDBA050];
  internalCopy = internal;
  v8 = [[v6 alloc] initWithFormat:internalCopy arguments:arguments];

  [v8 appendString:@"\n"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    delegateQueue = self->_delegateQueue;
    if (delegateQueue)
    {
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 3254779904;
      v13[2] = __43__UARPSuperBinaryOS_logInternal_arguments___block_invoke;
      v13[3] = &__block_descriptor_48_e8_32s40s_e5_v8__0l;
      v13[4] = self;
      v14 = v8;
      dispatch_async(delegateQueue, v13);
      v11 = v14;
    }

    else
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 superbinary:self logString:v8];
      v11 = v12;
    }
  }
}

void __43__UARPSuperBinaryOS_logInternal_arguments___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained superbinary:*(a1 + 32) logString:*(a1 + 40)];
}

@end