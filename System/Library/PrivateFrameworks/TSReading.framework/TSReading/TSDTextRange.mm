@interface TSDTextRange
+ (id)textRangeWithRange:(_NSRange)a3;
+ (id)textRangeWithRange:(_NSRange)a3 eolAffinity:(BOOL)a4 preferredStartPosition:(float)a5 preferredEndPosition:(float)a6;
- (BOOL)isEqual:(id)a3;
- (TSDTextRange)initWithRange:(_NSRange)a3;
- (TSDTextRange)initWithRange:(_NSRange)a3 eolAffinity:(BOOL)a4 preferredStartPosition:(float)a5 preferredEndPosition:(float)a6;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)end;
- (id)start;
@end

@implementation TSDTextRange

+ (id)textRangeWithRange:(_NSRange)a3
{
  v3 = [[a1 alloc] initWithRange:{a3.location, a3.length}];

  return v3;
}

+ (id)textRangeWithRange:(_NSRange)a3 eolAffinity:(BOOL)a4 preferredStartPosition:(float)a5 preferredEndPosition:(float)a6
{
  v8 = a4;
  length = a3.length;
  location = a3.location;
  v11 = [a1 alloc];
  *&v12 = a5;
  *&v13 = a6;
  v14 = [v11 initWithRange:location eolAffinity:length preferredStartPosition:v8 preferredEndPosition:{v12, v13}];

  return v14;
}

- (TSDTextRange)initWithRange:(_NSRange)a3
{
  LODWORD(v3) = 2143289344;
  LODWORD(v4) = 2143289344;
  return [(TSDTextRange *)self initWithRange:a3.location eolAffinity:a3.length preferredStartPosition:0 preferredEndPosition:v3, v4];
}

- (TSDTextRange)initWithRange:(_NSRange)a3 eolAffinity:(BOOL)a4 preferredStartPosition:(float)a5 preferredEndPosition:(float)a6
{
  length = a3.length;
  location = a3.location;
  v12.receiver = self;
  v12.super_class = TSDTextRange;
  result = [(TSDTextRange *)&v12 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_eolAffinity = a4;
    result->_preferredStartPosition = a5;
    result->_preferredEndPosition = a6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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

- (BOOL)isEqual:(id)a3
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