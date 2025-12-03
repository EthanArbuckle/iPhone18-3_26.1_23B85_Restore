@interface _UISceneHostingTraitCollectionPropagationHostComponent
- (void)setTraitCollection:(id)collection;
@end

@implementation _UISceneHostingTraitCollectionPropagationHostComponent

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  hostScene = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77___UISceneHostingTraitCollectionPropagationHostComponent_setTraitCollection___block_invoke;
  v7[3] = &unk_1E7127D08;
  v8 = collectionCopy;
  v6 = collectionCopy;
  [hostScene updateSettingsWithBlock:v7];
}

@end