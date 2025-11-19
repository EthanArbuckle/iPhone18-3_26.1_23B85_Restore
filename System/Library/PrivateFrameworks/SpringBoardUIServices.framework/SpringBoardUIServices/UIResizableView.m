@interface UIResizableView
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation UIResizableView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(UIResizableView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v20 + 1) + 8 * i) frame];
        v12 = v10 + v11;
        v15 = v13 + v14;
        if (v8 <= v12)
        {
          v8 = v12;
        }

        if (v7 <= v15)
        {
          v7 = v15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
    v16 = v8;
    v17 = v7;
  }

  else
  {
    v17 = 0.0;
    v16 = 0.0;
  }

  v18 = v16;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

@end