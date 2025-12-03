@interface _UIShortDefinitionView
- (_UIShortDefinitionView)initWithFrame:(CGRect)frame;
- (void)setDefinitionValue:(id)value;
@end

@implementation _UIShortDefinitionView

- (_UIShortDefinitionView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = _UIShortDefinitionView;
  v3 = [(UIView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setClipsToBounds:1];
    [(UIView *)v4 setAutoresizingMask:18];
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(UIView *)v4 setUserInteractionEnabled:0];
    v5 = [UITextView alloc];
    v6 = [(UITextView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    definitionTextView = v4->_definitionTextView;
    v4->_definitionTextView = v6;

    [(UIView *)v4->_definitionTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    textContainer = [(UITextView *)v4->_definitionTextView textContainer];
    [textContainer setLineBreakMode:4];

    [(UIView *)v4 addSubview:v4->_definitionTextView];
    [(UITextView *)v4->_definitionTextView setScrollEnabled:0];
    [(UITextView *)v4->_definitionTextView setEditable:0];
    [(UITextView *)v4->_definitionTextView setMarginTop:0];
    [(UITextView *)v4->_definitionTextView _setInteractiveTextSelectionDisabled:1];
    v9 = v4->_definitionTextView;
    v10 = +[UIColor clearColor];
    [(UIScrollView *)v9 setBackgroundColor:v10];

    textContainer2 = [(UITextView *)v4->_definitionTextView textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    v12 = _NSDictionaryOfVariableBindings(&cfstr_Definitiontext.isa, v4->_definitionTextView, 0);
    v13 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-(15)-[_definitionTextView]-(15)-|" options:0 metrics:0 views:v12];
    v14 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|-[_definitionTextView]-|" options:0 metrics:0 views:v12];
    [(UIView *)v4 addConstraints:v13];
    [(UIView *)v4 addConstraints:v14];
  }

  return v4;
}

- (void)setDefinitionValue:(id)value
{
  valueCopy = value;
  if (self->_definitionValue != valueCopy)
  {
    v10 = valueCopy;
    objc_storeStrong(&self->_definitionValue, value);
    definition = [(_UIDefinitionValue *)self->_definitionValue definition];
    v7 = [definition mutableCopy];

    v8 = [v7 length];
    v9 = +[UIReferenceLibraryViewController _colorAttributes];
    [v7 addAttributes:v9 range:{0, v8}];

    [v7 removeAttribute:*off_1E70EC960 range:{0, v8}];
    [(UITextView *)self->_definitionTextView setAttributedText:v7];

    valueCopy = v10;
  }
}

@end