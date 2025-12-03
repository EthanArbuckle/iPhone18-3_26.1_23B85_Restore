@interface UIViewFloatAnimatableProperty(SBFAdditions)
+ (id)sbf_animatablePropertyWithProgressMilestones:()SBFAdditions block:;
@end

@implementation UIViewFloatAnimatableProperty(SBFAdditions)

+ (id)sbf_animatablePropertyWithProgressMilestones:()SBFAdditions block:
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  v9 = 0;
  if (v7 && v8)
  {
    v10 = [v6 mutableCopy];
    v9 = objc_alloc_init(self);
    [v9 setValue:0.0];
    objc_initWeak(&location, v9);
    v11 = MEMORY[0x1E69DD250];
    v24[0] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __98__UIViewFloatAnimatableProperty_SBFAdditions__sbf_animatablePropertyWithProgressMilestones_block___block_invoke;
    v19 = &unk_1E8080410;
    objc_copyWeak(&v22, &location);
    v13 = v10;
    v20 = v13;
    v14 = v7;
    v21 = v14;
    [v11 _createTransformerWithInputAnimatableProperties:v12 presentationValueChangedCallback:&v16];

    if ([v13 containsObject:{&unk_1F3D3F398, v16, v17, v18, v19}])
    {
      (*(v14 + 2))(v14, v9, 0.0, 0.0);
      [v13 removeObject:&unk_1F3D3F398];
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end