@interface PAAccessMatcher
+ (id)coalescingMatcherForAccess:(id)access;
- (BOOL)isEqual:(id)equal;
- (PAAccessMatcher)initWithAccess:(id)access options:(unint64_t)options;
@end

@implementation PAAccessMatcher

+ (id)coalescingMatcherForAccess:(id)access
{
  accessCopy = access;
  v5 = [[self alloc] initWithAccess:accessCopy options:63];

  return v5;
}

- (PAAccessMatcher)initWithAccess:(id)access options:(unint64_t)options
{
  accessCopy = access;
  v11.receiver = self;
  v11.super_class = PAAccessMatcher;
  v8 = [(PAAccessMatcher *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_access, access);
    v9->_options = options;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if ([(PAAccessMatcher *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    options = self->_options;
    if (options == [(PAAccessMatcher *)v5 options])
    {
      access = self->_access;
      access = [(PAAccessMatcher *)v5 access];
      v9 = [(PAAccess *)access isEqualToAccess:access withOptions:self->_options];
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