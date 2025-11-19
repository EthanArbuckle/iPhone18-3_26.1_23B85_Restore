@interface NSTextBlockLayoutHelper
- (char)initWithTextBlock:(uint64_t)a3 charRange:(uint64_t)a4 glyphRange:(uint64_t)a5 layoutRect:(uint64_t)a6 boundsRect:(int)a7 containerWidth:(int)a8 allowMargins:(double)a9 collapseBorders:(double)a10 allowPadding:(double)a11;
- (char)initWithTextBlock:(uint64_t)a3 charRange:(uint64_t)a4 text:(double)a5 layoutManager:(uint64_t)a6 containerWidth:(void *)a7 collapseBorders:(int)a8;
- (id)description;
- (void)dealloc;
@end

@implementation NSTextBlockLayoutHelper

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  block = self->_block;
  v5 = NSStringFromRange(self->_charRange);
  v6 = NSStringFromRange(self->_glyphRange);
  v7 = NSStringFromRect(self->_layoutRect);
  return [v3 stringWithFormat:@"<NSTextBlockLayoutHelper %p for block %p (cr %@ gr %@ lr %@ br %@ w %g h %g m %g %g %g %g b %g %g %g %g p %g %g %g %g)>", self, block, v5, v6, v7, NSStringFromRect(self->_boundsRect), *&self->_width, *&self->_height, *&self->_tMargin, *&self->_rMargin, *&self->_bMargin, *&self->_lMargin, *&self->_tBorder, *&self->_rBorder, *&self->_bBorder, *&self->_lBorder, *&self->_tPadding, *&self->_rPadding, *&self->_bPadding, *&self->_lPadding];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSTextBlockLayoutHelper;
  [(NSTextBlockLayoutHelper *)&v3 dealloc];
}

