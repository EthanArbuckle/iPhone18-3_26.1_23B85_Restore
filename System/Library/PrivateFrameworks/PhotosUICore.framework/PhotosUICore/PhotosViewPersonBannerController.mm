@interface PhotosViewPersonBannerController
- (void)photosBannerProviderInvalidateLoadedBanner:(id)banner;
@end

@implementation PhotosViewPersonBannerController

- (void)photosBannerProviderInvalidateLoadedBanner:(id)banner
{
  sub_1A3C5676C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1A524CC54();
  swift_retain_n();
  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = self;
  sub_1A3D4D930(0, 0, v6, &unk_1A533CE58, v9);
}

@end