@interface SSLocalWebResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (id)stringWithUrl:(id)a3;
- (SSLocalWebResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildResult;
@end

@implementation SSLocalWebResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = [a3 contentType];
  v4 = [&unk_1F55B75B0 containsObject:v3];

  return v4;
}

+ (id)stringWithUrl:(id)a3
{
  v3 = a3;
  v4 = [v3 _lp_simplifiedDisplayString];
  v5 = [v3 absoluteString];

  if (!v4)
  {
    v6 = [v5 rangeOfString:@"."];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v6 + v7, v9 = [v5 length], v10 = v9 - v8, v9 <= v8) || (v11 = objc_msgSend(v5, "rangeOfString:options:range:", @"/", 0, v8, v10), v11 == 0x7FFFFFFFFFFFFFFFLL) && (v11 = objc_msgSend(v5, "rangeOfString:options:range:", @"?", 0, v8, v10), v11 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = 0;
    }

    else
    {
      v4 = [v5 substringToIndex:v11];
    }
  }

  return v4;
}

- (SSLocalWebResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SSLocalWebResultBuilder;
  v5 = [(SSResultBuilder *)&v14 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSLocalWebResultBuilder *)v5 setSiteName:v6];

    v7 = *MEMORY[0x1E6963EB0];
    v8 = [v4 valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
    if (v8)
    {
      [(SSLocalWebResultBuilder *)v5 setUrl:v8];
    }

    else
    {
      v9 = MEMORY[0x1E695DFF8];
      v10 = [v4 valueForAttribute:v7 withType:objc_opt_class()];
      v11 = [v9 URLWithString:v10];
      [(SSLocalWebResultBuilder *)v5 setUrl:v11];
    }

    v12 = [v4 valueForAttribute:*MEMORY[0x1E6964AD8] withType:objc_opt_class()];
    [(SSLocalWebResultBuilder *)v5 setCloudTabDeviceName:v12];
  }

  return v5;
}

- (id)buildResult
{
  v10.receiver = self;
  v10.super_class = SSLocalWebResultBuilder;
  v3 = [(SSResultBuilder *)&v10 buildResult];
  v4 = objc_opt_class();
  v5 = [(SSLocalWebResultBuilder *)self url];
  v6 = [v4 stringWithUrl:v5];
  v7 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];
  [v3 setCompletion:v8];

  return v3;
}

- (id)buildCommand
{
  v3 = [(SSLocalWebResultBuilder *)self url];

  if (v3)
  {
    v4 = MEMORY[0x1E69CA320];
    v5 = [(SSLocalWebResultBuilder *)self url];
    v6 = [v4 punchoutWithURL:v5];

    v7 = objc_opt_new();
    [v7 setPunchout:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SSLocalWebResultBuilder;
    v7 = [(SSResultBuilder *)&v9 buildCommand];
  }

  return v7;
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

  v8 = [(SSLocalWebResultBuilder *)self cloudTabDeviceName];
  v9 = [v8 length];

  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FROM_CLOUD_TAB_DEVICE_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v13 = [(SSLocalWebResultBuilder *)self cloudTabDeviceName];
    v14 = [v10 stringWithFormat:v12, v13];
    [v4 addObject:v14];
  }

  v15 = [(SSResultBuilder *)self lastUsedDate];
  if (v15)
  {
    v16 = v15;
    v17 = [(SSResultBuilder *)self result];
    v18 = [v17 contentType];
    v19 = [v18 isEqualToString:@"com.apple.safari.history"];

    if (v19)
    {
      v20 = [(SSResultBuilder *)self lastUsedDate];
      v21 = [SSDateFormatManager dyanmicStringFromDate:v20];

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
    v28 = [(SSResultBuilder *)self result];
    v29 = [v28 contentType];
    v30 = [v27 objectForKeyedSubscript:v29];

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