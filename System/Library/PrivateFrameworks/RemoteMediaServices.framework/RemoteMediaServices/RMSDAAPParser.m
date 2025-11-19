@interface RMSDAAPParser
+ (id)objectWithData:(id)a3;
+ (id)objectWithData:(id)a3 error:(id *)a4;
+ (id)sharedInstance;
+ (id)typeForDRCPValueType:(int)a3;
- (id)parseBrowseResults:(const char *)a3 length:(unsigned int)a4;
- (id)parseContentCodes:(const char *)a3 length:(unsigned int)a4;
- (id)parseContentCollectionDict:(const char *)a3 length:(unsigned int)a4;
- (id)parseControlPromptCollection:(const char *)a3 length:(unsigned int)a4;
- (id)parseControlPromptResponse:(const char *)a3 length:(unsigned int)a4;
- (id)parseDACPPropertyResponse:(const char *)a3 length:(unsigned int)a4;
- (id)parseGetSpeakersResponse:(const char *)a3 length:(unsigned int)a4;
- (id)parseListingCollection:(const char *)a3 length:(unsigned int)a4 capacity:(int)a5 sectionHeaders:(id *)a6;
- (id)parseListingHeader:(const char *)a3 length:(unsigned int)a4;
- (id)parseListingItem:(const char *)a3 length:(unsigned int)a4;
- (id)parseLogin:(const char *)a3 length:(unsigned int)a4;
- (id)parseMACAddressListing:(const char *)a3 length:(unsigned int)a4;
- (id)parseQueueSectionItems:(const char *)a3 length:(unsigned int)a4;
- (id)parseServerInfo:(const char *)a3 length:(unsigned int)a4;
- (id)parseUTF8String:(const char *)a3 length:(unsigned int)a4;
- (id)parseUnicodeCharacter:(const char *)a3 length:(unsigned int)a4;
- (id)parseXMLContent:(const char *)a3 length:(unsigned int)a4;
- (id)processResponseCode:(unsigned int)a3 bytes:(const char *)a4 length:(unsigned int)a5;
- (void)enumerateDAAPChunksInBytes:(const char *)a3 length:(unsigned int)a4 usingBlock:(id)a5;
- (void)setBool:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
- (void)setDate:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
- (void)setFloat32:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
- (void)setSInt16:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
- (void)setSInt8:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
- (void)setString:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
- (void)setUInt16:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
- (void)setUInt32:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
- (void)setUInt64:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
- (void)setUInt8:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6;
@end

@implementation RMSDAAPParser

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__RMSDAAPParser_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __31__RMSDAAPParser_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)objectWithData:(id)a3
{
  v7 = 0;
  v3 = [a1 objectWithData:a3 error:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = RMSLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(RMSDAAPParser *)v4 objectWithData:v5];
    }
  }

  return v3;
}

+ (id)objectWithData:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[RMSDAAPParser sharedInstance];
  v7 = [v5 length];
  if (v7 <= 7)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response did not include a body (only %zd bytes returned).", v7];
    v9 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v11 = v9;
    v12 = 1;
LABEL_7:
    *a4 = [v11 errorWithDomain:@"RSDAAPParserErrorDomain" code:v12 userInfo:v10];

    a4 = 0;
    goto LABEL_9;
  }

  v13 = [v5 bytes];
  v14 = bswap64(v13[1] | (*v13 << 32));
  v15 = HIDWORD(v14);
  v16 = v7 - 8;
  if (HIDWORD(v14) > v7 - 8)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", (v14 >> 24), ((v14 << 8) >> 24), (v14 >> 8), v14];
    v8 = [v17 stringWithFormat:@"Expected body length (%d bytes) exceeds received body length (%zd bytes) response code '%@'.", v15, v16, v18];;

    v19 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA7E8];
    v22 = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v11 = v19;
    v12 = 2;
    goto LABEL_7;
  }

  a4 = [v6 processResponseCode:? bytes:? length:?];
LABEL_9:

  return a4;
}

- (id)parseUTF8String:(const char *)a3 length:(unsigned int)a4
{
  if (a4)
  {
    v5 = a4 - 1;
    if (a4 == 1 && !*a3)
    {
      v7 = &stru_28747BBC0;
    }

    else
    {
      if (a3[v5])
      {
        v6 = a4;
      }

      else
      {
        v6 = v5;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:v6 encoding:4];
    }
  }

  else
  {
    v7 = &stru_28747BBC0;
  }

  return v7;
}

- (id)parseUnicodeCharacter:(const char *)a3 length:(unsigned int)a4
{
  if (a4 == 2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:2 encoding:2415919360];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)parseXMLContent:(const char *)a3 length:(unsigned int)a4
{
  if (a4)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
    v9 = 0;
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v9];
    v6 = v9;
    if (v6)
    {
      v7 = RMSLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [RMSDAAPParser parseXMLContent:v6 length:v7];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBool:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      v11 = *a3;
      goto LABEL_13;
    }

    if (a4 == 8)
    {
      v12 = *a3 == 0;
LABEL_14:
      v14 = !v12;
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
      [v9 setObject:v15 forKeyedSubscript:v10];

      goto LABEL_18;
    }
  }

  else
  {
    if (a4 == 1)
    {
      v11 = *a3;
      goto LABEL_13;
    }

    if (a4 == 2)
    {
      v11 = *a3;
LABEL_13:
      v12 = v11 == 0;
      goto LABEL_14;
    }
  }

  v13 = RMSLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [RMSDAAPParser setBool:size:inDict:forKey:];
  }

LABEL_18:
}

- (void)setSInt8:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4 == 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithChar:*a3];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMSDAAPParser setSInt8:size:inDict:forKey:];
    }
  }
}

- (void)setUInt8:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4 == 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMSDAAPParser setUInt8:size:inDict:forKey:];
    }
  }
}

- (void)setSInt16:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4 == 2)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithShort:(bswap32(*a3) >> 16)];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMSDAAPParser setSInt16:size:inDict:forKey:];
    }
  }
}

- (void)setUInt16:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4 == 2)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*a3) >> 16];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMSDAAPParser setUInt16:size:inDict:forKey:];
    }
  }
}

- (void)setDate:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4 == 4)
  {
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:bswap32(*a3)];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMSDAAPParser setDate:size:inDict:forKey:];
    }
  }
}

- (void)setUInt32:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4 == 4)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*a3)];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMSDAAPParser setUInt32:size:inDict:forKey:];
    }
  }
}

- (void)setFloat32:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4 == 4)
  {
    LODWORD(v11) = *a3;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    [v9 setObject:v12 forKeyedSubscript:v10];
  }

  else
  {
    v13 = RMSLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [RMSDAAPParser setFloat32:size:inDict:forKey:];
    }
  }
}

- (void)setUInt64:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4 == 8)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(*a3)];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMSDAAPParser setUInt64:size:inDict:forKey:];
    }
  }
}

- (void)setString:(const char *)a3 size:(unsigned int)a4 inDict:(id)a5 forKey:(id)a6
{
  if (a4)
  {
    v7 = *&a4;
    v10 = a6;
    v11 = a5;
    v12 = [(RMSDAAPParser *)self parseUTF8String:a3 length:v7];
    [v11 setValue:v12 forKey:v10];
  }
}

- (void)enumerateDAAPChunksInBytes:(const char *)a3 length:(unsigned int)a4 usingBlock:(id)a5
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v7 = a3 + 8;
      v8 = bswap64(*(a3 + 1) | (*a3 << 32));
      (*(a5 + 2))(a5, v8, a3 + 8);
      a3 = &v7[HIDWORD(v8)];
      v9 = v6 - HIDWORD(v8);
      v6 = v6 - HIDWORD(v8) - 8;
    }

    while (v9 != 8);
  }
}

- (id)parseMACAddressListing:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__RMSDAAPParser_parseMACAddressListing_length___block_invoke;
  v9[3] = &unk_279B08E68;
  v9[4] = self;
  v9[5] = &v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __47__RMSDAAPParser_parseMACAddressListing_length___block_invoke(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 == 1836281185)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(*a3)];
    [v4 addObject:v6];
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 unknownChunk:{a2, a3}];
  }
}

- (id)parseServerInfo:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__RMSDAAPParser_parseServerInfo_length___block_invoke;
  v9[3] = &unk_279B08E90;
  v9[4] = self;
  v9[5] = &v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __40__RMSDAAPParser_parseServerInfo_length___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = HIDWORD(a2);
  if (a2 <= 1836278123)
  {
    if (a2 <= 1634956132)
    {
      if (a2 <= 1634030421)
      {
        if (a2 > 1634028880)
        {
          if (a2 != 1634028881)
          {
            if (a2 == 1634030412 || a2 == 1634030418)
            {
              return;
            }

            goto LABEL_115;
          }

          v20 = *(a1 + 32);
          v21 = *(*(a1 + 40) + 8);
          v22 = @"com.apple.itunes.playlist-contains-media-type";
          goto LABEL_98;
        }

        if (a2 != 1634027088)
        {
          if (a2 == 1634027090)
          {
            v20 = *(a1 + 32);
            v21 = *(*(a1 + 40) + 8);
            v22 = @"com.apple.itunes.supports-fprap";
LABEL_98:
            v25 = *(v21 + 40);

            [v20 setBool:a3 size:v4 inDict:v25 forKey:v22];
            return;
          }

          goto LABEL_115;
        }

        v17 = *(a1 + 32);
        v18 = *(*(a1 + 40) + 8);
        v19 = @"com.apple.itunes.req-fplay";
        goto LABEL_112;
      }

      if (a2 > 1634030705)
      {
        if (a2 == 1634030706)
        {
          return;
        }

        if (a2 != 1634759279)
        {
          if (a2 != 1634953074)
          {
            goto LABEL_115;
          }

          v14 = *(a1 + 32);
          v15 = *(*(a1 + 40) + 8);
          v16 = @"daap.supportsgroups";
          goto LABEL_79;
        }

        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 8);
        v13 = @"daap.protocolversion";
        goto LABEL_103;
      }

      if (a2 != 1634030422)
      {
        if (a2 != 1634030424)
        {
          goto LABEL_115;
        }

        v5 = *(a1 + 32);
        v6 = *(*(a1 + 40) + 8);
        v7 = @"com.apple.itunes.supportedextensions";
LABEL_64:
        v23 = *(v6 + 40);

        [v5 setUInt64:a3 size:v4 inDict:v23 forKey:v7];
        return;
      }

      v11 = *(a1 + 32);
      v12 = *(*(a1 + 40) + 8);
      v13 = @"com.apple.itunes.music-sharing-version";
LABEL_103:
      v26 = *(v12 + 40);

      [v11 setUInt32:a3 size:v4 inDict:v26 forKey:v13];
      return;
    }

    if (a2 <= 1685484664)
    {
      if (a2 <= 1635018083)
      {
        if (a2 == 1634956133)
        {
          v20 = *(a1 + 32);
          v21 = *(*(a1 + 40) + 8);
          v22 = @"daap.supportssetproperty";
          goto LABEL_98;
        }

        if (a2 != 1635013462)
        {
          goto LABEL_115;
        }

        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 8);
        v13 = @"Client-ATV-Sharing-Version";
        goto LABEL_103;
      }

      if (a2 == 1635018084)
      {
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 40) + 8);
        v16 = @"daap.supportsextradata";
