@interface INPersonWrapper
- (BOOL)isEqual:(id)a3;
- (INPersonWrapper)initWithINPerson:(id)a3;
- (unint64_t)hash;
@end

@implementation INPersonWrapper

- (INPersonWrapper)initWithINPerson:(id)a3
{
  objc_storeStrong(&self->_inPerson, a3);
  v5 = a3;
  v6 = [TUHandle handleWithPerson:v5];
  tuHandle = self->_tuHandle;
  self->_tuHandle = v6;

  return self;
}

- (unint64_t)hash
{
  v3 = [(INPerson *)self->_inPerson displayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_10004D950;
  }

  v6 = v5;

  v7 = [(INPerson *)self->_inPerson personHandle];
  v8 = [v7 label];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_10004D950;
  }

  v11 = v10;

  v12 = [(__CFString *)v6 hash];
  v13 = [(__CFString *)v11 hash];

  return v13 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [v4[1] displayName];
    v6 = [(INPerson *)self->_inPerson displayName];
    if ([v5 isEqualToString:v6])
    {
      v7 = [v4[1] personHandle];
      v8 = [v7 label];
      v9 = [(INPerson *)self->_inPerson personHandle];
      v10 = [v9 label];
      if ([v8 isEqualToString:v10])
      {
        v11 = v4[2];
        tuHandle = self->_tuHandle;
        v13 = TUHandlesAreCanonicallyEqual();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end