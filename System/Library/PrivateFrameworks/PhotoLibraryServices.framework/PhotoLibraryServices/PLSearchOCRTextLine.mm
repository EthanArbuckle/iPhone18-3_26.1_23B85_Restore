@interface PLSearchOCRTextLine
- (CGRect)textBounds;
- (PLSearchOCRTextLine)initWithTextBounds:(CGRect)a3 isTitle:(BOOL)a4 candidates:(id)a5;
- (id)description;
@end

@implementation PLSearchOCRTextLine

- (CGRect)textBounds
{
  x = self->_textBounds.origin.x;
  y = self->_textBounds.origin.y;
  width = self->_textBounds.size.width;
  height = self->_textBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@:%p> ", v5, self];

  v6 = NSStringFromRect(self->_textBounds);
  [v3 appendFormat:@"textBounds: %@, ", v6];

  if (self->_isTitle)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"isTitle: %@, ", v7];
  [v3 appendFormat:@"candidates: %@", self->_candidates];

  return v3;
}

- (PLSearchOCRTextLine)initWithTextBounds:(CGRect)a3 isTitle:(BOOL)a4 candidates:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = PLSearchOCRTextLine;
  v12 = [(PLSearchOCRTextLine *)&v16 init];
  if (v12)
  {
    v13 = [v11 copy];
    candidates = v12->_candidates;
    v12->_candidates = v13;

    v12->_textBounds.origin.x = x;
    v12->_textBounds.origin.y = y;
    v12->_textBounds.size.width = width;
    v12->_textBounds.size.height = height;
    v12->_isTitle = a4;
  }

  return v12;
}

@end