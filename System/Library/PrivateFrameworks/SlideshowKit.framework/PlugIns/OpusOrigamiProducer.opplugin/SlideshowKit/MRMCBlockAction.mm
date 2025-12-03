@interface MRMCBlockAction
+ (id)blockActionWithBlock:(id)block;
- (id)description;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MRMCBlockAction

+ (id)blockActionWithBlock:(id)block
{
  v4 = objc_alloc_init(MRMCBlockAction);
  [(MRMCBlockAction *)v4 setBlock:block];

  return v4;
}

- (void)demolish
{
  self->_block = 0;
  v3.receiver = self;
  v3.super_class = MRMCBlockAction;
  [(MCAction *)&v3 demolish];
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v6.receiver = self;
  v6.super_class = MRMCBlockAction;
  [(MCAction *)&v6 _copySelfToSnapshot:?];
  block = self->_block;
  if (block)
  {
    *(snapshot + 3) = block;
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MRMCBlockAction;
  return [-[MCAction description](&v3 "description")];
}

@end