@interface MRMCBlockAction
+ (id)blockActionWithBlock:(id)a3;
- (id)description;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MRMCBlockAction

+ (id)blockActionWithBlock:(id)a3
{
  v4 = objc_alloc_init(MRMCBlockAction);
  [(MRMCBlockAction *)v4 setBlock:a3];

  return v4;
}

- (void)demolish
{
  self->_block = 0;
  v3.receiver = self;
  v3.super_class = MRMCBlockAction;
  [(MCAction *)&v3 demolish];
}

- (void)_copySelfToSnapshot:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRMCBlockAction;
  [(MCAction *)&v6 _copySelfToSnapshot:?];
  block = self->_block;
  if (block)
  {
    *(a3 + 3) = block;
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MRMCBlockAction;
  return [-[MCAction description](&v3 "description")];
}

@end