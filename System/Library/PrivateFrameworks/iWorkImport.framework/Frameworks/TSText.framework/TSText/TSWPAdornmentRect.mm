@interface TSWPAdornmentRect
- (CGRect)erasableBounds;
- (CGRect)rect;
- (TSUBezierPath)path;
- (TSWPAdornmentRect)initWithCharacterFillAdornmentState:(id)state;
- (TSWPAdornmentRect)initWithCharacterStrokeAdornmentState:(id)state;
- (TSWPAdornmentRect)initWithRect:(CGRect)rect paragraphPath:(id)path stroke:(id)stroke fill:(id)fill type:(int)type;
- (TSWPAdornmentRect)initWithRect:(CGRect)rect stroke:(id)stroke fill:(id)fill type:(int)type range:(_NSRange)range paths:(id)paths rubyPaths:(id)rubyPaths shadow:(id)self0;
- (_NSRange)range;
- (id)pathFromExcludeRange:(_NSRange)range limitSelection:(id)selection rubyGlyphRange:(_NSRange)glyphRange;
@end

@implementation TSWPAdornmentRect

- (TSWPAdornmentRect)initWithRect:(CGRect)rect stroke:(id)stroke fill:(id)fill type:(int)type range:(_NSRange)range paths:(id)paths rubyPaths:(id)rubyPaths shadow:(id)self0
{
  length = range.length;
  location = range.location;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  strokeCopy = stroke;
  fillCopy = fill;
  pathsCopy = paths;
  rubyPathsCopy = rubyPaths;
  shadowCopy = shadow;
  v53.receiver = self;
  v53.super_class = TSWPAdornmentRect;
  v25 = [(TSWPAdornmentRect *)&v53 init];
  v26 = v25;
  if (v25)
  {
    v25->_rect.origin.x = x;
    v25->_rect.origin.y = y;
    v25->_rect.size.width = width;
    v25->_rect.size.height = height;
    objc_storeStrong(&v25->_stroke, stroke);
    objc_storeStrong(&v26->_fill, fill);
    v26->_type = type;
    v26->_range.location = location;
    v26->_range.length = length;
    v29 = objc_msgSend_copy(pathsCopy, v27, v28);
    paths = v26->_paths;
    v26->_paths = v29;

    if (objc_msgSend_count(v26->_paths, v31, v32) && objc_msgSend_count(v26->_paths, v33, v34) > v26->_range.length)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSWPAdornmentRect initWithRect:stroke:fill:type:range:paths:rubyPaths:shadow:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAdornmentRect.m");
      v41 = objc_msgSend_count(v26->_paths, v39, v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v36, v38, 33, 0, "Should have no more than one path per glyph. %lu paths for range %lu", v41, v26->_range.length);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
    }

    v45 = objc_msgSend_copy(rubyPathsCopy, v33, v34);
    rubyPaths = v26->_rubyPaths;
    v26->_rubyPaths = v45;

    v49 = objc_msgSend_copy(shadowCopy, v47, v48);
    shadow = v26->_shadow;
    v26->_shadow = v49;
  }

  return v26;
}

- (TSWPAdornmentRect)initWithRect:(CGRect)rect paragraphPath:(id)path stroke:(id)stroke fill:(id)fill type:(int)type
{
  v7 = *&type;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathCopy = path;
  v18 = objc_msgSend_initWithRect_stroke_fill_type_range_paths_rubyPaths_shadow_(self, v17, stroke, fill, v7, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), 0, x, y, width, height, 0, 0);
  v19 = v18;
  if (v18)
  {
    objc_storeStrong((v18 + 16), path);
  }

  return v19;
}

