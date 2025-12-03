@interface PXUIDefaultBadgeTheme
+ (id)sharedBadgeTheme;
- (PXUIDefaultBadgeTheme)init;
@end

@implementation PXUIDefaultBadgeTheme

- (PXUIDefaultBadgeTheme)init
{
  v26.receiver = self;
  v26.super_class = PXUIDefaultBadgeTheme;
  v2 = [(PXUIDefaultBadgeTheme *)&v26 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithFont:v3];
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    *(v2 + 2) = 0x3FE3333340000000;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v7 = *(v2 + 3);
    *(v2 + 3) = labelColor;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v9 = *(v2 + 4);
    *(v2 + 4) = secondaryLabelColor;

    v10 = *MEMORY[0x1E6979CC0];
    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC0]];
    v12 = *(v2 + 5);
    *(v2 + 5) = v11;

    v13 = *(v2 + 6);
    *(v2 + 6) = v3;
    v14 = v3;

    *(v2 + 7) = 0x3FE3333340000000;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v16 = *(v2 + 8);
    *(v2 + 8) = labelColor2;

    v17 = [MEMORY[0x1E6979378] filterWithType:v10];
    v18 = *(v2 + 9);
    *(v2 + 9) = v17;

    v19 = objc_opt_class();
    v20 = *(v2 + 10);
    *(v2 + 10) = v19;

    *(v2 + 88) = xmmword_1A531CF00;
    *(v2 + 13) = 0x3FE99999A0000000;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v22 = *(v2 + 14);
    *(v2 + 14) = systemBackgroundColor;

    v23 = *(v2 + 15);
    *(v2 + 15) = 0;

    v24 = *(v2 + 16);
    *(v2 + 16) = 0;
  }

  return v2;
}

+ (id)sharedBadgeTheme
{
  if (sharedBadgeTheme_onceToken != -1)
  {
    dispatch_once(&sharedBadgeTheme_onceToken, &__block_literal_global_246042);
  }

  v3 = sharedBadgeTheme_badgeTheme;

  return v3;
}

void __41__PXUIDefaultBadgeTheme_sharedBadgeTheme__block_invoke()
{
  v0 = objc_alloc_init(PXUIDefaultBadgeTheme);
  v1 = sharedBadgeTheme_badgeTheme;
  sharedBadgeTheme_badgeTheme = v0;
}

@end