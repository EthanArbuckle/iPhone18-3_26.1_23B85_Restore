@interface GEOLogFormatter
+ (id)sharedFormatter;
- (GEOLogFormatter)init;
- (id)descriptionForPropertyListData:(id)data capturedStateType:(id)type;
- (id)formattedAttributedStringForType:(id)type value:(id)value;
- (id)formattedStringForEnumType:(id)type number:(id)number;
- (id)formattedStringForEnumType:(id)type value:(id)value;
- (id)formattedStringForProtobufType:(id)type data:(id)data;
- (id)formattedStringForProtobufType:(id)type value:(id)value;
- (id)formattedStringForRequestResponse:(id)response;
- (id)formattedStringForRequestResponseMultipart:(id)multipart partData:(id)data className:(id)name compressed:(unsigned __int8)compressed;
- (id)formattedStringForRequestResponseType:(id)type value:(id)value;
- (id)formattedStringForSinglePartRequestResponse:(id)response compressed:(unsigned __int8)compressed;
- (id)formattedStringForStateType:(id)type data:(id)data;
- (id)formattedStringForStructType:(id)type data:(id)data;
- (id)formattedStringForStructType:(id)type value:(id)value;
@end

@implementation GEOLogFormatter

- (id)descriptionForPropertyListData:(id)data capturedStateType:(id)type
{
  v8 = 0;
  v4 = [MEMORY[0x29EDBA0C0] propertyListWithData:data options:0 format:0 error:&v8];
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

- (id)formattedStringForStructType:(id)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  if (!StringsCaseInsensitiveEqual(typeCopy, @"coordinate"))
  {
    v7 = &formatters;
    v8 = 3;
    while (1)
    {
      v9 = v7[1];
      if ((v9 == -1 || v9 == [dataCopy length]) && StringsCaseInsensitiveEqual(typeCopy, *v7))
      {
        break;
      }

      v7 += 3;
      if (!--v8)
      {
        goto LABEL_16;
      }
    }

    v11 = (v7[2])(dataCopy);
    goto LABEL_20;
  }

  if ([dataCopy length] != 16)
  {
    if ([dataCopy length] != 24)
    {
LABEL_16:
      v10 = 0;
      goto LABEL_21;
    }

    v14 = 0.0;
    v15 = 0.0;
    v16 = 0;
    [dataCopy getBytes:&v14 length:24];
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
  [dataCopy getBytes:&v14 length:16];
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

- (id)formattedStringForStructType:(id)type value:(id)value
{
  typeCopy = type;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(GEOLogFormatter *)self formattedStringForStructType:typeCopy data:valueCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formattedStringForStateType:(id)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  if (![typeCopy hasSuffix:@"/plist"] || (objc_msgSend(typeCopy, "substringToIndex:", objc_msgSend(typeCopy, "length") - objc_msgSend(@"/plist", "length")), v8 = objc_claimAutoreleasedReturnValue(), -[GEOLogFormatter descriptionForPropertyListData:capturedStateType:](self, "descriptionForPropertyListData:capturedStateType:", dataCopy, v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v9 = [dataCopy description];
  }

  return v9;
}

- (id)formattedAttributedStringForType:(id)type value:(id)value
{
  typeCopy = type;
  valueCopy = value;
  v8 = objc_autoreleasePoolPush();
  v9 = [(GEOLogFormatter *)self formattedStringForStructType:typeCopy value:valueCopy];
  if (!v9)
  {
    v9 = [(GEOLogFormatter *)self formattedStringForEnumType:typeCopy value:valueCopy];
    if (!v9)
    {
      v9 = [(GEOLogFormatter *)self formattedStringForProtobufType:typeCopy value:valueCopy];
      if (!v9)
      {
        v9 = [(GEOLogFormatter *)self formattedStringForRequestResponseType:typeCopy value:valueCopy];
        if (!v9)
        {
          v9 = [valueCopy description];
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

    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    requestResponseCollector = v2->_requestResponseCollector;
    v2->_requestResponseCollector = dictionary;
  }

  return v2;
}

+ (id)sharedFormatter
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __34__GEOLogFormatter_sharedFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)formattedStringForProtobufType:(id)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  if ([typeCopy isEqualToString:@"PBCodable"])
  {
    formattedText = [(GEOLogFormatter *)self formattedStringForPBCodableData:dataCopy];
    goto LABEL_14;
  }

  if (![typeCopy hasPrefix:@"pb/"])
  {
    goto LABEL_10;
  }

  v9 = [typeCopy substringFromIndex:3];

  typeCopy = v9;
  if (protobufClassForType_onceToken != -1)
  {
    dispatch_once(&protobufClassForType_onceToken, &__block_literal_global_44);
  }

  v10 = [protobufClassForType_typeToClassName objectForKeyedSubscript:typeCopy];
  formattedText = v10;
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
        v14 = [v13 initWithData:dataCopy];
        formattedText = [v14 formattedText];
      }

      else
      {
        formattedText = 0;
      }

      goto LABEL_14;
    }

LABEL_10:
    formattedText = 0;
    goto LABEL_14;
  }

LABEL_14:

  return formattedText;
}

- (id)formattedStringForProtobufType:(id)type value:(id)value
{
  typeCopy = type;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(GEOLogFormatter *)self formattedStringForProtobufType:typeCopy data:valueCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formattedStringForRequestResponseMultipart:(id)multipart partData:(id)data className:(id)name compressed:(unsigned __int8)compressed
{
  compressedCopy = compressed;
  multipartCopy = multipart;
  dataCopy = data;
  nameCopy = name;
  v13 = multipartCopy[17];
  if (v13 > 0x64 || v13 <= multipartCopy[16])
  {
    v22 = 0;
  }

  else
  {
    requestResponseCollector = [(GEOLogFormatter *)self requestResponseCollector];
    [requestResponseCollector setObject:dataCopy forKeyedSubscript:multipartCopy];

    v15 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:multipartCopy[17]];
    if (multipartCopy[17])
    {
      v16 = 0;
      while (1)
      {
        v17 = [multipartCopy copyWithIndex:v16];
        requestResponseCollector2 = [(GEOLogFormatter *)self requestResponseCollector];
        v19 = [requestResponseCollector2 objectForKeyedSubscript:v17];

        if (!v19)
        {
          break;
        }

        [v15 setObject:v19 forKeyedSubscript:v17];

        ++v16;
        v20 = multipartCopy[17];
        if (v20 <= v16)
        {
          v21 = v20 << 15;
          goto LABEL_10;
        }
      }

      v22 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%016llx/%u/%u] (waiting for %u)", *(multipartCopy + 1), multipartCopy[16], multipartCopy[17], v16];
    }

    else
    {
      v21 = 0;
LABEL_10:
      v17 = [MEMORY[0x29EDB8DF8] dataWithCapacity:v21];
      v23 = multipartCopy[17];
      if (multipartCopy[17])
      {
        v35 = compressedCopy;
        v24 = 0;
        do
        {
          v25 = [multipartCopy copyWithIndex:v24];
          v26 = [v15 objectForKeyedSubscript:v25];
          requestResponseCollector3 = [(GEOLogFormatter *)self requestResponseCollector];
          [requestResponseCollector3 setObject:0 forKeyedSubscript:v25];

          [v17 appendData:v26];
          ++v24;
          v23 = multipartCopy[17];
        }

        while (v23 > v24);
        compressedCopy = v35;
      }

      if (compressedCopy)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = decompress(v17, compressedCopy);
        v30 = v29;
        if (v29)
        {
          v31 = v29;

          v17 = v31;
        }

        objc_autoreleasePoolPop(v28);
        v23 = multipartCopy[17];
      }

      v32 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%016llx/%u/%u] ", *(multipartCopy + 1), multipartCopy[16], v23];
      v33 = formattedStringFromProtobuf(nameCopy, v17);
      v22 = [v32 stringByAppendingString:v33];
    }
  }

  return v22;
}

