@interface TSWPSelectionHighlightLayer
- (void)renderInContext:(CGContext *)a3;
@end

@implementation TSWPSelectionHighlightLayer

- (void)renderInContext:(CGContext *)a3
{
  if (objc_msgSend_isHidden(self, a2, a3))
  {
    return;
  }

  CGContextSaveGState(a3);
  v9 = objc_msgSend_fillColor(self, v5, v6);
  if (v9)
  {
    CGContextSetFillColorWithColor(a3, v9);
  }

  v12 = objc_msgSend_strokeColor(self, v7, v8);
  if (v12)
  {
    CGContextSetStrokeColorWithColor(a3, v12);
  }

  objc_msgSend_lineWidth(self, v10, v11);
  CGContextSetLineWidth(a3, v13);
  objc_msgSend_miterLimit(self, v14, v15);
  CGContextSetMiterLimit(a3, v16);
  v54 = objc_msgSend_lineCap(self, v17, v18);
  if (objc_msgSend_isEqualToString_(v54, v19, *MEMORY[0x277CDA778]))
  {
    v21 = kCGLineCapButt;
  }

  else if (objc_msgSend_isEqualToString_(v54, v20, *MEMORY[0x277CDA780]))
  {
    v21 = kCGLineCapRound;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v54, v22, *MEMORY[0x277CDA788]))
    {
      goto LABEL_13;
    }

    v21 = kCGLineCapSquare;
  }

  CGContextSetLineCap(a3, v21);
LABEL_13:
  v25 = objc_msgSend_lineJoin(self, v23, v24);
  if (objc_msgSend_isEqualToString_(v25, v26, *MEMORY[0x277CDA798]))
  {
    v28 = kCGLineJoinMiter;
  }

  else if (objc_msgSend_isEqualToString_(v25, v27, *MEMORY[0x277CDA7A0]))
  {
    v28 = kCGLineJoinRound;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v25, v29, *MEMORY[0x277CDA790]))
    {
      goto LABEL_20;
    }

    v28 = kCGLineJoinBevel;
  }

  CGContextSetLineJoin(a3, v28);
LABEL_20:
  v32 = objc_msgSend_lineDashPattern(self, v30, v31);
  v35 = objc_msgSend_count(v32, v33, v34);
  v38 = malloc_type_calloc(v35, 8uLL, 0x100004000313F17uLL);
  if (v35)
  {
    for (i = 0; i != v35; ++i)
    {
      v40 = objc_msgSend_objectAtIndexedSubscript_(v32, v36, i);
      objc_msgSend_doubleValue(v40, v41, v42);
      v38[i] = v43;
    }
  }

  objc_msgSend_lineDashPhase(self, v36, v37);
  CGContextSetLineDash(a3, v44, v38, v35);
  free(v38);
  objc_msgSend_path(self, v45, v46);
  CGContextAddPathSafe();
  if (!v9)
  {
    if (v12)
    {
      CGContextDrawPath(a3, kCGPathStroke);
    }

    goto LABEL_37;
  }

  v49 = objc_msgSend_fillRule(self, v47, v48);
  isEqualToString = objc_msgSend_isEqualToString_(v49, v50, *MEMORY[0x277CDA250]);
  if (v12)
  {
    if (isEqualToString)
    {
      v53 = kCGPathFillStroke;
LABEL_35:
      CGContextDrawPath(a3, v53);
      goto LABEL_36;
    }

    if (objc_msgSend_isEqualToString_(v49, v52, *MEMORY[0x277CDA248]))
    {
      v53 = kCGPathEOFillStroke;
      goto LABEL_35;
    }
  }

  else
  {
    if (isEqualToString)
    {
      v53 = kCGPathFill;
      goto LABEL_35;
    }

    if (objc_msgSend_isEqualToString_(v49, v52, *MEMORY[0x277CDA248]))
    {
      v53 = kCGPathEOFill;
      goto LABEL_35;
    }
  }

LABEL_36:

LABEL_37:
  CGContextRestoreGState(a3);
}

@end