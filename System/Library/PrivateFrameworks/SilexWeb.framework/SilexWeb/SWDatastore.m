@interface SWDatastore
+ (SWDatastore)emptyDatastore;
- (BOOL)isEqual:(id)a3;
- (SWDatastore)initWithJSONString:(id)a3;
@end

@implementation SWDatastore

+ (SWDatastore)emptyDatastore
{
  v2 = [[a1 alloc] initWithJSONString:@"{}"];

  return v2;
}

- (SWDatastore)initWithJSONString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SWDatastore;
  v5 = [(SWDatastore *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    JSONString = v5->_JSONString;
    v5->_JSONString = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    JSONString = self->_JSONString;
    v7 = [(SWDatastore *)v5 JSONString];
    v8 = [(NSString *)JSONString isEqualToString:v7];
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