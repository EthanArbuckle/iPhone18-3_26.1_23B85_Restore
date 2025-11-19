@interface RENoContentRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (RENoContentRelevanceProvider)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)_hash;
@end

@implementation RENoContentRelevanceProvider

- (RENoContentRelevanceProvider)init
{
  v3.receiver = self;
  v3.super_class = RENoContentRelevanceProvider;
  return [(RERelevanceProvider *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = RENoContentRelevanceProvider;
  return [(RERelevanceProvider *)&v4 copyWithZone:a3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = 1;
  if (v4 != self)
  {
    v7.receiver = self;
    v7.super_class = RENoContentRelevanceProvider;
    if (![(RERelevanceProvider *)&v7 isEqual:v4]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)_hash
{
  v3.receiver = self;
  v3.super_class = RENoContentRelevanceProvider;
  return [(RERelevanceProvider *)&v3 _hash];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = RENoContentRelevanceProvider;
  v2 = [(RENoContentRelevanceProvider *)&v4 description];

  return v2;
}

@end