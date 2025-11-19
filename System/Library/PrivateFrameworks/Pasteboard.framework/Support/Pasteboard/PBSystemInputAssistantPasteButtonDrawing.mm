@interface PBSystemInputAssistantPasteButtonDrawing
- (CGSize)drawingSize;
- (PBSystemInputAssistantPasteButtonDrawing)initWithStyle:(id)a3 tag:(id)a4;
@end

@implementation PBSystemInputAssistantPasteButtonDrawing

- (PBSystemInputAssistantPasteButtonDrawing)initWithStyle:(id)a3 tag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = PBSystemInputAssistantPasteButtonDrawing;
  v8 = [(PBSystemInputAssistantPasteButtonDrawing *)&v24 init];
  if (v8)
  {
    v9 = [UISPasteVariant variantForSecureName:0x10000];
    v10 = [v9 glyph];
    v11 = [v6 assetGlyphWithName:v10 glyphSize:2 glyphWeight:4 glyphPointSize:20.0];

    v12 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v11 tintColor:{objc_msgSend(v6, "tintColor")}];
    v13 = *(v8 + 1);
    *(v8 + 1) = v12;

    v14 = [v7 site];
    if (v14)
    {
      if (v14 != 1)
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