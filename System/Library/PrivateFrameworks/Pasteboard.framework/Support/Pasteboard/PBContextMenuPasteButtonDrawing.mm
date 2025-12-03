@interface PBContextMenuPasteButtonDrawing
+ (id)drawingWithStyle:(id)style tag:(id)tag size:(int64_t)size;
- (CGSize)drawingSize;
- (PBContextMenuPasteButtonDrawing)initWithTitleDrawing:(id)drawing titleOffset:(CGPoint)offset glyph:(id)glyph glyphOffset:(CGPoint)glyphOffset size:(CGSize)size;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation PBContextMenuPasteButtonDrawing

+ (id)drawingWithStyle:(id)style tag:(id)tag size:(int64_t)size
{
  styleCopy = style;
  tagCopy = tag;
  v9 = &off_1000306D0;
  v10 = off_1000306C8;
  if (size != 1)
  {
    v10 = off_1000306C0;
  }

  if (size)
  {
    v9 = v10;
  }

  v11 = [objc_alloc(*v9) initWithStyle:styleCopy tag:tagCopy];

  return v11;
}

- (PBContextMenuPasteButtonDrawing)initWithTitleDrawing:(id)drawing titleOffset:(CGPoint)offset glyph:(id)glyph glyphOffset:(CGPoint)glyphOffset size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = glyphOffset.y;
  x = glyphOffset.x;
  v12 = offset.y;
  v13 = offset.x;
  drawingCopy = drawing;
  glyphCopy = glyph;
  v21.receiver = self;
  v21.super_class = PBContextMenuPasteButtonDrawing;
  v18 = [(PBContextMenuPasteButtonDrawing *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleDrawing, drawing);
    v19->_titleOffset.x = v13;
    v19->_titleOffset.y = v12;
    objc_storeStrong(&v19->_glyph, glyph);
    v19->_glyphOffset.x = x;
    v19->_glyphOffset.y = y;
    v19->_size.width = width;
    v19->_size.height = height;
  }

  return v19;
}

- (void)dealloc
{
  titleDrawing = self->_titleDrawing;
  self->_titleDrawing = 0;

  CTFontRemoveFromCaches();
  CGFontCacheGetLocalCache();
  CGFontCacheReset();
  v4.receiver = self;
  v4.super_class = PBContextMenuPasteButtonDrawing;
  [(PBContextMenuPasteButtonDrawing *)&v4 dealloc];
}

- (CGSize)drawingSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  CGContextSaveGState(context);
  [(UISTextParagraphDrawing *)self->_titleDrawing drawInContext:context atPoint:x + self->_titleOffset.x, y + self->_titleOffset.y];
  CGContextRestoreGState(context);
  CGContextSaveGState(context);
  [(UISVectorGlyphDrawing *)self->_glyph drawInContext:context atPoint:x + self->_glyphOffset.x, y + self->_glyphOffset.y];

  CGContextRestoreGState(context);
}

@end