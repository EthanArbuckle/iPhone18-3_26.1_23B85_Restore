@interface MOGlobalTrait
- (BOOL)isEqual:(id)a3;
- (MOGlobalTrait)initWithCoder:(id)a3;
- (MOGlobalTrait)initWithGlobalTraitMO:(id)a3;
- (MOGlobalTrait)initWithTitle:(id)a3;
- (MOGlobalTrait)initWithTitle:(id)a3 queries:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOGlobalTrait

- (MOGlobalTrait)initWithGlobalTraitMO:(id)a3
{
  if (a3)
  {
    v4 = [a3 title];
    self = [(MOGlobalTrait *)self initWithTitle:v4];

    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MOGlobalTrait)initWithTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MOGlobalTrait;
  v6 = [(MOGlobalTrait *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, a3);
  }

  return v7;
}

- (MOGlobalTrait)initWithTitle:(id)a3 queries:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MOGlobalTrait;
  v9 = [(MOGlobalTrait *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_queries, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_queries forKey:@"queries"];
}

- (MOGlobalTrait)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MOGlobalTrait;
  v5 = [(MOGlobalTrait *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"queries"];
    queries = v5->_queries;
    v5->_queries = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOGlobalTrait);
  objc_storeStrong(&v4->_title, self->_title);
  objc_storeStrong(&v4->_queries, self->_queries);
  return v4;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"title, %@, queries, %@", self->_title, self->_queries];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOGlobalTrait *)self title];
        if (v8 || ([(MOGlobalTrait *)v7 title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOGlobalTrait *)self title];
          v10 = [(MOGlobalTrait *)v7 title];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            v13 = [(MOGlobalTrait *)self queries];
            if (v13 || ([(MOGlobalTrait *)v7 queries], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v14 = [(MOGlobalTrait *)self queries];
              v15 = [(MOGlobalTrait *)v7 queries];
              v16 = [v14 isEqual:v15];

              if (v13)
              {
LABEL_18:

                v12 = v11 & v16;
                goto LABEL_19;
              }
            }

            else
            {
              v16 = 1;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

@end