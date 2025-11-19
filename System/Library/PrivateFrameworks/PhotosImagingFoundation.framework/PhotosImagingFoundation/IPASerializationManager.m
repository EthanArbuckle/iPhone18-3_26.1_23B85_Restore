@interface IPASerializationManager
+ (char)adjustmentTypeForFormat:(id)a3 formatVersion:(id)a4;
+ (char)debug_adjustmentTypeFromEnvelopeDictionary:(id)a3;
+ (id)_serializerForFormat:(id)a3 formatVersion:(id)a4 error:(id *)a5;
+ (id)debug_deserializeEnvelopeDictionary:(id)a3 error:(id *)a4;
+ (id)debug_serializeEnvelope:(id)a3 error:(id *)a4;
+ (id)deserialize:(id)a3 originator:(id)a4 format:(id)a5 formatVersion:(id)a6 error:(id *)a7;
+ (id)formatForAdjustmentStack:(id)a3;
+ (id)serialize:(id)a3 error:(id *)a4;
+ (id)serialize:(id)a3 format:(id)a4 formatVersion:(id)a5 error:(id *)a6;
+ (id)serializeWithCurrentDefaultFormat:(id)a3 format:(id *)a4 formatVersion:(id *)a5 error:(id *)a6;
+ (void)initialize;
@end

@implementation IPASerializationManager

+ (id)debug_deserializeEnvelopeDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3B558]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3B560]];
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3B550]];
  v15 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3B548]];
  if (v15)
  {
    v16 = [IPASerializationManager deserialize:v15 originator:v8 format:v6 formatVersion:v7 error:a4];
  }

  else if (a4)
  {
    IPAAdjustmentError(1001, @"failed to get data out of archive", v9, v10, v11, v12, v13, v14, v18);
    *a4 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (char)debug_adjustmentTypeFromEnvelopeDictionary:(id)a3
{
  v4 = *MEMORY[0x277D3B558];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3B560]];

  LOBYTE(a1) = [a1 adjustmentTypeForFormat:v6 formatVersion:v7];
  return a1;
}

+ (id)debug_serializeEnvelope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 serialize:v6 error:a4];
  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v6 format];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3B558]];

    v10 = [v6 formatVersion];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3B560]];

    v11 = [v6 originator];
    [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3B550]];

    [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3B548]];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)deserialize:(id)a3 originator:(id)a4 format:(id)a5 formatVersion:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v14)
  {
    _PFAssertFailHandler();
    goto LABEL_24;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_24:
    v29 = _PFAssertFailHandler();
    return [(IPASerializationManager *)v29 serialize:v30 format:v31 formatVersion:v32 error:v33, v34];
  }

  v37 = 0;
  v17 = [a1 _serializerForFormat:v14 formatVersion:v15 error:&v37];
  v18 = v37;
  if (v17)
  {
    if (v12)
    {
      v35 = a7;
      v19 = [MEMORY[0x277CBEB38] dictionary];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"NSData %p with %lu bytes", v12, objc_msgSend(v12, "length")];
      [v19 setObject:v20 forKeyedSubscript:@"data"];

      if (v13)
      {
        v21 = v13;
      }

      else
      {
        v21 = @"nil";
      }

      [v19 setObject:v21 forKeyedSubscript:@"originator"];
      [v19 setObject:v14 forKeyedSubscript:@"format"];
      [v19 setObject:v16 forKeyedSubscript:@"formatVersion"];
      [v19 setObject:objc_opt_class() forKeyedSubscript:@"serializer"];
      v36 = v18;
      v22 = [v17 adjustmentStackFromData:v12 error:&v36];
      v23 = v36;

      if (v22)
      {
        v24 = objc_opt_new();
        [v24 setOriginator:v13];
        [v24 setFormat:v14];
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

        [v19 setObject:v25 forKeyedSubscript:@"deserializeError"];
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IPAAdjustmentErrorDomain" code:1001 userInfo:v19];

        v24 = 0;
        v23 = v26;
      }

      v18 = v23;
      a7 = v35;
    }

    else
    {
      v24 = objc_opt_new();
      [v24 setOriginator:v13];
      [v24 setFormat:v14];
      [v24 setFormatVersion:v16];
      [v24 setAdjustmentStack:0];
    }
  }

  else
  {
    v24 = 0;
  }

  if (a7 && v18)
  {
    v27 = v18;
    *a7 = v18;
  }

  return v24;
}

