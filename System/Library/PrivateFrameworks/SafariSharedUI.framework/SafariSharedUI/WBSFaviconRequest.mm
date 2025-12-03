@interface WBSFaviconRequest
- (BOOL)isIconDownloadingEnabled;
- (BOOL)isURLTypedByUser;
- (CGSize)iconSize;
- (WBSFaviconRequest)initWithDomain:(id)domain iconSize:(CGSize)size fallbackType:(unint64_t)type;
- (id)_initWithURL:(id)l type:(unint64_t)type iconSize:(CGSize)size fallbackType:(unint64_t)fallbackType isURLTypedByUser:(BOOL)user iconDownloadingEnabled:(BOOL)enabled;
- (unint64_t)fallbackType;
- (unint64_t)type;
@end

@implementation WBSFaviconRequest

- (WBSFaviconRequest)initWithDomain:(id)domain iconSize:(CGSize)size fallbackType:(unint64_t)type
{
  height = size.height;
  width = size.width;
  if (domain)
  {
    v9 = MEMORY[0x1E695DFF8];
    v10 = [@"http://" stringByAppendingString:?];
    v11 = [v9 URLWithString:v10];
    height = [(WBSFaviconRequest *)self _initWithURL:v11 type:1 iconSize:type fallbackType:0 isURLTypedByUser:0 iconDownloadingEnabled:width, height];
  }

  else
  {
    height = [(WBSFaviconRequest *)self _initWithURL:0 type:1 iconSize:type fallbackType:0 isURLTypedByUser:0 iconDownloadingEnabled:size.width, size.height];
  }

  return height;
}

- (id)_initWithURL:(id)l type:(unint64_t)type iconSize:(CGSize)size fallbackType:(unint64_t)fallbackType isURLTypedByUser:(BOOL)user iconDownloadingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  userCopy = user;
  height = size.height;
  width = size.width;
  v28[5] = *MEMORY[0x1E69E9840];
  v27[0] = @"iconSizeExtraInfoKey";
  v15 = MEMORY[0x1E696B098];
  lCopy = l;
  v17 = [v15 valueWithCGSize:{width, height}];
  v28[0] = v17;
  v27[1] = @"fallbackTypeKey";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fallbackType];
  v28[1] = v18;
  v27[2] = @"requestTypeKey";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v28[2] = v19;
  v27[3] = @"isURLTypedByUserKey";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:userCopy];
  v28[3] = v20;
  v27[4] = @"isIconDownloadingEnabled";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v28[4] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];

  v26.receiver = self;
  v26.super_class = WBSFaviconRequest;
  v23 = [(WBSSiteMetadataRequest *)&v26 initWithURL:lCopy extraInfo:v22];

  if (v23)
  {
    v24 = v23;
  }

  return v23;
}

- (CGSize)iconSize
{
  extraInfo = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [extraInfo objectForKeyedSubscript:@"iconSizeExtraInfoKey"];
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
  extraInfo = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [extraInfo safari_numberForKey:@"fallbackTypeKey"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)type
{
  extraInfo = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [extraInfo safari_numberForKey:@"requestTypeKey"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isURLTypedByUser
{
  extraInfo = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [extraInfo safari_BOOLForKey:@"isURLTypedByUserKey"];

  return v3;
}

- (BOOL)isIconDownloadingEnabled
{
  extraInfo = [(WBSSiteMetadataRequest *)self extraInfo];
  v3 = [extraInfo safari_BOOLForKey:@"isIconDownloadingEnabled"];

  return v3;
}

@end