@interface STResult
+ (id)failure:(id)failure;
+ (id)success;
+ (id)success:(id)success;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResult:(id)result;
- (id)_initWithSuccessValue:(id)value failureError:(id)error type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)flatMap:(id)map;
- (id)flatMapError:(id)error;
- (id)map:(id)map;
- (id)mapError:(id)error;
- (unint64_t)hash;
- (void)evaluateWithSuccess:(id)success failure:(id)failure;
@end

@implementation STResult

- (id)_initWithSuccessValue:(id)value failureError:(id)error type:(int64_t)type
{
  valueCopy = value;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = STResult;
  v10 = [(STResult *)&v15 init];
  value = v10->_value;
  v10->_value = valueCopy;
  v12 = valueCopy;

  error = v10->_error;
  v10->_error = errorCopy;

  v10->_type = type;
  return v10;
}

+ (id)success:(id)success
{
  successCopy = success;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self failure:successCopy];
  }

  else
  {
    v5 = [[self alloc] _initWithSuccessValue:successCopy failureError:0 type:0];
  }

  v6 = v5;

  return v6;
}

+ (id)success
{
  v2 = [self alloc];
  v3 = +[NSNull null];
  v4 = [v2 _initWithSuccessValue:v3 failureError:0 type:0];

  return v4;
}

+ (id)failure:(id)failure
{
  failureCopy = failure;
  v5 = [[self alloc] _initWithSuccessValue:0 failureError:failureCopy type:1];

  return v5;
}

- (id)description
{
  type = [(STResult *)self type];
  if (type == 1)
  {
    v8 = objc_opt_class();
    v6 = NSStringFromClass(v8);
    error = [(STResult *)self error];
    [NSString stringWithFormat:@"<%@:%p { Failure: %@ }>", v6, self, error];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    error = [(STResult *)self value];
    [NSString stringWithFormat:@"<%@:%p { Success: %@ }>", v6, self, error];
  }
  v2 = ;

LABEL_6:

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  value = self->_value;
  error = self->_error;
  type = self->_type;

  return [v4 _initWithSuccessValue:value failureError:error type:type];
}

- (void)evaluateWithSuccess:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  type = [(STResult *)self type];
  if (type == 1)
  {
    error = [(STResult *)self error];
    v9 = failureCopy[2];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    error = [(STResult *)self value];
    v9 = successCopy[2];
  }

  v9();

LABEL_6:
}

- (id)map:(id)map
{
  mapCopy = map;
  type = [(STResult *)self type];
  if (type == 1)
  {
    v3 = [(STResult *)self copy];
  }

  else if (!type)
  {
    value = [(STResult *)self value];
    v8 = mapCopy[2](mapCopy, value);
    v3 = [STResult success:v8];
  }

  return v3;
}

- (id)flatMap:(id)map
{
  mapCopy = map;
  type = [(STResult *)self type];
  if (type != 1)
  {
    if (type)
    {
      goto LABEL_10;
    }

    value = [(STResult *)self value];
    v8 = mapCopy[2](mapCopy, value);

    type2 = [v8 type];
    if (type2 == 1)
    {
      error = [v8 error];
      v11 = [STResult failure:error];
      goto LABEL_7;
    }

    if (!type2)
    {
      error = [v8 value];
      v11 = [STResult success:error];
LABEL_7:
      v3 = v11;

      goto LABEL_10;
    }
  }

  v3 = [(STResult *)self copy];
LABEL_10:

  return v3;
}

- (id)mapError:(id)error
{
  errorCopy = error;
  type = [(STResult *)self type];
  if (type == 1)
  {
    error = [(STResult *)self error];
    v8 = errorCopy[2](errorCopy, error);
    v3 = [STResult failure:v8];
  }

  else if (!type)
  {
    v3 = [(STResult *)self copy];
  }

  return v3;
}

- (id)flatMapError:(id)error
{
  errorCopy = error;
  type = [(STResult *)self type];
  if (type == 1)
  {
    error = [(STResult *)self error];
    v7 = errorCopy[2](errorCopy, error);

    type2 = [v7 type];
    if (type2 == 1)
    {
      error2 = [v7 error];
      v10 = [STResult failure:error2];
    }

    else
    {
      if (type2)
      {
LABEL_9:

        goto LABEL_10;
      }

      error2 = [v7 value];
      v10 = [STResult success:error2];
    }

    error = v10;

    goto LABEL_9;
  }

  if (!type)
  {
    error = [(STResult *)self copy];
  }

LABEL_10:

  return error;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STResult *)self isEqualToResult:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToResult:(id)result
{
  resultCopy = result;
  if (self == resultCopy)
  {
    v11 = 1;
    goto LABEL_19;
  }

  type = [(STResult *)self type];
  if (type != [(STResult *)resultCopy type])
  {
    v11 = 0;
    goto LABEL_19;
  }

  value = [(STResult *)self value];
  if (value || ([(STResult *)resultCopy value], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    value2 = [(STResult *)self value];
    value3 = [(STResult *)resultCopy value];
    if (([value2 isEqual:value3] & 1) == 0)
    {

      v11 = 0;
      goto LABEL_16;
    }

    v10 = 1;
  }

  else
  {
    v16 = 0;
    v10 = 0;
  }

  error = [(STResult *)self error];
  if (!error)
  {
    error2 = [(STResult *)resultCopy error];
    if (!error2)
    {
      v11 = 1;
LABEL_21:

      if ((v10 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  error3 = [(STResult *)self error];
  error4 = [(STResult *)resultCopy error];
  v11 = [error3 isEqual:error4];

  if (!error)
  {
    goto LABEL_21;
  }

  if (v10)
  {
LABEL_15:
  }

LABEL_16:
  if (!value)
  {
  }

LABEL_19:
  return v11;
}

- (unint64_t)hash
{
  type = [(STResult *)self type];
  value = [(STResult *)self value];
  v5 = [value hash] ^ type;
  error = [(STResult *)self error];
  v7 = [error hash];

  return v5 ^ v7;
}

@end