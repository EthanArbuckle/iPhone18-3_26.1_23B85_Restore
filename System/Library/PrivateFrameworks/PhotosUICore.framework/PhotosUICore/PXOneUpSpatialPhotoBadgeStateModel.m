@interface PXOneUpSpatialPhotoBadgeStateModel
+ (id)notificationName3DBadgeToggled;
+ (uint64_t)checkAvailability;
+ (void)forceAnimation;
- (PXOneUpSpatialPhotoBadgeStateModel)init;
@end

@implementation PXOneUpSpatialPhotoBadgeStateModel

+ (id)notificationName3DBadgeToggled
{
  sub_1A5244384();
  v2 = sub_1A5244344();

  return v2;
}

+ (void)forceAnimation
{
  sub_1A5244384();
  sub_1A5244374();
  sub_1A5244324();
}

- (PXOneUpSpatialPhotoBadgeStateModel)init
{
  v3.receiver = self;
  v3.super_class = PXOneUpSpatialPhotoBadgeStateModel;
  return [(PXOneUpSpatialPhotoBadgeStateModel *)&v3 init];
}

+ (uint64_t)checkAvailability
{
  v0 = sub_1A5244304();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5245074();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  sub_1A5245064();
  v16 = *(v5 + 16);
  v16(v12, v15, v4);
  v17 = (*(v5 + 88))(v12, v4);
  if (v17 == *MEMORY[0x1E69C13B8])
  {
    sub_1A5244384();
    sub_1A5244374();
    v18 = MEMORY[0x1E69C2E50];
LABEL_9:
    (*(v1 + 104))(v3, *v18, v0);
    sub_1A5244364();

    return (*(v5 + 8))(v15, v4);
  }

  if (v17 == *MEMORY[0x1E69C13A0])
  {
    if (qword_1EB19F4F0 != -1)
    {
      swift_once();
    }

    v19 = sub_1A5246F24();
    __swift_project_value_buffer(v19, qword_1EB19F4F8);
    v20 = sub_1A5246F04();
    v21 = sub_1A524D224();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A3C1C000, v20, v21, "Model asset subscription is unavailable, will start downloading.", v22, 2u);
      MEMORY[0x1A590EEC0](v22, -1, -1);
    }

    sub_1A5244384();
    sub_1A5244374();
    v18 = MEMORY[0x1E69C2E38];
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x1E69C1398] || v17 == *MEMORY[0x1E69C13B0])
  {
    if (qword_1EB19F4F0 != -1)
    {
      swift_once();
    }

    v25 = sub_1A5246F24();
    __swift_project_value_buffer(v25, qword_1EB19F4F8);
    v16(v9, v15, v4);
    v26 = sub_1A5246F04();
    v27 = sub_1A524D244();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v28 = 136315138;
      v16(v32, v9, v4);
      sub_1A524C714();
      (*(v5 + 8))(v9, v4);
      sub_1A3C2EF94();
    }

    v29 = *(v5 + 8);
    v29(v9, v4);
    return (v29)(v15, v4);
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1A524E404();

    v33 = 0xD000000000000019;
    v34 = 0x80000001A53C0CB0;
    v16(v32, v15, v4);
    v30 = sub_1A524C714();
    MEMORY[0x1A5907B60](v30);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

@end