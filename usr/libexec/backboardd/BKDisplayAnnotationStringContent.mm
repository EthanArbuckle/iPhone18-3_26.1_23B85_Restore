@interface BKDisplayAnnotationStringContent
+ (id)contentWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation BKDisplayAnnotationStringContent

+ (id)contentWithString:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setString:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    string = self->_string;
    v6 = [v4 string];
    v7 = [(NSString *)string isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_string withName:@"string"];
  v5 = [v3 build];

  return v5;
}

@end