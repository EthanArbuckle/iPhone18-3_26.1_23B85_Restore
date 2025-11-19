@interface UIKeyboardSliceSet
+ (UIKeyboardSliceSet)sliceSetWithDictionaryRepresenation:(id)a3;
- (CGRect)endRect;
- (CGRect)startRect;
- (UIKeyboardSliceSet)initWithSliceID:(id)a3;
- (id)description;
@end

@implementation UIKeyboardSliceSet

- (UIKeyboardSliceSet)initWithSliceID:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = UIKeyboardSliceSet;
  v6 = [(UIKeyboardSliceSet *)&v19 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
    slices = v6->_slices;
    v6->_slices = v7;

    objc_storeStrong(&v6->_ssid, a3);
    v6->_mergePoint = 0.5;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    controlKeys = v6->_controlKeys;
    v6->_controlKeys = v9;

    v11 = v6->_controlKeys;
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)v11 setObject:v12 forKey:@"MoreIntlNames"];

    v13 = v6->_controlKeys;
    v14 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)v13 setObject:v14 forKey:@"MoreIntlStarts"];

    v15 = v6->_controlKeys;
    v16 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)v15 setObject:v16 forKey:@"MoreIntlEnds"];

    v17 = v6;
  }

  return v6;
}

+ (UIKeyboardSliceSet)sliceSetWithDictionaryRepresenation:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 valueForKey:@"SSID"];
  if (v4)
  {
    v5 = [[UIKeyboardSliceSet alloc] initWithSliceID:v4];
    if (v5)
    {
      v6 = [v3 valueForKey:@"Start"];
      v38 = CGRectFromString(v6);
      [(UIKeyboardSliceSet *)v5 setStartRect:v38.origin.x, v38.origin.y, v38.size.width, v38.size.height];

      v7 = [v3 valueForKey:@"End"];
      v39 = CGRectFromString(v7);
      [(UIKeyboardSliceSet *)v5 setEndRect:v39.origin.x, v39.origin.y, v39.size.width, v39.size.height];

      v8 = [v3 valueForKey:@"LeftWidth"];
      [v8 floatValue];
      [(UIKeyboardSliceSet *)v5 setLeftWidth:v9];

      v10 = [v3 valueForKey:@"RightWidth"];
      [v10 floatValue];
      [(UIKeyboardSliceSet *)v5 setRightWidth:v11];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = v3;
      v12 = [v3 valueForKey:@"Slices"];
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            v18 = [v17 valueForKey:@"Start"];
            v40 = CGRectFromString(v18);
            x = v40.origin.x;
            y = v40.origin.y;
            width = v40.size.width;
            height = v40.size.height;

            v23 = [v17 valueForKey:@"End"];
            v41 = CGRectFromString(v23);
            v24 = v41.origin.x;
            v25 = v41.origin.y;
            v26 = v41.size.width;
            v27 = v41.size.height;

            v28 = [UIKeyboardTransitionSlice sliceWithStart:x end:y, width, height, v24, v25, v26, v27];
            [(UIKeyboardSliceSet *)v5 addSlice:v28];
          }

          v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v14);
      }

      v3 = v30;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"UIKeyboardSliceSet (%@) : %ld slices", self->_ssid, -[NSMutableSet count](self->_slices, "count")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_slices;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = (v10 + 1);
        [v3 appendFormat:@"\n\t[slice %d] %@", v10, *(*(&v12 + 1) + 8 * v9++), v12];
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CGRect)startRect
{
  objc_copyStruct(v6, &self->_startRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)endRect
{
  objc_copyStruct(v6, &self->_endRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end