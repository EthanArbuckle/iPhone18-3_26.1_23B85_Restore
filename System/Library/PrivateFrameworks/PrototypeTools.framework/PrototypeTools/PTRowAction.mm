@interface PTRowAction
+ (PTRowAction)actionWithHandler:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)handler;
- (unint64_t)hash;
@end

@implementation PTRowAction

+ (PTRowAction)actionWithHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v3 copy];

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (id)handler
{
  handler = self->_handler;
  if (handler)
  {
    v4 = MEMORY[0x223D60750](handler, a2);
  }

  else
  {
    v5 = [(PTRowAction *)self defaultHandler];
    v4 = MEMORY[0x223D60750]();
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CF0C40] builder];
  v3 = [v2 hash];

  return v3;
}

@end