@interface RBSurfaceContentsLayer
+ (id)defaultValueForKey:(id)a3;
- (RBSurfaceContentsLayer)init;
@end

@implementation RBSurfaceContentsLayer

- (RBSurfaceContentsLayer)init
{
  v5.receiver = self;
  v5.super_class = RBSurfaceContentsLayer;
  v2 = [(RBSurfaceContentsLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RBSurfaceContentsLayer *)v2 setContentsGravity:*MEMORY[0x1E6979DC0]];
  }

  return v3;
}

+ (id)defaultValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"anchorPoint"])
  {
    v7 = *MEMORY[0x1E695EFF8];
    return [MEMORY[0x1E696B098] valueWithBytes:&v7 objCType:"{CGPoint=dd}"];
  }

  else if ([a3 isEqualToString:@"needsLayoutOnGeometryChange"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"allowsEdgeAntialiasing"))
  {
    return MEMORY[0x1E695E110];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___RBSurfaceContentsLayer;
    return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, a3);
  }
}

@end