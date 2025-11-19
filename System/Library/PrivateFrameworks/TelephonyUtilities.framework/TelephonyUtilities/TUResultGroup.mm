@interface TUResultGroup
- (TUResultGroup)initWithTitle:(id)a3 results:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)groupType;
- (void)removeSearchItem:(id)a3;
@end

@implementation TUResultGroup

- (TUResultGroup)initWithTitle:(id)a3 results:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TUResultGroup;
  v8 = [(TUResultGroup *)&v12 init];
  if (v8)
  {
    if ([v6 length])
    {
      v9 = [[TUGroupTitle alloc] initWithString:v6];
      title = v8->_title;
      v8->_title = v9;
    }

    objc_storeStrong(&v8->_resultsCache, a4);
  }

  return v8;
}

- (void)removeSearchItem:(id)a3
{
  v4 = a3;
  v5 = [(TUResultGroup *)self resultsCache];
  [v5 removeObject:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v3 = [(TUResultGroup *)self results];
  v4 = [v3 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  v7 = [(TUResultGroup *)self results];
  v8 = [v7 lastObject];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    return 1;
  }

  v10 = [(TUResultGroup *)self results];
  v11 = [v10 lastObject];
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