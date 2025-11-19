@interface CSVTUIAudioRecorderRemoteDeviceContext
- (CSVTUIAudioRecorderRemoteDeviceContext)initWithRemoteTrainingDeviceType:(unint64_t)a3 remoteTrainingDeviceUUIDList:(id)a4;
@end

@implementation CSVTUIAudioRecorderRemoteDeviceContext

- (CSVTUIAudioRecorderRemoteDeviceContext)initWithRemoteTrainingDeviceType:(unint64_t)a3 remoteTrainingDeviceUUIDList:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CSVTUIAudioRecorderRemoteDeviceContext;
  v7 = [(CSVTUIAudioRecorderRemoteDeviceContext *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_remoteTrainingDeviceType = a3;
    v9 = [v6 copy];
    remoteTrainingDeviceUUIDList = v8->_remoteTrainingDeviceUUIDList;
    v8->_remoteTrainingDeviceUUIDList = v9;
  }

  return v8;
}

@end