@interface ICDRequest
+ (id)request;
- (ICDRequest)initWithAction:(id)a3;
- (id)_HTTPMethodStringForICDRequestMethod:(int64_t)a3;
- (id)description;
- (void)setValue:(id)a3 forArgument:(id)a4;
@end

@implementation ICDRequest

- (id)_HTTPMethodStringForICDRequestMethod:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"POST";
  }

  else
  {
    return @"GET";
  }
}

- (void)setValue:(id)a3 forArgument:(id)a4
{
  v10 = a3;
  v6 = a4;
  arguments = self->_arguments;
  if (!arguments)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = self->_arguments;
    self->_arguments = v8;

    arguments = self->_arguments;
  }

  [(NSDictionary *)arguments setObject:v10 forKey:v6];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICDRequest;
  v3 = [(ICDRequest *)&v7 description];
  v4 = [(ICDRequest *)self _HTTPMethodStringForICDRequestMethod:self->_method];
  v5 = [v3 stringByAppendingFormat:@" %@ [%@]", v4, self->_action];

  return v5;
}

- (ICDRequest)initWithAction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICDRequest;
  v5 = [(ICDRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    *(v5 + 11) = 1;
    *(v5 + 6) = 1;
    *(v5 + 17) = 0;
  }

  return v5;
}

+ (id)request
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    [NSException raise:NSInvalidArgumentException format:@"subclass must implement"];
  }

  v3 = objc_alloc_init(objc_opt_class());

  return v3;
}

@end