LABEL_79:
        v24 = *(v15 + 40);

        [v14 setUInt16:a3 size:v4 inDict:v24 forKey:v16];
        return;
      }

      if (a2 == 1667585615)
      {
        v20 = *(a1 + 32);
        v21 = *(*(a1 + 40) + 8);
        v22 = @"com.apple.itunes.jukebox-voting-enabled";
        goto LABEL_98;
      }

      if (a2 != 1667585869)
      {
        goto LABEL_115;
      }

      v8 = *(a1 + 32);
      v9 = *(*(a1 + 40) + 8);
      v10 = @"com.apple.itunes.jukebox-welcome-message";
      goto LABEL_108;
    }

    if (a2 > 1835885675)
    {
      switch(a2)
      {
        case 0x6D6D646C:
          v8 = *(a1 + 32);
          v9 = *(*(a1 + 40) + 8);
          v10 = @"arcp.model";
          break;
        case 0x6D6D6E66:
          v8 = *(a1 + 32);
          v9 = *(*(a1 + 40) + 8);
          v10 = @"arcp.manufacturer";
          break;
        case 0x6D70726F:
          v11 = *(a1 + 32);
          v12 = *(*(a1 + 40) + 8);
          v13 = @"dmap.protocolversion";
          goto LABEL_103;
        default:
          goto LABEL_115;
      }

      goto LABEL_108;
    }

    if (a2 != 1685484665)
    {
      if (a2 != 1835626093)
      {
        goto LABEL_115;
      }

      v8 = *(a1 + 32);
      v9 = *(*(a1 + 40) + 8);
      v10 = @"dmap.itemname";
LABEL_108:
      v27 = *(v9 + 40);

      [v8 setString:a3 size:v4 inDict:v27 forKey:v10];
      return;
    }

    v17 = *(a1 + 32);
    v18 = *(*(a1 + 40) + 8);
    v19 = @"arcp.devicetype";
LABEL_112:
    v28 = *(v18 + 40);

    [v17 setUInt8:a3 size:v4 inDict:v28 forKey:v19];
    return;
  }

  if (a2 <= 1836281195)
  {
    if (a2 > 1836278882)
    {
      if (a2 <= 1836279159)
      {
        if (a2 != 1836278883)
        {
          if (a2 == 1836279140)
          {
            v20 = *(a1 + 32);
            v21 = *(*(a1 + 40) + 8);
            v22 = @"dmap.supportsedit";
            goto LABEL_98;
          }

LABEL_115:
          v29 = *(a1 + 32);

          [v29 unknownChunk:{a2, a3}];
          return;
        }

        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 8);
        v13 = @"dmap.databasescount";
        goto LABEL_103;
      }

      switch(a2)
      {
        case 0x6D736578:
          v17 = *(a1 + 32);
          v18 = *(*(a1 + 40) + 8);
          v19 = @"dmap.supportsextensions";
          break;
        case 0x6D736978:
          v17 = *(a1 + 32);
          v18 = *(*(a1 + 40) + 8);
          v19 = @"dmap.supportsindex";
          break;
        case 0x6D736C72:
          v17 = *(a1 + 32);
          v18 = *(*(a1 + 40) + 8);
          v19 = @"dmap.loginrequired";
          break;
        default:
          goto LABEL_115;
      }
    }

    else if (a2 <= 1836278132)
    {
      if (a2 == 1836278124)
      {
        v17 = *(a1 + 32);
        v18 = *(*(a1 + 40) + 8);
        v19 = @"dmap.supportsautologout";
      }

      else
      {
        if (a2 != 1836278131)
        {
          goto LABEL_115;
        }

        v17 = *(a1 + 32);
        v18 = *(*(a1 + 40) + 8);
        v19 = @"dmap.authenticationschemes";
      }
    }

    else
    {
      switch(a2)
      {
        case 0x6D736175:
          v17 = *(a1 + 32);
          v18 = *(*(a1 + 40) + 8);
          v19 = @"dmap.authenticationmethod";
          break;
        case 0x6D736272:
          v17 = *(a1 + 32);
          v18 = *(*(a1 + 40) + 8);
          v19 = @"dmap.supportsbrowse";
          break;
        case 0x6D736375:
          v5 = *(a1 + 32);
          v6 = *(*(a1 + 40) + 8);
          v7 = @"dmap.supportscombinedupdate";
          goto LABEL_64;
        default:
          goto LABEL_115;
      }
    }

    goto LABEL_112;
  }

  if (a2 > 1836282988)
  {
    if (a2 <= 1836282995)
    {
      if (a2 == 1836282989)
      {
        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 8);
        v13 = @"dmap.timeoutinterval";
      }

      else
      {
        if (a2 != 1836282991)
        {
          goto LABEL_115;
        }

        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 8);
        v13 = @"dmap.utcoffset";
      }

      goto LABEL_103;
    }

    if (a2 == 1886417519)
    {
      v11 = *(a1 + 32);
      v12 = *(*(a1 + 40) + 8);
      v13 = @"dpap.protocolversion";
      goto LABEL_103;
    }

    if (a2 != 1836283248)
    {
      if (a2 != 1836282996)
      {
        goto LABEL_115;
      }

      v11 = *(a1 + 32);
      v12 = *(*(a1 + 40) + 8);
      v13 = @"dmap.status";
      goto LABEL_103;
    }

    v17 = *(a1 + 32);
    v18 = *(*(a1 + 40) + 8);
    v19 = @"dmap.supportsupdate";
    goto LABEL_112;
  }

  if (a2 > 1836282232)
  {
    switch(a2)
    {
      case 0x6D737179:
        v17 = *(a1 + 32);
        v18 = *(*(a1 + 40) + 8);
        v19 = @"dmap.supportsquery";
        break;
      case 0x6D737273:
        v17 = *(a1 + 32);
        v18 = *(*(a1 + 40) + 8);
        v19 = @"dmap.supportsresolve";
        break;
      case 0x6D737463:
        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 8);
        v13 = @"dmap.utctime";
        goto LABEL_103;
      default:
        goto LABEL_115;
    }

    goto LABEL_112;
  }

  if (a2 != 1836281196)
  {
    if (a2 != 1836281961)
    {
      goto LABEL_115;
    }

    v17 = *(a1 + 32);
    v18 = *(*(a1 + 40) + 8);
    v19 = @"dmap.supportspersistentids";
    goto LABEL_112;
  }

  v30 = [*(a1 + 32) parseMACAddressListing:a3 length:v4];
  [*(*(*(a1 + 40) + 8) + 40) setValue:v30 forKey:@"dmap.macaddresslisting"];
}

- (id)parseContentCollectionDict:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__RMSDAAPParser_parseContentCollectionDict_length___block_invoke;
  v9[3] = &unk_279B08EB8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __51__RMSDAAPParser_parseContentCollectionDict_length___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = HIDWORD(a2);
  switch(a2)
  {
    case 0x6D636E61:
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = *(a1 + 32);

      [v9 setString:a3 size:v4 inDict:v8 forKey:@"name"];
      break;
    case 0x6D637479:
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(**(a1 + 48)) >> 16, v4}];
      [v7 setValue:v11 forKey:@"type"];

      break;
    case 0x6D636E6D:
      v5 = *(*(*(a1 + 40) + 8) + 40);
      v6 = *(a1 + 32);

      [v6 setUInt32:a3 size:v4 inDict:v5 forKey:@"number"];
      break;
    default:
      v10 = *(a1 + 32);

      [v10 unknownChunk:{a2, a3}];
      break;
  }
}

- (id)parseContentCodes:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__RMSDAAPParser_parseContentCodes_length___block_invoke;
  v9[3] = &unk_279B08E90;
  v9[4] = self;
  v9[5] = &v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __42__RMSDAAPParser_parseContentCodes_length___block_invoke(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 == 1835295596)
  {
    v6 = [*(a1 + 32) parseContentCollectionDict:a3 length:HIDWORD(a2)];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }

  else if (a2 == 1836282996)
  {
    if (*a3 != -939524096)
    {
      v4 = RMSLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __42__RMSDAAPParser_parseContentCodes_length___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 unknownChunk:{a2, a3}];
  }
}

- (id)parseLogin:(const char *)a3 length:(unsigned int)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__RMSDAAPParser_parseLogin_length___block_invoke;
  v6[3] = &unk_279B08E68;
  v6[4] = self;
  v6[5] = &v7;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:*&a4 usingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__RMSDAAPParser_parseLogin_length___block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (a2 == 1835821412)
  {
    *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*a3)];

    MEMORY[0x2821F96F8]();
  }

  else if (a2 == 1836282996)
  {
    if (*a3 != -939524096)
    {
      v4 = RMSLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __42__RMSDAAPParser_parseContentCodes_length___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 unknownChunk:{a2, a3}];
  }
}

- (id)parseQueueSectionItems:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__RMSDAAPParser_parseQueueSectionItems_length___block_invoke;
  v9[3] = &unk_279B08E90;
  v9[4] = self;
  v9[5] = &v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __47__RMSDAAPParser_parseQueueSectionItems_length___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 == 1835821428)
  {
    v5 = [*(a1 + 32) parseListingItem:a3 length:HIDWORD(a2)];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 unknownChunk:{a2, a3}];
  }
}

