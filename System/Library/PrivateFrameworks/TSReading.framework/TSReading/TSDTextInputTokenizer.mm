@interface TSDTextInputTokenizer
- (BOOL)isPosition:(id)a3 atBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (BOOL)isPosition:(id)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5;
- (TSDTextInputTokenizer)initWithTextInput:(id)a3;
- (id)p_moveToEndOfWordFromPosition:(id)a3;
- (id)p_moveToStartOfWordFromPosition:(id)a3;
- (id)p_positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5;
@end

@implementation TSDTextInputTokenizer

- (TSDTextInputTokenizer)initWithTextInput:(id)a3
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

- (BOOL)isPosition:(id)a3 atBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (!v8)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer isPosition:atBoundary:inDirection:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2208, @"bad text position"}];
  }

  v11 = [(TSDTextInputResponder *)self->_textInputResponder editor];
  v12 = [v8 charIndex];
  v13 = [v8 endOfLineAffinity];

  return [(TSDTextInput *)v11 isCharIndex:v12 withEolAffinity:v13 atBoundary:a4 inDirection:a5];
}

- (id)p_positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v19 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer p_positionFromPosition:toBoundary:inDirection:]"];
    [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2227, @"invalid nil value for '%s'", "tsdPosition"}];
    [(TSDTextInputTokenizer *)self editor];
    return 0;
  }

  v10 = v9;
  result = [(TSDTextInputTokenizer *)self editor];
  if (!result)
  {
    return result;
  }

  if (a4 > 4 || ((1 << a4) & 0x1A) == 0)
  {
    v25.receiver = self;
    v25.super_class = TSDTextInputTokenizer;
    return [(UITextInputStringTokenizer *)&v25 positionFromPosition:a3 toBoundary:a4 inDirection:a5];
  }

  v12 = result;
  v13 = [v10 charIndex];
  if (v13 > [v12 editRange])
  {
    [v10 endOfLineAffinity];
  }

  [v10 preferredPosition];
  v26 = v14;
  v15 = [v12 charIndexByMovingPosition:v10 toBoundary:a4 inDirection:a5 preferPosition:&v26];
  v16 = [v10 isPreferredStart];
  HIDWORD(v17) = HIDWORD(v26);
  *&v17 = v26;
  textInputResponder = self->_textInputResponder;
  if (v16)
  {
    [(TSDTextInputResponder *)textInputResponder setPreferredStartPosition:v17];
  }

  else
  {
    [(TSDTextInputResponder *)textInputResponder setPreferredEndPosition:v17];
  }

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4 != 4)
    {
      goto LABEL_21;
    }

    if ((a5 - 4) < 2)
    {
      v21 = [v10 endOfLineAffinity];
      goto LABEL_23;
    }

    if (a5 == 2 || !a5)
    {
      v21 = 1;
    }

    else
    {
LABEL_21:
      v21 = 0;
    }

LABEL_23:
    v22 = v26;
    v23 = [v10 isPreferredStart];
    *&v24 = v22;
    return [TSDTextPosition textPositionWithCharIndex:v15 eolAffinity:v21 preferredPosition:v23 isPreferredStart:v24];
  }

  if ([(TSDTextInputTokenizer *)self isPosition:a3 atBoundary:a4 inDirection:a5])
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (id)p_moveToStartOfWordFromPosition:(id)a3
{
  v5 = [(TSDTextInputTokenizer *)self isPosition:a3 withinTextUnit:1 inDirection:1];
  result = [(TSDTextInputTokenizer *)self p_positionFromPosition:a3 toBoundary:1 inDirection:1];
  v7 = result;
  if (!v5)
  {
    if (!result)
    {
      v7 = a3;
      do
      {
        objc_opt_class();
        v8 = TSUDynamicCast();
        if (!v8)
        {
          v9 = [MEMORY[0x277D6C290] currentHandler];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer p_moveToStartOfWordFromPosition:]"];
          [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2302, @"Bad text position."}];
        }

        if (![v8 charIndex])
        {
          break;
        }

        v7 = [(TSDTextInputTokenizer *)self p_positionFromPosition:v7 toBoundary:3 inDirection:1];
      }

      while ([(TSDTextInputTokenizer *)self isPosition:v7 atBoundary:3 inDirection:1]);
    }

    return [(TSDTextInputTokenizer *)self p_positionFromPosition:v7 toBoundary:1 inDirection:1];
  }

  return result;
}

- (id)p_moveToEndOfWordFromPosition:(id)a3
{
  v3 = a3;
  if (![(TSDTextInputTokenizer *)self isPosition:a3 withinTextUnit:1 inDirection:0])
  {
    v5 = [(TSDTextInputTokenizer *)self p_positionFromPosition:v3 toBoundary:1 inDirection:0];
    if (v5)
    {
      v3 = v5;
    }
  }

  return [(TSDTextInputTokenizer *)self p_positionFromPosition:v3 toBoundary:1 inDirection:0];
}

- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer positionFromPosition:toBoundary:inDirection:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2343, @"invalid nil value for '%s'", "tsdPosition"}];
  }

  if (!-[TSDTextInput textIsVerticalAtCharIndex:](-[TSDTextInputTokenizer editor](self, "editor"), "textIsVerticalAtCharIndex:", [v9 charIndex]) || (a4 - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_8;
  }

  if (a4 != 3)
  {
    if (a4 == 1)
    {
      v12 = self;
      v13 = a3;
      v14 = 3;
      v15 = a5 == 0;
LABEL_9:

      return [(TSDTextInputTokenizer *)v12 p_positionFromPosition:v13 toBoundary:v14 inDirection:v15];
    }

LABEL_8:
    v12 = self;
    v13 = a3;
    v14 = a4;
    v15 = a5;
    goto LABEL_9;
  }

  if (a5)
  {

    return [(TSDTextInputTokenizer *)self p_moveToStartOfWordFromPosition:a3];
  }

  else
  {

    return [(TSDTextInputTokenizer *)self p_moveToEndOfWordFromPosition:a3];
  }
}

- (BOOL)isPosition:(id)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5
{
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (a4 == 1 && (v10 = v9) != 0)
  {
    v11 = [(TSDTextInputResponder *)self->_textInputResponder editor];
    v12 = [v10 charIndex];

    return [(TSDTextInput *)v11 isCharIndex:v12 withinTextUnit:1 inDirection:a5];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TSDTextInputTokenizer;
    return [(UITextInputStringTokenizer *)&v14 isPosition:a3 withinTextUnit:a4 inDirection:a5];
  }
}

- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5
{
  if (a4 == 1 && a5 <= 1)
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (!v7)
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputTokenizer rangeEnclosingPosition:withGranularity:inDirection:]"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2421, @"bad text position"}];
    }

    v10 = -[TSDTextInput rangeOfWordEnclosingCharIndex:backward:](-[TSDTextInputTokenizer editor](self, "editor"), "rangeOfWordEnclosingCharIndex:backward:", [v7 charIndex], a5 == 1);
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
    return [UITextInputStringTokenizer rangeEnclosingPosition:sel_rangeEnclosingPosition_withGranularity_inDirection_ withGranularity:a3 inDirection:?];
  }
}

@end