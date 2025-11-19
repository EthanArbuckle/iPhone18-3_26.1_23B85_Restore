@interface TSCH2DChartAbstractAreaLayoutItem
- (CGRect)chartBodyLayoutRect;
- (CGRect)i_currentBufferAreaUnitRect;
@end

@implementation TSCH2DChartAbstractAreaLayoutItem

- (CGRect)chartBodyLayoutRect
{
  objc_msgSend_rootedLayoutRect(self->_bodyLayoutItem, a2, v2, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)i_currentBufferAreaUnitRect
{
  TSURectWithSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end