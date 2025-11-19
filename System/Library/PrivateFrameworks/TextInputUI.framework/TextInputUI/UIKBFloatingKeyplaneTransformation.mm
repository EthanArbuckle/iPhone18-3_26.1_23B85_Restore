@interface UIKBFloatingKeyplaneTransformation
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
@end

@implementation UIKBFloatingKeyplaneTransformation

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (([v5 visualStyling] & 0xFF0000) == 0x90000)
  {
    v7 = NSClassFromString(&cfstr_Uikeyboardpopo.isa);
    [v7 contentInsets];
    v9 = v8;
    v11 = v10;
    v12 = [v6 screenTraits];
    v13 = [v12 screen];
    [v13 scale];
    v15 = v14;

    v16 = [v5 firstCachedKeyWithName:@"Handwriting-Input"];
    v17 = v16;
    v18 = -v9;
    if (v16)
    {
      v29[0] = v16;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [v5 insetKeys:v19 withInsets:0.0 scale:{v18, -7.0, -v11, v15}];
    }

    v20 = [v5 firstCachedKeyWithName:@"Candidate-Selection"];
    v21 = v20;
    if (v20)
    {
      v28 = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [v5 insetKeys:v22 withInsets:0.0 scale:{v18, 0.0, -v11, v15}];
    }

    v23 = [v5 firstCachedKeyWithName:@"Delete-Key"];
    v24 = v23;
    if (v23)
    {
      v27 = v23;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [v5 repositionKeys:v25 withOffset:v11 scale:{0.0, v15}];
    }
  }

  return v5;
}

@end