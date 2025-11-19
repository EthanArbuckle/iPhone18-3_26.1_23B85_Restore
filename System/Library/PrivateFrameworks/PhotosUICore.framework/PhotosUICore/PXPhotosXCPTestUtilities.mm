@interface PXPhotosXCPTestUtilities
+ (NSURL)urlToOpen;
+ (uint64_t)handleAppStartedLaunching;
- (PXPhotosXCPTestUtilities)init;
@end

@implementation PXPhotosXCPTestUtilities

+ (NSURL)urlToOpen
{
  sub_1A3C4D23C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  if (qword_1EB191430 != -1)
  {
    swift_once();
  }

  sub_1A3C4D23C(0, &qword_1EB12AA68, type metadata accessor for PhotosAppTestLaunchConfiguration);
  v6 = __swift_project_value_buffer(v5, qword_1EB191438);
  swift_beginAccess();
  v7 = type metadata accessor for PhotosAppTestLaunchConfiguration();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1A5240E64();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = 0;
  }

  else
  {
    sub_1A439768C(v6, v4, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    v10 = sub_1A5240E64();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v4, 1, v10);
    v9 = 0;
    if (v12 != 1)
    {
      v13 = sub_1A5240D44();
      (*(v11 + 8))(v4, v10);
      v9 = v13;
    }
  }

  return v9;
}

- (PXPhotosXCPTestUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosXCPTestUtilities();
  return [(PXPhotosXCPTestUtilities *)&v3 init];
}

+ (uint64_t)handleAppStartedLaunching
{
  sub_1A3C4D23C(0, &qword_1EB12AA68, type metadata accessor for PhotosAppTestLaunchConfiguration);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-v5];
  if (qword_1EB191430 != -1)
  {
    v15 = v4;
    swift_once();
    v4 = v15;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EB191438);
  swift_beginAccess();
  sub_1A439768C(v7, v6, &qword_1EB12AA68, type metadata accessor for PhotosAppTestLaunchConfiguration);
  v8 = type metadata accessor for PhotosAppTestLaunchConfiguration();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  result = sub_1A3C688C0(v6, &qword_1EB12AA68, type metadata accessor for PhotosAppTestLaunchConfiguration);
  if (v10 == 1)
  {
    result = sub_1A524E394();
    v12 = *(result + 16);
    if (v12)
    {
      sub_1A3ECD684(result, result + 32, 1, (2 * v12) | 1);
      v14 = v13;

      PhotosAppTestLaunchConfiguration.init(launchArguments:)(v14, v2);
      (*(v9 + 56))(v2, 0, 1, v8);
      swift_beginAccess();
      sub_1A43976F8(v2, v7);
      return swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

@end