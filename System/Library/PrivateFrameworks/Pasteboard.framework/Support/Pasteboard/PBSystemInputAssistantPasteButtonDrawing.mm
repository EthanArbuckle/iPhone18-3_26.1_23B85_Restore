@interface PBSystemInputAssistantPasteButtonDrawing
- (CGSize)drawingSize;
- (PBSystemInputAssistantPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag;
@end

@implementation PBSystemInputAssistantPasteButtonDrawing

- (PBSystemInputAssistantPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v24.receiver = self;
  v24.super_class = PBSystemInputAssistantPasteButtonDrawing;
  v8 = [(PBSystemInputAssistantPasteButtonDrawing *)&v24 init];
  if (v8)
  {
    v9 = [UISPasteVariant variantForSecureName:0x10000];
    glyph = [v9 glyph];
    v11 = [styleCopy assetGlyphWithName:glyph glyphSize:2 glyphWeight:4 glyphPointSize:20.0];

    v12 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v11 tintColor:{objc_msgSend(styleCopy, "tintColor")}];
    v13 = *(v8 + 1);
    *(v8 + 1) = v12;

    site = [tagCopy site];
    if (site)
    {
      if (site != 1)
      {
LABEL_7:
        [*(v8 + 1) drawingSize];
        v17.f64[1] = v16;
        __asm { FMOV            V1.2D, #0.5 }

        *(v8 + 1) = vmulq_f64(vsubq_f64(*(v8 + 2), v17), _Q1);

        goto LABEL_8;
      }

      v15 = xmmword_100024280;
    }

    else
    {
      v15 = xmmword_100024270;
    }

    *(v8 + 2) = v15;
    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (CGSize)drawingSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end