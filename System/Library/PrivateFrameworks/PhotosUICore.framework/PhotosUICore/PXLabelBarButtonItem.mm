@interface PXLabelBarButtonItem
+ (id)_textAttributes;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (PXLabelBarButtonItem)initWithTitle:(id)title target:(id)target action:(SEL)action;
@end

@implementation PXLabelBarButtonItem

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  target = [(PXLabelBarButtonItem *)self target];
  [target performSelector:-[PXLabelBarButtonItem action](self withObject:{"action"), self}];

  return 0;
}

- (PXLabelBarButtonItem)initWithTitle:(id)title target:(id)target action:(SEL)action
{
  titleCopy = title;
  targetCopy = target;
  v10 = PXPhotosBarsCreateSelectModeCaptionTexField();
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = v11;
  if (titleCopy)
  {
    v13 = +[PXLabelBarButtonItem _textAttributes];
    v14 = [v12 initWithString:titleCopy attributes:v13];
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
    [(PXLabelBarButtonItem *)v15 setTarget:targetCopy];
    [(PXLabelBarButtonItem *)v16 setAction:action];
  }

  return v16;
}

+ (id)_textAttributes
{
  v9[3] = *MEMORY[0x1E69E9840];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v3 = [defaultParagraphStyle mutableCopy];

  [v3 setAlignment:1];
  [v3 setLineBreakMode:4];
  v8[0] = *MEMORY[0x1E69DB648];
  v4 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:0 options:1];
  v9[0] = v4;
  v8[1] = *MEMORY[0x1E69DB650];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v8[2] = *MEMORY[0x1E69DB688];
  v9[1] = systemBlueColor;
  v9[2] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end