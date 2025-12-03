@interface IPASerializationManager
+ (char)adjustmentTypeForFormat:(id)format formatVersion:(id)version;
+ (char)debug_adjustmentTypeFromEnvelopeDictionary:(id)dictionary;
+ (id)_serializerForFormat:(id)format formatVersion:(id)version error:(id *)error;
+ (id)debug_deserializeEnvelopeDictionary:(id)dictionary error:(id *)error;
+ (id)debug_serializeEnvelope:(id)envelope error:(id *)error;
+ (id)deserialize:(id)deserialize originator:(id)originator format:(id)format formatVersion:(id)version error:(id *)error;
+ (id)formatForAdjustmentStack:(id)stack;
+ (id)serialize:(id)serialize error:(id *)error;
+ (id)serialize:(id)serialize format:(id)format formatVersion:(id)version error:(id *)error;
+ (id)serializeWithCurrentDefaultFormat:(id)format format:(id *)a4 formatVersion:(id *)version error:(id *)error;
+ (void)initialize;
@end

@implementation IPASerializationManager

+ (id)debug_deserializeEnvelopeDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B558]];
  v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B560]];
  v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B550]];
  v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B548]];
  if (v15)
  {
    v16 = [IPASerializationManager deserialize:v15 originator:v8 format:v6 formatVersion:v7 error:error];
  }

  else if (error)
  {
    IPAAdjustmentError(1001, @"failed to get data out of archive", v9, v10, v11, v12, v13, v14, v18);
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (char)debug_adjustmentTypeFromEnvelopeDictionary:(id)dictionary
{
  v4 = *MEMORY[0x277D3B558];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:v4];
  v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B560]];

  LOBYTE(self) = [self adjustmentTypeForFormat:v6 formatVersion:v7];
  return self;
}

+ (id)debug_serializeEnvelope:(id)envelope error:(id *)error
{
  envelopeCopy = envelope;
  v7 = [self serialize:envelopeCopy error:error];
  if (v7)
  {
    v8 = objc_opt_new();
    format = [envelopeCopy format];
    [v8 setObject:format forKeyedSubscript:*MEMORY[0x277D3B558]];

    formatVersion = [envelopeCopy formatVersion];
    [v8 setObject:formatVersion forKeyedSubscript:*MEMORY[0x277D3B560]];

    originator = [envelopeCopy originator];
    [v8 setObject:originator forKeyedSubscript:*MEMORY[0x277D3B550]];

    [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3B548]];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)deserialize:(id)deserialize originator:(id)originator format:(id)format formatVersion:(id)version error:(id *)error
{
  deserializeCopy = deserialize;
  originatorCopy = originator;
  formatCopy = format;
  versionCopy = version;
  if (!formatCopy)
  {
    _PFAssertFailHandler();
    goto LABEL_24;
  }

  v16 = versionCopy;
  if (!versionCopy)
  {
LABEL_24:
    v29 = _PFAssertFailHandler();
    return [(IPASerializationManager *)v29 serialize:v30 format:v31 formatVersion:v32 error:v33, v34];
  }

  v37 = 0;
  v17 = [self _serializerForFormat:formatCopy formatVersion:versionCopy error:&v37];
  v18 = v37;
  if (v17)
  {
    if (deserializeCopy)
    {
      errorCopy = error;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"NSData %p with %lu bytes", deserializeCopy, objc_msgSend(deserializeCopy, "length")];
      [dictionary setObject:v20 forKeyedSubscript:@"data"];

      if (originatorCopy)
      {
        v21 = originatorCopy;
      }

      else
      {
        v21 = @"nil";
      }

      [dictionary setObject:v21 forKeyedSubscript:@"originator"];
      [dictionary setObject:formatCopy forKeyedSubscript:@"format"];
      [dictionary setObject:v16 forKeyedSubscript:@"formatVersion"];
      [dictionary setObject:objc_opt_class() forKeyedSubscript:@"serializer"];
      v36 = v18;
      v22 = [v17 adjustmentStackFromData:deserializeCopy error:&v36];
      v23 = v36;

      if (v22)
      {
        v24 = objc_opt_new();
        [v24 setOriginator:originatorCopy];
        [v24 setFormat:formatCopy];
        [v24 setFormatVersion:v16];
        [v24 setAdjustmentStack:v22];
      }

      else
      {
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = @"nil";
        }

        [dictionary setObject:v25 forKeyedSubscript:@"deserializeError"];
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IPAAdjustmentErrorDomain" code:1001 userInfo:dictionary];

        v24 = 0;
        v23 = v26;
      }

      v18 = v23;
      error = errorCopy;
    }

    else
    {
      v24 = objc_opt_new();
      [v24 setOriginator:originatorCopy];
      [v24 setFormat:formatCopy];
      [v24 setFormatVersion:v16];
      [v24 setAdjustmentStack:0];
    }
  }

  else
  {
    v24 = 0;
  }

  if (error && v18)
  {
    v27 = v18;
    *error = v18;
  }

  return v24;
}

