@interface MOGlobalTrait
- (BOOL)isEqual:(id)equal;
- (MOGlobalTrait)initWithCoder:(id)coder;
- (MOGlobalTrait)initWithGlobalTraitMO:(id)o;
- (MOGlobalTrait)initWithTitle:(id)title;
- (MOGlobalTrait)initWithTitle:(id)title queries:(id)queries;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOGlobalTrait

- (MOGlobalTrait)initWithGlobalTraitMO:(id)o
{
  if (o)
  {
    title = [o title];
    self = [(MOGlobalTrait *)self initWithTitle:title];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MOGlobalTrait)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = MOGlobalTrait;
  v6 = [(MOGlobalTrait *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, title);
  }

  return v7;
}

- (MOGlobalTrait)initWithTitle:(id)title queries:(id)queries
{
  titleCopy = title;
  queriesCopy = queries;
  v12.receiver = self;
  v12.super_class = MOGlobalTrait;
  v9 = [(MOGlobalTrait *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_queries, queries);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_queries forKey:@"queries"];
}

- (MOGlobalTrait)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MOGlobalTrait;
  v5 = [(MOGlobalTrait *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"queries"];
    queries = v5->_queries;
    v5->_queries = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        title = [(MOGlobalTrait *)self title];
        if (title || ([(MOGlobalTrait *)v7 title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          title2 = [(MOGlobalTrait *)self title];
          title3 = [(MOGlobalTrait *)v7 title];
          v11 = [title2 isEqual:title3];

          if (title)
          {
LABEL_12:

            queries = [(MOGlobalTrait *)self queries];
            if (queries || ([(MOGlobalTrait *)v7 queries], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              queries2 = [(MOGlobalTrait *)self queries];
              queries3 = [(MOGlobalTrait *)v7 queries];
              v16 = [queries2 isEqual:queries3];

              if (queries)
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