@interface STReactorDirective
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReactorDirective:(id)a3;
- (STReactorDirective)initWithType:(int64_t)a3 data:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)matchingAny:(id)a3;
- (unint64_t)hash;
@end

@implementation STReactorDirective

- (STReactorDirective)initWithType:(int64_t)a3 data:(id)a4
{
  v10.receiver = self;
  v10.super_class = STReactorDirective;
  v5 = a4;
  v6 = [(STReactorDirective *)&v10 init];
  v6->_type = a3;
  v7 = [v5 copy];

  data = v6->_data;
  v6->_data = v7;

  return v6;
}

- (id)matchingAny:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithInteger:[(STReactorDirective *)self type]];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = [STResult success:self];
  }

  else
  {
    v8 = [NSError alloc];
    v9 = STErrorDomain;
    v13 = NSLocalizedDescriptionKey;
    v14 = self;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
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

  v6 = [(STReactorDirective *)self data];
  v7 = [NSString stringWithFormat:@"<%@ { Type: %@, Data: %@ }>", v3, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  type = self->_type;
  data = self->_data;

  return [v4 initWithType:type data:data];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STReactorDirective *)self isEqualToReactorDirective:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToReactorDirective:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    v6 = [(STReactorDirective *)self type];
    if (v6 == [(STReactorDirective *)v5 type])
    {
      v7 = [(STReactorDirective *)self data];
      if (v7 || ([(STReactorDirective *)v5 data], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = [(STReactorDirective *)self data];
        v9 = [(STReactorDirective *)v5 data];
        v10 = [v8 isEqual:v9];

        if (v7)
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
  v3 = [(STReactorDirective *)self data];
  v4 = [v3 hash];
  v5 = [(STReactorDirective *)self type];

  return v4 + v5;
}

@end