+ (id)serialize:(id)serialize format:(id)format formatVersion:(id)version error:(id *)error
{
  serializeCopy = serialize;
  formatCopy = format;
  versionCopy = version;
  v23 = 0;
  v13 = [self _serializerForFormat:formatCopy formatVersion:versionCopy error:&v23];
  v14 = v23;
  if (!v13)
  {
    data = 0;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!serializeCopy)
  {
    data = [MEMORY[0x277CBEA90] data];
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:formatCopy forKeyedSubscript:@"format"];
  [dictionary setObject:versionCopy forKeyedSubscript:@"formatVersion"];
  [dictionary setObject:serializeCopy forKeyedSubscript:@"stack"];
  v22 = v14;
  data = [v13 dataFromAdjustmentStack:serializeCopy error:&v22];
  v17 = v22;

  if (!data)
  {
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = @"nil";
    }

    [dictionary setObject:v18 forKeyedSubscript:@"serializeError"];
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IPAAdjustmentErrorDomain" code:1003 userInfo:dictionary];

    v17 = v19;
  }

  v14 = v17;
  if (error)
  {
LABEL_13:
    if (v14)
    {
      v20 = v14;
      *error = v14;
    }
  }

LABEL_15:

  return data;
}

+ (id)serialize:(id)serialize error:(id *)error
{
  serializeCopy = serialize;
  adjustmentStack = [serializeCopy adjustmentStack];
  format = [serializeCopy format];
  formatVersion = [serializeCopy formatVersion];

  v10 = [self serialize:adjustmentStack format:format formatVersion:formatVersion error:error];

  return v10;
}

+ (id)serializeWithCurrentDefaultFormat:(id)format format:(id *)a4 formatVersion:(id *)version error:(id *)error
{
  formatCopy = format;
  if (!formatCopy)
  {
    v21 = 0;
    v20 = 0;
LABEL_11:
    v10 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  v10 = [IPASerializationManager formatForAdjustmentStack:formatCopy];
  v11 = [formatCopy minimumVersionForFormat:v10];
  v18 = v11;
  if (v10)
  {
    v19 = v11 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = IPAAdjustmentError(1006, @"both format:%@ and formatVersion:%@ must be non-nil to serialize adjustments:%@", v12, v13, v14, v15, v16, v17, v10);
    v21 = 0;
    goto LABEL_12;
  }

  v28 = 0;
  v21 = [IPASerializationManager serialize:formatCopy format:v10 formatVersion:v11 error:&v28];
  v22 = v28;
  v20 = v22;
  if (!v21)
  {

    goto LABEL_11;
  }

LABEL_12:
  if (a4)
  {
    v23 = v10;
    *a4 = v10;
  }

  if (version)
  {
    v24 = v18;
    *version = v18;
  }

  if (error)
  {
    v25 = v20;
    *error = v20;
  }

  v26 = v21;

  return v21;
}

+ (id)formatForAdjustmentStack:(id)stack
{
  stackCopy = stack;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"com.apple.photo";
    v5 = @"com.apple.photo";
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_11;
  }

  adjustments = [stackCopy adjustments];
  if ([adjustments count] != 1)
  {
    goto LABEL_9;
  }

  v7 = [adjustments objectAtIndexedSubscript:0];
  identifier = [v7 identifier];
  v9 = [identifier isEqualToString:@"SloMo"];

  if ((v9 & 1) == 0)
  {

LABEL_9:
    v4 = @"com.apple.video";
    v11 = @"com.apple.video";
    goto LABEL_10;
  }

  v4 = @"com.apple.video.slomo";
  v10 = @"com.apple.video.slomo";

LABEL_10:
LABEL_11:

  return v4;
}

