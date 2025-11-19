@interface _UITextUndoReplacement
- (_NSRange)affectedRange;
- (_NSRange)replacementTextRange;
- (_UITextUndoReplacement)initWithAttributedString:(id)a3 affectedRange:(_NSRange)a4 replacementTextRange:(_NSRange)a5;
- (id)description;
@end

@implementation _UITextUndoReplacement

- (_UITextUndoReplacement)initWithAttributedString:(id)a3 affectedRange:(_NSRange)a4 replacementTextRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = _UITextUndoReplacement;
  v12 = [(_UITextUndoReplacement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_attributedString, a3);
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
  v6 = [(NSAttributedString *)self->_attributedString string];
  v7 = NSStringFromRange(self->_affectedRange);
  v8 = [v3 stringWithFormat:@"<%@ string:%@ affectedRange:%@>", v5, v6, v7];

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