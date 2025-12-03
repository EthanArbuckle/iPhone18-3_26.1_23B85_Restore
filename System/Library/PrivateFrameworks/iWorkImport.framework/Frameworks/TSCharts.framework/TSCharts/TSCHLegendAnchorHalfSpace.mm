@interface TSCHLegendAnchorHalfSpace
+ (id)halfSpaceWithLine:(TSCHLegendAnchorLine *)line;
- (TSCHLegendAnchorHalfSpace)initWithLine:(TSCHLegendAnchorLine *)line;
- (id)description;
@end

@implementation TSCHLegendAnchorHalfSpace

+ (id)halfSpaceWithLine:(TSCHLegendAnchorLine *)line
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = [self alloc];
  v11 = objc_msgSend_initWithLine_(v9, v10, v8, v7, v6);

  return v11;
}

- (TSCHLegendAnchorHalfSpace)initWithLine:(TSCHLegendAnchorLine *)line
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v10.receiver = self;
  v10.super_class = TSCHLegendAnchorHalfSpace;
  result = [(TSCHLegendAnchorHalfSpace *)&v10 init];
  if (result)
  {
    result->_line.normal.x = v8;
    result->_line.normal.y = v7;
    result->_line.distance = v6;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = TSCHLegendAnchorHalfSpace;
  v4 = [(TSCHLegendAnchorHalfSpace *)&v12 description];
  v5 = sub_2761E34B0(self->_line.normal.x, self->_line.normal.y, self->_line.distance);
  v10 = objc_msgSend_stringWithFormat_(v3, v6, v7, v8, v9, @"%@(%@)", v4, v5);

  return v10;
}

@end