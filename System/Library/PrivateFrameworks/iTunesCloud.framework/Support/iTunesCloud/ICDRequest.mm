@interface ICDRequest
+ (id)request;
- (ICDRequest)initWithAction:(id)action;
- (id)_HTTPMethodStringForICDRequestMethod:(int64_t)method;
- (id)description;
- (void)setValue:(id)value forArgument:(id)argument;
@end

@implementation ICDRequest

- (id)_HTTPMethodStringForICDRequestMethod:(int64_t)method
{
  if (method == 1)
  {
    return @"POST";
  }

  else
  {
    return @"GET";
  }
}

- (void)setValue:(id)value forArgument:(id)argument
{
  valueCopy = value;
  argumentCopy = argument;
  arguments = self->_arguments;
  if (!arguments)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = self->_arguments;
    self->_arguments = v8;

    arguments = self->_arguments;
  }

  [(NSDictionary *)arguments setObject:valueCopy forKey:argumentCopy];
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

- (ICDRequest)initWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = ICDRequest;
  v5 = [(ICDRequest *)&v9 init];
  if (v5)
  {
    v6 = [actionCopy copy];
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