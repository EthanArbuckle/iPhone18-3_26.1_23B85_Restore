@interface UIOpenItemProvidersAction
- (UIOpenItemProvidersAction)initWithDragContinuationEndpoint:(id)a3 userInfo:(id)a4;
- (UIOpenItemProvidersAction)initWithInfo:(id)a3 responder:(id)a4;
- (id)continuationEndpoint;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)userInfo;
- (unint64_t)providerSource;
@end

@implementation UIOpenItemProvidersAction

- (UIOpenItemProvidersAction)initWithInfo:(id)a3 responder:(id)a4
{
  v5.receiver = self;
  v5.super_class = UIOpenItemProvidersAction;
  return [(UIOpenItemProvidersAction *)&v5 initWithInfo:a3 responder:a4];
}

- (UIOpenItemProvidersAction)initWithDragContinuationEndpoint:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E698E700];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  [v9 setObject:&unk_1EFE32FE0 forSetting:1];
  [v9 setObject:v8 forSetting:2];

  if (v6)
  {
    [v9 setObject:v6 forSetting:3];
  }

  v12.receiver = self;
  v12.super_class = UIOpenItemProvidersAction;
  v10 = [(UIOpenItemProvidersAction *)&v12 initWithInfo:v9 responder:0];

  return v10;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E711F800[a3 - 1];
  }
}

- (unint64_t)providerSource
{
  v2 = [(UIOpenItemProvidersAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)continuationEndpoint
{
  v2 = [(UIOpenItemProvidersAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (id)userInfo
{
  v2 = [(UIOpenItemProvidersAction *)self info];
  v3 = [v2 objectForSetting:3];

  return v3;
}

@end