- (id)formattedStringForSinglePartRequestResponse:(id)response compressed:(unsigned __int8)compressed
{
  compressedCopy = compressed;
  responseCopy = response;
  v15 = 0;
  v16 = 0;
  NameAndRemainderAtOffset = getNameAndRemainderAtOffset(responseCopy, 1uLL, &v16, &v15);
  v7 = v16;
  v8 = v15;
  if (NameAndRemainderAtOffset)
  {
    if (compressedCopy)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = decompress(v8, compressedCopy);
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

- (id)formattedStringForRequestResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy length])
  {
    v9 = 0;
    [responseCopy getBytes:&v9 range:{0, 1}];
    v5 = v9 & 3;
    if (v5 == 2)
    {
      0x3C = [(GEOLogFormatter *)self formattedStringForMultiPartRequestResponse:responseCopy compressed:v9 & 0x3C];
    }

    else
    {
      v6 = 0;
      if (v5 != 1)
      {
        goto LABEL_8;
      }

      0x3C = [(GEOLogFormatter *)self formattedStringForSinglePartRequestResponse:responseCopy compressed:v9 & 0x3C];
    }

    v6 = 0x3C;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (id)formattedStringForRequestResponseType:(id)type value:(id)value
{
  typeCopy = type;
  valueCopy = value;
  if (([typeCopy isEqualToString:@"requestresponse/pbcodable"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"requestresponseV2/pbcodable") & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"requestresponseV3/pbcodable"))
  {
    v8 = valueCopy;
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
        isolation = [(GEOLogFormatter *)self isolation];
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

- (id)formattedStringForEnumType:(id)type number:(id)number
{
  numberCopy = number;
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = (&formatters_114 + 16 * v6);
    if (StringsCaseInsensitiveEqual(type, *v9))
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

  v10 = v9[1](numberCopy);
LABEL_6:

  return v10;
}

- (id)formattedStringForEnumType:(id)type value:(id)value
{
  typeCopy = type;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(GEOLogFormatter *)self formattedStringForEnumType:typeCopy number:valueCopy];
    if (!v8)
    {
      v8 = -[GEOLogFormatter formattedStringForNumberType:unsignedLongLong:](self, "formattedStringForNumberType:unsignedLongLong:", typeCopy, [valueCopy unsignedLongLongValue]);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end