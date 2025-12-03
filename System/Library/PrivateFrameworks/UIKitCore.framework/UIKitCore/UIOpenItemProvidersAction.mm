@interface UIOpenItemProvidersAction
- (UIOpenItemProvidersAction)initWithDragContinuationEndpoint:(id)endpoint userInfo:(id)info;
- (UIOpenItemProvidersAction)initWithInfo:(id)info responder:(id)responder;
- (id)continuationEndpoint;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)userInfo;
- (unint64_t)providerSource;
@end

@implementation UIOpenItemProvidersAction

- (UIOpenItemProvidersAction)initWithInfo:(id)info responder:(id)responder
{
  v5.receiver = self;
  v5.super_class = UIOpenItemProvidersAction;
  return [(UIOpenItemProvidersAction *)&v5 initWithInfo:info responder:responder];
}

- (UIOpenItemProvidersAction)initWithDragContinuationEndpoint:(id)endpoint userInfo:(id)info
{
  infoCopy = info;
  v7 = MEMORY[0x1E698E700];
  endpointCopy = endpoint;
  v9 = objc_alloc_init(v7);
  [v9 setObject:&unk_1EFE32FE0 forSetting:1];
  [v9 setObject:endpointCopy forSetting:2];

  if (infoCopy)
  {
    [v9 setObject:infoCopy forSetting:3];
  }

  v12.receiver = self;
  v12.super_class = UIOpenItemProvidersAction;
  v10 = [(UIOpenItemProvidersAction *)&v12 initWithInfo:v9 responder:0];

  return v10;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E711F800[setting - 1];
  }
}

- (unint64_t)providerSource
{
  info = [(UIOpenItemProvidersAction *)self info];
  v3 = [info objectForSetting:1];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)continuationEndpoint
{
  info = [(UIOpenItemProvidersAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (id)userInfo
{
  info = [(UIOpenItemProvidersAction *)self info];
  v3 = [info objectForSetting:3];

  return v3;
}

@end