- (id)parseListingItem:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = objc_opt_new();
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__RMSDAAPParser_parseListingItem_length___block_invoke;
  v9[3] = &unk_279B08EE0;
  v9[4] = self;
  v9[5] = &v12;
  v9[6] = v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v13[5];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__RMSDAAPParser_parseListingItem_length___block_invoke(uint64_t a1, unint64_t a2, unsigned __int8 *a3, double a4)
{
  v6 = HIDWORD(a2);
  if (a2 <= 1667329909)
  {
    if (a2 <= 1634168160)
    {
      if (a2 > 1634028874)
      {
        if (a2 > 1634030164)
        {
          if (a2 <= 1634030413)
          {
            if (a2 > 1634030404)
            {
              if (a2 != 1634030405)
              {
                if (a2 != 1634030407)
                {
                  if (a2 == 1634030409)
                  {
                    if (HIDWORD(a2) != 8)
                    {
                      if (HIDWORD(a2) != 4)
                      {
                        return;
                      }

                      v7 = *(a1 + 32);
                      v8 = *(*(a1 + 40) + 8);
                      v9 = @"com.apple.itunes.itms-songid";
                      goto LABEL_405;
                    }

                    v22 = *(a1 + 32);
                    v61 = *(*(a1 + 40) + 8);
                    v24 = @"com.apple.itunes.itms-songid";
                    goto LABEL_423;
                  }

                  goto LABEL_401;
                }

                v13 = *(a1 + 32);
                v14 = *(*(a1 + 40) + 8);
                v15 = @"com.apple.itunes.saved-genius";
                goto LABEL_396;
              }

              v22 = *(a1 + 32);
              v23 = *(*(a1 + 40) + 8);
              v24 = @"com.apple.itunes.store-pers-id";
LABEL_371:
              v54 = *(v23 + 40);
              v55 = HIDWORD(a2);
LABEL_372:

              [v22 setUInt64:a3 size:v55 inDict:v54 forKey:v24];
              return;
            }

            if (a2 != 1634030165)
            {
              if (a2 == 1634030192)
              {
                v44 = [*(a1 + 32) parseUTF8String:a3 length:v6];
                v66 = v44;
                v45 = *(*(*(a1 + 40) + 8) + 40);
                v46 = @"com.apple.itunes.item-redownload-param-2";
LABEL_407:
                [v45 setValue:v44 forKey:v46];
                goto LABEL_416;
              }

              goto LABEL_401;
            }

            v7 = *(a1 + 32);
            v16 = *(*(a1 + 40) + 8);
            v9 = @"com.apple.itunes.rental-pb-duration";
            goto LABEL_391;
          }

          if (a2 > 1634030420)
          {
            switch(a2)
            {
              case 0x61655355:
                v7 = *(a1 + 32);
                v16 = *(*(a1 + 40) + 8);
                v9 = @"com.apple.itunes.season-num";
                break;
              case 0x61655472:
                return;
              case 0x61676163:
                v7 = *(a1 + 32);
                v16 = *(*(a1 + 40) + 8);
                v9 = @"daap.groupalbumcount";
                break;
              default:
                goto LABEL_401;
            }

            goto LABEL_391;
          }

          if (a2 != 1634030414)
          {
            if (a2 != 1634030416)
            {
              goto LABEL_401;
            }

            v13 = *(a1 + 32);
            v14 = *(*(a1 + 40) + 8);
            v15 = @"smartPlaylist";
            goto LABEL_396;
          }

          v10 = *(a1 + 32);
          v11 = *(*(a1 + 40) + 8);
          v12 = @"com.apple.itunes.series-name";
          goto LABEL_385;
        }

        if (a2 > 1634029650)
        {
          if (a2 > 1634030156)
          {
            switch(a2)
            {
              case 0x6165524D:
                v22 = *(a1 + 32);
                v23 = *(*(a1 + 40) + 8);
                v24 = @"com.apple.itunes.remote-itunes-machine-id";
                goto LABEL_371;
              case 0x61655250:
                v7 = *(a1 + 32);
                v16 = *(*(a1 + 40) + 8);
                v9 = @"com.apple.itunes.rental-pb-start";
                break;
              case 0x61655253:
                v7 = *(a1 + 32);
                v16 = *(*(a1 + 40) + 8);
                v9 = @"com.apple.itunes.rental-start";
                break;
              default:
                goto LABEL_401;
            }

            goto LABEL_391;
          }

          if (a2 != 1634029651)
          {
            if (a2 != 1634030148)
            {
              goto LABEL_401;
            }

            v7 = *(a1 + 32);
            v16 = *(*(a1 + 40) + 8);
            v9 = @"com.apple.itunes.rental-duration";
            goto LABEL_391;
          }

          v37 = *(a1 + 32);
          v38 = *(*(a1 + 40) + 8);
          v39 = @"com.apple.itunes.special-playlist";
          goto LABEL_377;
        }

        if (a2 <= 1634028906)
        {
          if (a2 != 1634028875)
          {
            if (a2 != 1634028888)
            {
              goto LABEL_401;
            }

            v66 = [*(a1 + 32) parseXMLContent:a3 length:v6];
            if (!v66)
            {
              goto LABEL_416;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_416;
            }

            v31 = *(*(*(a1 + 40) + 8) + 40);
            v32 = @"com.apple.itunes.movie-info-xml";
            v33 = v66;
            goto LABEL_346;
          }

          v37 = *(a1 + 32);
          v38 = *(*(a1 + 40) + 8);
          v39 = @"mediaKind";
LABEL_377:
          v47 = *(v38 + 40);
          v48 = HIDWORD(a2);
LABEL_378:

          [v37 setUInt8:a3 size:v48 inDict:v47 forKey:v39];
          return;
        }

        if (a2 != 1634028907)
        {
          if (a2 != 1634029635)
          {
            goto LABEL_401;
          }

          v37 = *(a1 + 32);
          v38 = *(*(a1 + 40) + 8);
          v39 = @"com.apple.itunes.is-podcast";
          goto LABEL_377;
        }

LABEL_291:
        if (HIDWORD(a2) == 4)
        {
          v7 = *(a1 + 32);
          v8 = *(*(a1 + 40) + 8);
          v9 = @"mediaKind";
LABEL_405:
          v57 = *(v8 + 40);
          v58 = 4;
          goto LABEL_392;
        }

        if (HIDWORD(a2) != 1)
        {
          return;
        }

        v37 = *(a1 + 32);
        v39 = @"mediaKind";
        v47 = *(*(*(a1 + 40) + 8) + 40);
        v48 = 1;
        goto LABEL_378;
      }

      if (a2 <= 1634026829)
      {
        if (a2 > 1634026322)
        {
          if (a2 > 1634026336)
          {
            if (a2 == 1634026337)
            {
              v44 = [*(a1 + 32) parseUTF8String:a3 length:v6];
              v66 = v44;
              v45 = *(*(*(a1 + 40) + 8) + 40);
              v46 = @"com.apple.itunes.cloud-artwork-url";
              goto LABEL_407;
            }

            if (a2 == 1634026340)
            {
              v22 = *(a1 + 32);
              v23 = *(*(a1 + 40) + 8);
              v24 = @"com.apple.itunes.cloud-id";
              goto LABEL_371;
            }

            if (a2 != 1634026355)
            {
LABEL_401:
              v60 = *(a1 + 32);

              [v60 unknownChunk:{a2, a3}];
              return;
            }

            v7 = *(a1 + 32);
            v16 = *(*(a1 + 40) + 8);
            v9 = @"com.apple.itunes.cloud-connect-status";
LABEL_391:
            v57 = *(v16 + 40);
            v58 = HIDWORD(a2);
LABEL_392:

            [v7 setUInt32:a3 size:v58 inDict:v57 forKey:v9];
            return;
          }

          if (a2 != 1634026323)
          {
            if (a2 == 1634026325)
            {
              v22 = *(a1 + 32);
              v23 = *(*(a1 + 40) + 8);
              v24 = @"com.apple.itunes.cloud-user-id";
              goto LABEL_371;
            }

            goto LABEL_401;
          }

          if (v6 != 4)
          {
            v44 = [*(a1 + 32) parseUTF8String:a3 length:HIDWORD(a2)];
            v66 = v44;
            v45 = *(*(*(a1 + 40) + 8) + 40);
            v46 = @"com.apple.itunes.artworkchecksum";
            goto LABEL_407;
          }

          v52 = *(*(*(a1 + 40) + 8) + 40);
          v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*a3)];
          v53 = [v66 stringValue];
          [v52 setValue:v53 forKey:@"com.apple.itunes.artworkchecksum"];

LABEL_416:

          return;
        }

        if (a2 <= 1634025800)
        {
          if (a2 != 1633841260)
          {
            if (a2 == 1634025796)
            {
              v22 = *(a1 + 32);
              v23 = *(*(a1 + 40) + 8);
              v24 = @"com.apple.itunes.adam-ids-array";
              goto LABEL_371;
            }

            goto LABEL_401;
          }

          v13 = *(a1 + 32);
          v14 = *(*(a1 + 40) + 8);
          v15 = @"basePlaylist";
          goto LABEL_396;
        }

        if (a2 == 1634025801)
        {
          v22 = *(a1 + 32);
          v23 = *(*(a1 + 40) + 8);
          v24 = @"com.apple.itunes.adam-id";
          goto LABEL_371;
        }

        if (a2 != 1634026322)
        {
          goto LABEL_401;
        }

        v10 = *(a1 + 32);
        v11 = *(*(a1 + 40) + 8);
        v12 = @"com.apple.itunes.content-rating";
LABEL_385:
        v56 = *(v11 + 40);

        [v10 setString:a3 size:HIDWORD(a2) inDict:v56 forKey:v12];
        return;
      }

      if (a2 > 1634027586)
      {
        if (a2 <= 1634027602)
        {
          if (a2 == 1634027587)
          {
            if (!*a3)
            {
              return;
            }

            v37 = *(a1 + 32);
            v38 = *(*(a1 + 40) + 8);
            v39 = @"com.apple.itunes.has-chapter-data";
          }

          else
          {
            if (a2 != 1634027588)
            {
              goto LABEL_401;
            }

            v37 = *(a1 + 32);
            v38 = *(*(a1 + 40) + 8);
            v39 = @"com.apple.itunes.is-hd-video";
          }
        }

        else
        {
          if (a2 == 1634027603)
          {
            v13 = *(a1 + 32);
            v14 = *(*(a1 + 40) + 8);
            v15 = @"com.apple.itunes.is-homeshare";
            goto LABEL_396;
          }

          if (a2 != 1634027606)
          {
            if (a2 == 1634027853)
            {
              v22 = *(a1 + 32);
              v23 = *(*(a1 + 40) + 8);
              v24 = @"com.apple.itunes.itunes-machine-id";
              goto LABEL_371;
            }

            goto LABEL_401;
          }

          if (!*a3)
          {
            return;
          }

          v37 = *(a1 + 32);
          v38 = *(*(a1 + 40) + 8);
          v39 = @"hasVideo";
        }

        goto LABEL_377;
      }

      if (a2 <= 1634027089)
      {
        if (a2 != 1634026830)
        {
          if (a2 != 1634026835)
          {
            goto LABEL_401;
          }

          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"com.apple.itunes.episode-sort";
          goto LABEL_391;
        }

        v10 = *(a1 + 32);
        v11 = *(*(a1 + 40) + 8);
        v12 = @"com.apple.itunes.episode-num-str";
        goto LABEL_385;
      }

      if (a2 == 1634027090)
      {
        v13 = *(a1 + 32);
        v14 = *(*(a1 + 40) + 8);
        v15 = @"com.apple.itunes.supports-fprap";
        goto LABEL_396;
      }

      if (a2 != 1634027379)
      {
        goto LABEL_401;
      }

LABEL_219:
      v13 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v15 = @"com.apple.itunes.can-be-genius-seed";
      goto LABEL_396;
    }

    if (a2 > 1634952305)
    {
      if (a2 > 1634956128)
      {
        if (a2 <= 1634956657)
        {
          if (a2 <= 1634956148)
          {
            if (a2 == 1634956129)
            {
              v10 = *(a1 + 32);
              v11 = *(*(a1 + 40) + 8);
              v12 = @"daap.sortartist";
            }

            else
            {
              if (a2 != 1634956142)
              {
                goto LABEL_401;
              }

              v10 = *(a1 + 32);
              v11 = *(*(a1 + 40) + 8);
              v12 = @"daap.sortname";
            }
          }

          else
          {
            switch(a2)
            {
              case 0x61737375:
                v10 = *(a1 + 32);
                v11 = *(*(a1 + 40) + 8);
                v12 = @"daap.sortalbum";
                break;
              case 0x6173746D:
                v7 = *(a1 + 32);
                v16 = *(*(a1 + 40) + 8);
                v9 = @"daap.songtime";
                goto LABEL_391;
              case 0x6173756C:
                v10 = *(a1 + 32);
                v11 = *(*(a1 + 40) + 8);
                v12 = @"daap.songdataurl";
                break;
              default:
                goto LABEL_401;
            }
          }

          goto LABEL_385;
        }

        if (a2 <= 1667328352)
        {
          if (a2 == 1634956658)
          {
            v37 = *(a1 + 32);
            v38 = *(*(a1 + 40) + 8);
            v39 = @"daap.songuserrating";
          }

          else
          {
            if (a2 != 1667328112)
            {
              goto LABEL_401;
            }

            v37 = *(a1 + 32);
            v38 = *(*(a1 + 40) + 8);
            v39 = @"hasPassword";
          }

          goto LABEL_377;
        }

        switch(a2)
        {
          case 0x63616961:
            v13 = *(a1 + 32);
            v14 = *(*(a1 + 40) + 8);
            v15 = @"dacp.selectedForAudio";
            break;
          case 0x63616970:
            v13 = *(a1 + 32);
            v14 = *(*(a1 + 40) + 8);
            v15 = @"isPlaying";
            break;
          case 0x63616976:
            v13 = *(a1 + 32);
            v14 = *(*(a1 + 40) + 8);
            v15 = @"dacp.supportsVideo";
            break;
          default:
            goto LABEL_401;
        }

LABEL_396:
        v59 = *(v14 + 40);

        [v13 setBool:a3 size:HIDWORD(a2) inDict:v59 forKey:v15];
        return;
      }

      if (a2 > 1634953327)
      {
        if (a2 <= 1634955362)
        {
          if (a2 == 1634953328)
          {
            v37 = *(a1 + 32);
            v38 = *(*(a1 + 40) + 8);
            v39 = @"daap.songhasbeenplayed";
            goto LABEL_377;
          }

          if (a2 != 1634954339)
          {
            goto LABEL_401;
          }

          v10 = *(a1 + 32);
          v11 = *(*(a1 + 40) + 8);
          v12 = @"daap.songlongcontentdescription";
          goto LABEL_385;
        }

        if (a2 == 1634955363)
        {
          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"daap.songuserplaycount";
          goto LABEL_391;
        }

        if (a2 == 1634955381)
        {
          v10 = *(a1 + 32);
          v11 = *(*(a1 + 40) + 8);
          v12 = @"daap.songpodcasturl";
          goto LABEL_385;
        }

        if (a2 != 1634955881)
        {
          goto LABEL_401;
        }

        if (HIDWORD(a2) != 8)
        {
          if (HIDWORD(a2) != 4)
          {
            return;
          }

          v7 = *(a1 + 32);
          v8 = *(*(a1 + 40) + 8);
          v9 = @"daap.songartistid";
          goto LABEL_405;
        }

        v22 = *(a1 + 32);
        v61 = *(*(a1 + 40) + 8);
        v24 = @"daap.songartistid";
LABEL_423:
        v54 = *(v61 + 40);
        v55 = 8;
        goto LABEL_372;
      }

      if (a2 <= 1634952812)
      {
        if (a2 != 1634952306)
        {
          if (a2 != 1634952308)
          {
            goto LABEL_401;
          }

          v10 = *(a1 + 32);
          v11 = *(*(a1 + 40) + 8);
          v12 = @"daap.songdescription";
          goto LABEL_385;
        }

        v28 = *(a1 + 32);
        v29 = *(*(a1 + 40) + 8);
        v30 = @"daap.songdatereleased";
LABEL_299:
        v49 = *(v29 + 40);

        [v28 setDate:a3 size:HIDWORD(a2) inDict:v49 forKey:v30];
        return;
      }

      if (a2 == 1634952813)
      {
        v10 = *(a1 + 32);
        v11 = *(*(a1 + 40) + 8);
        v12 = @"daap.songformat";
        goto LABEL_385;
      }

      if (a2 != 1634953070)
      {
        goto LABEL_401;
      }

LABEL_204:
      v10 = *(a1 + 32);
      v11 = *(*(a1 + 40) + 8);
      v12 = @"daap.songgenre";
      goto LABEL_385;
    }

    if (a2 > 1634951786)
    {
      if (a2 <= 1634952051)
      {
        if (a2 <= 1634952045)
        {
          if (a2 != 1634951787)
          {
            if (a2 != 1634951791)
            {
              goto LABEL_401;
            }

            v7 = *(a1 + 32);
            v16 = *(*(a1 + 40) + 8);
            v9 = @"daap.songbookmark";
            goto LABEL_391;
          }

          v37 = *(a1 + 32);
          v38 = *(*(a1 + 40) + 8);
          v39 = @"daap.bookmarkable";
          goto LABEL_377;
        }

        if (a2 != 1634952046)
        {
          if (a2 != 1634952050)
          {
            goto LABEL_401;
          }

          v37 = *(a1 + 32);
          v38 = *(*(a1 + 40) + 8);
          v39 = @"daap.songcontentrating";
          goto LABEL_377;
        }

        v10 = *(a1 + 32);
        v11 = *(*(a1 + 40) + 8);
        v12 = @"daap.songcontentdescription";
        goto LABEL_385;
      }

      if (a2 <= 1634952289)
      {
        if (a2 == 1634952052)
        {
          v10 = *(a1 + 32);
          v11 = *(*(a1 + 40) + 8);
          v12 = @"daap.songcategory";
          goto LABEL_385;
        }

        if (a2 != 1634952289)
        {
          goto LABEL_401;
        }

        v28 = *(a1 + 32);
        v29 = *(*(a1 + 40) + 8);
        v30 = @"daap.songdateadded";
      }

      else
      {
        if (a2 == 1634952290)
        {
          v13 = *(a1 + 32);
          v14 = *(*(a1 + 40) + 8);
          v15 = @"disabled";
          goto LABEL_396;
        }

        if (a2 == 1634952299)
        {
          return;
        }

        if (a2 != 1634952304)
        {
          goto LABEL_401;
        }

        v28 = *(a1 + 32);
        v29 = *(*(a1 + 40) + 8);
        v30 = @"daap.songdatepurchased";
      }

      goto LABEL_299;
    }

    if (a2 <= 1634759532)
    {
      if (a2 <= 1634169455)
      {
        if (a2 == 1634168161)
        {
          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"daap.groupmatchedqueryalbumcount";
        }

        else
        {
          if (a2 != 1634168169)
          {
            goto LABEL_401;
          }

          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"daap.groupmatchedqueryitemcount";
        }

        goto LABEL_391;
      }

      if (a2 != 1634169456)
      {
        if (a2 != 1634759277)
        {
          goto LABEL_401;
        }

        v37 = *(a1 + 32);
        v38 = *(*(a1 + 40) + 8);
        v39 = @"daap.playlistrepeatmode";
        goto LABEL_377;
      }

      v10 = *(a1 + 32);
      v11 = *(*(a1 + 40) + 8);
      v12 = @"daap.songgrouping";
      goto LABEL_385;
    }

    if (a2 > 1634951528)
    {
      switch(a2)
      {
        case 0x61736169:
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(*a3)];
          v66 = v19;
          v20 = *(*(*(a1 + 40) + 8) + 40);
          v21 = @"daap.songalbumid";
          break;
        case 0x6173616C:
          if (!v6)
          {
            return;
          }

          v19 = [*(a1 + 32) parseUTF8String:a3 length:HIDWORD(a2)];
          v66 = v19;
          v20 = *(*(*(a1 + 40) + 8) + 40);
          v21 = @"daap.songalbum";
          break;
        case 0x61736172:
          if (!v6)
          {
            return;
          }

          v19 = [*(a1 + 32) parseUTF8String:a3 length:HIDWORD(a2)];
          v66 = v19;
          v20 = *(*(*(a1 + 40) + 8) + 40);
          v21 = @"daap.songartist";
          break;
        default:
          goto LABEL_401;
      }

      goto LABEL_415;
    }

    if (a2 == 1634759533)
    {
      v37 = *(a1 + 32);
      v38 = *(*(a1 + 40) + 8);
      v39 = @"daap.playlistshufflemode";
      goto LABEL_377;
    }

    if (a2 != 1634951521)
    {
      goto LABEL_401;
    }

