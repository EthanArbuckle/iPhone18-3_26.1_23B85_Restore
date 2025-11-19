@interface SCRO2DBrailleElement
- (SCRO2DBrailleElement)initWithIdentifier:(unint64_t)a3 linesRange:(_NSRange)a4;
- (_NSRange)linesRange;
@end

@implementation SCRO2DBrailleElement

- (SCRO2DBrailleElement)initWithIdentifier:(unint64_t)a3 linesRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11.receiver = self;
  v11.super_class = SCRO2DBrailleElement;
  v7 = [(SCRO2DBrailleElement *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_identifier = a3;
    v7->_linesRange.location = location;
    v7->_linesRange.length = length;
    v9 = v7;
  }

  return v8;
}

- (_NSRange)linesRange
{
  length = self->_linesRange.length;
  location = self->_linesRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end