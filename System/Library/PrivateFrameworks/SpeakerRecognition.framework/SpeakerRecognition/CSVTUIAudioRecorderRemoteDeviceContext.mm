@interface CSVTUIAudioRecorderRemoteDeviceContext
- (CSVTUIAudioRecorderRemoteDeviceContext)initWithRemoteTrainingDeviceType:(unint64_t)type remoteTrainingDeviceUUIDList:(id)list;
@end

@implementation CSVTUIAudioRecorderRemoteDeviceContext

- (CSVTUIAudioRecorderRemoteDeviceContext)initWithRemoteTrainingDeviceType:(unint64_t)type remoteTrainingDeviceUUIDList:(id)list
{
  listCopy = list;
  v12.receiver = self;
  v12.super_class = CSVTUIAudioRecorderRemoteDeviceContext;
  v7 = [(CSVTUIAudioRecorderRemoteDeviceContext *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_remoteTrainingDeviceType = type;
    v9 = [listCopy copy];
    remoteTrainingDeviceUUIDList = v8->_remoteTrainingDeviceUUIDList;
    v8->_remoteTrainingDeviceUUIDList = v9;
  }

  return v8;
}

@end