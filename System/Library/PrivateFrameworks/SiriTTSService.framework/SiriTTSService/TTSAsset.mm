@interface TTSAsset
+ (BOOL)handleProxyEvent:(id)a3 reply:(id)a4 connection:(id)a5;
+ (BOOL)setServer:(id)a3 forType:(id)a4;
+ (BOOL)setServer:(id)a3 forType:(id)a4 source:(id)a5;
+ (NSString)NewAssetNotification;
+ (TTSAssistantVoiceMaps)assistantVoiceMaps;
+ (id)bestAssetOfTypes:(id)a3 matching:(id)a4;
+ (id)describeServer:(id)a3 forType:(id)a4;
+ (id)describeServer:(id)a3 source:(id)a4;
+ (id)getServerForType:(id)a3;
+ (id)getServerForType:(id)a3 source:(id)a4;
+ (id)listAssetsOfTypes:(id)a3 matching:(id)a4;
- (BOOL)isNewer:(id)a3;
- (BOOL)isOlder:(id)a3;
- (BOOL)locallyAvailable;
- (NSBundle)bundle;
- (NSNumber)age;
- (NSNumber)diskSize;
- (NSNumber)downloadSize;
- (id)legacyAssetWithBundle:(id)a3;
- (id)relatedAssetsWithOnlyAvailable:(BOOL)a3;
- (int64_t)brand;
- (void)cancelDownloadingThen:(id)a3;
- (void)downloadWithOptions:(unint64_t)a3 progress:(id)a4 then:(id)a5;
- (void)downloadWithReservation:(id)a3 useBattery:(BOOL)a4 progress:(id)a5 then:(id)a6;
- (void)purge;
- (void)purgeImmediately:(BOOL)a3;
- (void)purgeThen:(id)a3;
- (void)setAge:(id)a3;
- (void)setBundle:(id)a3;
- (void)setDiskSize:(id)a3;
- (void)setDownloadSize:(id)a3;
@end

@implementation TTSAsset

+ (TTSAssistantVoiceMaps)assistantVoiceMaps
{
  swift_getObjCClassMetadata();
  v2 = static TTSAsset.assistantVoiceMaps.getter();

  return v2;
}

- (void)downloadWithReservation:(id)a3 useBattery:(BOOL)a4 progress:(id)a5 then:(id)a6
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  if (a3)
  {
    sub_1B1C2CB58();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = self;
  TTSAsset.download(reservation:useBattery:progress:then:)(v14, v15, a4, sub_1B1B20A20, v12, sub_1B1B20A10, v13);
}

- (void)downloadWithOptions:(unint64_t)a3 progress:(id)a4 then:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
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
  v13 = self;
  TTSAsset.download(options:progress:then:)(v13, v11, v12, v10);
  sub_1B1A949B4(v10);
  sub_1B1A949B4(v7);
}

- (void)cancelDownloadingThen:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B1B206DC(v5, v4);
  _Block_release(v4);
}

- (void)purge
{
  v2 = self;
  TTSAsset.purge()();
}

- (void)purgeImmediately:(BOOL)a3
{
  v3 = self;
  TTSAsset.purge(immediately:)(0);
}

- (void)purgeThen:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = sub_1B1A95AD0;
  }

  v5 = self;
  TTSAsset.purge(then:)(v4);
  sub_1B1A949B4(v4);
}

- (id)legacyAssetWithBundle:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = TTSAsset.legacyAssetWithBundle(_:)(v4);

  return v6;
}

+ (BOOL)handleProxyEvent:(id)a3 reply:(id)a4 connection:(id)a5
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

+ (BOOL)setServer:(id)a3 forType:(id)a4
{
  v5 = a3;
  v6 = a3;
  v7 = a4;
  LOBYTE(v5) = static TTSAsset.set(server:forType:)(v5, v7);

  return v5 & 1;
}

+ (BOOL)setServer:(id)a3 forType:(id)a4 source:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  LOBYTE(a4) = static TTSAsset.set(server:forType:source:)(a3, v9);

  return a4 & 1;
}

+ (id)getServerForType:(id)a3
{
  v3 = a3;
  v4 = static TTSAsset.get(serverForType:)(v3);

  return v4;
}

+ (id)getServerForType:(id)a3 source:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = a4;
  v8 = static TTSAsset.get(serverForType:source:)(v6);

  return v8;
}

+ (id)describeServer:(id)a3 forType:(id)a4
{
  v5 = a3;
  v6 = a4;
  static TTSAsset.describe(server:forType:)(v5, v6);

  v7 = sub_1B1C2CB28();

  return v7;
}

+ (id)describeServer:(id)a3 source:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = a4;
  static TTSAsset.describe(server:source:)(v6);

  v8 = sub_1B1C2CB28();

  return v8;
}

+ (NSString)NewAssetNotification
{
  v2 = static TTSAsset.NewAssetNotification.getter();

  return v2;
}

- (BOOL)isOlder:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = TTSAsset.isOlder(_:)();

  return self & 1;
}

- (BOOL)isNewer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = TTSAsset.isNewer(_:)();

  return self & 1;
}

- (NSNumber)age
{
  v2 = sub_1B1BD6504();

  return v2;
}

- (void)setAge:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BD6540();
}

- (NSNumber)downloadSize
{
  v2 = sub_1B1BD6580();

  return v2;
}

- (void)setDownloadSize:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BD65BC();
}

- (NSNumber)diskSize
{
  v2 = sub_1B1BD7410();

  return v2;
}

- (void)setDiskSize:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BD65FC();
}

- (NSBundle)bundle
{
  v2 = sub_1B1BD7578();

  return v2;
}

- (void)setBundle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BD667C();
}

- (int64_t)brand
{
  v2 = self;
  v3 = sub_1B1ABA598();

  return v3;
}

- (BOOL)locallyAvailable
{
  v2 = self;
  v3 = TTSAsset.locallyAvailable.getter();

  return v3;
}

+ (id)listAssetsOfTypes:(id)a3 matching:(id)a4
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

- (id)relatedAssetsWithOnlyAvailable:(BOOL)a3
{
  type metadata accessor for TTSAsset();
  v3 = sub_1B1C2CE68();

  return v3;
}

+ (id)bestAssetOfTypes:(id)a3 matching:(id)a4
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v4 = sub_1B1C2CE78();
  v5 = sub_1B1C2CA98();
  swift_getObjCClassMetadata();
  v6 = static TTSAsset.bestAsset(ofTypes:matching:)(v4, v5);

  return v6;
}

@end