LABEL_250:
    if (!v6)
    {
      return;
    }

    v19 = [*(a1 + 32) parseUTF8String:a3 length:HIDWORD(a2)];
    v66 = v19;
    v20 = *(*(*(a1 + 40) + 8) + 40);
    v21 = @"daap.songalbumartist";
    goto LABEL_415;
  }

  if (a2 > 1668116076)
  {
    if (a2 > 1835492466)
    {
      if (a2 <= 1836278130)
      {
        if (a2 > 1835626092)
        {
          if (a2 > 1836082030)
          {
            if (a2 != 1836082031)
            {
              if (a2 == 1836082546)
              {
                v22 = *(a1 + 32);
                v23 = *(*(a1 + 40) + 8);
                v24 = @"dmap.persistentid";
                goto LABEL_371;
              }

              if (a2 == 1836216434)
              {
                v22 = *(a1 + 32);
                v23 = *(*(a1 + 40) + 8);
                v24 = @"dmap.remotepersistentid";
                goto LABEL_371;
              }

              goto LABEL_401;
            }

            if (HIDWORD(a2) != 8)
            {
              if (HIDWORD(a2) != 4)
              {
                return;
              }

              v7 = *(a1 + 32);
              v8 = *(*(a1 + 40) + 8);
              v9 = @"dmap.parentcontainerid";
              goto LABEL_405;
            }

            v22 = *(a1 + 32);
            v61 = *(*(a1 + 40) + 8);
            v24 = @"dmap.parentcontainerid";
            goto LABEL_423;
          }

          if (a2 != 1835626093)
          {
            if (a2 == 1835821428)
            {
              return;
            }

            goto LABEL_401;
          }

          goto LABEL_294;
        }

        if (a2 > 1835625315)
        {
          if (a2 == 1835625316)
          {
            return;
          }

          if (a2 != 1835625827)
          {
            goto LABEL_401;
          }

          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"dmap.itemcount";
          goto LABEL_391;
        }

        if (a2 == 1835492467)
        {
          v37 = *(a1 + 32);
          v38 = *(*(a1 + 40) + 8);
          v39 = @"dmap.groupdownloadstatus";
          goto LABEL_377;
        }

        if (a2 != 1835624804)
        {
          goto LABEL_401;
        }

        if (HIDWORD(a2) != 8)
        {
          if (HIDWORD(a2) != 4)
          {
            return;
          }

          v26 = MEMORY[0x277CCABB0];
          v27 = *a3;
LABEL_177:
          v34 = [v26 numberWithUnsignedInt:bswap32(v27)];
LABEL_414:
          v19 = v34;
          v66 = v34;
          v20 = *(*(*(a1 + 40) + 8) + 40);
          v21 = @"dmap.itemid";
          goto LABEL_415;
        }

        v42 = MEMORY[0x277CCABB0];
        v43 = *a3;
        goto LABEL_413;
      }

      if (a2 <= 1836279917)
      {
        if (a2 > 1836279906)
        {
          if (a2 != 1836279907)
          {
            if (a2 != 1836279913)
            {
              goto LABEL_401;
            }

            v7 = *(a1 + 32);
            v16 = *(*(a1 + 40) + 8);
            v9 = @"headerItemIndex";
            goto LABEL_391;
          }

          v50 = *(*(*(a1 + 40) + 8) + 40);
          v33 = [*(a1 + 32) parseUnicodeCharacter:a3 length:v6];
          v66 = v33;
          v32 = @"headerItemCharacter";
          v31 = v50;
          goto LABEL_346;
        }

        if (a2 == 1836278131)
        {
          v37 = *(a1 + 32);
          v38 = *(*(a1 + 40) + 8);
          v39 = @"dmap.authenticationschemes";
        }

        else
        {
          if (a2 != 1836278133)
          {
            goto LABEL_401;
          }

          v37 = *(a1 + 32);
          v38 = *(*(a1 + 40) + 8);
          v39 = @"dmap.authenticationmethod";
        }

        goto LABEL_377;
      }

      if (a2 <= 1836282995)
      {
        if (a2 != 1836279918)
        {
          if (a2 == 1836281185)
          {
            v22 = *(a1 + 32);
            v23 = *(*(a1 + 40) + 8);
            v24 = @"dacp.macAddress";
            goto LABEL_371;
          }

          goto LABEL_401;
        }

        v7 = *(a1 + 32);
        v16 = *(*(a1 + 40) + 8);
        v9 = @"headerItemCount";
        goto LABEL_391;
      }

      if (a2 == 1836282996)
      {
        v7 = *(a1 + 32);
        v16 = *(*(a1 + 40) + 8);
        v9 = @"dmap.status";
        goto LABEL_391;
      }

      if (a2 == 1885434736)
      {
        v10 = *(a1 + 32);
        v11 = *(*(a1 + 40) + 8);
        v12 = @"aspectRatio";
        goto LABEL_385;
      }

      if (a2 != 1885758580)
      {
        goto LABEL_401;
      }

      v19 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:v6];
      v66 = v19;
      v20 = *(*(*(a1 + 40) + 8) + 40);
      v21 = @"fileData";
    }

    else if (a2 > 1668444011)
    {
      if (a2 > 1835299699)
      {
        if ((a2 - 1835364978) < 2)
        {
          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"dmap.errorresponse";
          goto LABEL_391;
        }

        if (a2 != 1835299700)
        {
          if (a2 != 1835361395)
          {
            goto LABEL_401;
          }

          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"dmap.editcommandssupported";
          goto LABEL_391;
        }

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
        v66 = v19;
        v20 = *(*(*(a1 + 40) + 8) + 40);
        v21 = @"dmap.downloadstatus";
      }

      else
      {
        if (a2 <= 1835234402)
        {
          if (a2 == 1668444012)
          {
            v13 = *(a1 + 32);
            v14 = *(*(a1 + 40) + 8);
            v15 = @"readOnly";
            goto LABEL_396;
          }

          if (a2 != 1668702572)
          {
            goto LABEL_401;
          }

          v40 = *(*(*(a1 + 48) + 8) + 24);
          if (v40 <= 3)
          {
            if (v40 == 1)
            {
              v13 = *(a1 + 32);
              v14 = *(*(a1 + 40) + 8);
              v15 = @"value";
              goto LABEL_396;
            }

            if (v40 != 2)
            {
              if (v40 != 3)
              {
                return;
              }

              v7 = *(a1 + 32);
              v16 = *(*(a1 + 40) + 8);
              v9 = @"value";
              goto LABEL_391;
            }

            v64 = *(a1 + 32);
            v65 = *(*(*(a1 + 40) + 8) + 40);

            [v64 setUInt16:a3 size:HIDWORD(a2) inDict:v65 forKey:@"value"];
          }

          else
          {
            if ((v40 - 5) < 3)
            {
              v10 = *(a1 + 32);
              v11 = *(*(a1 + 40) + 8);
              v12 = @"value";
              goto LABEL_385;
            }

            if (v40 == 4)
            {
              v62 = *(a1 + 32);
              v63 = *(*(*(a1 + 40) + 8) + 40);

              [v62 setFloat32:a3 size:HIDWORD(a2) inDict:v63 forKey:@"value"];
            }
          }

          return;
        }

        if (a2 == 1835234403)
        {
          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"dmap.container";
          goto LABEL_391;
        }

        if (a2 != 1835234409)
        {
          if (a2 != 1835295339)
          {
            goto LABEL_401;
          }

          if (HIDWORD(a2) != 8)
          {
            if (HIDWORD(a2) != 4)
            {
              return;
            }

            v7 = *(a1 + 32);
            v8 = *(*(a1 + 40) + 8);
            v9 = @"dmap.databasekind";
            goto LABEL_405;
          }

          v22 = *(a1 + 32);
          v61 = *(*(a1 + 40) + 8);
          v24 = @"dmap.databasekind";
          goto LABEL_423;
        }

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*a3)];
        v66 = v19;
        v20 = *(*(*(a1 + 40) + 8) + 40);
        v21 = @"dmap.containeritemid";
      }
    }

    else
    {
      if (a2 <= 1668117359)
      {
        if (a2 > 1668117099)
        {
          switch(a2)
          {
            case 0x636D726C:
              v13 = *(a1 + 32);
              v14 = *(*(a1 + 40) + 8);
              v15 = @"supportsRemoteLibrarySelection";
              break;
            case 0x636D7362:
              v13 = *(a1 + 32);
              v14 = *(*(a1 + 40) + 8);
              v15 = @"supportsBonjourSourcesUpdates";
              break;
            case 0x636D7363:
              v13 = *(a1 + 32);
              v14 = *(*(a1 + 40) + 8);
              v15 = @"supportsControlPromptRequests";
              break;
            default:
              goto LABEL_401;
          }

          goto LABEL_396;
        }

        if (a2 != 1668116077)
        {
          if (a2 != 1668116594)
          {
            goto LABEL_401;
          }

          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"dmcp.protocolversion";
          goto LABEL_391;
        }

        v10 = *(a1 + 32);
        v11 = *(*(a1 + 40) + 8);
        v12 = @"name";
        goto LABEL_385;
      }

      if (a2 <= 1668118123)
      {
        if (a2 == 1668117360)
        {
          v13 = *(a1 + 32);
          v14 = *(*(a1 + 40) + 8);
          v15 = @"supportsPlayStatusUpdate";
        }

        else
        {
          if (a2 != 1668117366)
          {
            goto LABEL_401;
          }

          v13 = *(a1 + 32);
          v14 = *(*(a1 + 40) + 8);
          v15 = @"dacp.supportsVolume";
        }

        goto LABEL_396;
      }

      switch(a2)
      {
        case 0x636D766C:
          v33 = [*(a1 + 32) parseListingCollection:a3 length:v6 capacity:0 sectionHeaders:0];
          v66 = v33;
          v31 = *(*(*(a1 + 40) + 8) + 40);
          v32 = @"context";
LABEL_346:
          [v31 setObject:v33 forKey:v32];
          goto LABEL_416;
        case 0x636D766F:
          *&a4 = bswap32(*a3) / 100.0;
          v19 = [MEMORY[0x277CCABB0] numberWithFloat:a4];
          v66 = v19;
          v20 = *(*(*(a1 + 40) + 8) + 40);
          v21 = @"dacp.volume";
          break;
        case 0x636D7674:
          if (v6 != 2)
          {
            return;
          }

          *(*(*(a1 + 48) + 8) + 24) = bswap32(*a3) >> 16;
          v19 = [objc_opt_class() typeForDRCPValueType:*(*(*(a1 + 48) + 8) + 24)];
          v66 = v19;
          v20 = *(*(*(a1 + 40) + 8) + 40);
          v21 = @"type";
          break;
        default:
          goto LABEL_401;
      }
    }

