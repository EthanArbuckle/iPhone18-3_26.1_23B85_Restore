@interface REMLElementComparator
- (REMLElementComparator)initWithModel:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compareElement:(id)a3 toElement:(id)a4 level:(unint64_t)a5;
@end

@implementation REMLElementComparator

- (REMLElementComparator)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMLElementComparator;
  v6 = [(REMLElementComparator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (int64_t)compareElement:(id)a3 toElement:(id)a4 level:(unint64_t)a5
{
  v6 = a4;
  v7 = [a3 identifier];
  v8 = [v6 identifier];

  v9 = [v7 compare:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  model = self->_model;

  return [v4 initWithModel:model];
}

@end