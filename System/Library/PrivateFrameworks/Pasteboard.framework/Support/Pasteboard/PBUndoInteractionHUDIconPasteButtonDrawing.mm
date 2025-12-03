@interface PBUndoInteractionHUDIconPasteButtonDrawing
- (CGSize)drawingSize;
- (PBUndoInteractionHUDIconPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag;
@end

@implementation PBUndoInteractionHUDIconPasteButtonDrawing

- (PBUndoInteractionHUDIconPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v33.receiver = self;
  v33.super_class = PBUndoInteractionHUDIconPasteButtonDrawing;
  v8 = [(PBUndoInteractionHUDIconPasteButtonDrawing *)&v33 init];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [UISPasteVariant variantForSecureName:0x10000];
  glyph = [v9 glyph];
  v11 = [styleCopy assetGlyphWithName:glyph glyphSize:2 textStyle:_UISKBUndoInteractiveControlLabelTextStyle];

  v12 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v11 tintColor:{objc_msgSend(styleCopy, "tintColor")}];
  v13 = *(v8 + 1);
  *(v8 + 1) = v12;

  [*(v8 + 1) drawingSize];
  v30 = v15;
  v31 = v14;
  v16 = v14 + 32.0;
  [tagCopy minWidth];
  v18.f64[0] = v31;
  if (v16 >= v17)
  {
    v17 = v16;
  }

  *(v8 + 2) = v17;
  if (v17 <= v31 * 4.5)
  {
    v19 = &qword_100024290;
    v20 = vld1q_dup_f64(v19);
    v20.f64[0] = v17;
    v18.f64[1] = v30;
    v21 = vsubq_f64(v20, v18);
    __asm { FMOV            V1.2D, #0.5 }

    *(v8 + 24) = vmulq_f64(v21, _Q1);

LABEL_6:
    v27 = v8;
    goto LABEL_10;
  }

  v28 = _PBLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Undo interaction HUD icon paste button is too wide.", buf, 2u);
  }

  v27 = 0;
LABEL_10:

  return v27;
}

- (CGSize)drawingSize
{
  width = self->_width;
  v3 = 77.0;
  result.height = v3;
  result.width = width;
  return result;
}

@end