@interface TSWPCharacterAdornmentState
+ (id)p_deepCopyPathArray:(id)array;
- (CGRect)currentFillRect;
- (CGRect)currentStrokeRect;
- (TSWPCharacterAdornmentState)init;
- (_NSRange)currentFillRange;
- (_NSRange)currentStrokeRange;
- (void)resetFillState;
- (void)resetStrokeState;
- (void)setStateWithFill:(id)fill range:(_NSRange)range rect:(CGRect)rect paths:(id)paths rubyPaths:(id)rubyPaths shadow:(id)shadow fillsCurrentTextContainer:(BOOL)container;
- (void)setStateWithStroke:(id)stroke range:(_NSRange)range rect:(CGRect)rect paths:(id)paths rubyPaths:(id)rubyPaths shadow:(id)shadow;
@end

@implementation TSWPCharacterAdornmentState

- (TSWPCharacterAdornmentState)init
{
  v9.receiver = self;
  v9.super_class = TSWPCharacterAdornmentState;
  v2 = [(TSWPCharacterAdornmentState *)&v9 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_resetFillState(v2, v3, v4);
    objc_msgSend_resetStrokeState(v5, v6, v7);
  }

  return v5;
}

- (void)setStateWithStroke:(id)stroke range:(_NSRange)range rect:(CGRect)rect paths:(id)paths rubyPaths:(id)rubyPaths shadow:(id)shadow
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  length = range.length;
  location = range.location;
  strokeCopy = stroke;
  shadowCopy = shadow;
  self->_hasValidStrokeState = 1;
  currentAdornmentStroke = self->_currentAdornmentStroke;
  self->_currentAdornmentStroke = strokeCopy;
  v32 = strokeCopy;
  rubyPathsCopy = rubyPaths;
  pathsCopy = paths;

  self->_currentStrokeRange.location = location;
  self->_currentStrokeRange.length = length;
  self->_currentStrokeRect.origin.x = x;
  self->_currentStrokeRect.origin.y = y;
  self->_currentStrokeRect.size.width = width;
  self->_currentStrokeRect.size.height = height;
  v23 = objc_opt_class();
  v25 = objc_msgSend_p_deepCopyPathArray_(v23, v24, pathsCopy);

  currentStrokePaths = self->_currentStrokePaths;
  self->_currentStrokePaths = v25;

  v27 = objc_opt_class();
  v29 = objc_msgSend_p_deepCopyPathArray_(v27, v28, rubyPathsCopy);

  currentRubyStrokePaths = self->_currentRubyStrokePaths;
  self->_currentRubyStrokePaths = v29;

  currentStrokeShadow = self->_currentStrokeShadow;
  self->_currentStrokeShadow = shadowCopy;
}

- (void)resetStrokeState
{
  self->_hasValidStrokeState = 0;
  currentAdornmentStroke = self->_currentAdornmentStroke;
  self->_currentAdornmentStroke = 0;

  self->_currentStrokeRange = *MEMORY[0x277D81490];
  v4 = *(MEMORY[0x277CBF398] + 16);
  self->_currentStrokeRect.origin = *MEMORY[0x277CBF398];
  self->_currentStrokeRect.size = v4;
  v7 = objc_msgSend_array(MEMORY[0x277D81330], v5, v6);
  currentStrokePaths = self->_currentStrokePaths;
  self->_currentStrokePaths = v7;

  v11 = objc_msgSend_array(MEMORY[0x277D81330], v9, v10);
  currentRubyStrokePaths = self->_currentRubyStrokePaths;
  self->_currentRubyStrokePaths = v11;

  currentStrokeShadow = self->_currentStrokeShadow;
  self->_currentStrokeShadow = 0;
}

- (void)setStateWithFill:(id)fill range:(_NSRange)range rect:(CGRect)rect paths:(id)paths rubyPaths:(id)rubyPaths shadow:(id)shadow fillsCurrentTextContainer:(BOOL)container
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  length = range.length;
  location = range.location;
  fillCopy = fill;
  shadowCopy = shadow;
  self->_hasValidFillState = 1;
  currentAdornmentFill = self->_currentAdornmentFill;
  self->_currentAdornmentFill = fillCopy;
  v22 = fillCopy;
  rubyPathsCopy = rubyPaths;
  pathsCopy = paths;

  self->_currentFillRange.location = location;
  self->_currentFillRange.length = length;
  self->_currentFillRect.origin.x = x;
  self->_currentFillRect.origin.y = y;
  self->_currentFillRect.size.width = width;
  self->_currentFillRect.size.height = height;
  v25 = objc_opt_class();
  v27 = objc_msgSend_p_deepCopyPathArray_(v25, v26, pathsCopy);

  currentFillPaths = self->_currentFillPaths;
  self->_currentFillPaths = v27;

  v29 = objc_opt_class();
  v31 = objc_msgSend_p_deepCopyPathArray_(v29, v30, rubyPathsCopy);

  currentRubyFillPaths = self->_currentRubyFillPaths;
  self->_currentRubyFillPaths = v31;

  currentFillShadow = self->_currentFillShadow;
  self->_currentFillShadow = shadowCopy;

  self->_fillsCurrentTextContainer = container;
}

- (void)resetFillState
{
  self->_hasValidFillState = 0;
  currentAdornmentFill = self->_currentAdornmentFill;
  self->_currentAdornmentFill = 0;

  self->_currentFillRange = *MEMORY[0x277D81490];
  v4 = *(MEMORY[0x277CBF398] + 16);
  self->_currentFillRect.origin = *MEMORY[0x277CBF398];
  self->_currentFillRect.size = v4;
  v7 = objc_msgSend_array(MEMORY[0x277D81330], v5, v6);
  currentFillPaths = self->_currentFillPaths;
  self->_currentFillPaths = v7;

  v11 = objc_msgSend_array(MEMORY[0x277D81330], v9, v10);
  currentRubyFillPaths = self->_currentRubyFillPaths;
  self->_currentRubyFillPaths = v11;

  currentFillShadow = self->_currentFillShadow;
  self->_currentFillShadow = 0;

  self->_fillsCurrentTextContainer = 0;
  v16 = objc_msgSend_set(MEMORY[0x277CBEB58], v14, v15);
  currentDropCapAdornments = self->_currentDropCapAdornments;
  self->_currentDropCapAdornments = v16;
}

+ (id)p_deepCopyPathArray:(id)array
{
  v3 = MEMORY[0x277D81330];
  arrayCopy = array;
  v7 = objc_msgSend_array(v3, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276DE48AC;
  v10[3] = &unk_27A6F48E8;
  v10[4] = v7;
  objc_msgSend_foreach_(arrayCopy, v8, v10);

  return v7;
}

- (_NSRange)currentFillRange
{
  length = self->_currentFillRange.length;
  location = self->_currentFillRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)currentFillRect
{
  x = self->_currentFillRect.origin.x;
  y = self->_currentFillRect.origin.y;
  width = self->_currentFillRect.size.width;
  height = self->_currentFillRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_NSRange)currentStrokeRange
{
  length = self->_currentStrokeRange.length;
  location = self->_currentStrokeRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)currentStrokeRect
{
  x = self->_currentStrokeRect.origin.x;
  y = self->_currentStrokeRect.origin.y;
  width = self->_currentStrokeRect.size.width;
  height = self->_currentStrokeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end