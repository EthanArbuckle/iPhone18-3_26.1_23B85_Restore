@interface STResult
+ (id)failure:(id)a3;
+ (id)success;
+ (id)success:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResult:(id)a3;
- (id)_initWithSuccessValue:(id)a3 failureError:(id)a4 type:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)flatMap:(id)a3;
- (id)flatMapError:(id)a3;
- (id)map:(id)a3;
- (id)mapError:(id)a3;
- (unint64_t)hash;
- (void)evaluateWithSuccess:(id)a3 failure:(id)a4;
@end

@implementation STResult

- (id)_initWithSuccessValue:(id)a3 failureError:(id)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = STResult;
  v10 = [(STResult *)&v15 init];
  value = v10->_value;
  v10->_value = v8;
  v12 = v8;

  error = v10->_error;
  v10->_error = v9;

  v10->_type = a5;
  return v10;
}

+ (id)success:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 failure:v4];
  }

  else
  {
    v5 = [[a1 alloc] _initWithSuccessValue:v4 failureError:0 type:0];
  }

  v6 = v5;

  return v6;
}

+ (id)success
{
  v2 = [a1 alloc];
  v3 = +[NSNull null];
  v4 = [v2 _initWithSuccessValue:v3 failureError:0 type:0];

  return v4;
}

+ (id)failure:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithSuccessValue:0 failureError:v4 type:1];

  return v5;
}

- (id)description
{
  v4 = [(STResult *)self type];
  if (v4 == 1)
  {
    v8 = objc_opt_class();
    v6 = NSStringFromClass(v8);
    v7 = [(STResult *)self error];
    [NSString stringWithFormat:@"<%@:%p { Failure: %@ }>", v6, self, v7];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(STResult *)self value];
    [NSString stringWithFormat:@"<%@:%p { Success: %@ }>", v6, self, v7];
  }
  v2 = ;

LABEL_6:

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  value = self->_value;
  error = self->_error;
  type = self->_type;

  return [v4 _initWithSuccessValue:value failureError:error type:type];
}

- (void)evaluateWithSuccess:(id)a3 failure:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(STResult *)self type];
  if (v7 == 1)
  {
    v8 = [(STResult *)self error];
    v9 = v6[2];
  }

  else
  {
    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [(STResult *)self value];
    v9 = v10[2];
  }

  v9();

LABEL_6:
}

- (id)map:(id)a3
{
  v5 = a3;
  v6 = [(STResult *)self type];
  if (v6 == 1)
  {
    v3 = [(STResult *)self copy];
  }

  else if (!v6)
  {
    v7 = [(STResult *)self value];
    v8 = v5[2](v5, v7);
    v3 = [STResult success:v8];
  }

  return v3;
}

- (id)flatMap:(id)a3
{
  v5 = a3;
  v6 = [(STResult *)self type];
  if (v6 != 1)
  {
    if (v6)
    {
      goto LABEL_10;
    }

    v7 = [(STResult *)self value];
    v8 = v5[2](v5, v7);

    v9 = [v8 type];
    if (v9 == 1)
    {
      v10 = [v8 error];
      v11 = [STResult failure:v10];
      goto LABEL_7;
    }

    if (!v9)
    {
      v10 = [v8 value];
      v11 = [STResult success:v10];
LABEL_7:
      v3 = v11;

      goto LABEL_10;
    }
  }

  v3 = [(STResult *)self copy];
LABEL_10:

  return v3;
}

- (id)mapError:(id)a3
{
  v5 = a3;
  v6 = [(STResult *)self type];
  if (v6 == 1)
  {
    v7 = [(STResult *)self error];
    v8 = v5[2](v5, v7);
    v3 = [STResult failure:v8];
  }

  else if (!v6)
  {
    v3 = [(STResult *)self copy];
  }

  return v3;
}

- (id)flatMapError:(id)a3
{
  v5 = a3;
  v6 = [(STResult *)self type];
  if (v6 == 1)
  {
    v3 = [(STResult *)self error];
    v7 = v5[2](v5, v3);

    v8 = [v7 type];
    if (v8 == 1)
    {
      v9 = [v7 error];
      v10 = [STResult failure:v9];
    }

    else
    {
      if (v8)
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = [v7 value];
      v10 = [STResult success:v9];
    }

    v3 = v10;

    goto LABEL_9;
  }

  if (!v6)
  {
    v3 = [(STResult *)self copy];
  }

LABEL_10:

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STResult *)self isEqualToResult:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToResult:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v11 = 1;
    goto LABEL_19;
  }

  v8 = [(STResult *)self type];
  if (v8 != [(STResult *)v7 type])
  {
    v11 = 0;
    goto LABEL_19;
  }

  v9 = [(STResult *)self value];
  if (v9 || ([(STResult *)v7 value], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(STResult *)self value];
    v4 = [(STResult *)v7 value];
    if (([v3 isEqual:v4] & 1) == 0)
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

  v12 = [(STResult *)self error];
  if (!v12)
  {
    v5 = [(STResult *)v7 error];
    if (!v5)
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

  v13 = [(STResult *)self error];
  v14 = [(STResult *)v7 error];
  v11 = [v13 isEqual:v14];

  if (!v12)
  {
    goto LABEL_21;
  }

  if (v10)
  {
LABEL_15:
  }

LABEL_16:
  if (!v9)
  {
  }

LABEL_19:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(STResult *)self type];
  v4 = [(STResult *)self value];
  v5 = [v4 hash] ^ v3;
  v6 = [(STResult *)self error];
  v7 = [v6 hash];

  return v5 ^ v7;
}

@end