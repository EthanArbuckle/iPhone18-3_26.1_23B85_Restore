@interface _CarTitleAlternative
+ (id)alternativeWithTitle:(id)title label:(id)label;
- (id)description;
- (void)updateWithLabel:(id)label;
@end

@implementation _CarTitleAlternative

+ (id)alternativeWithTitle:(id)title label:(id)label
{
  labelCopy = label;
  titleCopy = title;
  v8 = objc_alloc_init(self);
  v9 = [titleCopy copy];

  v10 = v8[1];
  v8[1] = v9;

  [v8 updateWithLabel:labelCopy];

  return v8;
}

- (void)updateWithLabel:(id)label
{
  v15[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  font = [labelCopy font];
  if (_AXSCarPlayEnhanceTextLegibilityEnabled())
  {
    font2 = [labelCopy font];
    fontDescriptor = [font2 fontDescriptor];
    v8 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
    font3 = [labelCopy font];
    [font3 pointSize];
    v10 = [off_1E70ECC18 fontWithDescriptor:v8 size:?];

    font = v10;
  }

  if ([(NSString *)self->_title length])
  {
    title = [(_CarTitleAlternative *)self title];
    v14 = *off_1E70EC918;
    v15[0] = font;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [title sizeWithAttributes:v12];
    UICeilToViewScale(labelCopy);
    self->_width = v13;
  }

  else
  {
    self->_width = 0.0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _CarTitleAlternative;
  v4 = [(_CarTitleAlternative *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ '%@' (%f)", v4, self->_title, *&self->_width];

  return v5;
}

@end