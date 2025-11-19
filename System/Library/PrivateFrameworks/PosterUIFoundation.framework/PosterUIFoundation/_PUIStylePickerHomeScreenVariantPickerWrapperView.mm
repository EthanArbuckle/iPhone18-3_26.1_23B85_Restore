@interface _PUIStylePickerHomeScreenVariantPickerWrapperView
- (void)layoutSubviews;
@end

@implementation _PUIStylePickerHomeScreenVariantPickerWrapperView

- (void)layoutSubviews
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = _PUIStylePickerHomeScreenVariantPickerWrapperView;
  [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)&v20 layoutSubviews];
  [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)self subviews];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) setFrame:{v4, v6, v8, v10}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v13);
  }
}

@end