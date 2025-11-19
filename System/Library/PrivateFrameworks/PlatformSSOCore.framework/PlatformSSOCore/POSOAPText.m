@interface POSOAPText
+ (id)definition;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation POSOAPText

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 setContentPropertyName:@"stringValue" type:objc_opt_class()];

  return v2;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 rangeOfString:@":"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8.receiver = self;
    v8.super_class = POSOAPText;
    [(POSOAPText *)&v8 setValue:v6 forKey:v7];
  }
}

@end