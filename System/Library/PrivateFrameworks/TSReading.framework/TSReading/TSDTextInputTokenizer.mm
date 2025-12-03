@interface TSDTextInputTokenizer
- (BOOL)isPosition:(id)position atBoundary:(int64_t)boundary inDirection:(int64_t)direction;
- (BOOL)isPosition:(id)position withinTextUnit:(int64_t)unit inDirection:(int64_t)direction;
- (TSDTextInputTokenizer)initWithTextInput:(id)input;
- (id)p_moveToEndOfWordFromPosition:(id)position;
- (id)p_moveToStartOfWordFromPosition:(id)position;
- (id)p_positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction;
- (id)positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction;
- (id)rangeEnclosingPosition:(id)position withGranularity:(int64_t)granularity inDirection:(int64_t)direction;
@end

@implementation TSDTextInputTokenizer

- (TSDTextInputTokenizer)initWithTextInput:(id)input
{
  v5.receiver = self;
  v5.super_class = TSDTextInputTokenizer;
  v3 = [(UITextInputStringTokenizer *)&v5 initWithTextInput:?];
  if (v3)
  {
    objc_opt_class();
    v3->_textInputResponder = TSUDynamicCast();
  }

  return v3;
}

- (BOOL)isPosition:(id)position atBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (!v8)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer isPosition:atBoundary:inDirection:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2208, @"bad text position"}];
  }

  editor = [(TSDTextInputResponder *)self->_textInputResponder editor];
  charIndex = [v8 charIndex];
  endOfLineAffinity = [v8 endOfLineAffinity];

  return [(TSDTextInput *)editor isCharIndex:charIndex withEolAffinity:endOfLineAffinity atBoundary:boundary inDirection:direction];
}

- (id)p_positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer p_positionFromPosition:toBoundary:inDirection:]"];
    [currentHandler handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2227, @"invalid nil value for '%s'", "tsdPosition"}];
    [(TSDTextInputTokenizer *)self editor];
    return 0;
  }

  v10 = v9;
  result = [(TSDTextInputTokenizer *)self editor];
  if (!result)
  {
    return result;
  }

  if (boundary > 4 || ((1 << boundary) & 0x1A) == 0)
  {
    v25.receiver = self;
    v25.super_class = TSDTextInputTokenizer;
    return [(UITextInputStringTokenizer *)&v25 positionFromPosition:position toBoundary:boundary inDirection:direction];
  }

  v12 = result;
  charIndex = [v10 charIndex];
  if (charIndex > [v12 editRange])
  {
    [v10 endOfLineAffinity];
  }

  [v10 preferredPosition];
  v26 = v14;
  v15 = [v12 charIndexByMovingPosition:v10 toBoundary:boundary inDirection:direction preferPosition:&v26];
  isPreferredStart = [v10 isPreferredStart];
  HIDWORD(v17) = HIDWORD(v26);
  *&v17 = v26;
  textInputResponder = self->_textInputResponder;
  if (isPreferredStart)
  {
    [(TSDTextInputResponder *)textInputResponder setPreferredStartPosition:v17];
  }

  else
  {
    [(TSDTextInputResponder *)textInputResponder setPreferredEndPosition:v17];
  }

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (boundary != 4)
    {
      goto LABEL_21;
    }

    if ((direction - 4) < 2)
    {
      endOfLineAffinity = [v10 endOfLineAffinity];
      goto LABEL_23;
    }

    if (direction == 2 || !direction)
    {
      endOfLineAffinity = 1;
    }

    else
    {
LABEL_21:
      endOfLineAffinity = 0;
    }

LABEL_23:
    v22 = v26;
    isPreferredStart2 = [v10 isPreferredStart];
    *&v24 = v22;
    return [TSDTextPosition textPositionWithCharIndex:v15 eolAffinity:endOfLineAffinity preferredPosition:isPreferredStart2 isPreferredStart:v24];
  }

  if ([(TSDTextInputTokenizer *)self isPosition:position atBoundary:boundary inDirection:direction])
  {
    return position;
  }

  else
  {
    return 0;
  }
}

