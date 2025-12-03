@interface PREditingRequestRemoteViewControllerPresentationAction
- (CGRect)presentedViewScreenRect;
- (PREditingRequestRemoteViewControllerPresentationAction)initWithSourceLayerRenderId:(unint64_t)id sourceContextId:(unsigned int)contextId presentedViewScreenRect:(CGRect)rect;
- (unint64_t)sourceLayerRenderId;
- (unsigned)sourceContextId;
@end

@implementation PREditingRequestRemoteViewControllerPresentationAction

- (PREditingRequestRemoteViewControllerPresentationAction)initWithSourceLayerRenderId:(unint64_t)id sourceContextId:(unsigned int)contextId presentedViewScreenRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = *&contextId;
  v12 = objc_alloc_init(MEMORY[0x1E698E700]);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:id];
  [v12 setObject:v13 forSetting:1];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
  [v12 setObject:v14 forSetting:2];

  *v19 = x;
  *&v19[1] = y;
  *&v19[2] = width;
  *&v19[3] = height;
  v15 = [MEMORY[0x1E696B098] valueWithBytes:v19 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v12 setObject:v15 forSetting:3];

  v18.receiver = self;
  v18.super_class = PREditingRequestRemoteViewControllerPresentationAction;
  v16 = [(PREditingRequestRemoteViewControllerPresentationAction *)&v18 initWithInfo:v12 responder:0];

  return v16;
}

- (unint64_t)sourceLayerRenderId
{
  info = [(PREditingRequestRemoteViewControllerPresentationAction *)self info];
  v3 = [info objectForSetting:1];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unsigned)sourceContextId
{
  info = [(PREditingRequestRemoteViewControllerPresentationAction *)self info];
  v3 = [info objectForSetting:2];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (CGRect)presentedViewScreenRect
{
  info = [(PREditingRequestRemoteViewControllerPresentationAction *)self info];
  v3 = [info objectForSetting:3];
  [v3 bs_CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end