+ (char)adjustmentTypeForFormat:(id)format formatVersion:(id)version
{
  v18 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  versionCopy = version;
  if (formatCopy | versionCopy)
  {
    if ([formatCopy isEqualToString:@"com.apple.photo"] && (objc_msgSend(versionCopy, "lowercaseString"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"0.1.ios"), v9, v10))
    {
      v11 = IPAAdjustmentGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v8 = 2;
        _os_log_impl(&dword_25E5BB000, v11, OS_LOG_TYPE_ERROR, "[IPASerializationManager] treating adjustments as opaque. formatVersion: 0.1.ios", buf, 2u);
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v15 = 0;
      v12 = [self _serializerForFormat:formatCopy formatVersion:versionCopy error:&v15];
      v11 = v15;
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = 4;
          }

          else
          {
            v8 = 0;
          }
        }
      }

      else
      {
        v13 = IPAAdjustmentGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v17 = v11;
          _os_log_impl(&dword_25E5BB000, v13, OS_LOG_TYPE_ERROR, "[IPASerializationManager] treating adjustments as opaque. %@", buf, 0xCu);
        }

        v8 = 2;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)_serializerForFormat:(id)format formatVersion:(id)version error:(id *)error
{
  formatCopy = format;
  versionCopy = version;
  v16 = versionCopy;
  if (formatCopy && versionCopy)
  {
    serializerMap = [self serializerMap];
    v18 = [serializerMap objectForKeyedSubscript:formatCopy];

    v25 = [v18 objectForKeyedSubscript:v16];
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = IPAAdjustmentError(1007, @"no mapping to format:%@ formatVersion:%@", v19, v20, v21, v22, v23, v24, formatCopy);
    }

    if (!error)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (formatCopy)
    {
      v27 = @"formatVersion is nil";
      v28 = 1005;
    }

    else if (versionCopy)
    {
      v27 = @"format is nil";
      v28 = 1004;
    }

    else
    {
      v27 = @"format and formatVersion are nil";
      v28 = 1006;
    }

    v26 = IPAAdjustmentError(v28, v27, v10, v11, v12, v13, v14, v15, v31);
    v25 = 0;
    if (!error)
    {
      goto LABEL_16;
    }
  }

  if (v26)
  {
    v29 = v26;
    *error = v26;
  }

LABEL_16:

  return v25;
}

+ (void)initialize
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (!s_serializerMap)
  {
    v2 = objc_opt_new();
    v3 = objc_opt_new();
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v4 setObject:v2 forKeyedSubscript:@"0.2"];
    [v4 setObject:v2 forKeyedSubscript:@"0.2.OSX"];
    [v4 setObject:v2 forKeyedSubscript:@"0.2.iOS"];
    [v4 setObject:v2 forKeyedSubscript:@"1.0.OSX"];
    [v4 setObject:v2 forKeyedSubscript:@"1.0.iOS"];
    [v4 setObject:v2 forKeyedSubscript:@"1"];
    [v4 setObject:v2 forKeyedSubscript:@"1.0"];
    [v4 setObject:v2 forKeyedSubscript:@"1.1"];
    [v4 setObject:v2 forKeyedSubscript:@"1.2"];
    [v4 setObject:v2 forKeyedSubscript:@"1.3"];
    [v4 setObject:v2 forKeyedSubscript:@"1.4"];
    [v4 setObject:v2 forKeyedSubscript:@"1.5"];
    [v4 setObject:v2 forKeyedSubscript:@"1.5.1"];
    [v4 setObject:v2 forKeyedSubscript:@"1.6"];
    [v4 setObject:v2 forKeyedSubscript:@"1.7"];
    [v4 setObject:v2 forKeyedSubscript:@"1.8"];
    [v4 setObject:v2 forKeyedSubscript:@"1.9"];
    [v4 setObject:v2 forKeyedSubscript:@"1.9.1"];
    [v4 setObject:v2 forKeyedSubscript:@"1.10"];
    [v4 setObject:v2 forKeyedSubscript:@"1.11"];
    [v4 setObject:v2 forKeyedSubscript:@"1.12"];
    [v4 setObject:v2 forKeyedSubscript:@"1.12.1"];
    [v4 setObject:v2 forKeyedSubscript:@"1.12.2"];
    [v4 setObject:v2 forKeyedSubscript:@"1.13"];
    [v4 setObject:v2 forKeyedSubscript:@"1.14"];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
    v15[0] = v5;
    v14[0] = @"com.apple.photo";
    v14[1] = @"com.apple.video";
    v12[0] = @"0.1";
    v12[1] = @"1.0";
    v13[0] = v2;
    v13[1] = v2;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[1] = v6;
    v14[2] = @"com.apple.video.slomo";
    v10[0] = @"1.1";
    v10[1] = @"1.0";
    v11[0] = v3;
    v11[1] = v2;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v15[2] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v9 = s_serializerMap;
    s_serializerMap = v8;
  }
}

@end