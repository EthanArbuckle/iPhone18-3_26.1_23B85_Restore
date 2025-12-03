@interface TSWPDropCapRunDelegateState
- (TSWPDropCapRunDelegateState)initWithCharacterRange:(_NSRange)range adornment:(id)adornment;
- (_NSRange)characterRange;
@end

@implementation TSWPDropCapRunDelegateState

- (TSWPDropCapRunDelegateState)initWithCharacterRange:(_NSRange)range adornment:(id)adornment
{
  length = range.length;
  location = range.location;
  adornmentCopy = adornment;
  v12.receiver = self;
  v12.super_class = TSWPDropCapRunDelegateState;
  v9 = [(TSWPDropCapRunDelegateState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_characterRange.location = location;
    v9->_characterRange.length = length;
    objc_storeStrong(&v9->_adornment, adornment);
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