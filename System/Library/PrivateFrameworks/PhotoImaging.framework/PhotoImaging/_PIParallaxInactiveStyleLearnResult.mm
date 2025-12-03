@interface _PIParallaxInactiveStyleLearnResult
- (CGRect)styleFrame;
- (_PIParallaxInactiveStyleLearnResult)initWithStyleData:(id)data frame:(CGRect)frame;
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

- (_PIParallaxInactiveStyleLearnResult)initWithStyleData:(id)data frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = _PIParallaxInactiveStyleLearnResult;
  dataCopy = data;
  v9 = [(_PIParallaxInactiveStyleLearnResult *)&v13 init];
  v10 = [dataCopy copy];

  styleData = v9->_styleData;
  v9->_styleData = v10;

  v9->_styleFrame.origin.x = x;
  v9->_styleFrame.origin.y = y;
  v9->_styleFrame.size.width = width;
  v9->_styleFrame.size.height = height;
  return v9;
}

@end