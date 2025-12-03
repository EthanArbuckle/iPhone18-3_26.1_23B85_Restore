@interface UIBannerAction
- (BOOL)bannerTapped;
- (BOOL)tappable;
- (_UIBannerContent)bannerContent;
- (id)_initWithBannerContent:(id)content responseHandler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UIBannerAction

- (id)_initWithBannerContent:(id)content responseHandler:(id)handler
{
  contentCopy = content;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  v9 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v9 encodeObject:contentCopy forKey:@"UIBannerContentKey"];
  encodedData = [v9 encodedData];
  [v8 setObject:encodedData forSetting:1];

  v11 = handlerCopy != 0;
  if (!handlerCopy)
  {
    handlerCopy = &__block_literal_global_242;
  }

  [v8 setFlag:v11 forSetting:2];
  v14.receiver = self;
  v14.super_class = UIBannerAction;
  v12 = [(UIBannerAction *)&v14 initWithInfo:v8 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:handlerCopy withHandler:0.0];

  return v12;
}

- (_UIBannerContent)bannerContent
{
  info = [(UIBannerAction *)self info];
  v4 = [info objectForSetting:1];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:0];
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UIBannerContentKey"];
    [v5 finishDecoding];
    v7 = v6;
  }

  else
  {
    NSLog(&cfstr_SInvalidUibann.isa, "[UIBannerAction bannerContent]", self);
    v7 = 0;
  }

  return v7;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"tappable";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"contentData";
  }

  else
  {
    return v3;
  }
}

- (BOOL)tappable
{
  info = [(UIBannerAction *)self info];
  v3 = [info flagForSetting:2] == 1;

  return v3;
}

- (BOOL)bannerTapped
{
  tappable = [(UIBannerAction *)self tappable];
  if (tappable)
  {
    tappable = [(UIBannerAction *)self canSendResponse];
    if (tappable)
    {
      response = [MEMORY[0x1E698E600] response];
      [(UIBannerAction *)self sendResponse:response];

      LOBYTE(tappable) = 1;
    }
  }

  return tappable;
}

@end