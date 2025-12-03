@interface SSLocalWebResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)stringWithUrl:(id)url;
- (SSLocalWebResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildResult;
@end

@implementation SSLocalWebResultBuilder

+ (BOOL)supportsResult:(id)result
{
  contentType = [result contentType];
  v4 = [&unk_1F55B75B0 containsObject:contentType];

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

- (SSLocalWebResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = SSLocalWebResultBuilder;
  v5 = [(SSResultBuilder *)&v14 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSLocalWebResultBuilder *)v5 setSiteName:v6];

    v7 = *MEMORY[0x1E6963EB0];
    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
    if (v8)
    {
      [(SSLocalWebResultBuilder *)v5 setUrl:v8];
    }

    else
    {
      v9 = MEMORY[0x1E695DFF8];
      v10 = [resultCopy valueForAttribute:v7 withType:objc_opt_class()];
      v11 = [v9 URLWithString:v10];
      [(SSLocalWebResultBuilder *)v5 setUrl:v11];
    }

    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6964AD8] withType:objc_opt_class()];
    [(SSLocalWebResultBuilder *)v5 setCloudTabDeviceName:v12];
  }

  return v5;
}

- (id)buildResult
{
  v10.receiver = self;
  v10.super_class = SSLocalWebResultBuilder;
  buildResult = [(SSResultBuilder *)&v10 buildResult];
  v4 = objc_opt_class();
  v5 = [(SSLocalWebResultBuilder *)self url];
  v6 = [v4 stringWithUrl:v5];
  controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:controlCharacterSet];
  [buildResult setCompletion:v8];

  return buildResult;
}

- (id)buildCommand
{
  v3 = [(SSLocalWebResultBuilder *)self url];

  if (v3)
  {
    v4 = MEMORY[0x1E69CA320];
    v5 = [(SSLocalWebResultBuilder *)self url];
    v6 = [v4 punchoutWithURL:v5];

    buildCommand = objc_opt_new();
    [buildCommand setPunchout:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SSLocalWebResultBuilder;
    buildCommand = [(SSResultBuilder *)&v9 buildCommand];
  }

  return buildCommand;
}

- (id)buildDescriptions
{
  v41[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_class();
  v6 = [(SSLocalWebResultBuilder *)self url];
  v7 = [v5 stringWithUrl:v6];

  if ([v7 length])
  {
    [v4 addObject:v7];
  }

  cloudTabDeviceName = [(SSLocalWebResultBuilder *)self cloudTabDeviceName];
  v9 = [cloudTabDeviceName length];

  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FROM_CLOUD_TAB_DEVICE_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    cloudTabDeviceName2 = [(SSLocalWebResultBuilder *)self cloudTabDeviceName];
    v14 = [v10 stringWithFormat:v12, cloudTabDeviceName2];
    [v4 addObject:v14];
  }

  lastUsedDate = [(SSResultBuilder *)self lastUsedDate];
  if (lastUsedDate)
  {
    v16 = lastUsedDate;
    result = [(SSResultBuilder *)self result];
    contentType = [result contentType];
    v19 = [contentType isEqualToString:@"com.apple.safari.history"];

    if (v19)
    {
      lastUsedDate2 = [(SSResultBuilder *)self lastUsedDate];
      v21 = [SSDateFormatManager dyanmicStringFromDate:lastUsedDate2];

      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"visited %@" value:0 table:0];
      v25 = [v22 localizedStringWithFormat:v24, v21];

      [v4 addObject:v25];
    }
  }

  v26 = [v4 componentsJoinedByString:@" · "];
  if ([v26 length])
  {
    if (buildDescriptions_onceToken != -1)
    {
      [SSLocalWebResultBuilder buildDescriptions];
    }

    v27 = buildDescriptions_symbolNamesForContentTypes;
    result2 = [(SSResultBuilder *)self result];
    contentType2 = [result2 contentType];
    v30 = [v27 objectForKeyedSubscript:contentType2];

    if (v30)
    {
      v31 = objc_opt_new();
      [v31 setSymbolName:v30];
      [v31 setIsTemplate:1];
      v32 = objc_opt_new();
      [v32 setGlyph:v31];
      v33 = MEMORY[0x1E69CA0F0];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v26];
      v35 = [v33 textWithString:v34];

      v41[0] = v32;
      v41[1] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      [v3 setFormattedTextPieces:v36];
    }

    else
    {
      [v3 setText:v26];
    }

    [v3 setMaxLines:1];
    v40 = v3;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

void __44__SSLocalWebResultBuilder_buildDescriptions__block_invoke()
{
  v0 = buildDescriptions_symbolNamesForContentTypes;
  buildDescriptions_symbolNamesForContentTypes = &unk_1F55B78D0;
}

@end