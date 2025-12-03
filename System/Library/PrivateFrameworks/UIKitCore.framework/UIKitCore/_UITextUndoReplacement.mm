@interface _UITextUndoReplacement
- (_NSRange)affectedRange;
- (_NSRange)replacementTextRange;
- (_UITextUndoReplacement)initWithAttributedString:(id)string affectedRange:(_NSRange)range replacementTextRange:(_NSRange)textRange;
- (id)description;
@end

@implementation _UITextUndoReplacement

- (_UITextUndoReplacement)initWithAttributedString:(id)string affectedRange:(_NSRange)range replacementTextRange:(_NSRange)textRange
{
  length = textRange.length;
  location = textRange.location;
  v7 = range.length;
  v8 = range.location;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = _UITextUndoReplacement;
  v12 = [(_UITextUndoReplacement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_attributedString, string);
    v13->_affectedRange.location = v8;
    v13->_affectedRange.length = v7;
    v13->_replacementTextRange.location = location;
    v13->_replacementTextRange.length = length;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  string = [(NSAttributedString *)self->_attributedString string];
  v7 = NSStringFromRange(self->_affectedRange);
  v8 = [v3 stringWithFormat:@"<%@ string:%@ affectedRange:%@>", v5, string, v7];

  return v8;
}

- (_NSRange)affectedRange
{
  length = self->_affectedRange.length;
  location = self->_affectedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)replacementTextRange
{
  length = self->_replacementTextRange.length;
  location = self->_replacementTextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end