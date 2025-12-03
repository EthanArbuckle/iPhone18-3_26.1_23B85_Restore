@interface STReactorDirective
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReactorDirective:(id)directive;
- (STReactorDirective)initWithType:(int64_t)type data:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)matchingAny:(id)any;
- (unint64_t)hash;
@end

@implementation STReactorDirective

- (STReactorDirective)initWithType:(int64_t)type data:(id)data
{
  v10.receiver = self;
  v10.super_class = STReactorDirective;
  dataCopy = data;
  v6 = [(STReactorDirective *)&v10 init];
  v6->_type = type;
  v7 = [dataCopy copy];

  data = v6->_data;
  v6->_data = v7;

  return v6;
}

- (id)matchingAny:(id)any
{
  anyCopy = any;
  v5 = [NSNumber numberWithInteger:[(STReactorDirective *)self type]];
  v6 = [anyCopy containsObject:v5];

  if (v6)
  {
    v7 = [STResult success:self];
  }

  else
  {
    v8 = [NSError alloc];
    v9 = STErrorDomain;
    v13 = NSLocalizedDescriptionKey;
    selfCopy = self;
    v10 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v13 count:1];
    v11 = [v8 initWithDomain:v9 code:44 userInfo:v10];
    v7 = [STResult failure:v11];
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STReactorDirective *)self type]- 1;
  if (v4 > 0x10)
  {
    v5 = @"DoNothing";
  }

  else
  {
    v5 = off_1001A5300[v4];
  }

  data = [(STReactorDirective *)self data];
  v7 = [NSString stringWithFormat:@"<%@ { Type: %@, Data: %@ }>", v3, v5, data];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  type = self->_type;
  data = self->_data;

  return [v4 initWithType:type data:data];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STReactorDirective *)self isEqualToReactorDirective:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToReactorDirective:(id)directive
{
  directiveCopy = directive;
  if (self == directiveCopy)
  {
    v10 = 1;
  }

  else
  {
    type = [(STReactorDirective *)self type];
    if (type == [(STReactorDirective *)directiveCopy type])
    {
      data = [(STReactorDirective *)self data];
      if (data || ([(STReactorDirective *)directiveCopy data], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        data2 = [(STReactorDirective *)self data];
        data3 = [(STReactorDirective *)directiveCopy data];
        v10 = [data2 isEqual:data3];

        if (data)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_11;
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  data = [(STReactorDirective *)self data];
  v4 = [data hash];
  type = [(STReactorDirective *)self type];

  return v4 + type;
}

@end