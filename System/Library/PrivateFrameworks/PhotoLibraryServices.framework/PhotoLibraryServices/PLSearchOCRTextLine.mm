@interface PLSearchOCRTextLine
- (CGRect)textBounds;
- (PLSearchOCRTextLine)initWithTextBounds:(CGRect)bounds isTitle:(BOOL)title candidates:(id)candidates;
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
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@:%p> ", v5, self];

  v6 = NSStringFromRect(self->_textBounds);
  [string appendFormat:@"textBounds: %@, ", v6];

  if (self->_isTitle)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@"isTitle: %@, ", v7];
  [string appendFormat:@"candidates: %@", self->_candidates];

  return string;
}

- (PLSearchOCRTextLine)initWithTextBounds:(CGRect)bounds isTitle:(BOOL)title candidates:(id)candidates
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  candidatesCopy = candidates;
  v16.receiver = self;
  v16.super_class = PLSearchOCRTextLine;
  v12 = [(PLSearchOCRTextLine *)&v16 init];
  if (v12)
  {
    v13 = [candidatesCopy copy];
    candidates = v12->_candidates;
    v12->_candidates = v13;

    v12->_textBounds.origin.x = x;
    v12->_textBounds.origin.y = y;
    v12->_textBounds.size.width = width;
    v12->_textBounds.size.height = height;
    v12->_isTitle = title;
  }

  return v12;
}

@end