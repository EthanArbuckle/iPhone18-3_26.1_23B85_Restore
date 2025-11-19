@interface SXComponentTypeDescribing
+ (id)descriptionWithType:(id)a3 role:(int)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SXComponentTypeDescribing

+ (id)descriptionWithType:(id)a3 role:(int)a4
{
  v5 = a3;
  v6 = objc_alloc_init(objc_opt_class());
  v7 = v6[2];
  v6[2] = v5;

  *(v6 + 2) = a4;

  return v6;
}

- (unint64_t)hash
{
  v3 = [(SXComponentTypeDescribing *)self role];
  v4 = [(SXComponentTypeDescribing *)self type];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentTypeDescribing *)self role];
  if (v5 == [v4 role])
  {
    v6 = [(SXComponentTypeDescribing *)self type];
    v7 = [v4 type];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(SXComponentTypeDescribing *)self type];
  v6 = [v4 descriptionWithType:v5 role:{-[SXComponentTypeDescribing role](self, "role")}];

  return v6;
}

@end