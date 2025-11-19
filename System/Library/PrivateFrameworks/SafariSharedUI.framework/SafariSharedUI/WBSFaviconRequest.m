@interface WBSFaviconRequest
- (BOOL)isIconDownloadingEnabled;
- (BOOL)isURLTypedByUser;
- (CGSize)iconSize;
- (WBSFaviconRequest)initWithDomain:(id)a3 iconSize:(CGSize)a4 fallbackType:(unint64_t)a5;
- (id)_initWithURL:(id)a3 type:(unint64_t)a4 iconSize:(CGSize)a5 fallbackType:(unint64_t)a6 isURLTypedByUser:(BOOL)a7 iconDownloadingEnabled:(BOOL)a8;
- (unint64_t)fallbackType;
- (unint64_t)type;
@end

@implementation WBSFaviconRequest

- (WBSFaviconRequest)initWithDomain:(id)a3 iconSize:(CGSize)a4 fallbackType:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  if (a3)
  {
    v9 = MEMORY[0x1E695DFF8];
    v10 = [@"http://" stringByAppendingString:?];
    v11 = [v9 URLWithString:v10];
    v12 = [(WBSFaviconRequest *)self _initWithURL:v11 type:1 iconSize:a5 fallbackType:0 isURLTypedByUser:0 iconDownloadingEnabled:width, height];
  }

  else
  {
    v12 = [(WBSFaviconRequest *)self _initWithURL:0 type:1 iconSize:a5 fallbackType:0 isURLTypedByUser:0 iconDownloadingEnabled:a4.width, a4.height];
  }

  return v12;
}

- (id)_initWithURL:(id)a3 type:(unint64_t)a4 iconSize:(CGSize)a5 fallbackType:(unint64_t)a6 isURLTypedByUser:(BOOL)a7 iconDownloadingEnabled:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  height = a5.height;
  width = a5.width;
  v28[5] = *MEMORY[0x1E69E9840];
  v27[0] = @"iconSizeExtraInfoKey";
  v15 = MEMORY[0x1E696B098];
  v16 = a3;
  v17 = [v15 valueWithCGSize:{width, height}];
  v28[0] = v17;
  v27[1] = @"fallbackTypeKey";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v28[1] = v18;
  v27[2] = @"requestTypeKey";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v28[2] = v19;
  v27[3] = @"isURLTypedByUserKey";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v28[3] = v20;
  v27[4] = @"isIconDownloadingEnabled";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v28[4] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];

  v26.receiver = self;
  v26.super_class = WBSFaviconRequest;
  v23 = [(WBSSiteMetadataRequest *)&v26 initWithURL:v16 extraInfo:v22];

  if (v23)
  {
    v24 = v23;
  }

  return v23;
}

- (CGSize)iconSize
{
  v2 = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [v2 objectForKeyedSubscript:@"iconSizeExtraInfoKey"];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (unint64_t)fallbackType
{
  v2 = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [v2 safari_numberForKey:@"fallbackTypeKey"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)type
{
  v2 = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [v2 safari_numberForKey:@"requestTypeKey"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)isURLTypedByUser
{
  v2 = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [v2 safari_BOOLForKey:@"isURLTypedByUserKey"];

  return v3;
}

- (BOOL)isIconDownloadingEnabled
{
  v2 = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [v2 safari_BOOLForKey:@"isIconDownloadingEnabled"];

  return v3;
}

@end