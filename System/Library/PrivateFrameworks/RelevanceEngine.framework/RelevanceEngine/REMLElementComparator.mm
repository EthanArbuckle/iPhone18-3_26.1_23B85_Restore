@interface REMLElementComparator
- (REMLElementComparator)initWithModel:(id)model;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compareElement:(id)element toElement:(id)toElement level:(unint64_t)level;
@end

@implementation REMLElementComparator

- (REMLElementComparator)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = REMLElementComparator;
  v6 = [(REMLElementComparator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (int64_t)compareElement:(id)element toElement:(id)toElement level:(unint64_t)level
{
  toElementCopy = toElement;
  identifier = [element identifier];
  identifier2 = [toElementCopy identifier];

  v9 = [identifier compare:identifier2];
  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  if (v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  model = self->_model;

  return [v4 initWithModel:model];
}

@end