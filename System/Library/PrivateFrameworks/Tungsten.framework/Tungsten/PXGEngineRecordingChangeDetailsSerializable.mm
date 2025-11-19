@interface PXGEngineRecordingChangeDetailsSerializable
- (PXGEngineRecordingChangeDetailsSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGEngineRecordingChangeDetailsSerializable

- (id)createSerializableObject
{
  v2 = [(PXGEngineRecordingChangeDetailsSerializable *)self changeDetails];
  v3 = PXGCreateDictionaryWithTransforms(v2, &__block_literal_global_3, &__block_literal_global_9501);

  return v3;
}

- (PXGEngineRecordingChangeDetailsSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXGEngineRecordingChangeDetailsSerializable;
  v5 = [(PXGEngineRecordingChangeDetailsSerializable *)&v9 init];
  if (v5)
  {
    v6 = PXGCreateDictionaryWithTransforms(v4, &__block_literal_global_7, &__block_literal_global_9501);
    changeDetails = v5->_changeDetails;
    v5->_changeDetails = v6;
  }

  return v5;
}

@end