@interface TPSUserGuideManager
+ (id)allUserGuideMap;
+ (id)cloudDeviceDataSourceWithDevices:(id)a3;
+ (id)mainUserGuide;
+ (id)userGuideWithIdentifier:(id)a3 title:(id)a4 dataSource:(id)a5;
- (TPSUserGuideManager)init;
@end

@implementation TPSUserGuideManager

+ (id)mainUserGuide
{
  v2 = _s10TipsDaemon16UserGuideManagerC04maincD00A4Core0cD0CyFZ_0();

  return v2;
}

+ (id)userGuideWithIdentifier:(id)a3 title:(id)a4 dataSource:(id)a5
{
  v7 = sub_232E014D0();
  v9 = v8;
  if (a4)
  {
    v10 = sub_232E014D0();
    a4 = v11;
  }

  else
  {
    v10 = 0;
  }

  swift_unknownObjectRetain();
  v12 = _s10TipsDaemon16UserGuideManagerC04userD014withIdentifier5title10dataSource0A4Core0cD0CSgSS_SSSgSo018TPSCloudDeviceDataK0_pSgtFZ_0(v7, v9, v10, a4, a5);
  swift_unknownObjectRelease();

  return v12;
}

+ (id)cloudDeviceDataSourceWithDevices:(id)a3
{
  if (a3)
  {
    sub_232DA8CC4();
    v3 = sub_232E015D0();
    v4 = type metadata accessor for UserGuideManager.CloudDeviceDataSource();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtCC10TipsDaemon16UserGuideManagerP33_6C8AE7B9624AFE54883FB7DC9DB35E3D21CloudDeviceDataSource_devices] = v3;
    v9.receiver = v5;
    v9.super_class = v4;
    v6 = objc_msgSendSuper2(&v9, sel_init);
  }

  else
  {
    v7 = objc_allocWithZone(type metadata accessor for UserGuideManager.CloudDeviceDataSource());
    swift_deallocPartialClassInstance();
    v6 = 0;
  }

  return v6;
}

+ (id)allUserGuideMap
{
  _s10TipsDaemon16UserGuideManagerC03allcD3MapSDySS0A4Core0cD0CGyFZ_0();
  sub_232E013F0();
  v2 = sub_232E01450();

  return v2;
}

- (TPSUserGuideManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TPSUserGuideManager *)&v3 init];
}

@end