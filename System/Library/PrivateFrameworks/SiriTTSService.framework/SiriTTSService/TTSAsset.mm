@interface TTSAsset
+ (BOOL)handleProxyEvent:(id)event reply:(id)reply connection:(id)connection;
+ (BOOL)setServer:(id)server forType:(id)type;
+ (BOOL)setServer:(id)server forType:(id)type source:(id)source;
+ (NSString)NewAssetNotification;
+ (TTSAssistantVoiceMaps)assistantVoiceMaps;
+ (id)bestAssetOfTypes:(id)types matching:(id)matching;
+ (id)describeServer:(id)server forType:(id)type;
+ (id)describeServer:(id)server source:(id)source;
+ (id)getServerForType:(id)type;
+ (id)getServerForType:(id)type source:(id)source;
+ (id)listAssetsOfTypes:(id)types matching:(id)matching;
- (BOOL)isNewer:(id)newer;
- (BOOL)isOlder:(id)older;
- (BOOL)locallyAvailable;
- (NSBundle)bundle;
- (NSNumber)age;
- (NSNumber)diskSize;
- (NSNumber)downloadSize;
- (id)legacyAssetWithBundle:(id)bundle;
- (id)relatedAssetsWithOnlyAvailable:(BOOL)available;
- (int64_t)brand;
- (void)cancelDownloadingThen:(id)then;
- (void)downloadWithOptions:(unint64_t)options progress:(id)progress then:(id)then;
- (void)downloadWithReservation:(id)reservation useBattery:(BOOL)battery progress:(id)progress then:(id)then;
- (void)purge;
- (void)purgeImmediately:(BOOL)immediately;
- (void)purgeThen:(id)then;
- (void)setAge:(id)age;
- (void)setBundle:(id)bundle;
- (void)setDiskSize:(id)size;
- (void)setDownloadSize:(id)size;
@end

@implementation TTSAsset

+ (TTSAssistantVoiceMaps)assistantVoiceMaps
{
  swift_getObjCClassMetadata();
  v2 = static TTSAsset.assistantVoiceMaps.getter();

  return v2;
}

- (void)downloadWithReservation:(id)reservation useBattery:(BOOL)battery progress:(id)progress then:(id)then
{
  v10 = _Block_copy(progress);
  v11 = _Block_copy(then);
  if (reservation)
  {
    sub_1B1C2CB58();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  selfCopy = self;
  TTSAsset.download(reservation:useBattery:progress:then:)(selfCopy, v15, battery, sub_1B1B20A20, v12, sub_1B1B20A10, v13);
}

- (void)downloadWithOptions:(unint64_t)options progress:(id)progress then:(id)then
{
  v7 = _Block_copy(progress);
  v8 = _Block_copy(then);
  v9 = v8;
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1B1B20A18;
    if (v9)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v9;
      v10 = sub_1B1B20A10;
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_3;
  }

  v10 = 0;
LABEL_6:
  selfCopy = self;
  TTSAsset.download(options:progress:then:)(selfCopy, v11, v12, v10);
  sub_1B1A949B4(v10);
  sub_1B1A949B4(v7);
}

- (void)cancelDownloadingThen:(id)then
{
  v4 = _Block_copy(then);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B1B206DC(selfCopy, v4);
  _Block_release(v4);
}

- (void)purge
{
  selfCopy = self;
  TTSAsset.purge()();
}

- (void)purgeImmediately:(BOOL)immediately
{
  selfCopy = self;
  TTSAsset.purge(immediately:)(0);
}

- (void)purgeThen:(id)then
{
  v4 = _Block_copy(then);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = sub_1B1A95AD0;
  }

  selfCopy = self;
  TTSAsset.purge(then:)(v4);
  sub_1B1A949B4(v4);
}

- (id)legacyAssetWithBundle:(id)bundle
{
  bundleCopy = bundle;
  selfCopy = self;
  v6 = TTSAsset.legacyAssetWithBundle(_:)(bundleCopy);

  return v6;
}

+ (BOOL)handleProxyEvent:(id)event reply:(id)reply connection:(id)connection
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = static TTSAsset.handleProxy(event:reply:connection:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5 & 1;
}

