@interface SBXXGetIconPNGData
@end

@implementation SBXXGetIconPNGData

void ___SBXXGetIconPNGData_block_invoke(uint64_t a1)
{
  v13 = serverIconController();
  v2 = [v13 iconManager];
  v3 = [v13 iconModel];
  v4 = [v3 leafIconForIdentifier:*(a1 + 32)];
  v5 = [v2 iconImageCache];
  v6 = [MEMORY[0x277D661C8] lightAppearance];
  v7 = [v5 imageForIcon:v4 imageAppearance:v6 options:0];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [v5 genericImage];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

@end