@interface PXGEngineRecordingUpdateStartEventSerializable
- (PXGEngineRecordingUpdateStartEventSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGEngineRecordingUpdateStartEventSerializable

- (id)createSerializableObject
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"targetTimestamp";
  [(PXGEngineRecordingUpdateStartEventSerializable *)self targetTimestamp];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v11[0] = v3;
  v10[1] = @"needsUpdate";
  v4 = [(PXGEngineRecordingUpdateStartEventSerializable *)self needsUpdate];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v11[1] = v5;
  v10[2] = @"pendingUpdateEntities";
  v6 = [(PXGEngineRecordingUpdateStartEventSerializable *)self pendingUpdateEntities];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (PXGEngineRecordingUpdateStartEventSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PXGEngineRecordingUpdateStartEventSerializable;
  v5 = [(PXGEngineRecordingUpdateStartEventSerializable *)&v16 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"targetTimestamp"];
    [v7 doubleValue];
    v9 = v8;

    v5->_targetTimestamp = v9;
    v10 = [v6 objectForKeyedSubscript:@"needsUpdate"];
    v11 = [v10 unsignedIntValue];

    v5->_needsUpdate = v11;
    v12 = [v6 objectForKeyedSubscript:@"pendingUpdateEntities"];

    v13 = v12;
    v14 = [v13 unsignedIntValue];

    v5->_pendingUpdateEntities = v14;
  }

  return v5;
}

@end