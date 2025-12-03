@interface SWDatastore
+ (SWDatastore)emptyDatastore;
- (BOOL)isEqual:(id)equal;
- (SWDatastore)initWithJSONString:(id)string;
@end

@implementation SWDatastore

+ (SWDatastore)emptyDatastore
{
  v2 = [[self alloc] initWithJSONString:@"{}"];

  return v2;
}

- (SWDatastore)initWithJSONString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = SWDatastore;
  v5 = [(SWDatastore *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    JSONString = v5->_JSONString;
    v5->_JSONString = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    JSONString = self->_JSONString;
    jSONString = [(SWDatastore *)v5 JSONString];
    v8 = [(NSString *)JSONString isEqualToString:jSONString];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

@end