@interface TSDTextPosition
+ (id)textPositionWithCharIndex:(unint64_t)index;
+ (id)textPositionWithCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity preferredPosition:(float)position isPreferredStart:(BOOL)start;
- (BOOL)isEqual:(id)equal;
- (TSDTextPosition)initWithCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity preferredPosition:(float)position isPreferredStart:(BOOL)start;
- (id)copyWithZone:(_NSZone *)zone;
- (int)distanceFromPosition:(id)position;
- (int64_t)compare:(id)compare;
@end

@implementation TSDTextPosition

+ (id)textPositionWithCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity preferredPosition:(float)position isPreferredStart:(BOOL)start
{
  startCopy = start;
  affinityCopy = affinity;
  v10 = [self alloc];
  *&v11 = position;
  v12 = [v10 initWithCharIndex:index eolAffinity:affinityCopy preferredPosition:startCopy isPreferredStart:v11];

  return v12;
}

+ (id)textPositionWithCharIndex:(unint64_t)index
{
  v3 = [[self alloc] initWithCharIndex:index];

  return v3;
}

- (TSDTextPosition)initWithCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity preferredPosition:(float)position isPreferredStart:(BOOL)start
{
  v11.receiver = self;
  v11.super_class = TSDTextPosition;
  result = [(TSDTextPosition *)&v11 init];
  if (result)
  {
    result->_charIndex = index;
    result->_eolAffinity = affinity;
    result->_preferredPosition = position;
    result->_isPreferredStart = start;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  charIndex = self->_charIndex;
  eolAffinity = self->_eolAffinity;
  *&v7 = self->_preferredPosition;
  isPreferredStart = self->_isPreferredStart;

  return [v4 initWithCharIndex:charIndex eolAffinity:eolAffinity preferredPosition:isPreferredStart isPreferredStart:v7];
}

- (int64_t)compare:(id)compare
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextPosition compare:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextPosition.m"), 66, @"bad text position"}];
  }

  charIndex = [v4 charIndex];
  charIndex = self->_charIndex;
  if (charIndex == charIndex)
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

  else if (charIndex > charIndex)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    LOBYTE(v4) = self->_charIndex == *(v4 + 8) && self->_eolAffinity == *(v4 + 16);
  }

  return v4;
}

- (int)distanceFromPosition:(id)position
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextPosition distanceFromPosition:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextPosition.m"), 107, @"bad text position"}];
  }

  charIndex = self->_charIndex;
  return charIndex - [v4 charIndex];
}

@end