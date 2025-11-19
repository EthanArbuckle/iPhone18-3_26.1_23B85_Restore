@interface RTIDocumentRequest
- (BOOL)isEqual:(id)a3;
- (RTIDocumentRequest)init;
- (RTIDocumentRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setTextGranularity:(int64_t)a3;
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

- (void)setTextGranularity:(int64_t)a3
{
  self->_textGranularity = a3;
  if (!self->_didSetRectGranularity)
  {
    self->_rectGranularity = a3;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeInt64:self->_flags forKey:@"reqF"];
  [v4 encodeInt32:LODWORD(self->_textGranularity) forKey:@"reqG"];
  [v4 encodeInt32:LODWORD(self->_rectGranularity) forKey:@"rectG"];
  [v4 encodeInt32:LODWORD(self->_surroundingGranularityCount) forKey:@"reqSC"];
  [v4 encodeInt32:LODWORD(self->_rectCountBefore) forKey:@"reqRCB"];
  [v4 encodeInt32:LODWORD(self->_rectCountAfter) forKey:@"reqRCA"];
}

- (RTIDocumentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v9.receiver = self;
  v9.super_class = RTIDocumentRequest;
  v5 = [(RTIDocumentRequest *)&v9 init];
  if (v5)
  {
    v5->_flags = [v4 decodeInt64ForKey:@"reqF"];
    v5->_textGranularity = [v4 decodeInt32ForKey:@"reqG"];
    v5->_rectGranularity = [v4 decodeInt32ForKey:@"rectG"];
    v5->_surroundingGranularityCount = [v4 decodeInt32ForKey:@"reqSC"];
    if ([v4 containsValueForKey:@"reqRCB"])
    {
      v6 = [v4 decodeInt32ForKey:@"reqRCB"];
    }

    else
    {
      v6 = -1;
    }

    v5->_rectCountBefore = v6;
    if ([v4 containsValueForKey:@"reqRCA"])
    {
      v7 = [v4 decodeInt32ForKey:@"reqRCA"];
    }

    else
    {
      v7 = -1;
    }

    v5->_rectCountAfter = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTIDocumentRequest *)self flags];
      if (v6 == [(RTIDocumentRequest *)v5 flags]&& (v7 = [(RTIDocumentRequest *)self textGranularity], v7 == [(RTIDocumentRequest *)v5 textGranularity]) && (v8 = [(RTIDocumentRequest *)self rectGranularity], v8 == [(RTIDocumentRequest *)v5 rectGranularity]) && (v9 = [(RTIDocumentRequest *)self surroundingGranularityCount], v9 == [(RTIDocumentRequest *)v5 surroundingGranularityCount]) && (v10 = [(RTIDocumentRequest *)self rectCountBefore], v10 == [(RTIDocumentRequest *)v5 rectCountBefore]))
      {
        v11 = [(RTIDocumentRequest *)self rectCountAfter];
        v12 = v11 == [(RTIDocumentRequest *)v5 rectCountAfter];
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