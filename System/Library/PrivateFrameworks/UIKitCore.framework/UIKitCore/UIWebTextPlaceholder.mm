@interface UIWebTextPlaceholder
+ (UIWebTextPlaceholder)placeholderWithWebDocumentView:(id)a3;
- (id)rects;
- (void)dealloc;
@end

@implementation UIWebTextPlaceholder

+ (UIWebTextPlaceholder)placeholderWithWebDocumentView:(id)a3
{
  v4 = objc_alloc_init(a1);
  v4[7] = a3;

  return v4;
}

- (void)dealloc
{
  self->_webDocumentView = 0;

  v3.receiver = self;
  v3.super_class = UIWebTextPlaceholder;
  [(UIWebTextPlaceholder *)&v3 dealloc];
}

- (id)rects
{
  v3[1] = *MEMORY[0x1E69E9840];
  [(UIWebDocumentView *)self->_webDocumentView frameForDictationResultPlaceholder:self->_element];
  v3[0] = [UISimpleSelectionRect rectWithCGRect:?];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

@end