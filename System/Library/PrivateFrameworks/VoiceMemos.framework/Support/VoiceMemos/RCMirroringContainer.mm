@interface RCMirroringContainer
- (RCMirroringContainer)initWithURL:(id)l;
- (id)mirroringDelegate;
- (id)storeDescriptionWithURL:(id)l;
@end

@implementation RCMirroringContainer

- (RCMirroringContainer)initWithURL:(id)l
{
  v13.receiver = self;
  v13.super_class = RCMirroringContainer;
  v3 = [(RCMirroringContainer *)&v13 initWithURL:l];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  persistentContainer = [(RCMirroringContainer *)v3 persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];

  rc_mirroringDelegate = [firstObject rc_mirroringDelegate];

  if (rc_mirroringDelegate)
  {

LABEL_4:
    v10 = v4;
    goto LABEL_8;
  }

  v11 = OSLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_100034284(firstObject, v11);
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)storeDescriptionWithURL:(id)l
{
  lCopy = l;
  v5 = [objc_opt_class() storeDescriptionForURL:lCopy isXPCClient:0 configuration:RCCloudConfiguration];

  mirroringDelegate = [(RCMirroringContainer *)self mirroringDelegate];
  [v5 setOption:mirroringDelegate forMirroringKey:NSPersistentStoreMirroringDelegateOptionKey];
  v7 = objc_opt_new();
  regulatoryLogger = self->_regulatoryLogger;
  self->_regulatoryLogger = v7;

  return v5;
}

- (id)mirroringDelegate
{
  mirroringDelegate = self->_mirroringDelegate;
  if (!mirroringDelegate)
  {
    v4 = RCSavedRecordingsCloudKitContainerIdentifier();
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[RCMirroringContainer mirroringDelegate]";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s -- Creating mirroring delegate using %@", &v11, 0x16u);
    }

    v6 = [[NSCloudKitMirroringDelegateOptions alloc] initWithContainerIdentifier:v4];
    [v6 setAutomaticallyScheduleImportAndExportOperations:1];
    [v6 setApsConnectionMachServiceName:@"com.apple.aps.voicememod"];
    v7 = +[RCCloudKitContainerUtilities containerOptions];
    [v6 setContainerOptions:v7];

    v8 = [[NSCloudKitMirroringDelegate alloc] initWithOptions:v6];
    v9 = self->_mirroringDelegate;
    self->_mirroringDelegate = v8;

    mirroringDelegate = self->_mirroringDelegate;
  }

  return mirroringDelegate;
}

@end