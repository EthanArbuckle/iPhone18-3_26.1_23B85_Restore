@interface TSCEValueGridIndexer
- (TSCEValueGridIndexer)initWithTopLeft:(const TSCEGridCoord *)a3 dimensions:(TSCEGridDimensions)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSCEValueGridIndexer

- (TSCEValueGridIndexer)initWithTopLeft:(const TSCEGridCoord *)a3 dimensions:(TSCEGridDimensions)a4
{
  v7.receiver = self;
  v7.super_class = TSCEValueGridIndexer;
  result = [(TSCEValueGridIndexer *)&v7 init];
  if (result)
  {
    result->_topLeft = *a3;
    result->_dimensions = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCEValueGridIndexer alloc];
  dimensions = self->_dimensions;

  return objc_msgSend_initWithTopLeft_dimensions_(v4, v5, &self->_topLeft, dimensions, v6);
}

@end