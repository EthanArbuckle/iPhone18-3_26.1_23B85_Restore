@interface UIContextMenuStyle
@end

@implementation UIContextMenuStyle

void __50___UIContextMenuStyle_setPreferredAttachmentEdge___block_invoke(uint64_t a1)
{
  v2 = _UIMainBundleIdentifier();
  v3 = [&unk_1EFE2B248 containsObject:v2];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UIContextMenuStyle.m" lineNumber:88 description:@"This SPI may only be used by approved processes!"];
  }
}

void __48___UIContextMenuStyle_setPreferredMenuMaterial___block_invoke(uint64_t a1)
{
  v2 = _UIMainBundleIdentifier();
  v3 = [&unk_1EFE2B260 containsObject:v2];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UIContextMenuStyle.m" lineNumber:145 description:@"This SPI may only be used by approved processes!"];
  }
}

@end