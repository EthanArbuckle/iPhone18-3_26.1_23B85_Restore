@interface UIFocusSpecularHighlightLayer
@end

@implementation UIFocusSpecularHighlightLayer

void __62___UIFocusSpecularHighlightLayer__updateSpecularLayerContents__block_invoke()
{
  v1 = [UITraitCollection traitCollectionWithTraits:&__block_literal_global_5_7];
  v0 = [UIImage _kitImageNamed:@"UILayeredImageSpecularHighlight" withTrait:v1];
  _MergedGlobals_9_8 = CGImageRetain([v0 CGImage]);
}

void __62___UIFocusSpecularHighlightLayer__updateSpecularLayerContents__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setUserInterfaceIdiom:2];
  [v2 setDisplayScale:1.0];
  [v2 setDisplayGamut:0];
}

void __62___UIFocusSpecularHighlightLayer__updateSpecularLayerContents__block_invoke_3()
{
  v1 = [UITraitCollection traitCollectionWithTraits:&__block_literal_global_11_2];
  v0 = [UIImage _kitImageNamed:@"UILayeredImageSpecularHighlight" withTrait:v1];
  qword_1ED499CD8 = CGImageRetain([v0 CGImage]);
}

void __62___UIFocusSpecularHighlightLayer__updateSpecularLayerContents__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setUserInterfaceIdiom:2];
  [v2 setDisplayScale:2.0];
  [v2 setDisplayGamut:1];
}

@end