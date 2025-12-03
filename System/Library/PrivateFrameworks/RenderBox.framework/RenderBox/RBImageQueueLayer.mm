@interface RBImageQueueLayer
+ (id)defaultValueForKey:(id)key;
- (id)initWithSlots:(void *)slots;
@end

@implementation RBImageQueueLayer

+ (id)defaultValueForKey:(id)key
{
  if ([key isEqualToString:@"speed"])
  {
    return &unk_1F0A47090;
  }

  if ([key isEqualToString:@"anchorPoint"])
  {
    v7[0] = 0;
    v7[1] = 0;
    return [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGPoint=dd}"];
  }

  else if ([key isEqualToString:@"needsLayoutOnGeometryChange"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"allowsEdgeAntialiasing"))
  {
    return MEMORY[0x1E695E110];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RBImageQueueLayer;
    return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, key);
  }
}

- (id)initWithSlots:(void *)slots
{
  if (!slots)
  {
    return 0;
  }

  v4.receiver = slots;
  v4.super_class = RBImageQueueLayer;
  v1 = objc_msgSendSuper2(&v4, sel_init);
  if (v1)
  {
    v3 = [RBImageQueueContents initWithSlots:?];

    v1[6] = v3;
    [v1 setContents:v1[6]];
    [v1 setContentsGravity:*MEMORY[0x1E6979DC0]];
  }

  return v1;
}

@end