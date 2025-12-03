@interface HVHtmlParserHyperlink
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHtmlParserHyperlink:(id)hyperlink;
- (HVHtmlParserHyperlink)initWithURL:(id)l range:(_NSRange)range;
- (_NSRange)range;
- (id)description;
- (unint64_t)hash;
@end

@implementation HVHtmlParserHyperlink

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  url = self->_url;
  v7 = NSStringFromRange(self->_range);
  v8 = [v3 initWithFormat:@"<%@ %@ %@>", v5, url, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_url hash];
  v4 = self->_range.location - v3 + 32 * v3;
  return self->_range.length - v4 + 32 * v4;
}

- (BOOL)isEqualToHtmlParserHyperlink:(id)hyperlink
{
  hyperlinkCopy = hyperlink;
  v5 = self->_url;
  v6 = v5;
  if (v5 == hyperlinkCopy[1])
  {
  }

  else
  {
    v7 = [(NSURL *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_11;
    }
  }

  v8 = self->_range.location == hyperlinkCopy[2] && self->_range.length == hyperlinkCopy[3];
LABEL_11:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(HVHtmlParserHyperlink *)self isEqualToHtmlParserHyperlink:v5];
  }

  return v6;
}

- (HVHtmlParserHyperlink)initWithURL:(id)l range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = HVHtmlParserHyperlink;
  v9 = [(HVHtmlParserHyperlink *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    v10->_range.location = location;
    v10->_range.length = length;
  }

  return v10;
}

@end