@interface PTRowAction
+ (PTRowAction)actionWithHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (id)handler;
- (unint64_t)hash;
@end

@implementation PTRowAction

+ (PTRowAction)actionWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [handlerCopy copy];

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
    defaultHandler = [(PTRowAction *)self defaultHandler];
    v4 = MEMORY[0x223D60750]();
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v3 = [builder hash];

  return v3;
}

@end