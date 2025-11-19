@interface PXLabelBarButtonItem
+ (id)_textAttributes;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (PXLabelBarButtonItem)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5;
@end

@implementation PXLabelBarButtonItem

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [(PXLabelBarButtonItem *)self target];
  [v4 performSelector:-[PXLabelBarButtonItem action](self withObject:{"action"), self}];

  return 0;
}

- (PXLabelBarButtonItem)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = PXPhotosBarsCreateSelectModeCaptionTexField();
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = v11;
  if (v8)
  {
    v13 = +[PXLabelBarButtonItem _textAttributes];
    v14 = [v12 initWithString:v8 attributes:v13];
    [v10 setAttributedText:v14];
  }

  else
  {
    v13 = [v11 initWithString:&stru_1F1741150];
    [v10 setAttributedText:v13];
  }

  [v10 setDelegate:self];
  v18.receiver = self;
  v18.super_class = PXLabelBarButtonItem;
  v15 = [(PXLabelBarButtonItem *)&v18 initWithCustomView:v10];
  v16 = v15;
  if (v15)
  {
    [(PXLabelBarButtonItem *)v15 setTarget:v9];
    [(PXLabelBarButtonItem *)v16 setAction:a5];
  }

  return v16;
}

+ (id)_textAttributes
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v3 = [v2 mutableCopy];

  [v3 setAlignment:1];
  [v3 setLineBreakMode:4];
  v8[0] = *MEMORY[0x1E69DB648];
  v4 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:0 options:1];
  v9[0] = v4;
  v8[1] = *MEMORY[0x1E69DB650];
  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  v8[2] = *MEMORY[0x1E69DB688];
  v9[1] = v5;
  v9[2] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end