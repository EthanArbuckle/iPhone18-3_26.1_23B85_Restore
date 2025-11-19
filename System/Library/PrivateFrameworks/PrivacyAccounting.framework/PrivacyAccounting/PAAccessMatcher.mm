@interface PAAccessMatcher
+ (id)coalescingMatcherForAccess:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PAAccessMatcher)initWithAccess:(id)a3 options:(unint64_t)a4;
@end

@implementation PAAccessMatcher

+ (id)coalescingMatcherForAccess:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAccess:v4 options:63];

  return v5;
}

- (PAAccessMatcher)initWithAccess:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PAAccessMatcher;
  v8 = [(PAAccessMatcher *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_access, a3);
    v9->_options = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if ([(PAAccessMatcher *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    options = self->_options;
    if (options == [(PAAccessMatcher *)v5 options])
    {
      access = self->_access;
      v8 = [(PAAccessMatcher *)v5 access];
      v9 = [(PAAccess *)access isEqualToAccess:v8 withOptions:self->_options];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end