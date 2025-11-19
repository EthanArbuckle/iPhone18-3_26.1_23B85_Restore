@interface TSDTextPosition
+ (id)textPositionWithCharIndex:(unint64_t)a3;
+ (id)textPositionWithCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 preferredPosition:(float)a5 isPreferredStart:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (TSDTextPosition)initWithCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 preferredPosition:(float)a5 isPreferredStart:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (int)distanceFromPosition:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation TSDTextPosition

+ (id)textPositionWithCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 preferredPosition:(float)a5 isPreferredStart:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = [a1 alloc];
  *&v11 = a5;
  v12 = [v10 initWithCharIndex:a3 eolAffinity:v8 preferredPosition:v6 isPreferredStart:v11];

  return v12;
}

+ (id)textPositionWithCharIndex:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithCharIndex:a3];

  return v3;
}

- (TSDTextPosition)initWithCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 preferredPosition:(float)a5 isPreferredStart:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = TSDTextPosition;
  result = [(TSDTextPosition *)&v11 init];
  if (result)
  {
    result->_charIndex = a3;
    result->_eolAffinity = a4;
    result->_preferredPosition = a5;
    result->_isPreferredStart = a6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  charIndex = self->_charIndex;
  eolAffinity = self->_eolAffinity;
  *&v7 = self->_preferredPosition;
  isPreferredStart = self->_isPreferredStart;

  return [v4 initWithCharIndex:charIndex eolAffinity:eolAffinity preferredPosition:isPreferredStart isPreferredStart:v7];
}

- (int64_t)compare:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextPosition compare:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextPosition.m"), 66, @"bad text position"}];
  }

  v7 = [v4 charIndex];
  charIndex = self->_charIndex;
  if (charIndex == v7)
  {
    eolAffinity = self->_eolAffinity;
    if (eolAffinity == [v4 endOfLineAffinity])
    {
      return 0;
    }

    else if (self->_eolAffinity)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else if (charIndex > v7)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    LOBYTE(v4) = self->_charIndex == *(v4 + 8) && self->_eolAffinity == *(v4 + 16);
  }

  return v4;
}

- (int)distanceFromPosition:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextPosition distanceFromPosition:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextPosition.m"), 107, @"bad text position"}];
  }

  charIndex = self->_charIndex;
  return charIndex - [v4 charIndex];
}

@end