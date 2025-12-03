@interface CRTableCellGroupRegion
- (CRTableCellGroupRegion)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions rows:(_NSRange)rows columns:(_NSRange)columns;
- (_NSRange)columns;
- (_NSRange)rows;
@end

@implementation CRTableCellGroupRegion

- (CRTableCellGroupRegion)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions rows:(_NSRange)rows columns:(_NSRange)columns
{
  length = rows.length;
  location = rows.location;
  v10.receiver = self;
  v10.super_class = CRTableCellGroupRegion;
  result = [(CRGroupRegion *)&v10 initWithBoundingQuad:quad layoutDirection:direction subregions:subregions];
  if (result)
  {
    result->_rows.location = location;
    result->_rows.length = length;
    result->_columns = columns;
  }

  return result;
}

- (_NSRange)rows
{
  objc_copyStruct(v4, &self->_rows, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)columns
{
  objc_copyStruct(v4, &self->_columns, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end