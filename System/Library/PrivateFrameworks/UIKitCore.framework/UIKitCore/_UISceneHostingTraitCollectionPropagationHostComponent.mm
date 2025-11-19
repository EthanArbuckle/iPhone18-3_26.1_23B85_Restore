@interface _UISceneHostingTraitCollectionPropagationHostComponent
- (void)setTraitCollection:(id)a3;
@end

@implementation _UISceneHostingTraitCollectionPropagationHostComponent

- (void)setTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77___UISceneHostingTraitCollectionPropagationHostComponent_setTraitCollection___block_invoke;
  v7[3] = &unk_1E7127D08;
  v8 = v4;
  v6 = v4;
  [v5 updateSettingsWithBlock:v7];
}

@end