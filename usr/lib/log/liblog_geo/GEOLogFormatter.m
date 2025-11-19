@interface GEOLogFormatter
+ (id)sharedFormatter;
- (GEOLogFormatter)init;
- (id)descriptionForPropertyListData:(id)a3 capturedStateType:(id)a4;
- (id)formattedAttributedStringForType:(id)a3 value:(id)a4;
- (id)formattedStringForEnumType:(id)a3 number:(id)a4;
- (id)formattedStringForEnumType:(id)a3 value:(id)a4;
- (id)formattedStringForProtobufType:(id)a3 data:(id)a4;
- (id)formattedStringForProtobufType:(id)a3 value:(id)a4;
- (id)formattedStringForRequestResponse:(id)a3;
- (id)formattedStringForRequestResponseMultipart:(id)a3 partData:(id)a4 className:(id)a5 compressed:(unsigned __int8)a6;
- (id)formattedStringForRequestResponseType:(id)a3 value:(id)a4;
- (id)formattedStringForSinglePartRequestResponse:(id)a3 compressed:(unsigned __int8)a4;
- (id)formattedStringForStateType:(id)a3 data:(id)a4;
- (id)formattedStringForStructType:(id)a3 data:(id)a4;
- (id)formattedStringForStructType:(id)a3 value:(id)a4;
@end

@implementation GEOLogFormatter

- (id)descriptionForPropertyListData:(id)a3 capturedStateType:(id)a4
{
  v8 = 0;
  v4 = [MEMORY[0x29EDBA0C0] propertyListWithData:a3 options:0 format:0 error:&v8];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 description];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)formattedStringForStructType:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!StringsCaseInsensitiveEqual(v5, @"coordinate"))
  {
    v7 = &formatters;
    v8 = 3;
    while (1)
    {
      v9 = v7[1];
      if ((v9 == -1 || v9 == [v6 length]) && StringsCaseInsensitiveEqual(v5, *v7))
      {
        break;
      }

      v7 += 3;
      if (!--v8)
      {
        goto LABEL_16;
      }
    }

    v11 = (v7[2])(v6);
    goto LABEL_20;
  }

  if ([v6 length] != 16)
  {
    if ([v6 length] != 24)
    {
LABEL_16:
      v10 = 0;
      goto LABEL_21;
    }

    v14 = 0.0;
    v15 = 0.0;
    v16 = 0;
    [v6 getBytes:&v14 length:24];
    if (v14 != -180.0 || v15 != -180.0)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"%f, %f, %f", v14, v15, *&v14, *&v15, v16];
      goto LABEL_19;
    }

LABEL_15:
    v10 = @"Invalid";
    goto LABEL_21;
  }

  v14 = 0.0;
  v15 = 0.0;
  [v6 getBytes:&v14 length:16];
  if (v14 == -180.0 && v15 == -180.0)
  {
    goto LABEL_15;
  }

  [MEMORY[0x29EDBA0F8] stringWithFormat:@"%f, %f", v14, v15, *&v14, *&v15, v13];
  v11 = LABEL_19:;
LABEL_20:
  v10 = v11;
LABEL_21:

  return v10;
}

- (id)formattedStringForStructType:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(GEOLogFormatter *)self formattedStringForStructType:v6 data:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formattedStringForStateType:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 hasSuffix:@"/plist"] || (objc_msgSend(v6, "substringToIndex:", objc_msgSend(v6, "length") - objc_msgSend(@"/plist", "length")), v8 = objc_claimAutoreleasedReturnValue(), -[GEOLogFormatter descriptionForPropertyListData:capturedStateType:](self, "descriptionForPropertyListData:capturedStateType:", v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v9 = [v7 description];
  }

  return v9;
}

- (id)formattedAttributedStringForType:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(GEOLogFormatter *)self formattedStringForStructType:v6 value:v7];
  if (!v9)
  {
    v9 = [(GEOLogFormatter *)self formattedStringForEnumType:v6 value:v7];
    if (!v9)
    {
      v9 = [(GEOLogFormatter *)self formattedStringForProtobufType:v6 value:v7];
      if (!v9)
      {
        v9 = [(GEOLogFormatter *)self formattedStringForRequestResponseType:v6 value:v7];
        if (!v9)
        {
          v9 = [v7 description];
        }
      }
    }
  }

  v10 = v9;
  objc_autoreleasePoolPop(v8);
  v11 = objc_alloc(MEMORY[0x29EDB9F30]);
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_2A1FEFC50;
  }

  v13 = [v11 initWithString:v12];

  return v13;
}

- (GEOLogFormatter)init
{
  v8.receiver = self;
  v8.super_class = GEOLogFormatter;
  v2 = [(GEOLogFormatter *)&v8 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    isolation = v2->_isolation;
    v2->_isolation = v3;

    v5 = [MEMORY[0x29EDB8E00] dictionary];
    requestResponseCollector = v2->_requestResponseCollector;
    v2->_requestResponseCollector = v5;
  }

  return v2;
}

+ (id)sharedFormatter
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __34__GEOLogFormatter_sharedFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedFormatter_onceToken != -1)
  {
    dispatch_once(&sharedFormatter_onceToken, block);
  }

  v2 = sharedFormatter_formatter;

  return v2;
}

