@interface _PASImmutableDomainSelection
- (BOOL)containsDomain:(id)domain;
- (BOOL)isEqualToDomainSelection:(id)selection;
- (id)_initWithNonOverlappingDomainSet:(id)set;
@end

@implementation _PASImmutableDomainSelection

- (BOOL)isEqualToDomainSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy && (v5 = -[_PASDomainSelection count](self, "count"), v5 == [selectionCopy count]))
  {
    domains = self->_domains;
    allDomains = [selectionCopy allDomains];
    v8 = [(NSSet *)domains isEqual:allDomains];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsDomain:(id)domain
{
  domainCopy = domain;
  v5 = objc_autoreleasePoolPush();
  if ([(NSSet *)self->_domains containsObject:domainCopy])
  {
    v6 = 1;
  }

  else
  {
    while (1)
    {
      v7 = [domainCopy rangeOfString:@"." options:6];
      v6 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v9 = [domainCopy substringToIndex:v7];

      objc_autoreleasePoolPop(v5);
      v5 = objc_autoreleasePoolPush();
      domainCopy = v9;
      if ([(NSSet *)self->_domains containsObject:v9])
      {
        v6 = 1;
        domainCopy = v9;
        break;
      }
    }
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)_initWithNonOverlappingDomainSet:(id)set
{
  setCopy = set;
  v7 = [(_PASDomainSelection *)self init];
  if (v7)
  {
    if (![setCopy count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"_PASDomainSelection.m" lineNumber:224 description:@"_PASImmutableDomainSelection shouldn't be instantiated with zero domains"];
    }

    objc_storeStrong(&v7->_domains, set);
  }

  return v7;
}

@end