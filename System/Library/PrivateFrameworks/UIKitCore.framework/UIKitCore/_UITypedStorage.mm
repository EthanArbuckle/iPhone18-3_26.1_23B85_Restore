@interface _UITypedStorage
- (_UITypedStorage)init;
- (void)copyInto:(id)into;
@end

@implementation _UITypedStorage

- (_UITypedStorage)init
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  *(&self->super.isa + v3) = sub_188A39B78(MEMORY[0x1E69E7CC0]);
  v5.receiver = self;
  v5.super_class = _UITypedStorage;
  return [(_UITypedStorage *)&v5 init];
}

- (void)copyInto:(id)into
{
  intoCopy = into;
  selfCopy = self;
  sub_1890444D4(intoCopy);
}

@end