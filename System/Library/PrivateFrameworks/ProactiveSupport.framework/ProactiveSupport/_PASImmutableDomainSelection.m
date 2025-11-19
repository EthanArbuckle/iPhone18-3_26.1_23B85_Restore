@interface _PASImmutableDomainSelection
- (BOOL)containsDomain:(id)a3;
- (BOOL)isEqualToDomainSelection:(id)a3;
- (id)_initWithNonOverlappingDomainSet:(id)a3;
@end

@implementation _PASImmutableDomainSelection

- (BOOL)isEqualToDomainSelection:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[_PASDomainSelection count](self, "count"), v5 == [v4 count]))
  {
    domains = self->_domains;
    v7 = [v4 allDomains];
    v8 = [(NSSet *)domains isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsDomain:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ([(NSSet *)self->_domains containsObject:v4])
  {
    v6 = 1;
  }

  else
  {
    while (1)
    {
      v7 = [v4 rangeOfString:@"." options:6];
      v6 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v9 = [v4 substringToIndex:v7];

      objc_autoreleasePoolPop(v5);
      v5 = objc_autoreleasePoolPush();
      v4 = v9;
      if ([(NSSet *)self->_domains containsObject:v9])
      {
        v6 = 1;
        v4 = v9;
        break;
      }
    }
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)_initWithNonOverlappingDomainSet:(id)a3
{
  v6 = a3;
  v7 = [(_PASDomainSelection *)self init];
  if (v7)
  {
    if (![v6 count])
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v7 file:@"_PASDomainSelection.m" lineNumber:224 description:@"_PASImmutableDomainSelection shouldn't be instantiated with zero domains"];
    }

    objc_storeStrong(&v7->_domains, a3);
  }

  return v7;
}

@end