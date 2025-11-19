@interface _PKDistributedAppLauncher
+ (void)launchAppWithDistributorBundleID:(id)a3 itemID:(unint64_t)a4 completion:(id)a5;
- (_TtC9PassKitUI25_PKDistributedAppLauncher)init;
@end

@implementation _PKDistributedAppLauncher

+ (void)launchAppWithDistributorBundleID:(id)a3 itemID:(unint64_t)a4 completion:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a5);
  v12 = sub_1BE052434();
  v14 = v13;
  if (v11)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    v11 = sub_1BD1B6B00;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1BE0528D4();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v12;
  v17[5] = v14;
  v17[6] = a4;
  v17[7] = v11;
  v17[8] = v15;
  sub_1BD122C00(0, 0, v10, &unk_1BE0F8FB0, v17);
}

- (_TtC9PassKitUI25_PKDistributedAppLauncher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _PKDistributedAppLauncher();
  return [(_PKDistributedAppLauncher *)&v3 init];
}

@end