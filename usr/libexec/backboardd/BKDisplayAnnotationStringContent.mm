@interface BKDisplayAnnotationStringContent
+ (id)contentWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
@end

@implementation BKDisplayAnnotationStringContent

+ (id)contentWithString:(id)string
{
  stringCopy = string;
  v5 = objc_alloc_init(self);
  [v5 setString:stringCopy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    string = self->_string;
    string = [equalCopy string];
    v7 = [(NSString *)string isEqual:string];
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
  build = [v3 build];

  return build;
}

@end