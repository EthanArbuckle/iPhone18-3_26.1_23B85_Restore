@interface TUResultGroup
- (TUResultGroup)initWithTitle:(id)title results:(id)results;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)groupType;
- (void)removeSearchItem:(id)item;
@end

@implementation TUResultGroup

- (TUResultGroup)initWithTitle:(id)title results:(id)results
{
  titleCopy = title;
  resultsCopy = results;
  v12.receiver = self;
  v12.super_class = TUResultGroup;
  v8 = [(TUResultGroup *)&v12 init];
  if (v8)
  {
    if ([titleCopy length])
    {
      v9 = [[TUGroupTitle alloc] initWithString:titleCopy];
      title = v8->_title;
      v8->_title = v9;
    }

    objc_storeStrong(&v8->_resultsCache, results);
  }

  return v8;
}

- (void)removeSearchItem:(id)item
{
  itemCopy = item;
  resultsCache = [(TUResultGroup *)self resultsCache];
  [resultsCache removeObject:itemCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_title);
    objc_storeStrong(v5 + 2, self->_resultsCache);
  }

  return v5;
}

- (unint64_t)groupType
{
  results = [(TUResultGroup *)self results];
  lastObject = [results lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  results2 = [(TUResultGroup *)self results];
  lastObject2 = [results2 lastObject];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    return 1;
  }

  results3 = [(TUResultGroup *)self results];
  lastObject3 = [results3 lastObject];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end