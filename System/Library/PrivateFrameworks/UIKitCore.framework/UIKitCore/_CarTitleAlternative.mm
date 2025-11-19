@interface _CarTitleAlternative
+ (id)alternativeWithTitle:(id)a3 label:(id)a4;
- (id)description;
- (void)updateWithLabel:(id)a3;
@end

@implementation _CarTitleAlternative

+ (id)alternativeWithTitle:(id)a3 label:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = [v7 copy];

  v10 = v8[1];
  v8[1] = v9;

  [v8 updateWithLabel:v6];

  return v8;
}

- (void)updateWithLabel:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 font];
  if (_AXSCarPlayEnhanceTextLegibilityEnabled())
  {
    v6 = [v4 font];
    v7 = [v6 fontDescriptor];
    v8 = [v7 fontDescriptorWithSymbolicTraits:2];
    v9 = [v4 font];
    [v9 pointSize];
    v10 = [off_1E70ECC18 fontWithDescriptor:v8 size:?];

    v5 = v10;
  }

  if ([(NSString *)self->_title length])
  {
    v11 = [(_CarTitleAlternative *)self title];
    v14 = *off_1E70EC918;
    v15[0] = v5;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v11 sizeWithAttributes:v12];
    UICeilToViewScale(v4);
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