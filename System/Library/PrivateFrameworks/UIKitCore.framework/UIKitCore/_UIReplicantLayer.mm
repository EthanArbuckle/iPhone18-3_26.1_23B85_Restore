@interface _UIReplicantLayer
- (void)_setSlotId:(id)id;
- (void)setContents:(id)contents;
@end

@implementation _UIReplicantLayer

- (void)setContents:(id)contents
{
  v3 = *(__UILogGetCategoryCachedImpl("Snapshotting", &setContents____s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Snapshot layer doesn't allow its contents to be set.", v4, 2u);
  }
}

- (void)_setSlotId:(id)id
{
  idCopy = id;
  object = [(_UISlotId *)idCopy object];
  v7.receiver = self;
  v7.super_class = _UIReplicantLayer;
  [(_UIReplicantLayer *)&v7 setContents:object];

  slotId = self->__slotId;
  self->__slotId = idCopy;
}

@end