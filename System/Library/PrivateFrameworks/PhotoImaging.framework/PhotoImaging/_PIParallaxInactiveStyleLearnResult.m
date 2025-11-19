@interface _PIParallaxInactiveStyleLearnResult
- (CGRect)styleFrame;
- (_PIParallaxInactiveStyleLearnResult)initWithStyleData:(id)a3 frame:(CGRect)a4;
@end

@implementation _PIParallaxInactiveStyleLearnResult

- (CGRect)styleFrame
{
  x = self->_styleFrame.origin.x;
  y = self->_styleFrame.origin.y;
  width = self->_styleFrame.size.width;
  height = self->_styleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_PIParallaxInactiveStyleLearnResult)initWithStyleData:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13.receiver = self;
  v13.super_class = _PIParallaxInactiveStyleLearnResult;
  v8 = a3;
  v9 = [(_PIParallaxInactiveStyleLearnResult *)&v13 init];
  v10 = [v8 copy];

  styleData = v9->_styleData;
  v9->_styleData = v10;

  v9->_styleFrame.origin.x = x;
  v9->_styleFrame.origin.y = y;
  v9->_styleFrame.size.width = width;
  v9->_styleFrame.size.height = height;
  return v9;
}

@end