- (id)p_moveToStartOfWordFromPosition:(id)position
{
  v5 = [(TSDTextInputTokenizer *)self isPosition:position withinTextUnit:1 inDirection:1];
  result = [(TSDTextInputTokenizer *)self p_positionFromPosition:position toBoundary:1 inDirection:1];
  positionCopy = result;
  if (!v5)
  {
    if (!result)
    {
      positionCopy = position;
      do
      {
        objc_opt_class();
        v8 = TSUDynamicCast();
        if (!v8)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer p_moveToStartOfWordFromPosition:]"];
          [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2302, @"Bad text position."}];
        }

        if (![v8 charIndex])
        {
          break;
        }

        positionCopy = [(TSDTextInputTokenizer *)self p_positionFromPosition:positionCopy toBoundary:3 inDirection:1];
      }

      while ([(TSDTextInputTokenizer *)self isPosition:positionCopy atBoundary:3 inDirection:1]);
    }

    return [(TSDTextInputTokenizer *)self p_positionFromPosition:positionCopy toBoundary:1 inDirection:1];
  }

  return result;
}

- (id)p_moveToEndOfWordFromPosition:(id)position
{
  positionCopy = position;
  if (![(TSDTextInputTokenizer *)self isPosition:position withinTextUnit:1 inDirection:0])
  {
    v5 = [(TSDTextInputTokenizer *)self p_positionFromPosition:positionCopy toBoundary:1 inDirection:0];
    if (v5)
    {
      positionCopy = v5;
    }
  }

  return [(TSDTextInputTokenizer *)self p_positionFromPosition:positionCopy toBoundary:1 inDirection:0];
}

- (id)positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer positionFromPosition:toBoundary:inDirection:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2343, @"invalid nil value for '%s'", "tsdPosition"}];
  }

  if (!-[TSDTextInput textIsVerticalAtCharIndex:](-[TSDTextInputTokenizer editor](self, "editor"), "textIsVerticalAtCharIndex:", [v9 charIndex]) || (boundary - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_8;
  }

  if (boundary != 3)
  {
    if (boundary == 1)
    {
      selfCopy2 = self;
      positionCopy2 = position;
      boundaryCopy = 3;
      directionCopy = direction == 0;
LABEL_9:

      return [(TSDTextInputTokenizer *)selfCopy2 p_positionFromPosition:positionCopy2 toBoundary:boundaryCopy inDirection:directionCopy];
    }

LABEL_8:
    selfCopy2 = self;
    positionCopy2 = position;
    boundaryCopy = boundary;
    directionCopy = direction;
    goto LABEL_9;
  }

  if (direction)
  {

    return [(TSDTextInputTokenizer *)self p_moveToStartOfWordFromPosition:position];
  }

  else
  {

    return [(TSDTextInputTokenizer *)self p_moveToEndOfWordFromPosition:position];
  }
}

- (BOOL)isPosition:(id)position withinTextUnit:(int64_t)unit inDirection:(int64_t)direction
{
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (unit == 1 && (v10 = v9) != 0)
  {
    editor = [(TSDTextInputResponder *)self->_textInputResponder editor];
    charIndex = [v10 charIndex];

    return [(TSDTextInput *)editor isCharIndex:charIndex withinTextUnit:1 inDirection:direction];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TSDTextInputTokenizer;
    return [(UITextInputStringTokenizer *)&v14 isPosition:position withinTextUnit:unit inDirection:direction];
  }
}

- (id)rangeEnclosingPosition:(id)position withGranularity:(int64_t)granularity inDirection:(int64_t)direction
{
  if (granularity == 1 && direction <= 1)
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (!v7)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer rangeEnclosingPosition:withGranularity:inDirection:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2421, @"bad text position"}];
    }

    v10 = -[TSDTextInput rangeOfWordEnclosingCharIndex:backward:](-[TSDTextInputTokenizer editor](self, "editor"), "rangeOfWordEnclosingCharIndex:backward:", [v7 charIndex], direction == 1);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {

      return [TSDTextRange textRangeWithRange:v10, v11];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TSDTextInputTokenizer;
    return [UITextInputStringTokenizer rangeEnclosingPosition:sel_rangeEnclosingPosition_withGranularity_inDirection_ withGranularity:position inDirection:?];
  }
}

@end