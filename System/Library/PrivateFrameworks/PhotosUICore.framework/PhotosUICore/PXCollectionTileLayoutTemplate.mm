@interface PXCollectionTileLayoutTemplate
- (CGRect)imageRect;
- (CGRect)titleSubtitleRect;
- (void)prepare;
@end

@implementation PXCollectionTileLayoutTemplate

- (CGRect)titleSubtitleRect
{
  x = self->_titleSubtitleRect.origin.x;
  y = self->_titleSubtitleRect.origin.y;
  width = self->_titleSubtitleRect.size.width;
  height = self->_titleSubtitleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)imageRect
{
  x = self->_imageRect.origin.x;
  y = self->_imageRect.origin.y;
  width = self->_imageRect.size.width;
  height = self->_imageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)prepare
{
  v7.receiver = self;
  v7.super_class = PXCollectionTileLayoutTemplate;
  [(PXLayoutTemplate *)&v7 prepare];
  [(PXLayoutTemplate *)self bounds];
  self->_imageRect.origin.x = v3;
  self->_imageRect.origin.y = v4;
  self->_imageRect.size.width = v5;
  self->_imageRect.size.height = v6;
  self->_titleSubtitleRect.origin.x = v3;
  self->_titleSubtitleRect.origin.y = v4;
  self->_titleSubtitleRect.size.width = v5;
  self->_titleSubtitleRect.size.height = v6;
}

@end