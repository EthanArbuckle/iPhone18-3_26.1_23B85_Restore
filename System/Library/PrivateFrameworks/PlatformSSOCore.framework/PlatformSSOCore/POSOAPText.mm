@interface POSOAPText
+ (id)definition;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation POSOAPText

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 setContentPropertyName:@"stringValue" type:objc_opt_class()];

  return v2;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy rangeOfString:@":"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8.receiver = self;
    v8.super_class = POSOAPText;
    [(POSOAPText *)&v8 setValue:valueCopy forKey:keyCopy];
  }
}

@end