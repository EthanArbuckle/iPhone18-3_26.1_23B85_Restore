@interface _LTMatch
- (_LTMatch)initWithNode:(id)node range:(_NSRange)range;
- (_NSRange)range;
- (id)description;
@end

@implementation _LTMatch

- (_LTMatch)initWithNode:(id)node range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  nodeCopy = node;
  v9 = [(_LTMatch *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_node, node);
    v10->_range.location = location;
    v10->_range.length = length;
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  token = self->_token;
  v5 = NSStringFromRange(self->_range);
  v6 = [v3 stringWithFormat:@"%@ %@ %@", token, v5, self->_node];

  return v6;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end