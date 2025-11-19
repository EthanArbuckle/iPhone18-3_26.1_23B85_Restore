@interface UIKBFloatingKeyplaneTransformation
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
@end

@implementation UIKBFloatingKeyplaneTransformation

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (([v5 visualStyling] & 0xFF0000) == 0x90000)
  {
    +[UIKeyboardPopoverContainer contentInsets];
    v8 = v7;
    v10 = v9;
    v11 = [v6 screenTraits];
    v12 = [v11 screen];
    [v12 scale];
    v14 = v13;

    v15 = [v5 firstCachedKeyWithName:@"Handwriting-Input"];
    v16 = v15;
    v17 = -v8;
    if (v15)
    {
      v28[0] = v15;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v5 insetKeys:v18 withInsets:0.0 scale:{v17, -7.0, -v10, v14}];
    }

    v19 = [v5 firstCachedKeyWithName:@"Candidate-Selection"];
    v20 = v19;
    if (v19)
    {
      v27 = v19;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [v5 insetKeys:v21 withInsets:0.0 scale:{v17, 0.0, -v10, v14}];
    }

    v22 = [v5 firstCachedKeyWithName:@"Delete-Key"];
    v23 = v22;
    if (v22)
    {
      v26 = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [v5 repositionKeys:v24 withOffset:v10 scale:{0.0, v14}];
    }
  }

  return v5;
}

@end