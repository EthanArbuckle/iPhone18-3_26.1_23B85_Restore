@interface SASetRestrictionsThunk
- (SASetRestrictionsThunk)initWithThunk:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)siriCore_invokeThunk;
@end

@implementation SASetRestrictionsThunk

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  thunk = self->_thunk;

  return [v4 initWithThunk:thunk];
}

- (void)siriCore_invokeThunk
{
  thunk = self->_thunk;
  if (thunk)
  {
    thunk[2](thunk, self);
    v4 = self->_thunk;
    self->_thunk = 0;
  }
}

- (SASetRestrictionsThunk)initWithThunk:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SASetRestrictionsThunk;
  v5 = [(SASetRestrictionsThunk *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x26D5E5DB0](v4);
    thunk = v5->_thunk;
    v5->_thunk = v6;
  }

  return v5;
}

@end