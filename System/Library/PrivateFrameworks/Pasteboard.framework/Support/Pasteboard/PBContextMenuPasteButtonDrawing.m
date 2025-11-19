@interface PBContextMenuPasteButtonDrawing
+ (id)drawingWithStyle:(id)a3 tag:(id)a4 size:(int64_t)a5;
- (CGSize)drawingSize;
- (PBContextMenuPasteButtonDrawing)initWithTitleDrawing:(id)a3 titleOffset:(CGPoint)a4 glyph:(id)a5 glyphOffset:(CGPoint)a6 size:(CGSize)a7;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
@end

@implementation PBContextMenuPasteButtonDrawing

+ (id)drawingWithStyle:(id)a3 tag:(id)a4 size:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = &off_1000306D0;
  v10 = off_1000306C8;
  if (a5 != 1)
  {
    v10 = off_1000306C0;
  }

  if (a5)
  {
    v9 = v10;
  }

  v11 = [objc_alloc(*v9) initWithStyle:v7 tag:v8];

  return v11;
}

- (PBContextMenuPasteButtonDrawing)initWithTitleDrawing:(id)a3 titleOffset:(CGPoint)a4 glyph:(id)a5 glyphOffset:(CGPoint)a6 size:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  y = a6.y;
  x = a6.x;
  v12 = a4.y;
  v13 = a4.x;
  v16 = a3;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = PBContextMenuPasteButtonDrawing;
  v18 = [(PBContextMenuPasteButtonDrawing *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleDrawing, a3);
    v19->_titleOffset.x = v13;
    v19->_titleOffset.y = v12;
    objc_storeStrong(&v19->_glyph, a5);
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

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  CGContextSaveGState(a3);
  [(UISTextParagraphDrawing *)self->_titleDrawing drawInContext:a3 atPoint:x + self->_titleOffset.x, y + self->_titleOffset.y];
  CGContextRestoreGState(a3);
  CGContextSaveGState(a3);
  [(UISVectorGlyphDrawing *)self->_glyph drawInContext:a3 atPoint:x + self->_glyphOffset.x, y + self->_glyphOffset.y];

  CGContextRestoreGState(a3);
}

@end