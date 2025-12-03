@interface TSDTextRange
+ (id)textRangeWithRange:(_NSRange)range;
+ (id)textRangeWithRange:(_NSRange)range eolAffinity:(BOOL)affinity preferredStartPosition:(float)position preferredEndPosition:(float)endPosition;
- (BOOL)isEqual:(id)equal;
- (TSDTextRange)initWithRange:(_NSRange)range;
- (TSDTextRange)initWithRange:(_NSRange)range eolAffinity:(BOOL)affinity preferredStartPosition:(float)position preferredEndPosition:(float)endPosition;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)end;
- (id)start;
@end

@implementation TSDTextRange

+ (id)textRangeWithRange:(_NSRange)range
{
  v3 = [[self alloc] initWithRange:{range.location, range.length}];

  return v3;
}

+ (id)textRangeWithRange:(_NSRange)range eolAffinity:(BOOL)affinity preferredStartPosition:(float)position preferredEndPosition:(float)endPosition
{
  affinityCopy = affinity;
  length = range.length;
  location = range.location;
  v11 = [self alloc];
  *&v12 = position;
  *&v13 = endPosition;
  v14 = [v11 initWithRange:location eolAffinity:length preferredStartPosition:affinityCopy preferredEndPosition:{v12, v13}];

  return v14;
}

- (TSDTextRange)initWithRange:(_NSRange)range
{
  LODWORD(v3) = 2143289344;
  LODWORD(v4) = 2143289344;
  return [(TSDTextRange *)self initWithRange:range.location eolAffinity:range.length preferredStartPosition:0 preferredEndPosition:v3, v4];
}

- (TSDTextRange)initWithRange:(_NSRange)range eolAffinity:(BOOL)affinity preferredStartPosition:(float)position preferredEndPosition:(float)endPosition
{
  length = range.length;
  location = range.location;
  v12.receiver = self;
  v12.super_class = TSDTextRange;
  result = [(TSDTextRange *)&v12 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_eolAffinity = affinity;
    result->_preferredStartPosition = position;
    result->_preferredEndPosition = endPosition;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  eolAffinity = self->_eolAffinity;
  *&v6 = self->_preferredStartPosition;
  *&v7 = self->_preferredEndPosition;
  location = self->_range.location;
  length = self->_range.length;

  return [v4 initWithRange:location eolAffinity:length preferredStartPosition:eolAffinity preferredEndPosition:{v6, v7}];
}

- (id)start
{
  if (self->_range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [TSDTextPosition textPositionWithCharIndex:0];
  }

  *&v2 = self->_preferredStartPosition;
  return [TSDTextPosition textPositionWithCharIndex:"textPositionWithCharIndex:eolAffinity:preferredPosition:isPreferredStart:" eolAffinity:v2 preferredPosition:? isPreferredStart:?];
}

- (id)end
{
  location = self->_range.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [TSDTextPosition textPositionWithCharIndex:0];
  }

  length = self->_range.length;
  v6 = length + location;
  if (length)
  {
    eolAffinity = 0;
  }

  else
  {
    eolAffinity = self->_eolAffinity;
  }

  *&v2 = self->_preferredEndPosition;
  return [TSDTextPosition textPositionWithCharIndex:v6 eolAffinity:eolAffinity preferredPosition:0 isPreferredStart:v2];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    length = self->_range.length;
    if (self->_range.location == *(v4 + 16) && length == *(v4 + 24))
    {
      if (length)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = self->_eolAffinity == *(v4 + 32);
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end