+ (BOOL)setServer:(id)server forType:(id)type
{
  serverCopy = server;
  serverCopy2 = server;
  typeCopy = type;
  LOBYTE(serverCopy) = static TTSAsset.set(server:forType:)(serverCopy, typeCopy);

  return serverCopy & 1;
}

+ (BOOL)setServer:(id)server forType:(id)type source:(id)source
{
  swift_getObjCClassMetadata();
  serverCopy = server;
  typeCopy = type;
  sourceCopy = source;
  LOBYTE(type) = static TTSAsset.set(server:forType:source:)(server, typeCopy);

  return type & 1;
}

+ (id)getServerForType:(id)type
{
  typeCopy = type;
  v4 = static TTSAsset.get(serverForType:)(typeCopy);

  return v4;
}

+ (id)getServerForType:(id)type source:(id)source
{
  swift_getObjCClassMetadata();
  typeCopy = type;
  sourceCopy = source;
  v8 = static TTSAsset.get(serverForType:source:)(typeCopy);

  return v8;
}

+ (id)describeServer:(id)server forType:(id)type
{
  serverCopy = server;
  typeCopy = type;
  static TTSAsset.describe(server:forType:)(serverCopy, typeCopy);

  v7 = sub_1B1C2CB28();

  return v7;
}

+ (id)describeServer:(id)server source:(id)source
{
  swift_getObjCClassMetadata();
  serverCopy = server;
  sourceCopy = source;
  static TTSAsset.describe(server:source:)(serverCopy);

  v8 = sub_1B1C2CB28();

  return v8;
}

+ (NSString)NewAssetNotification
{
  v2 = static TTSAsset.NewAssetNotification.getter();

  return v2;
}

- (BOOL)isOlder:(id)older
{
  olderCopy = older;
  selfCopy = self;
  LOBYTE(self) = TTSAsset.isOlder(_:)();

  return self & 1;
}

- (BOOL)isNewer:(id)newer
{
  newerCopy = newer;
  selfCopy = self;
  LOBYTE(self) = TTSAsset.isNewer(_:)();

  return self & 1;
}

- (NSNumber)age
{
  v2 = sub_1B1BD6504();

  return v2;
}

- (void)setAge:(id)age
{
  ageCopy = age;
  selfCopy = self;
  sub_1B1BD6540();
}

- (NSNumber)downloadSize
{
  v2 = sub_1B1BD6580();

  return v2;
}

- (void)setDownloadSize:(id)size
{
  sizeCopy = size;
  selfCopy = self;
  sub_1B1BD65BC();
}

- (NSNumber)diskSize
{
  v2 = sub_1B1BD7410();

  return v2;
}

- (void)setDiskSize:(id)size
{
  sizeCopy = size;
  selfCopy = self;
  sub_1B1BD65FC();
}

- (NSBundle)bundle
{
  v2 = sub_1B1BD7578();

  return v2;
}

- (void)setBundle:(id)bundle
{
  bundleCopy = bundle;
  selfCopy = self;
  sub_1B1BD667C();
}

- (int64_t)brand
{
  selfCopy = self;
  v3 = sub_1B1ABA598();

  return v3;
}

- (BOOL)locallyAvailable
{
  selfCopy = self;
  v3 = TTSAsset.locallyAvailable.getter();

  return v3;
}

+ (id)listAssetsOfTypes:(id)types matching:(id)matching
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v4 = sub_1B1C2CE78();
  v5 = sub_1B1C2CA98();
  swift_getObjCClassMetadata();
  static TTSAsset.listAssets(ofTypes:matching:)(v4, v5);

  type metadata accessor for TTSAsset();
  v6 = sub_1B1C2CE68();

  return v6;
}

- (id)relatedAssetsWithOnlyAvailable:(BOOL)available
{
  type metadata accessor for TTSAsset();
  v3 = sub_1B1C2CE68();

  return v3;
}

+ (id)bestAssetOfTypes:(id)types matching:(id)matching
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v4 = sub_1B1C2CE78();
  v5 = sub_1B1C2CA98();
  swift_getObjCClassMetadata();
  v6 = static TTSAsset.bestAsset(ofTypes:matching:)(v4, v5);

  return v6;
}

@end