- (char)initWithTextBlock:(uint64_t)a3 charRange:(uint64_t)a4 glyphRange:(uint64_t)a5 layoutRect:(uint64_t)a6 boundsRect:(int)a7 containerWidth:(int)a8 allowMargins:(double)a9 collapseBorders:(double)a10 allowPadding:(double)a11
{
  if (!a1)
  {
    return 0;
  }

  v84.receiver = a1;
  v84.super_class = NSTextBlockLayoutHelper;
  v33 = objc_msgSendSuper2(&v84, sel_init);
  v34 = a2;
  *(v33 + 1) = v34;
  *(v33 + 2) = a3;
  *(v33 + 3) = a4;
  *(v33 + 4) = a5;
  *(v33 + 5) = a6;
  *(v33 + 6) = a9;
  *(v33 + 7) = a10;
  *(v33 + 8) = a11;
  *(v33 + 9) = a12;
  *(v33 + 10) = a13;
  *(v33 + 11) = a14;
  v35 = 0;
  *(v33 + 12) = a15;
  *(v33 + 13) = a16;
  if (a7)
  {
    [v34 widthForLayer:1 edge:0];
    v34 = *(v33 + 1);
  }

  else
  {
    v36 = 0;
  }

  *(v33 + 14) = v36;
  [v34 widthForLayer:0 edge:0];
  *(v33 + 15) = v37;
  if (a18)
  {
    [OUTLINED_FUNCTION_3_2() widthForLayer:? edge:?];
    v35 = v38;
  }

  *(v33 + 16) = v35;
  v39 = 0;
  v40 = 0;
  if (a7)
  {
    [OUTLINED_FUNCTION_4_1() widthForLayer:? edge:?];
  }

  *(v33 + 17) = v40;
  [OUTLINED_FUNCTION_2_4() widthForLayer:? edge:?];
  *(v33 + 18) = v41;
  if (a18)
  {
    [OUTLINED_FUNCTION_3_2() widthForLayer:? edge:?];
    v39 = v42;
  }

  *(v33 + 19) = v39;
  [OUTLINED_FUNCTION_2_4() valueForDimension:?];
  *(v33 + 20) = v43;
  [*(v33 + 1) valueForDimension:4];
  *(v33 + 21) = v44;
  v45 = 0;
  v46 = 0;
  if (a18)
  {
    [OUTLINED_FUNCTION_3_2() widthForLayer:? edge:?];
  }

  *(v33 + 22) = v46;
  [OUTLINED_FUNCTION_2_4() widthForLayer:? edge:?];
  *(v33 + 23) = v47;
  if (a7)
  {
    [OUTLINED_FUNCTION_4_1() widthForLayer:? edge:?];
    v45 = v48;
  }

  *(v33 + 24) = v45;
  v49 = 0.0;
  v50 = 0;
  if (a18)
  {
    [OUTLINED_FUNCTION_3_2() widthForLayer:? edge:?];
  }

  *(v33 + 25) = v50;
  [OUTLINED_FUNCTION_2_4() widthForLayer:? edge:?];
  *(v33 + 26) = v51;
  if (a7)
  {
    [OUTLINED_FUNCTION_4_1() widthForLayer:? edge:?];
    v49 = v52;
  }

  *(v33 + 27) = v49;
  if (*(v33 + 14) < 0.0)
  {
    *(v33 + 14) = 0;
  }

  if (*(v33 + 15) < 0.0)
  {
    *(v33 + 15) = 0;
  }

  if (*(v33 + 16) < 0.0)
  {
    *(v33 + 16) = 0;
  }

  if (*(v33 + 17) < 0.0)
  {
    *(v33 + 17) = 0;
  }

  if (*(v33 + 18) < 0.0)
  {
    *(v33 + 18) = 0;
  }

  if (*(v33 + 19) < 0.0)
  {
    *(v33 + 19) = 0;
  }

  if (*(v33 + 20) < 0.0)
  {
    *(v33 + 20) = 0;
  }

  if (*(v33 + 21) < 0.0)
  {
    *(v33 + 21) = 0;
  }

  if (*(v33 + 22) < 0.0)
  {
    *(v33 + 22) = 0;
  }

  if (*(v33 + 23) < 0.0)
  {
    *(v33 + 23) = 0;
  }

  if (*(v33 + 24) < 0.0)
  {
    *(v33 + 24) = 0;
  }

  if (*(v33 + 25) < 0.0)
  {
    *(v33 + 25) = 0;
  }

  if (*(v33 + 26) < 0.0)
  {
    *(v33 + 26) = 0;
  }

  v53 = a17;
  if (v49 < 0.0)
  {
    *(v33 + 27) = 0;
  }

  if (a17 <= 0.0 && !NSIsEmptyRect(*(v33 + 48)) && !NSIsEmptyRect(*(v33 + 80)))
  {
    v54 = [OUTLINED_FUNCTION_4_1() widthValueTypeForLayer:? edge:?];
    v55 = *(v33 + 14);
    v56 = v55 + 0.0;
    if (v54 == 1)
    {
      v57 = v55 + 0.0;
    }

    else
    {
      v57 = 0.0;
    }

    v58 = [OUTLINED_FUNCTION_2_4() widthValueTypeForLayer:? edge:?];
    v59 = *(v33 + 15);
    if (v58 == 1)
    {
      v60 = v57 + v59;
    }

    else
    {
      v60 = v57;
    }

    v61 = [OUTLINED_FUNCTION_3_2() widthValueTypeForLayer:? edge:?];
    v62 = *(v33 + 16);
    if (v61 == 1)
    {
      v63 = v60 + v62;
    }

    else
    {
      v63 = v60;
    }

    v64 = [OUTLINED_FUNCTION_3_2() widthValueTypeForLayer:? edge:?];
    v65 = *(v33 + 22);
    if (v64 == 1)
    {
      v66 = v63 + v65;
    }

    else
    {
      v66 = v63;
    }

    v67 = [OUTLINED_FUNCTION_2_4() widthValueTypeForLayer:? edge:?];
    v68 = *(v33 + 23);
    if (v67 == 1)
    {
      v66 = v66 + v68;
    }

    v69 = [OUTLINED_FUNCTION_4_1() widthValueTypeForLayer:? edge:?];
    v70 = *(v33 + 24);
    v71 = v66 + v70;
    if (v69 != 1)
    {
      v71 = v66;
    }

    if (v71 > 0.0)
    {
      if (v54 == 1)
      {
        v72 = 0.0;
      }

      else
      {
        v72 = v56;
      }

      if (v58 != 1)
      {
        v72 = v72 + v59;
      }

      if (v61 != 1)
      {
        v72 = v72 + v62;
      }

      if (v64 != 1)
      {
        v72 = v72 + v65;
      }

      if (v67 != 1)
      {
        v72 = v72 + v68;
      }

      v73 = v72 + v70;
      if (v69 == 1)
      {
        v73 = v72;
      }

      v53 = (*(v33 + 12) - *(v33 + 8) - v73) * 100.0 / v71;
    }

    if (v53 < 0.0)
    {
      v53 = 0.0;
    }
  }

  if ([OUTLINED_FUNCTION_4_1() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 14) = OUTLINED_FUNCTION_0_5() * *(v33 + 14);
  }

  if ([OUTLINED_FUNCTION_2_4() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 15) = OUTLINED_FUNCTION_0_5() * *(v33 + 15);
  }

  if ([OUTLINED_FUNCTION_3_2() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 16) = OUTLINED_FUNCTION_0_5() * *(v33 + 16);
  }

  if ([OUTLINED_FUNCTION_4_1() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 17) = OUTLINED_FUNCTION_0_5() * *(v33 + 17);
  }

  if ([OUTLINED_FUNCTION_2_4() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 18) = OUTLINED_FUNCTION_0_5() * *(v33 + 18);
  }

  if ([OUTLINED_FUNCTION_3_2() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 19) = OUTLINED_FUNCTION_0_5() * *(v33 + 19);
  }

  if ([OUTLINED_FUNCTION_2_4() valueTypeForDimension:?] == 1)
  {
    *(v33 + 20) = OUTLINED_FUNCTION_0_5() * *(v33 + 20);
  }

  if ([*(v33 + 1) valueTypeForDimension:4] == 1)
  {
    *(v33 + 21) = OUTLINED_FUNCTION_0_5() * *(v33 + 21);
  }

  if ([OUTLINED_FUNCTION_3_2() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 22) = OUTLINED_FUNCTION_0_5() * *(v33 + 22);
  }

  if ([OUTLINED_FUNCTION_2_4() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 23) = OUTLINED_FUNCTION_0_5() * *(v33 + 23);
  }

  if ([OUTLINED_FUNCTION_4_1() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 24) = OUTLINED_FUNCTION_0_5() * *(v33 + 24);
  }

  if ([OUTLINED_FUNCTION_3_2() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 25) = OUTLINED_FUNCTION_0_5() * *(v33 + 25);
  }

  if ([OUTLINED_FUNCTION_2_4() widthValueTypeForLayer:? edge:?] == 1)
  {
    *(v33 + 26) = OUTLINED_FUNCTION_0_5() * *(v33 + 26);
  }

  v74 = [OUTLINED_FUNCTION_4_1() widthValueTypeForLayer:? edge:?];
  v75 = *(v33 + 27);
  if (v74 == 1)
  {
    v75 = v53 / 100.0 * v75;
  }

  v76 = vrndpq_f64(*(v33 + 7));
  v77 = vrndpq_f64(*(v33 + 8));
  *(v33 + 7) = v76;
  *(v33 + 8) = v77;
  v78 = vrndpq_f64(*(v33 + 9));
  v79 = vrndpq_f64(*(v33 + 10));
  *(v33 + 9) = v78;
  *(v33 + 10) = v79;
  v80 = vrndpq_f64(*(v33 + 11));
  v81 = vrndpq_f64(*(v33 + 12));
  *(v33 + 11) = v80;
  *(v33 + 12) = v81;
  v82 = ceil(*(v33 + 26));
  *(v33 + 26) = v82;
  *(v33 + 27) = ceil(v75);
  if (a8)
  {
    *(v33 + 15) = vmuld_lane_f64(0.5, v76, 1);
    *(v33 + 18) = 0.5 * v78.f64[0];
    *(v33 + 23) = vmuld_lane_f64(0.5, v80, 1);
    *(v33 + 26) = v82 * 0.5;
  }

  return v33;
}

