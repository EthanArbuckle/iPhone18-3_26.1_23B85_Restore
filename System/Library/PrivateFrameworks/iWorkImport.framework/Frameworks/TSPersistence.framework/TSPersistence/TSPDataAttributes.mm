@interface TSPDataAttributes
+ (id)_classRegistry;
+ (id)newDataAttributesWithMessage:(const void *)message;
- (TSPDataAttributes)initWithMessage:(const void *)message;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSPDataAttributes

+ (id)_classRegistry
{
  if (qword_280A529E0 != -1)
  {
    sub_276BD4CE8();
  }

  v3 = qword_280A529D8;

  return v3;
}

+ (id)newDataAttributesWithMessage:(const void *)message
{
  v4 = objc_msgSend__classRegistry(self, a2, message);
  v6 = objc_msgSend_classForMessage_(v4, v5, message);

  v7 = [v6 alloc];

  return objc_msgSend_initWithMessage_(v7, v8, message);
}

- (TSPDataAttributes)initWithMessage:(const void *)message
{
  v4.receiver = self;
  v4.super_class = TSPDataAttributes;
  return [(TSPDataAttributes *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return objc_opt_new();
}

@end