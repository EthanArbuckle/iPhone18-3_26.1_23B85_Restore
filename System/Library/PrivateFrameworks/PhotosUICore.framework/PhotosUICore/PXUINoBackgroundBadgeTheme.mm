@interface PXUINoBackgroundBadgeTheme
+ (id)sharedBadgeTheme;
- (PXUINoBackgroundBadgeTheme)init;
@end

@implementation PXUINoBackgroundBadgeTheme

- (PXUINoBackgroundBadgeTheme)init
{
  v20.receiver = self;
  v20.super_class = PXUINoBackgroundBadgeTheme;
  v2 = [(PXUINoBackgroundBadgeTheme *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithFont:v3];
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    *(v2 + 2) = 0x3FF0000000000000;
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    v7 = *(v2 + 3);
    *(v2 + 3) = v6;

    objc_storeStrong(v2 + 4, *(v2 + 3));
    v8 = *(v2 + 5);
    *(v2 + 5) = 0;

    v9 = *(v2 + 6);
    *(v2 + 6) = v3;
    v10 = v3;

    *(v2 + 7) = 0x3FF0000000000000;
    v11 = [MEMORY[0x1E69DC888] whiteColor];
    v12 = *(v2 + 8);
    *(v2 + 8) = v11;

    v13 = *(v2 + 9);
    *(v2 + 9) = 0;

    v14 = objc_opt_class();
    v15 = *(v2 + 10);
    *(v2 + 10) = v14;

    *(v2 + 88) = 0u;
    v16 = *(v2 + 14);
    *(v2 + 104) = 0u;

    v17 = *(v2 + 15);
    *(v2 + 15) = 0;

    v18 = *(v2 + 16);
    *(v2 + 16) = 0;
  }

  return v2;
}

+ (id)sharedBadgeTheme
{
  if (sharedBadgeTheme_onceToken_138 != -1)
  {
    dispatch_once(&sharedBadgeTheme_onceToken_138, &__block_literal_global_140);
  }

  v3 = sharedBadgeTheme_badgeTheme_137;

  return v3;
}

void __46__PXUINoBackgroundBadgeTheme_sharedBadgeTheme__block_invoke()
{
  v0 = objc_alloc_init(PXUINoBackgroundBadgeTheme);
  v1 = sharedBadgeTheme_badgeTheme_137;
  sharedBadgeTheme_badgeTheme_137 = v0;
}

@end