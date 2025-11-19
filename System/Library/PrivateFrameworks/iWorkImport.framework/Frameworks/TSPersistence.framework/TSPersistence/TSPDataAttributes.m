@interface TSPDataAttributes
+ (id)_classRegistry;
+ (id)newDataAttributesWithMessage:(const void *)a3;
- (TSPDataAttributes)initWithMessage:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

+ (id)newDataAttributesWithMessage:(const void *)a3
{
  v4 = objc_msgSend__classRegistry(a1, a2, a3);
  v6 = objc_msgSend_classForMessage_(v4, v5, a3);

  v7 = [v6 alloc];

  return objc_msgSend_initWithMessage_(v7, v8, a3);
}

- (TSPDataAttributes)initWithMessage:(const void *)a3
{
  v4.receiver = self;
  v4.super_class = TSPDataAttributes;
  return [(TSPDataAttributes *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();

  return objc_opt_new();
}

@end