LABEL_415:
    [v20 setObject:v19 forKeyedSubscript:v21];
    goto LABEL_416;
  }

  if (a2 > 1667584358)
  {
    if (a2 > 1667584838)
    {
      if (a2 > 1668113011)
      {
        if (a2 > 1668115818)
        {
          if (a2 != 1668115819)
          {
            if (a2 == 1668115822)
            {
              v7 = *(a1 + 32);
              v16 = *(*(a1 + 40) + 8);
              v9 = @"minimum";
            }

            else
            {
              if (a2 != 1668115832)
              {
                goto LABEL_401;
              }

              v7 = *(a1 + 32);
              v16 = *(*(a1 + 40) + 8);
              v9 = @"maximum";
            }

            goto LABEL_391;
          }

          goto LABEL_291;
        }

        if (a2 == 1668113012)
        {
          v10 = *(a1 + 32);
          v11 = *(*(a1 + 40) + 8);
          v12 = @"libraryServiceType";
        }

        else
        {
          if (a2 != 1668114788)
          {
            goto LABEL_401;
          }

          v10 = *(a1 + 32);
          v11 = *(*(a1 + 40) + 8);
          v12 = @"identifier";
        }
      }

      else
      {
        if (a2 <= 1668112995)
        {
          if (a2 != 1667584839)
          {
            if (a2 == 1667584856)
            {
              v22 = *(a1 + 32);
              v23 = *(*(a1 + 40) + 8);
              v24 = @"kExtDACPSupportediTunesExtensionsCode";
              goto LABEL_371;
            }

            goto LABEL_401;
          }

          v13 = *(a1 + 32);
          v14 = *(*(a1 + 40) + 8);
          v15 = @"com.apple.itunes.supports-genius-control";
          goto LABEL_396;
        }

        switch(a2)
        {
          case 0x636D6264:
            v10 = *(a1 + 32);
            v11 = *(*(a1 + 40) + 8);
            v12 = @"libraryDisplayName";
            break;
          case 0x636D626D:
            v10 = *(a1 + 32);
            v11 = *(*(a1 + 40) + 8);
            v12 = @"libraryServiceDomain";
            break;
          case 0x636D6273:
            v10 = *(a1 + 32);
            v11 = *(*(a1 + 40) + 8);
            v12 = @"libraryServiceName";
            break;
          default:
            goto LABEL_401;
        }
      }

      goto LABEL_385;
    }

    if (a2 <= 1667584363)
    {
      if (a2 > 1667584360)
      {
        if (a2 == 1667584361)
        {
          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"com.apple.itunes.playqueue-section-startindex";
        }

        else
        {
          if (a2 != 1667584363)
          {
            goto LABEL_401;
          }

          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"com.apple.itunes.playqueue-section-kind";
        }

        goto LABEL_391;
      }

      if (a2 != 1667584359)
      {
        v10 = *(a1 + 32);
        v11 = *(*(a1 + 40) + 8);
        v12 = @"com.apple.itunes.playqueue-section-headervalue";
        goto LABEL_385;
      }

      goto LABEL_204;
    }

    if (a2 <= 1667584365)
    {
      if (a2 != 1667584364)
      {
        v7 = *(a1 + 32);
        v16 = *(*(a1 + 40) + 8);
        v9 = @"com.apple.itunes.playqueue-section-numitems";
        goto LABEL_391;
      }

      v10 = *(a1 + 32);
      v11 = *(*(a1 + 40) + 8);
      v12 = @"com.apple.itunes.playqueue-section-headerlabel";
      goto LABEL_385;
    }

    if (a2 != 1667584366)
    {
      if (a2 == 1667584370)
      {
        goto LABEL_250;
      }

      if (a2 != 1667584371)
      {
        goto LABEL_401;
      }

      [*(a1 + 32) setUInt32:a3 size:4 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.databaseid"];
      [*(a1 + 32) setUInt32:a3 + 4 size:4 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.playlistid"];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(a3 + 2))];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v25 forKeyedSubscript:@"dmap.containeritemid"];

      v26 = MEMORY[0x277CCABB0];
      v27 = *(a3 + 3);
      goto LABEL_177;
    }

LABEL_294:
    if (!v6)
    {
      return;
    }

    v19 = [*(a1 + 32) parseUTF8String:a3 length:HIDWORD(a2)];
    v66 = v19;
    v20 = *(*(*(a1 + 40) + 8) + 40);
    v21 = @"dmap.itemname";
    goto LABEL_415;
  }

  if (a2 > 1667582536)
  {
    if (a2 <= 1667584328)
    {
      if (a2 > 1667582549)
      {
        if (a2 == 1667582550)
        {
          v7 = *(a1 + 32);
          v16 = *(*(a1 + 40) + 8);
          v9 = @"com.apple.itunes.jukebox-vote";
          goto LABEL_391;
        }

        if (a2 != 1667583313)
        {
          goto LABEL_401;
        }

        v37 = *(a1 + 32);
        v38 = *(*(a1 + 40) + 8);
        v39 = @"com.apple.itunes.manually-queued";
        goto LABEL_377;
      }

      if (a2 == 1667582537)
      {
        v7 = *(a1 + 32);
        v16 = *(*(a1 + 40) + 8);
        v9 = @"jukeboxCurrent";
        goto LABEL_391;
      }

      if (a2 != 1667582547)
      {
        goto LABEL_401;
      }

      v35 = *(a1 + 32);
      v36 = *(*(*(a1 + 40) + 8) + 40);

      [v35 setSInt16:a3 size:v6 inDict:v36 forKey:@"com.apple.itunes.jukebox-score"];
      return;
    }

    if (a2 > 1667584335)
    {
      if (a2 == 1667584336)
      {
        if (!v6)
        {
          return;
        }

        v66 = [*(*(*(a1 + 40) + 8) + 40) valueForKey:@"com.apple.itunes.playqueue-item-preform-meta"];
        if (!v66)
        {
          v66 = [MEMORY[0x277CBEB18] array];
          [*(*(*(a1 + 40) + 8) + 40) setValue:? forKey:?];
        }

        v51 = [*(a1 + 32) parseUTF8String:a3 length:v6];
        [v66 addObject:v51];

        goto LABEL_416;
      }

      if (a2 == 1667584343)
      {
        v7 = *(a1 + 32);
        v16 = *(*(a1 + 40) + 8);
        v9 = @"com.apple.itunes.playqueue-warning-threshold";
        goto LABEL_391;
      }

      if (a2 != 1667584353)
      {
        goto LABEL_401;
      }

      v10 = *(a1 + 32);
      v11 = *(*(a1 + 40) + 8);
      v12 = @"album";
      goto LABEL_385;
    }

    if (a2 == 1667584329)
    {
      v7 = *(a1 + 32);
      v16 = *(*(a1 + 40) + 8);
      v9 = @"com.apple.itunes.queue-index";
      goto LABEL_391;
    }

    if (a2 != 1667584332)
    {
      goto LABEL_401;
    }

    [*(a1 + 32) setUInt64:a3 size:8 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.databaseid"];
    [*(a1 + 32) setUInt64:a3 + 8 size:8 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.playlistid"];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(*(a3 + 2))];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v41 forKeyedSubscript:@"dmap.containeritemid"];

    v42 = MEMORY[0x277CCABB0];
    v43 = *(a3 + 3);
LABEL_413:
    v34 = [v42 numberWithUnsignedLongLong:bswap64(v43)];
    goto LABEL_414;
  }

  if (a2 <= 1667330932)
  {
    if (a2 > 1667330912)
    {
      if (a2 == 1667330913)
      {
        v7 = *(a1 + 32);
        v16 = *(*(a1 + 40) + 8);
        v9 = @"nowPlayingSpeakersEnabled";
        goto LABEL_391;
      }

      if (a2 != 1667330931)
      {
        goto LABEL_401;
      }

      v13 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v15 = @"dacp.supportsSpeakerSelection";
    }

    else
    {
      if (a2 != 1667329910)
      {
        if (a2 != 1667330162)
        {
          goto LABEL_401;
        }

        v7 = *(a1 + 32);
        v16 = *(*(a1 + 40) + 8);
        v9 = @"dacp.protocolversion";
        goto LABEL_391;
      }

      v13 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v15 = @"supportsMultiSpeakerVolume";
    }

    goto LABEL_396;
  }

  if (a2 <= 1667581009)
  {
    if (a2 == 1667330933)
    {
      v13 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v15 = @"supportsSetUserRating";
    }

    else
    {
      if (a2 != 1667331684)
      {
        goto LABEL_401;
      }

      v13 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v15 = @"dacp.selectedForVideo";
    }

    goto LABEL_396;
  }

  if (a2 == 1667581010)
  {
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 40) + 8);
    v15 = @"supportsDirectionalControl";
    goto LABEL_396;
  }

  if (a2 == 1667581779)
  {
    goto LABEL_219;
  }

  if (a2 != 1667582531)
  {
    goto LABEL_401;
  }

  v17 = *(a1 + 32);
  v18 = *(*(*(a1 + 40) + 8) + 40);

  [v17 setSInt8:a3 size:v6 inDict:v18 forKey:@"com.apple.itunes.jukebox-client-vote"];
}

- (id)parseListingCollection:(const char *)a3 length:(unsigned int)a4 capacity:(int)a5 sectionHeaders:(id *)a6
{
  v7 = *&a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:a5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__RMSDAAPParser_parseListingCollection_length_capacity_sectionHeaders___block_invoke;
  v12[3] = &unk_279B08EB8;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = a6;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v7 usingBlock:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __71__RMSDAAPParser_parseListingCollection_length_capacity_sectionHeaders___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = HIDWORD(a2);
  if (a2 == 1667584339)
  {
    if (*(a1 + 48))
    {
      **(a1 + 48) = [*(a1 + 32) parseQueueSectionItems:a3 length:v4];
    }
  }

  else if (a2 != 1836282996)
  {
    if (a2 == 1835821428)
    {
      v6 = [*(a1 + 32) parseListingItem:a3 length:v4];
      [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    }

    else
    {
      v5 = *(a1 + 32);

      [v5 unknownChunk:{a2, a3}];
    }
  }
}

- (id)parseBrowseResults:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__RMSDAAPParser_parseBrowseResults_length___block_invoke;
  v9[3] = &unk_279B08E68;
  v9[4] = self;
  v9[5] = &v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __43__RMSDAAPParser_parseBrowseResults_length___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 == 1835821428)
  {
    v5 = HIDWORD(a2);
    v8 = objc_opt_new();
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:v5 encoding:4];
    [v8 setObject:v6 forKeyedSubscript:@"dmap.listingitem"];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
  }

  else
  {
    v7 = *(a1 + 32);

    [v7 unknownChunk:{a2, a3}];
  }
}