uint64_t __34__GEOLogFormatter_sharedFormatter__block_invoke(uint64_t a1)
{
  sharedFormatter_formatter = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

- (id)formattedStringForProtobufType:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"PBCodable"])
  {
    v8 = [(GEOLogFormatter *)self formattedStringForPBCodableData:v7];
    goto LABEL_14;
  }

  if (![v6 hasPrefix:@"pb/"])
  {
    goto LABEL_10;
  }

  v9 = [v6 substringFromIndex:3];

  v6 = v9;
  if (protobufClassForType_onceToken != -1)
  {
    dispatch_once(&protobufClassForType_onceToken, &__block_literal_global_44);
  }

  v10 = [protobufClassForType_typeToClassName objectForKeyedSubscript:v6];
  v8 = v10;
  if (v10)
  {
    v11 = NSClassFromString(v10);
    v12 = v11;

    if (v11)
    {
      v13 = [v11 alloc];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 initWithData:v7];
        v8 = [v14 formattedText];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_14;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_14;
  }

LABEL_14:

  return v8;
}

- (id)formattedStringForProtobufType:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(GEOLogFormatter *)self formattedStringForProtobufType:v6 data:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formattedStringForRequestResponseMultipart:(id)a3 partData:(id)a4 className:(id)a5 compressed:(unsigned __int8)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10[17];
  if (v13 > 0x64 || v13 <= v10[16])
  {
    v22 = 0;
  }

  else
  {
    v14 = [(GEOLogFormatter *)self requestResponseCollector];
    [v14 setObject:v11 forKeyedSubscript:v10];

    v15 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:v10[17]];
    if (v10[17])
    {
      v16 = 0;
      while (1)
      {
        v17 = [v10 copyWithIndex:v16];
        v18 = [(GEOLogFormatter *)self requestResponseCollector];
        v19 = [v18 objectForKeyedSubscript:v17];

        if (!v19)
        {
          break;
        }

        [v15 setObject:v19 forKeyedSubscript:v17];

        ++v16;
        v20 = v10[17];
        if (v20 <= v16)
        {
          v21 = v20 << 15;
          goto LABEL_10;
        }
      }

      v22 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%016llx/%u/%u] (waiting for %u)", *(v10 + 1), v10[16], v10[17], v16];
    }

    else
    {
      v21 = 0;
LABEL_10:
      v17 = [MEMORY[0x29EDB8DF8] dataWithCapacity:v21];
      v23 = v10[17];
      if (v10[17])
      {
        v35 = v6;
        v24 = 0;
        do
        {
          v25 = [v10 copyWithIndex:v24];
          v26 = [v15 objectForKeyedSubscript:v25];
          v27 = [(GEOLogFormatter *)self requestResponseCollector];
          [v27 setObject:0 forKeyedSubscript:v25];

          [v17 appendData:v26];
          ++v24;
          v23 = v10[17];
        }

        while (v23 > v24);
        v6 = v35;
      }

      if (v6)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = decompress(v17, v6);
        v30 = v29;
        if (v29)
        {
          v31 = v29;

          v17 = v31;
        }

        objc_autoreleasePoolPop(v28);
        v23 = v10[17];
      }

      v32 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%016llx/%u/%u] ", *(v10 + 1), v10[16], v23];
      v33 = formattedStringFromProtobuf(v12, v17);
      v22 = [v32 stringByAppendingString:v33];
    }
  }

  return v22;
}

- (id)formattedStringForSinglePartRequestResponse:(id)a3 compressed:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v15 = 0;
  v16 = 0;
  NameAndRemainderAtOffset = getNameAndRemainderAtOffset(v5, 1uLL, &v16, &v15);
  v7 = v16;
  v8 = v15;
  if (NameAndRemainderAtOffset)
  {
    if (v4)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = decompress(v8, v4);
      v11 = v10;
      if (v10)
      {
        v12 = v10;

        v8 = v12;
      }

      objc_autoreleasePoolPop(v9);
    }

    v13 = formattedStringFromProtobuf(v7, v8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)formattedStringForRequestResponse:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v9 = 0;
    [v4 getBytes:&v9 range:{0, 1}];
    v5 = v9 & 3;
    if (v5 == 2)
    {
      v7 = [(GEOLogFormatter *)self formattedStringForMultiPartRequestResponse:v4 compressed:v9 & 0x3C];
    }

    else
    {
      v6 = 0;
      if (v5 != 1)
      {
        goto LABEL_8;
      }

      v7 = [(GEOLogFormatter *)self formattedStringForSinglePartRequestResponse:v4 compressed:v9 & 0x3C];
    }

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (id)formattedStringForRequestResponseType:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"requestresponse/pbcodable"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"requestresponseV2/pbcodable") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"requestresponseV3/pbcodable"))
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (getenv("GEO_RR_Log_Formatter_Disabled"))
      {
        v9 = [v8 debugDescription];
      }

      else
      {
        v13 = 0;
        v14 = &v13;
        v15 = 0x3032000000;
        v16 = __Block_byref_object_copy_;
        v17 = __Block_byref_object_dispose_;
        v18 = 0;
        v10 = [(GEOLogFormatter *)self isolation];
        v12 = v8;
        geo_isolate_sync();

        v9 = v14[5];
        _Block_object_dispose(&v13, 8);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __80__GEOLogFormatter_RequestResponse__formattedStringForRequestResponseType_value___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) formattedStringForRequestResponse:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)formattedStringForEnumType:(id)a3 number:(id)a4
{
  v5 = a4;
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = (&formatters_114 + 16 * v6);
    if (StringsCaseInsensitiveEqual(a3, *v9))
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = v9[1](v5);
LABEL_6:

  return v10;
}

- (id)formattedStringForEnumType:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(GEOLogFormatter *)self formattedStringForEnumType:v6 number:v7];
    if (!v8)
    {
      v8 = -[GEOLogFormatter formattedStringForNumberType:unsignedLongLong:](self, "formattedStringForNumberType:unsignedLongLong:", v6, [v7 unsignedLongLongValue]);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end