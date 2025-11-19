@interface UIUserDefaultsActivity
@end

@implementation UIUserDefaultsActivity

void __41___UIUserDefaultsActivity__activityImage__block_invoke()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DD1B8];
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  v2 = [v1 traitCollection];
  v13[0] = v2;
  v3 = MEMORY[0x1E69DD1B8];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v3 traitCollectionWithUserInterfaceIdiom:{objc_msgSend(v4, "userInterfaceIdiom")}];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v0 traitCollectionWithTraitsFromCollections:v6];

  v8 = MEMORY[0x1E69DCAB8];
  v9 = _ShareSheetBundle();
  v10 = [v8 imageNamed:@"UIActivityUserDefaults" inBundle:v9 compatibleWithTraitCollection:v7];
  v11 = [UIActivity _activityImageForActionRepresentationImage:v10];
  v12 = _activityImage___image;
  _activityImage___image = v11;
}

@end