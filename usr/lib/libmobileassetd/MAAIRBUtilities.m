@interface MAAIRBUtilities
+ (id)createMAAIRBAssetSets:(id)a3;
- (MAAIRBUtilities)init;
@end

@implementation MAAIRBUtilities

+ (id)createMAAIRBAssetSets:(id)a3
{
  v3 = sub_303AC8();
  sub_256324(v3, v4, v5, v6, v7);

  sub_256468(v8);
  v9.super.isa = sub_303AB8().super.isa;

  return v9.super.isa;
}

- (MAAIRBUtilities)init
{
  v3.receiver = self;
  v3.super_class = MAAIRBUtilities;
  return [(MAAIRBUtilities *)&v3 init];
}

@end