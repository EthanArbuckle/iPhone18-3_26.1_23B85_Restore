@interface VFXCommonProfileProgramCache
- (VFXCommonProfileProgramCache)init;
- (void)dealloc;
@end

@implementation VFXCommonProfileProgramCache

- (VFXCommonProfileProgramCache)init
{
  v4.receiver = self;
  v4.super_class = VFXCommonProfileProgramCache;
  v2 = [(VFXCommonProfileProgramCache *)&v4 init];
  if (v2)
  {
    v2->_owners = CFSetCreateMutable(0, 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  program = self->_program;
  if (program)
  {
    CFRelease(program);
    self->_program = 0;
  }

  owners = self->_owners;
  if (owners)
  {
    CFRelease(owners);
    self->_owners = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXCommonProfileProgramCache;
  [(VFXCommonProfileProgramCache *)&v5 dealloc];
}

@end