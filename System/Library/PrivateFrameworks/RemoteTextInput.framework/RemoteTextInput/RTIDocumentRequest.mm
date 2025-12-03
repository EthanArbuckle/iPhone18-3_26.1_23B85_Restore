@interface RTIDocumentRequest
- (BOOL)isEqual:(id)equal;
- (RTIDocumentRequest)init;
- (RTIDocumentRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setTextGranularity:(int64_t)granularity;
@end

@implementation RTIDocumentRequest

- (RTIDocumentRequest)init
{
  v3.receiver = self;
  v3.super_class = RTIDocumentRequest;
  result = [(RTIDocumentRequest *)&v3 init];
  if (result)
  {
    result->_rectCountBefore = -1;
    result->_rectCountAfter = -1;
  }

  return result;
}

- (void)setTextGranularity:(int64_t)granularity
{
  self->_textGranularity = granularity;
  if (!self->_didSetRectGranularity)
  {
    self->_rectGranularity = granularity;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeInt64:self->_flags forKey:@"reqF"];
  [coderCopy encodeInt32:LODWORD(self->_textGranularity) forKey:@"reqG"];
  [coderCopy encodeInt32:LODWORD(self->_rectGranularity) forKey:@"rectG"];
  [coderCopy encodeInt32:LODWORD(self->_surroundingGranularityCount) forKey:@"reqSC"];
  [coderCopy encodeInt32:LODWORD(self->_rectCountBefore) forKey:@"reqRCB"];
  [coderCopy encodeInt32:LODWORD(self->_rectCountAfter) forKey:@"reqRCA"];
}

- (RTIDocumentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v9.receiver = self;
  v9.super_class = RTIDocumentRequest;
  v5 = [(RTIDocumentRequest *)&v9 init];
  if (v5)
  {
    v5->_flags = [coderCopy decodeInt64ForKey:@"reqF"];
    v5->_textGranularity = [coderCopy decodeInt32ForKey:@"reqG"];
    v5->_rectGranularity = [coderCopy decodeInt32ForKey:@"rectG"];
    v5->_surroundingGranularityCount = [coderCopy decodeInt32ForKey:@"reqSC"];
    if ([coderCopy containsValueForKey:@"reqRCB"])
    {
      v6 = [coderCopy decodeInt32ForKey:@"reqRCB"];
    }

    else
    {
      v6 = -1;
    }

    v5->_rectCountBefore = v6;
    if ([coderCopy containsValueForKey:@"reqRCA"])
    {
      v7 = [coderCopy decodeInt32ForKey:@"reqRCA"];
    }

    else
    {
      v7 = -1;
    }

    v5->_rectCountAfter = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[RTIDocumentRequest allocWithZone:?]];
  *(result + 2) = self->_flags;
  *(result + 3) = self->_textGranularity;
  *(result + 4) = self->_rectGranularity;
  *(result + 5) = self->_surroundingGranularityCount;
  *(result + 6) = self->_rectCountBefore;
  *(result + 7) = self->_rectCountAfter;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      flags = [(RTIDocumentRequest *)self flags];
      if (flags == [(RTIDocumentRequest *)v5 flags]&& (v7 = [(RTIDocumentRequest *)self textGranularity], v7 == [(RTIDocumentRequest *)v5 textGranularity]) && (v8 = [(RTIDocumentRequest *)self rectGranularity], v8 == [(RTIDocumentRequest *)v5 rectGranularity]) && (v9 = [(RTIDocumentRequest *)self surroundingGranularityCount], v9 == [(RTIDocumentRequest *)v5 surroundingGranularityCount]) && (v10 = [(RTIDocumentRequest *)self rectCountBefore], v10 == [(RTIDocumentRequest *)v5 rectCountBefore]))
      {
        rectCountAfter = [(RTIDocumentRequest *)self rectCountAfter];
        v12 = rectCountAfter == [(RTIDocumentRequest *)v5 rectCountAfter];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; flags = %ld", -[RTIDocumentRequest flags](self, "flags")];
  [v3 appendFormat:@"; textGranularity = %ld", -[RTIDocumentRequest textGranularity](self, "textGranularity")];
  [v3 appendFormat:@"; rectGranularity = %ld", -[RTIDocumentRequest rectGranularity](self, "rectGranularity")];
  [v3 appendFormat:@"; surroundingGranularityCount = %ld", -[RTIDocumentRequest surroundingGranularityCount](self, "surroundingGranularityCount")];
  [v3 appendFormat:@"; rectCountBefore = %ld", -[RTIDocumentRequest rectCountBefore](self, "rectCountBefore")];
  [v3 appendFormat:@"; rectCountAfter = %ld", -[RTIDocumentRequest rectCountAfter](self, "rectCountAfter")];

  return v3;
}

@end