- (id)parseListingHeader:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__RMSDAAPParser_parseListingHeader_length___block_invoke;
  v9[3] = &unk_279B08F08;
  v9[4] = self;
  v9[5] = &v12;
  v9[6] = v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v13[5];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__RMSDAAPParser_parseListingHeader_length___block_invoke(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  v4 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v5 = HIDWORD(a2);
  if (a2 <= 1668113009)
  {
    if (a2 > 1633973615)
    {
      if (a2 <= 1634759532)
      {
        if (a2 == 1633973616)
        {
          if (v5 == 4)
          {
            v38 = [MEMORY[0x277CBEB38] dictionary];
            [v4[4] setUInt32:a3 size:4 inDict:? forKey:?];
          }

          else
          {
            v38 = [*(a1 + 32) parseDACPPropertyResponse:a3 length:?];
          }

          v15 = *(*(v4[5] + 1) + 40);
          v16 = @"daap.updateinfo";
          v14 = v38;
          goto LABEL_71;
        }

        if (a2 != 1634759277)
        {
LABEL_66:
          v35 = *(a1 + 32);

          [v35 unknownChunk:{a2, a3}];
          return;
        }

        v10 = *(a1 + 32);
        v11 = *(*(v4[5] + 1) + 40);
        v12 = @"daap.playlistrepeatmode";
      }

      else
      {
        if (a2 != 1634759533)
        {
          if (a2 != 1667583569)
          {
            if (a2 == 1667584373)
            {
              v8 = *(a1 + 32);
              v9 = *(*(v4[5] + 1) + 40);

              [v8 setBool:a3 size:v5 inDict:v9 forKey:@"playQueueMode"];
              return;
            }

            goto LABEL_66;
          }

          v17 = *(a1 + 32);
          v18 = *(*(v4[5] + 1) + 40);
          v19 = @"com.apple.itunes.num-manually-queued";
          goto LABEL_63;
        }

        v10 = *(a1 + 32);
        v11 = *(*(v4[5] + 1) + 40);
        v12 = @"daap.playlistshufflemode";
      }

LABEL_40:

      [v10 setUInt8:a3 size:v5 inDict:v11 forKey:v12];
      return;
    }

    if (a2 > 1633837935)
    {
      if (a2 == 1633837936)
      {
        goto LABEL_27;
      }

      v13 = 26478;
    }

    else
    {
      if (a2 == 1633837420)
      {
        goto LABEL_27;
      }

      v13 = 24946;
    }

    if (a2 != (v13 | 0x61620000))
    {
      goto LABEL_66;
    }

LABEL_27:
    v6 = [*(a1 + 32) parseBrowseResults:a3 length:v5];
    v7 = *(*(v4[5] + 1) + 40);
    goto LABEL_28;
  }

  if (a2 > 1836282995)
  {
    if (a2 <= 1836409963)
    {
      if (a2 == 1836282996)
      {
        v17 = *(a1 + 32);
        v18 = *(*(v4[5] + 1) + 40);
        v19 = @"statusCode";
      }

      else
      {
        if (a2 != 1836344175)
        {
          goto LABEL_66;
        }

        v17 = *(a1 + 32);
        v18 = *(*(v4[5] + 1) + 40);
        v19 = @"totalCount";
      }

      goto LABEL_63;
    }

    if (a2 == 1836409964)
    {
      return;
    }

    if (a2 == 1836413810)
    {
      v17 = *(a1 + 32);
      v18 = *(*(v4[5] + 1) + 40);
      v19 = @"revision";
      goto LABEL_63;
    }

    if (a2 != 1836414073)
    {
      goto LABEL_66;
    }

    v10 = *(a1 + 32);
    v11 = *(*(v4[5] + 1) + 40);
    v12 = @"updateType";
    goto LABEL_40;
  }

  if (a2 <= 1835819883)
  {
    if (a2 != 1668113010)
    {
      if (a2 == 1668117353)
      {
        v14 = [*(a1 + 32) parseDACPPropertyResponse:a3 length:v5];
        v15 = *(*(v4[5] + 1) + 40);
        v16 = @"playStatusUpdateInfo";
        v38 = v14;
LABEL_71:
        [v15 setObject:v14 forKey:v16];
        goto LABEL_72;
      }

      goto LABEL_66;
    }

    v17 = *(a1 + 32);
    v18 = *(*(v4[5] + 1) + 40);
    v19 = @"dmcp.bonjoursourcesrevision";
LABEL_63:

    [v17 setUInt32:a3 size:v5 inDict:v18 forKey:v19];
    return;
  }

  if (a2 != 1835819884)
  {
    if (a2 == 1836213103)
    {
      [*(a1 + 32) setUInt32:a3 size:v5 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"returnedCount"];
      *(*(v4[6] + 1) + 24) = bswap32(*a3);
      return;
    }

    if (a2 == 1836279916)
    {
      v6 = [*(a1 + 32) parseListingCollection:a3 length:v5 capacity:30 sectionHeaders:0];
      v7 = *(*(v4[5] + 1) + 40);
LABEL_28:
      v38 = v6;
      [v7 setObject:? forKeyedSubscript:?];
LABEL_72:

      return;
    }

    goto LABEL_66;
  }

  v20 = *(a1 + 32);
  v21 = *(*(v4[6] + 1) + 24);
  v44 = 0;
  v22 = [v20 parseListingCollection:a3 length:v5 capacity:v21 sectionHeaders:&v44];
  v23 = v44;
  [*(*(v4[5] + 1) + 40) setObject:v22 forKeyedSubscript:@"items"];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v36 = v23;
      v37 = v22;
      v39 = v4;
      v28 = 0;
      v29 = *v41;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v40 + 1) + 8 * i);
          v32 = [v31 valueForKey:@"com.apple.itunes.playqueue-section-startindex"];
          v33 = [v32 integerValue];

          if (v33 < 0)
          {
            v34 = v31;

            v28 = v34;
          }

          else if (v33)
          {
            [v24 addObject:v31];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v27);

      v4 = v39;
      if (v28)
      {
        [*(*(v39[5] + 1) + 40) setObject:v28 forKeyedSubscript:@"historySection"];
      }

      v23 = v36;
      v22 = v37;
    }

    else
    {

      v28 = 0;
    }

    if (v24)
    {
      [*(*(v4[5] + 1) + 40) setObject:v24 forKeyedSubscript:@"upNextSections"];
    }
  }
}

