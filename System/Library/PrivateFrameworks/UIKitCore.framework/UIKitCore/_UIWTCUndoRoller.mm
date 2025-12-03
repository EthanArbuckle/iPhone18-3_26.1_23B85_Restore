@interface _UIWTCUndoRoller
- (NSAttributedString)rolledReplacement;
- (_UIWTCUndoRoller)initWithEvaluatedText:(id)text offset:(unint64_t)offset;
- (void)replaceRange:(_NSRange)range withText:(id)text;
@end

@implementation _UIWTCUndoRoller

- (_UIWTCUndoRoller)initWithEvaluatedText:(id)text offset:(unint64_t)offset
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = _UIWTCUndoRoller;
  v8 = [(_UIWTCUndoRoller *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_evaluatedText, text);
    v9->_offset = offset;
  }

  return v9;
}

- (void)replaceRange:(_NSRange)range withText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if (!self->_hasFouled)
  {
    if (!self->_rolledReplacement)
    {
      v13 = textCopy;
      v8 = [(NSAttributedString *)self->_evaluatedText mutableCopy];
      rolledReplacement = self->_rolledReplacement;
      self->_rolledReplacement = v8;

      textCopy = v13;
    }

    offset = self->_offset;
    if (location >= offset && (v11 = location + length - offset, v14 = textCopy, v12 = [(NSMutableAttributedString *)self->_rolledReplacement length], textCopy = v14, v11 <= v12))
    {
      if (!self->_hasFouled)
      {
        [(NSMutableAttributedString *)self->_rolledReplacement replaceCharactersInRange:location - self->_offset withAttributedString:length, v14];
        textCopy = v14;
      }
    }

    else
    {
      self->_hasFouled = 1;
    }
  }
}

- (NSAttributedString)rolledReplacement
{
  if (self->_hasFouled || (rolledReplacement = self->_rolledReplacement) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
  }

  else
  {
    v3 = [(NSMutableAttributedString *)rolledReplacement copy];
  }

  return v3;
}

@end