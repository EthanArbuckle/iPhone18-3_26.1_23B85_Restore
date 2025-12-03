@interface TTSStringTransformation
- (TTSStringTransformation)initWithRange:(_NSRange)range andReplacement:(id)replacement;
- (_NSRange)finalRange;
- (_NSRange)range;
- (int64_t)sizeDelta;
@end

@implementation TTSStringTransformation

- (TTSStringTransformation)initWithRange:(_NSRange)range andReplacement:(id)replacement
{
  length = range.length;
  location = range.location;
  replacementCopy = replacement;
  v12.receiver = self;
  v12.super_class = TTSStringTransformation;
  v9 = [(TTSStringTransformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_range.location = location;
    v9->_range.length = length;
    objc_storeStrong(&v9->_replacement, replacement);
  }

  return v10;
}

- (int64_t)sizeDelta
{
  v6 = objc_msgSend_replacement(self, a2, v2, v3, v4);
  v11 = objc_msgSend_length(v6, v7, v8, v9, v10);
  objc_msgSend_range(self, v12, v13, v14, v15);
  v17 = v11 - v16;

  return v17;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)finalRange
{
  length = self->_finalRange.length;
  location = self->_finalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end