- (id)parseControlPromptCollection:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__RMSDAAPParser_parseControlPromptCollection_length___block_invoke;
  v9[3] = &unk_279B08E90;
  v9[4] = self;
  v9[5] = &v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __53__RMSDAAPParser_parseControlPromptCollection_length___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  switch(a2)
  {
    case 0x636D6361:
      v5 = *(*(a1 + 40) + 8);
      v6 = @"attributes";
      return [v4 setString:a3 size:HIDWORD(a2) inDict:*(v5 + 40) forKey:v6];
    case 0x636D6376:
      v5 = *(*(a1 + 40) + 8);
      v6 = @"value";
      return [v4 setString:a3 size:HIDWORD(a2) inDict:*(v5 + 40) forKey:v6];
    case 0x636D6365:
      v5 = *(*(a1 + 40) + 8);
      v6 = @"name";
      return [v4 setString:a3 size:HIDWORD(a2) inDict:*(v5 + 40) forKey:v6];
  }

  return [v4 unknownChunk:{a2, a3}];
}

- (id)parseControlPromptResponse:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = [MEMORY[0x277CBEB38] dictionary];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__RMSDAAPParser_parseControlPromptResponse_length___block_invoke;
  v9[3] = &unk_279B08F08;
  v9[4] = self;
  v9[5] = &v16;
  v9[6] = &v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  if ([v11[5] count])
  {
    [v17[5] setObject:v11[5] forKeyedSubscript:@"items"];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __51__RMSDAAPParser_parseControlPromptResponse_length___block_invoke(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v4 = HIDWORD(a2);
  switch(a2)
  {
    case 0x6D64636C:
      v8 = [*(a1 + 32) parseControlPromptCollection:a3 length:v4];
      [*(*(*(a1 + 48) + 8) + 40) addObject:v8];

      break;
    case 0x6D696964:
      v6 = *(a1 + 32);
      if (v4 == 4)
      {

        [v6 setUInt32:? size:? inDict:? forKey:?];
      }

      else
      {

        [v6 setUInt64:? size:? inDict:? forKey:?];
      }

      break;
    case 0x6D737474:
      if (*a3 != -939524096)
      {
        v5 = RMSLogger();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __42__RMSDAAPParser_parseContentCodes_length___block_invoke_cold_1();
        }
      }

      break;
    default:
      v7 = *(a1 + 32);

      [v7 unknownChunk:{a2, a3}];
      break;
  }
}

- (id)parseGetSpeakersResponse:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__RMSDAAPParser_parseGetSpeakersResponse_length___block_invoke;
  v9[3] = &unk_279B08E90;
  v9[4] = self;
  v9[5] = &v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __49__RMSDAAPParser_parseGetSpeakersResponse_length___block_invoke(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 == 1835295596)
  {
    v6 = [*(a1 + 32) parseListingItem:a3 length:HIDWORD(a2)];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }

  else if (a2 == 1836282996)
  {
    if (*a3 != -939524096)
    {
      v4 = RMSLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __42__RMSDAAPParser_parseContentCodes_length___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 unknownChunk:{a2, a3}];
  }
}

