@interface UIKBRemoteEmojiKeyplaneTransformation
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
@end

@implementation UIKBRemoteEmojiKeyplaneTransformation

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v6 keyboardSize];
  if (v8 != 0.0 && v7 != 0.0)
  {
    v9 = [v5 firstCachedKeyWithName:@"Emoji-Category-Control-Key"];
    v10 = v9;
    if (v9)
    {
      [v9 frame];
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      MinX = CGRectGetMinX(v31);
      [v5 frame];
      v17 = v16;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v18 = v17 - CGRectGetMaxX(v32);
      if (MinX < v18)
      {
        [v5 frame];
        v20 = v19 + v18 * -2.0;
        v21 = [v6 screenTraits];
        v22 = [v21 screen];
        [v22 scale];
        v24 = v23;

        v29[0] = v10;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
        [v5 resizeKeys:v25 withOffset:v20 - width scale:{height - height, v24}];

        v28 = v10;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
        [v5 repositionKeys:v26 withOffset:v18 - x scale:{y - y, v24}];
      }
    }
  }

  return v5;
}

@end