@interface _UIWindowSceneActivationPrewarmActionResponse
+ (id)responseWithSceneContainer:(id)container expectedSceneFrame:(CGRect)frame cornerRadii:(UIRectCornerRadii)radii;
- (CGRect)sceneFrame;
- (UIRectCornerRadii)sceneCornerRadii;
- (unint64_t)sceneContainerRenderId;
- (unsigned)sceneContainerContextId;
@end

@implementation _UIWindowSceneActivationPrewarmActionResponse

+ (id)responseWithSceneContainer:(id)container expectedSceneFrame:(CGRect)frame cornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  v15 = objc_opt_new();
  layer = [containerCopy layer];
  context = [layer context];
  contextId = [context contextId];

  layer2 = [containerCopy layer];

  RenderId = CALayerGetRenderId();
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextId];
  [v15 setObject:v21 forSetting:1];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:RenderId];
  [v15 setObject:v22 forSetting:2];

  *v30 = x;
  *&v30[1] = y;
  *&v30[2] = width;
  *&v30[3] = height;
  v23 = [MEMORY[0x1E696B098] valueWithBytes:v30 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v15 setObject:v23 forSetting:3];

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:topLeft];
  [v15 setObject:v24 forSetting:4];

  v25 = [MEMORY[0x1E696AD98] numberWithDouble:topRight];
  [v15 setObject:v25 forSetting:5];

  v26 = [MEMORY[0x1E696AD98] numberWithDouble:bottomRight];
  [v15 setObject:v26 forSetting:6];

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:bottomLeft];
  [v15 setObject:v27 forSetting:7];

  v28 = [self responseWithInfo:v15];

  return v28;
}

- (unsigned)sceneContainerContextId
{
  info = [(_UIWindowSceneActivationPrewarmActionResponse *)self info];
  v3 = [info objectForSetting:1];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (unint64_t)sceneContainerRenderId
{
  info = [(_UIWindowSceneActivationPrewarmActionResponse *)self info];
  v3 = [info objectForSetting:2];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (CGRect)sceneFrame
{
  info = [(_UIWindowSceneActivationPrewarmActionResponse *)self info];
  v3 = [info objectForSetting:3];
  [v3 CGRectValue];
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

- (UIRectCornerRadii)sceneCornerRadii
{
  info = [(_UIWindowSceneActivationPrewarmActionResponse *)self info];
  v4 = [info objectForSetting:4];
  [v4 doubleValue];
  v6 = v5;

  info2 = [(_UIWindowSceneActivationPrewarmActionResponse *)self info];
  v8 = [info2 objectForSetting:5];
  [v8 doubleValue];
  v10 = v9;

  info3 = [(_UIWindowSceneActivationPrewarmActionResponse *)self info];
  v12 = [info3 objectForSetting:7];
  [v12 doubleValue];
  v14 = v13;

  info4 = [(_UIWindowSceneActivationPrewarmActionResponse *)self info];
  v16 = [info4 objectForSetting:6];
  [v16 doubleValue];
  v18 = v17;

  v19 = v6;
  v20 = v14;
  v21 = v18;
  v22 = v10;
  result.topRight = v22;
  result.bottomRight = v21;
  result.bottomLeft = v20;
  result.topLeft = v19;
  return result;
}

@end