@interface TSCEValueGridIndexer
- (TSCEValueGridIndexer)initWithTopLeft:(const TSCEGridCoord *)left dimensions:(TSCEGridDimensions)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCEValueGridIndexer

- (TSCEValueGridIndexer)initWithTopLeft:(const TSCEGridCoord *)left dimensions:(TSCEGridDimensions)dimensions
{
  v7.receiver = self;
  v7.super_class = TSCEValueGridIndexer;
  result = [(TSCEValueGridIndexer *)&v7 init];
  if (result)
  {
    result->_topLeft = *left;
    result->_dimensions = dimensions;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEValueGridIndexer alloc];
  dimensions = self->_dimensions;

  return objc_msgSend_initWithTopLeft_dimensions_(v4, v5, &self->_topLeft, dimensions, v6);
}

@end