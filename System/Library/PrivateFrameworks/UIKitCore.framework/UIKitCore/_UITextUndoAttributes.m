@interface _UITextUndoAttributes
- (_NSRange)affectedRange;
- (_UITextUndoAttributes)initWithAttributesRun:(id)a3 affectedRange:(_NSRange)a4;
- (id)description;
@end

@implementation _UITextUndoAttributes

- (_UITextUndoAttributes)initWithAttributesRun:(id)a3 affectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = _UITextUndoAttributes;
  v9 = [(_UITextUndoAttributes *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributesRun, a3);
    v10->_affectedRange.location = location;
    v10->_affectedRange.length = length;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  attributesRun = self->_attributesRun;
  v7 = NSStringFromRange(self->_affectedRange);
  v8 = [v3 stringWithFormat:@"<%@ attributes:%@ affectedRange:%@>", v5, attributesRun, v7];

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

@end