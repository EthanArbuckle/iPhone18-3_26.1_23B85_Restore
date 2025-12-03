@interface PKMediaCol
- (BOOL)getMargins:(pwg_size_s *)margins;
- (NSString)mediaKey;
- (NSString)mediaSource;
- (NSString)mediaType;
- (PKMediaSize)mediaSize;
- (PKMediaSourceProperties)mediaSourceProperties;
- (id)userCodableDictionary;
@end

@implementation PKMediaCol

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  mediaSize = [(PKMediaCol *)self mediaSize];
  v5 = mediaSize;
  if (mediaSize)
  {
    userCodableDictionary = [mediaSize userCodableDictionary];
    [v3 setObject:userCodableDictionary forKeyedSubscript:@"media-size"];
  }

  mediaSourceProperties = [(PKMediaCol *)self mediaSourceProperties];
  v8 = mediaSourceProperties;
  if (mediaSourceProperties)
  {
    userCodableDictionary2 = [mediaSourceProperties userCodableDictionary];
    [v3 setObject:userCodableDictionary2 forKeyedSubscript:@"media-source-properties"];
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  if ([(PKMediaCol *)self getMargins:&v18])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v19)];
    [v3 setObject:v10 forKeyedSubscript:@"media-bottom-margin"];

    v11 = [MEMORY[0x277CCABB0] numberWithInt:v19];
    [v3 setObject:v11 forKeyedSubscript:@"media-left-margin"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v20)];
    [v3 setObject:v12 forKeyedSubscript:@"media-top-margin"];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:v20];
    [v3 setObject:v13 forKeyedSubscript:@"media-right-margin"];
  }

  mediaSource = [(PKMediaCol *)self mediaSource];
  if (mediaSource)
  {
    [v3 setObject:mediaSource forKeyedSubscript:@"media-source"];
  }

  mediaType = [(PKMediaCol *)self mediaType];
  if (mediaType)
  {
    [v3 setObject:mediaType forKeyedSubscript:@"media-type"];
  }

  mediaKey = [(PKMediaCol *)self mediaKey];
  if (mediaKey)
  {
    [v3 setObject:mediaKey forKeyedSubscript:@"media-key"];
  }

  return v3;
}

- (PKMediaSize)mediaSize
{
  params = [(PKCollectionSpecialization *)self params];

  return Printd_Parameters::_get_MediaSize(&params->var0);
}

- (PKMediaSourceProperties)mediaSourceProperties
{
  params = [(PKCollectionSpecialization *)self params];

  return Printd_Parameters::_get_MediaSourceProperties(&params->var0);
}

- (BOOL)getMargins:(pwg_size_s *)margins
{
  v4 = 0;
  v5 = 0;
  v14[7] = *MEMORY[0x277D85DE8];
  v13 = @"media-bottom-margin";
  v14[0] = &margins->map.ppd + 4;
  v14[1] = @"media-left-margin";
  v14[2] = &margins->map.ppd;
  v14[3] = @"media-top-margin";
  v14[4] = &margins->length;
  v14[5] = @"media-right-margin";
  v14[6] = &margins->width;
  v6 = v14;
  while (1)
  {
    collection = [(PKCollectionSpecialization *)self collection];
    v8 = [collection _findAttribute0:*(v6 - 1) valueTag:33];

    if (!v8)
    {
      break;
    }

    IXInteger = ippGetIXInteger(v8, 0);
    v10 = *v6;
    v6 += 2;
    *v10 = IXInteger;

    v5 = v4++ > 2;
    if (v4 == 4)
    {
      v5 = 1;
      break;
    }
  }

  for (i = 6; i != -2; i -= 2)
  {
  }

  return v5;
}

- (NSString)mediaSource
{
  params = [(PKCollectionSpecialization *)self params];

  return Printd_Parameters::_get_MediaSource(&params->var0);
}

- (NSString)mediaType
{
  params = [(PKCollectionSpecialization *)self params];

  return Printd_Parameters::_get_MediaType(&params->var0);
}

- (NSString)mediaKey
{
  params = [(PKCollectionSpecialization *)self params];

  return Printd_Parameters::_get_MediaKey(&params->var0);
}

@end