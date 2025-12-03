@interface PBFSilhouetteHelpers
+ (id)makeHomeScreenSilhouetteViewWithLayout:(id)layout includeDock:(BOOL)dock displayContext:(id)context viewScreenSizeScale:(double)scale;
- (PBFSilhouetteHelpers)init;
@end

@implementation PBFSilhouetteHelpers

+ (id)makeHomeScreenSilhouetteViewWithLayout:(id)layout includeDock:(BOOL)dock displayContext:(id)context viewScreenSizeScale:(double)scale
{
  layoutCopy = layout;
  swift_unknownObjectRetain();
  v10 = _s11PosterBoard17SilhouetteHelpersC014makeHomeScreenC4View6layout11includeDock14displayContext04viewG9SizeScaleSo6UIViewCSgSo07SBSHomegC6LayoutC_SbSo010PBFDisplayM0_pSg12CoreGraphics7CGFloatVtFZ_0(layoutCopy, dock, context, scale);

  swift_unknownObjectRelease();

  return v10;
}

- (PBFSilhouetteHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SilhouetteHelpers();
  return [(PBFSilhouetteHelpers *)&v3 init];
}

@end