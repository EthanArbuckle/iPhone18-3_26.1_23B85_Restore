@interface SXComponentTypeDescribing
+ (id)descriptionWithType:(id)type role:(int)role;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SXComponentTypeDescribing

+ (id)descriptionWithType:(id)type role:(int)role
{
  typeCopy = type;
  v6 = objc_alloc_init(objc_opt_class());
  v7 = v6[2];
  v6[2] = typeCopy;

  *(v6 + 2) = role;

  return v6;
}

- (unint64_t)hash
{
  role = [(SXComponentTypeDescribing *)self role];
  type = [(SXComponentTypeDescribing *)self type];
  v5 = [type hash];

  return v5 ^ role;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  role = [(SXComponentTypeDescribing *)self role];
  if (role == [equalCopy role])
  {
    type = [(SXComponentTypeDescribing *)self type];
    type2 = [equalCopy type];
    v8 = [type isEqual:type2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  type = [(SXComponentTypeDescribing *)self type];
  v6 = [v4 descriptionWithType:type role:{-[SXComponentTypeDescribing role](self, "role")}];

  return v6;
}

@end