- (id)parseDACPPropertyResponse:(const char *)a3 length:(unsigned int)a4
{
  v4 = *&a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__RMSDAAPParser_parseDACPPropertyResponse_length___block_invoke;
  v9[3] = &unk_279B08E90;
  v9[4] = self;
  v9[5] = &v10;
  [(RMSDAAPParser *)self enumerateDAAPChunksInBytes:a3 length:v4 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __50__RMSDAAPParser_parseDACPPropertyResponse_length___block_invoke(uint64_t a1, unint64_t a2, unsigned int *a3, double a4)
{
  v4 = a3;
  v6 = HIDWORD(a2);
  if (a2 <= 1667330912)
  {
    if (a2 <= 1667327588)
    {
      if (a2 > 1634036850)
      {
        if (a2 <= 1634956396)
        {
          if (a2 != 1634036851)
          {
            if (a2 == 1634951529)
            {
              v7 = *(a1 + 32);
              v8 = *(*(a1 + 40) + 8);
              v9 = @"daap.songalbumid";
              goto LABEL_100;
            }

            if (a2 != 1634955881)
            {
              goto LABEL_141;
            }

            if (HIDWORD(a2) == 8)
            {
              v7 = *(a1 + 32);
              v9 = @"daap.songartistid";
              v24 = *(*(*(a1 + 40) + 8) + 40);
              goto LABEL_149;
            }

            if (HIDWORD(a2) != 4)
            {
              return;
            }

            v11 = *(a1 + 32);
            v12 = @"daap.songartistid";
            v13 = *(*(*(a1 + 40) + 8) + 40);
            goto LABEL_130;
          }

          v10 = *(a1 + 32);
          goto LABEL_138;
        }

        if (a2 != 1634956397)
        {
          if (a2 == 1667326322)
          {
            v11 = *(a1 + 32);
            v14 = *(*(a1 + 40) + 8);
            v12 = @"availableRepeatStates";
            goto LABEL_129;
          }

          if (a2 != 1667326323)
          {
            goto LABEL_141;
          }

          v11 = *(a1 + 32);
          v14 = *(*(a1 + 40) + 8);
          v12 = @"availableShuffleStates";
LABEL_129:
          v13 = *(v14 + 40);
          goto LABEL_130;
        }

        goto LABEL_96;
      }

      if (a2 > 1634030408)
      {
        switch(a2)
        {
          case 0x61655349:
            v11 = *(a1 + 32);
            v14 = *(*(a1 + 40) + 8);
            v12 = @"com.apple.itunes.itms-songid";
            goto LABEL_129;
          case 0x61656177:
            v10 = *(a1 + 32);
            break;
          case 0x61656C62:
            v10 = *(a1 + 32);
            break;
          default:
            goto LABEL_141;
        }

        goto LABEL_138;
      }

      if (a2 == 1634026323)
      {
        if (v6 == 4)
        {
          v32 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:bswap32(*a3)];
          v25 = *(*(*(a1 + 40) + 8) + 40);
          v26 = [v32 stringValue];
          [v25 setValue:v26 forKey:@"com.apple.itunes.artworkchecksum"];
        }

        else
        {
          v32 = [*(a1 + 32) parseUTF8String:a3 length:?];
          v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v32, "longLongValue")}];
          [*(*(*(a1 + 40) + 8) + 40) setValue:v30 forKey:@"com.apple.itunes.artworkchecksum"];
        }

LABEL_145:

        return;
      }

      if (a2 != 1634027379)
      {
        if (a2 != 1634027587)
        {
          goto LABEL_141;
        }

        if (!*a3)
        {
          return;
        }

        v10 = *(a1 + 32);
        goto LABEL_138;
      }

LABEL_60:
      v18 = *(a1 + 32);
      v19 = *(*(a1 + 40) + 8);
      v20 = @"com.apple.itunes.can-be-genius-seed";
      goto LABEL_134;
    }

    if (a2 <= 1667329645)
    {
      if (a2 > 1667329632)
      {
        switch(a2)
        {
          case 0x63616E61:
            v21 = *(a1 + 32);
            v22 = *(*(a1 + 40) + 8);
            v23 = @"daap.songartist";
            break;
          case 0x63616E67:
            v21 = *(a1 + 32);
            v22 = *(*(a1 + 40) + 8);
            v23 = @"NPGenre";
            break;
          case 0x63616E6C:
            v21 = *(a1 + 32);
            v22 = *(*(a1 + 40) + 8);
            v23 = @"daap.songalbum";
            break;
          default:
            goto LABEL_141;
        }

        goto LABEL_123;
      }

      switch(a2)
      {
        case 0x63616665:
          v18 = *(a1 + 32);
          v19 = *(*(a1 + 40) + 8);
          v20 = @"fullscreenEnabled";
          break;
        case 0x63616673:
          v18 = *(a1 + 32);
          v19 = *(*(a1 + 40) + 8);
          v20 = @"fullscreen";
          break;
        case 0x63616B73:
          v10 = *(a1 + 32);
          goto LABEL_138;
        default:
          goto LABEL_141;
      }

LABEL_134:
      v28 = *(v19 + 40);

      [v18 setBool:a3 size:v6 inDict:v28 forKey:v20];
      return;
    }

    if (a2 > 1667330155)
    {
      switch(a2)
      {
        case 0x6361706C:
          [*(a1 + 32) setUInt64:a3 size:8 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.databaseid"];
          [*(a1 + 32) setUInt64:v4 + 2 size:8 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.playlistid"];
          [*(a1 + 32) setUInt64:v4 + 4 size:8 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.containeritemid"];
          v7 = *(a1 + 32);
          v9 = @"dmap.itemid";
          v24 = *(*(*(a1 + 40) + 8) + 40);
          a3 = v4 + 6;
          v6 = 8;
          goto LABEL_149;
        case 0x63617073:
          v10 = *(a1 + 32);
          break;
        case 0x63617270:
          v10 = *(a1 + 32);
          break;
        default:
          goto LABEL_141;
      }

      goto LABEL_138;
    }

    if (a2 != 1667329646)
    {
      if (a2 == 1667329648)
      {
        [*(a1 + 32) setUInt32:a3 size:4 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.databaseid"];
        [*(a1 + 32) setUInt32:v4 + 1 size:4 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.playlistid"];
        [*(a1 + 32) setUInt32:v4 + 2 size:4 inDict:*(*(*(a1 + 40) + 8) + 40) forKey:@"dmap.containeritemid"];
        v11 = *(a1 + 32);
        v12 = @"dmap.itemid";
        v13 = *(*(*(a1 + 40) + 8) + 40);
        a3 = v4 + 3;
        v6 = 4;
LABEL_130:

        [v11 setUInt32:a3 size:v6 inDict:v13 forKey:v12];
        return;
      }

      if (a2 != 1667329652)
      {
        goto LABEL_141;
      }

      v11 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v12 = @"daap.songtimeremaining";
      goto LABEL_129;
    }

    v21 = *(a1 + 32);
    v22 = *(*(a1 + 40) + 8);
    v23 = @"dmap.itemname";
LABEL_123:
    v27 = *(v22 + 40);

    [v21 setString:a3 size:v6 inDict:v27 forKey:v23];
    return;
  }

  if (a2 <= 1667584342)
  {
    if (a2 <= 1667331684)
    {
      if (a2 <= 1667330931)
      {
        switch(a2)
        {
          case 0x63617361:
            v11 = *(a1 + 32);
            v14 = *(*(a1 + 40) + 8);
            v12 = @"nowPlayingSpeakersEnabled";
            goto LABEL_129;
          case 0x63617363:
            v10 = *(a1 + 32);
            break;
          case 0x63617368:
            v10 = *(a1 + 32);
            break;
          default:
            goto LABEL_141;
        }

        goto LABEL_138;
      }

      if (a2 != 1667330932)
      {
        if (a2 == 1667330933)
        {
          return;
        }

        if (a2 != 1667331683)
        {
          goto LABEL_141;
        }

        v18 = *(a1 + 32);
        v19 = *(*(a1 + 40) + 8);
        v20 = @"dacp.volumecontrollable";
        goto LABEL_134;
      }

LABEL_96:
      v11 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v12 = @"daap.songtime";
      goto LABEL_129;
    }

    if (a2 <= 1667583312)
    {
      if (a2 == 1667331685)
      {
        v18 = *(a1 + 32);
        v19 = *(*(a1 + 40) + 8);
        v20 = @"visualizerEnabled";
        goto LABEL_134;
      }

      if (a2 == 1667331699)
      {
        v18 = *(a1 + 32);
        v19 = *(*(a1 + 40) + 8);
        v20 = @"visualizer";
        goto LABEL_134;
      }

      if (a2 != 1667581779)
      {
        goto LABEL_141;
      }

      goto LABEL_60;
    }

    if (a2 == 1667583313)
    {
      v10 = *(a1 + 32);
      goto LABEL_138;
    }

    if (a2 == 1667583569)
    {
      v11 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v12 = @"com.apple.itunes.num-manually-queued";
      goto LABEL_129;
    }

    if (a2 != 1667584326)
    {
      goto LABEL_141;
    }

    v21 = *(a1 + 32);
    v22 = *(*(a1 + 40) + 8);
    v23 = @"com.apple.itunes.active-queue-feed-name";
    goto LABEL_123;
  }

  if (a2 > 1668113011)
  {
    if (a2 > 1668118126)
    {
      if (a2 <= 1836282995)
      {
        if (a2 != 1668118127)
        {
          if (a2 == 1836082546)
          {
            v7 = *(a1 + 32);
            v8 = *(*(a1 + 40) + 8);
            v9 = @"dmap.persistentid";
LABEL_100:
            v24 = *(v8 + 40);
LABEL_149:

            [v7 setUInt64:a3 size:v6 inDict:v24 forKey:v9];
            return;
          }

          goto LABEL_141;
        }

        *&a4 = bswap32(*a3) / 100.0;
        v32 = [MEMORY[0x277CCABB0] numberWithFloat:{a3, v6, a4}];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v32 forKeyedSubscript:@"dacp.volume"];
        goto LABEL_145;
      }

      if (a2 == 1836282996)
      {
        v11 = *(a1 + 32);
        v14 = *(*(a1 + 40) + 8);
        v12 = @"statusCode";
        goto LABEL_129;
      }

      if (a2 == 1836413810)
      {
        v11 = *(a1 + 32);
        v14 = *(*(a1 + 40) + 8);
        v12 = @"dmap.serverrevision";
        goto LABEL_129;
      }

LABEL_141:
      v29 = *(a1 + 32);

      [v29 unknownChunk:{a2, a3}];
      return;
    }

    if (a2 != 1668113012)
    {
      if (a2 == 1668115819)
      {
        v11 = *(a1 + 32);
        v14 = *(*(a1 + 40) + 8);
        v12 = @"mediaKind";
        goto LABEL_129;
      }

      if (a2 != 1668117362)
      {
        goto LABEL_141;
      }

      v11 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v12 = @"dmcp.playstatusrevision";
      goto LABEL_129;
    }

    v21 = *(a1 + 32);
    v22 = *(*(a1 + 40) + 8);
    v23 = @"libraryServiceType";
    goto LABEL_123;
  }

  if (a2 > 1668112995)
  {
    switch(a2)
    {
      case 0x636D6264:
        v21 = *(a1 + 32);
        v22 = *(*(a1 + 40) + 8);
        v23 = @"libraryDisplayName";
        break;
      case 0x636D626D:
        v21 = *(a1 + 32);
        v22 = *(*(a1 + 40) + 8);
        v23 = @"libraryServiceDomain";
        break;
      case 0x636D6273:
        v21 = *(a1 + 32);
        v22 = *(*(a1 + 40) + 8);
        v23 = @"libraryServiceName";
        break;
      default:
        goto LABEL_141;
    }

    goto LABEL_123;
  }

  if (a2 == 1667584343)
  {
    v11 = *(a1 + 32);
    v14 = *(*(a1 + 40) + 8);
    v12 = @"com.apple.itunes.playqueue-warning-threshold";
    goto LABEL_129;
  }

  if (a2 == 1667584373)
  {
    v10 = *(a1 + 32);
LABEL_138:

    [v10 setUInt8:? size:? inDict:? forKey:?];
    return;
  }

  if (a2 != 1667584836)
  {
    goto LABEL_141;
  }

  v15 = [*(a1 + 32) parseXMLContent:a3 length:v6];
  if (v15)
  {
    v31 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v31 objectForKey:@"id"];
      if ([v16 length] && (objc_msgSend(v16, "isEqualToString:", @"(null)") & 1) == 0)
      {
        [*(*(*(a1 + 40) + 8) + 40) setObject:v16 forKey:@"dmap.itemstoreid"];
      }

      v17 = [v31 objectForKey:@"url"];
      if ([v17 length])
      {
        [*(*(*(a1 + 40) + 8) + 40) setObject:v16 forKey:@"secondScreenURL"];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)processResponseCode:(unsigned int)a3 bytes:(const char *)a4 length:(unsigned int)a5
{
  if (a3 > 1668113263)
  {
    if (a3 > 1835364977)
    {
      if (a3 > 1836282485)
      {
        if (a3 == 1836413028 || a3 == 1836409717)
        {
          goto LABEL_46;
        }

        if (a3 == 1836282486)
        {
          v6 = [(RMSDAAPParser *)self parseServerInfo:a4 length:*&a5];
          goto LABEL_47;
        }

        goto LABEL_53;
      }

      if (a3 - 1835364978 >= 2)
      {
        if (a3 == 1835822951)
        {
          v6 = [(RMSDAAPParser *)self parseLogin:a4 length:*&a5];
          goto LABEL_47;
        }

        v5 = 1836278642;
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a3 <= 1668313711)
    {
      if (a3 == 1668113264)
      {
        v6 = [(RMSDAAPParser *)self parseControlPromptResponse:a4 length:*&a5];
        goto LABEL_47;
      }

      if (a3 == 1668114292 || a3 == 1668117364)
      {
        v6 = [(RMSDAAPParser *)self parseDACPPropertyResponse:a4 length:*&a5];
        goto LABEL_47;
      }

      goto LABEL_53;
    }

    if (a3 <= 1835234411)
    {
      if (a3 == 1668313712)
      {
        goto LABEL_46;
      }

      if (a3 == 1835230066)
      {
        v6 = [(RMSDAAPParser *)self parseContentCodes:a4 length:*&a5];
        goto LABEL_47;
      }

      goto LABEL_53;
    }

    if (a3 == 1835234412)
    {
      goto LABEL_46;
    }

    v7 = 1835361379;
LABEL_41:
    if (a3 != v7)
    {
      goto LABEL_53;
    }

LABEL_42:
    v6 = [(RMSDAAPParser *)self parseListingItem:a4 length:*&a5];
    goto LABEL_47;
  }

  if (a3 > 1635148897)
  {
    if (a3 > 1667330927)
    {
      if (a3 <= 1667584337)
      {
        if (a3 == 1667330928)
        {
          v6 = [(RMSDAAPParser *)self parseGetSpeakersResponse:a4 length:*&a5];
          goto LABEL_47;
        }

        if (a3 == 1667581769)
        {
          v6 = [(RMSDAAPParser *)self parseListingCollection:a4 length:*&a5 capacity:0 sectionHeaders:0];
          goto LABEL_47;
        }

        goto LABEL_53;
      }

      if (a3 == 1667584338)
      {
        goto LABEL_46;
      }

      v5 = 1668113013;
LABEL_45:
      if (a3 == v5)
      {
        goto LABEL_46;
      }

      goto LABEL_53;
    }

    if (a3 == 1635148898 || a3 == 1667326825)
    {
      goto LABEL_46;
    }

    v7 = 1667326834;
    goto LABEL_41;
  }

  if (a3 <= 1634165105)
  {
    if (a3 == 1633841775 || a3 == 1633968755)
    {
      goto LABEL_46;
    }

    v5 = 1634165100;
    goto LABEL_45;
  }

  if (a3 <= 1634759534)
  {
    if (a3 != 1634165106)
    {
      v5 = 1634757753;
      goto LABEL_45;
    }

LABEL_46:
    v6 = [(RMSDAAPParser *)self parseListingHeader:a4 length:*&a5];
    goto LABEL_47;
  }

  if (a3 == 1634759535)
  {
    goto LABEL_46;
  }

  if (a3 != 1634890614)
  {
LABEL_53:
    [(RMSDAAPParser *)self unknownChunk:bswap64(*(a4 + 1) | (*a4 << 32)), a4 + 8, *&a5];
  }

  v6 = 0;
LABEL_47:

  return v6;
}

+ (id)typeForDRCPValueType:(int)a3
{
  if ((a3 - 1) > 0x13)
  {
    return @"undefined";
  }

  else
  {
    return off_279B08F28[a3 - 1];
  }
}

+ (void)objectWithData:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_261E98000, a2, OS_LOG_TYPE_ERROR, "Failed to parse DAAP response data. %@", &v4, 0xCu);
}

- (void)parseXMLContent:(uint64_t)a1 length:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_261E98000, a2, OS_LOG_TYPE_ERROR, "Attempting to process XML response: %@", &v2, 0xCu);
}

@end