@interface SADyldInfo
- (id)debugDescription;
- (id)initWithTask:(void *)task;
@end

@implementation SADyldInfo

- (id)initWithTask:(void *)task
{
  if (!task)
  {
    return 0;
  }

  v6.receiver = task;
  v6.super_class = SADyldInfo;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 2, a2);
  }

  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SATask *)self->_task debugDescription];
  v5 = v4;
  if (self->_isSharedCache)
  {
    v6 = @" (shared cache)";
  }

  else
  {
    v6 = &stru_1F5BBF440;
  }

  v7 = [v3 initWithFormat:@"%@ DYLD info %@@0x%llx id:0x%llx %@%@ (dyld complete:%d, path complete:%d)", v4, *&self->_uuid, self->_stringID, self->_path, v6, self->_dyldInfoIsComplete, self->_pathIsComplete];

  return v7;
}

@end