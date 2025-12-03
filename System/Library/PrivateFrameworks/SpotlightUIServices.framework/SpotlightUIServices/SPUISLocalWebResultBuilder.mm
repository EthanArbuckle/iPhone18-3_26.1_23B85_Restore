@interface SPUISLocalWebResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)stringWithUrl:(id)url;
- (SPUISLocalWebResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildResult;
@end

@implementation SPUISLocalWebResultBuilder

+ (BOOL)supportsResult:(id)result
{
  contentType = [result contentType];
  v4 = [&unk_287C59F00 containsObject:contentType];

  return v4;
}

+ (id)stringWithUrl:(id)url
{
  urlCopy = url;
  _lp_simplifiedDisplayString = [urlCopy _lp_simplifiedDisplayString];
  absoluteString = [urlCopy absoluteString];

  if (!_lp_simplifiedDisplayString)
  {
    v6 = [absoluteString rangeOfString:@"."];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v6 + v7, v9 = [absoluteString length], v10 = v9 - v8, v9 <= v8) || (v11 = objc_msgSend(absoluteString, "rangeOfString:options:range:", @"/", 0, v8, v10), v11 == 0x7FFFFFFFFFFFFFFFLL) && (v11 = objc_msgSend(absoluteString, "rangeOfString:options:range:", @"?", 0, v8, v10), v11 == 0x7FFFFFFFFFFFFFFFLL))
    {
      _lp_simplifiedDisplayString = 0;
    }

    else
    {
      _lp_simplifiedDisplayString = [absoluteString substringToIndex:v11];
    }
  }

  return _lp_simplifiedDisplayString;
}

- (SPUISLocalWebResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = SPUISLocalWebResultBuilder;
  v5 = [(SPUISResultBuilder *)&v14 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISLocalWebResultBuilder *)v5 setSiteName:v6];

    v7 = *MEMORY[0x277CC2688];
    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC2688] withType:objc_opt_class()];
    if (v8)
    {
      [(SPUISLocalWebResultBuilder *)v5 setUrl:v8];
    }

    else
    {
      v9 = MEMORY[0x277CBEBC0];
      v10 = [resultCopy valueForAttribute:v7 withType:objc_opt_class()];
      v11 = [v9 URLWithString:v10];
      [(SPUISLocalWebResultBuilder *)v5 setUrl:v11];
    }

    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC30D8] withType:objc_opt_class()];
    [(SPUISLocalWebResultBuilder *)v5 setCloudTabDeviceName:v12];
  }

  return v5;
}

- (id)buildResult
{
  v10.receiver = self;
  v10.super_class = SPUISLocalWebResultBuilder;
  buildResult = [(SPUISResultBuilder *)&v10 buildResult];
  v4 = objc_opt_class();
  v5 = [(SPUISLocalWebResultBuilder *)self url];
  v6 = [v4 stringWithUrl:v5];
  controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:controlCharacterSet];
  [buildResult setCompletion:v8];

  return buildResult;
}

- (id)buildCommand
{
  v3 = [(SPUISLocalWebResultBuilder *)self url];

  if (v3)
  {
    v4 = MEMORY[0x277D4C550];
    v5 = [(SPUISLocalWebResultBuilder *)self url];
    v6 = [v4 punchoutWithURL:v5];

    buildCommand = objc_opt_new();
    [buildCommand setPunchout:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SPUISLocalWebResultBuilder;
    buildCommand = [(SPUISResultBuilder *)&v9 buildCommand];
  }

  return buildCommand;
}

- (id)buildDescriptions
{
  v40[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_class();
  v6 = [(SPUISLocalWebResultBuilder *)self url];
  v7 = [v5 stringWithUrl:v6];

  if ([v7 length])
  {
    [v4 addObject:v7];
  }

  cloudTabDeviceName = [(SPUISLocalWebResultBuilder *)self cloudTabDeviceName];
  v9 = [cloudTabDeviceName length];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [SPUISUtilities localizedStringForKey:@"FROM_CLOUD_TAB_DEVICE_FORMAT"];
    cloudTabDeviceName2 = [(SPUISLocalWebResultBuilder *)self cloudTabDeviceName];
    v13 = [v10 stringWithFormat:v11, cloudTabDeviceName2];
    [v4 addObject:v13];
  }

  lastUsedDate = [(SPUISResultBuilder *)self lastUsedDate];
  if (lastUsedDate)
  {
    v15 = lastUsedDate;
    result = [(SPUISResultBuilder *)self result];
    contentType = [result contentType];
    v18 = [contentType isEqualToString:@"com.apple.safari.history"];

    if (v18)
    {
      lastUsedDate2 = [(SPUISResultBuilder *)self lastUsedDate];
      v20 = [SPUISDateFormatManager dyanmicStringFromDate:lastUsedDate2];

      v21 = MEMORY[0x277CCACA8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"visited %@" value:0 table:0];
      v24 = [v21 localizedStringWithFormat:v23, v20];

      [v4 addObject:v24];
    }
  }

  v25 = [v4 componentsJoinedByString:@" · "];
  if ([v25 length])
  {
    if (buildDescriptions_onceToken != -1)
    {
      [SPUISLocalWebResultBuilder buildDescriptions];
    }

    v26 = buildDescriptions_symbolNamesForContentTypes;
    result2 = [(SPUISResultBuilder *)self result];
    contentType2 = [result2 contentType];
    v29 = [v26 objectForKeyedSubscript:contentType2];

    if (v29)
    {
      v30 = objc_opt_new();
      [v30 setSymbolName:v29];
      [v30 setIsTemplate:1];
      v31 = objc_opt_new();
      [v31 setGlyph:v30];
      v32 = MEMORY[0x277D4C3A0];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v25];
      v34 = [v32 textWithString:v33];

      v40[0] = v31;
      v40[1] = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
      [v3 setFormattedTextPieces:v35];
    }

    else
    {
      [v3 setText:v25];
    }

    [v3 setMaxLines:1];
    v39 = v3;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __47__SPUISLocalWebResultBuilder_buildDescriptions__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.safari.history";
  v3[1] = @"com.apple.safari.bookmark";
  v4[0] = @"clock";
  v4[1] = @"book";
  v3[2] = @"com.apple.safari.readinglist";
  v3[3] = @"com.apple.safari.cloudTab";
  v4[2] = @"eyeglasses";
  v4[3] = @"icloud";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = buildDescriptions_symbolNamesForContentTypes;
  buildDescriptions_symbolNamesForContentTypes = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end