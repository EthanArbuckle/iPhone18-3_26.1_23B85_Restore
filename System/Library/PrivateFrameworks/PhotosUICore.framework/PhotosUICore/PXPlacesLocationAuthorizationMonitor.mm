@interface PXPlacesLocationAuthorizationMonitor
+ (PXPlacesLocationAuthorizationMonitor)sharedInstance;
- (PXPlacesLocationAuthorizationMonitor)init;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation PXPlacesLocationAuthorizationMonitor

+ (PXPlacesLocationAuthorizationMonitor)sharedInstance
{
  if (qword_1EB17AC70 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB17AC78;

  return v3;
}

- (PXPlacesLocationAuthorizationMonitor)init
{
  ObjectType = swift_getObjectType();
  v3 = (*(ObjectType + 128))([objc_allocWithZone(MEMORY[0x1E695FBE8]) init]);
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  _s12PhotosUICore34PlacesLocationAuthorizationMonitorC024locationManagerDidChangeE0yySo010CLLocationH0CF_0();
}

@end