+ (id)serialize:(id)a3 format:(id)a4 formatVersion:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v23 = 0;
  v13 = [a1 _serializerForFormat:v11 formatVersion:v12 error:&v23];
  v14 = v23;
  if (!v13)
  {
    v16 = 0;
    if (!a6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    v16 = [MEMORY[0x277CBEA90] data];
    if (!a6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v15 = [MEMORY[0x277CBEB38] dictionary];
  [v15 setObject:v11 forKeyedSubscript:@"format"];
  [v15 setObject:v12 forKeyedSubscript:@"formatVersion"];
  [v15 setObject:v10 forKeyedSubscript:@"stack"];
  v22 = v14;
  v16 = [v13 dataFromAdjustmentStack:v10 error:&v22];
  v17 = v22;

  if (!v16)
  {
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = @"nil";
    }

    [v15 setObject:v18 forKeyedSubscript:@"serializeError"];
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IPAAdjustmentErrorDomain" code:1003 userInfo:v15];

    v17 = v19;
  }

  v14 = v17;
  if (a6)
  {
LABEL_13:
    if (v14)
    {
      v20 = v14;
      *a6 = v14;
    }
  }

LABEL_15:

  return v16;
}

+ (id)serialize:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 adjustmentStack];
  v8 = [v6 format];
  v9 = [v6 formatVersion];

  v10 = [a1 serialize:v7 format:v8 formatVersion:v9 error:a4];

  return v10;
}

+ (id)serializeWithCurrentDefaultFormat:(id)a3 format:(id *)a4 formatVersion:(id *)a5 error:(id *)a6
{
  v9 = a3;
  if (!v9)
  {
    v21 = 0;
    v20 = 0;
LABEL_11:
    v10 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  v10 = [IPASerializationManager formatForAdjustmentStack:v9];
  v11 = [v9 minimumVersionForFormat:v10];
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
  v21 = [IPASerializationManager serialize:v9 format:v10 formatVersion:v11 error:&v28];
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

  if (a5)
  {
    v24 = v18;
    *a5 = v18;
  }

  if (a6)
  {
    v25 = v20;
    *a6 = v20;
  }

  v26 = v21;

  return v21;
}

+ (id)formatForAdjustmentStack:(id)a3
{
  v3 = a3;
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

  v6 = [v3 adjustments];
  if ([v6 count] != 1)
  {
    goto LABEL_9;
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:@"SloMo"];

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

+ (char)adjustmentTypeForFormat:(id)a3 formatVersion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 | v7)
  {
    if ([v6 isEqualToString:@"com.apple.photo"] && (objc_msgSend(v7, "lowercaseString"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"0.1.ios"), v9, v10))
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
      v12 = [a1 _serializerForFormat:v6 formatVersion:v7 error:&v15];
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

+ (id)_serializerForFormat:(id)a3 formatVersion:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v16 = v9;
  if (v8 && v9)
  {
    v17 = [a1 serializerMap];
    v18 = [v17 objectForKeyedSubscript:v8];

    v25 = [v18 objectForKeyedSubscript:v16];
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = IPAAdjustmentError(1007, @"no mapping to format:%@ formatVersion:%@", v19, v20, v21, v22, v23, v24, v8);
    }

    if (!a5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v8)
    {
      v27 = @"formatVersion is nil";
      v28 = 1005;
    }

    else if (v9)
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
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  if (v26)
  {
    v29 = v26;
    *a5 = v26;
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