@interface TSWPDropCapRunDelegateState
- (TSWPDropCapRunDelegateState)initWithCharacterRange:(_NSRange)a3 adornment:(id)a4;
- (_NSRange)characterRange;
@end

@implementation TSWPDropCapRunDelegateState

- (TSWPDropCapRunDelegateState)initWithCharacterRange:(_NSRange)a3 adornment:(id)a4
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSWPDropCapRunDelegateState;
  v9 = [(TSWPDropCapRunDelegateState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_characterRange.location = location;
    v9->_characterRange.length = length;
    objc_storeStrong(&v9->_adornment, a4);
  }

  return v10;
}

- (_NSRange)characterRange
{
  length = self->_characterRange.length;
  location = self->_characterRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end