- (char)initWithTextBlock:(uint64_t)a3 charRange:(uint64_t)a4 text:(double)a5 layoutManager:(uint64_t)a6 containerWidth:(void *)a7 collapseBorders:(int)a8
{
  if (result)
  {
    v13 = result;
    if (a7)
    {
      v23 = [a7 glyphRangeForCharacterRange:a3 actualCharacterRange:{a4, 0}];
      v22 = v24;
      OUTLINED_FUNCTION_10_2();
      [v25 layoutRectForTextBlock:? atIndex:? effectiveRange:?];
      v21 = v26;
      v20 = v27;
      v17 = v28;
      v16 = v29;
      OUTLINED_FUNCTION_10_2();
      [v30 boundsRectForTextBlock:? atIndex:? effectiveRange:?];
      v18 = v31;
      v19 = v32;
      v14 = v33;
      v15 = v34;
    }

    else
    {
      v14 = *(MEMORY[0x1E696AA80] + 16);
      v15 = *(MEMORY[0x1E696AA80] + 24);
      v16 = v15;
      v17 = v14;
      v18 = *MEMORY[0x1E696AA80];
      v19 = *(MEMORY[0x1E696AA80] + 8);
      v20 = v19;
      v21 = *MEMORY[0x1E696AA80];
      v22 = a4;
      v23 = a3;
    }

    return [(NSTextBlockLayoutHelper *)v13 initWithTextBlock:a2 charRange:a3 glyphRange:a4 layoutRect:v23 boundsRect:v22 containerWidth:a8 ^ 1u allowMargins:a8 collapseBorders:v21 allowPadding:v20, v17, v16, v18, v19, v14, v15, a5, 1];
  }

  return result;
}

@end