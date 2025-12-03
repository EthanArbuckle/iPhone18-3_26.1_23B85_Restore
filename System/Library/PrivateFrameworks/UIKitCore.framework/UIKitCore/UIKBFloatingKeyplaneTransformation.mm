@interface UIKBFloatingKeyplaneTransformation
+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context;
@end

@implementation UIKBFloatingKeyplaneTransformation

+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v28[1] = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  contextCopy = context;
  if (([keyplaneCopy visualStyling] & 0xFF0000) == 0x90000)
  {
    +[UIKeyboardPopoverContainer contentInsets];
    v8 = v7;
    v10 = v9;
    screenTraits = [contextCopy screenTraits];
    screen = [screenTraits screen];
    [screen scale];
    v14 = v13;

    v15 = [keyplaneCopy firstCachedKeyWithName:@"Handwriting-Input"];
    v16 = v15;
    v17 = -v8;
    if (v15)
    {
      v28[0] = v15;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [keyplaneCopy insetKeys:v18 withInsets:0.0 scale:{v17, -7.0, -v10, v14}];
    }

    v19 = [keyplaneCopy firstCachedKeyWithName:@"Candidate-Selection"];
    v20 = v19;
    if (v19)
    {
      v27 = v19;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [keyplaneCopy insetKeys:v21 withInsets:0.0 scale:{v17, 0.0, -v10, v14}];
    }

    v22 = [keyplaneCopy firstCachedKeyWithName:@"Delete-Key"];
    v23 = v22;
    if (v22)
    {
      v26 = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [keyplaneCopy repositionKeys:v24 withOffset:v10 scale:{0.0, v14}];
    }
  }

  return keyplaneCopy;
}

@end