- (TSWPAdornmentRect)initWithCharacterFillAdornmentState:(id)state
{
  stateCopy = state;
  objc_msgSend_currentFillRect(stateCopy, v5, v6);
  if ((TSURectIsFinite() & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPAdornmentRect initWithCharacterFillAdornmentState:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAdornmentRect.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 74, 0, "Attempted to create an adornment with a non-finite rect");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_currentFillRect(stateCopy, v7, v8);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v26 = objc_msgSend_currentAdornmentFill(stateCopy, v24, v25);
  v29 = objc_msgSend_currentFillRange(stateCopy, v27, v28);
  v31 = v30;
  v33 = objc_msgSend_currentFillPaths(stateCopy, v30, v32);
  v36 = objc_msgSend_currentRubyFillPaths(stateCopy, v34, v35);
  v39 = objc_msgSend_currentFillShadow(stateCopy, v37, v38);

  v41 = objc_msgSend_initWithRect_stroke_fill_type_range_paths_rubyPaths_shadow_(self, v40, 0, v26, 4, v29, v31, v33, v17, v19, v21, v23, v36, v39);
  return v41;
}

- (TSWPAdornmentRect)initWithCharacterStrokeAdornmentState:(id)state
{
  stateCopy = state;
  objc_msgSend_currentStrokeRect(stateCopy, v5, v6);
  if ((TSURectIsFinite() & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPAdornmentRect initWithCharacterStrokeAdornmentState:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAdornmentRect.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 86, 0, "Attempted to create an adornment with a non-finite rect");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_currentStrokeRect(stateCopy, v7, v8);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v26 = objc_msgSend_currentAdornmentStroke(stateCopy, v24, v25);
  v29 = objc_msgSend_currentStrokeRange(stateCopy, v27, v28);
  v31 = v30;
  v33 = objc_msgSend_currentStrokePaths(stateCopy, v30, v32);
  v36 = objc_msgSend_currentRubyStrokePaths(stateCopy, v34, v35);
  v39 = objc_msgSend_currentStrokeShadow(stateCopy, v37, v38);

  v41 = objc_msgSend_initWithRect_stroke_fill_type_range_paths_rubyPaths_shadow_(self, v40, v26, 0, 5, v29, v31, v33, v17, v19, v21, v23, v36, v39);
  return v41;
}

- (CGRect)erasableBounds
{
  objc_msgSend_rect(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (objc_msgSend_type(self, v12, v13) == 2)
  {
    v16 = objc_msgSend_paragraphPath(self, v14, v15);
    if (v16)
    {
      v19 = v16;
      v20 = objc_msgSend_stroke(self, v17, v18);

      if (v20)
      {
        v23 = objc_msgSend_stroke(self, v21, v22);
        v26 = objc_msgSend_paragraphPath(self, v24, v25);
        objc_msgSend_boundsForPath_(v23, v27, v26);
        v5 = v28;
        v7 = v29;
        v9 = v30;
        v11 = v31;
      }
    }
  }

  v32 = v5;
  v33 = v7;
  v34 = v9;
  v35 = v11;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (TSUBezierPath)path
{
  v4 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2);
  v7 = objc_msgSend_paths(self, v5, v6);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_276DFAE24;
  v26[3] = &unk_27A6F48E8;
  v8 = v4;
  v27 = v8;
  objc_msgSend_foreach_(v7, v9, v26);

  v12 = objc_msgSend_rubyPaths(self, v10, v11);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_276DFAE30;
  v24 = &unk_27A6F48E8;
  v13 = v8;
  v25 = v13;
  objc_msgSend_foreach_(v12, v14, &v21);

  if (objc_msgSend_isEmpty(v13, v15, v16, v21, v22, v23, v24))
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  v18 = v25;
  v19 = v17;

  return v17;
}

- (id)pathFromExcludeRange:(_NSRange)range limitSelection:(id)selection rubyGlyphRange:(_NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  v7 = range.length;
  v8 = range.location;
  selectionCopy = selection;
  v13 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v11, v12);
  v16 = objc_msgSend_paths(self, v14, v15);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_276DFB000;
  v42[3] = &unk_27A6F4B28;
  v45 = v8;
  v46 = v7;
  v17 = selectionCopy;
  v43 = v17;
  v18 = v13;
  v44 = v18;
  objc_msgSend_foreach_(v16, v19, v42);

  v22 = objc_msgSend_rubyPaths(self, v20, v21);
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = sub_276DFB0B8;
  v35 = &unk_27A6F4B50;
  v38 = v8;
  v39 = v7;
  v36 = v17;
  v40 = location;
  v41 = length;
  v23 = v18;
  v37 = v23;
  v24 = v17;
  objc_msgSend_foreach_(v22, v25, &v32);

  if (objc_msgSend_isEmpty(v23, v26, v27, v32, v33, v34, v35))
  {
    v28 = 0;
  }

  else
  {
    v28 = v23;
  }

  v29 = v37;
  v30 = v28;

  return v28;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end