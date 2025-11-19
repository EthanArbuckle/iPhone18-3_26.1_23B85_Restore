@interface SKUICommentPostBarTextField
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGRect)editingRectForBounds:(CGRect)result;
- (CGRect)textRectForBounds:(CGRect)result;
@end

@implementation SKUICommentPostBarTextField

- (BOOL)becomeFirstResponder
{
  v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  [(SKUICommentPostBarTextField *)self setBackgroundColor:v3];

  v5.receiver = self;
  v5.super_class = SKUICommentPostBarTextField;
  return [(SKUICommentPostBarTextField *)&v5 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
  [(SKUICommentPostBarTextField *)self setBackgroundColor:v3];

  v5.receiver = self;
  v5.super_class = SKUICommentPostBarTextField;
  return [(SKUICommentPostBarTextField *)&v5 resignFirstResponder];
}

- (CGRect)textRectForBounds:(CGRect)result
{
  v3 = result.size.width + -20.0;
  v4 = 10.0;
  result.size.width = v3;
  result.origin.x = v4;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)result
{
  v3 = result.size.width + -20.0;
  v4 = 10.0;
  result.size.width = v3;
  result.origin.x = v4;
  return result;
}

@end