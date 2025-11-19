@interface WBSTouchIconRequest
- (CGSize)minimumIconSize;
- (unint64_t)hash;
@end

@implementation WBSTouchIconRequest

- (unint64_t)hash
{
  v2 = [(WBSSiteMetadataRequest *)self url];
  v3 = [v2 host];
  v4 = [v3 hash];

  return v4;
}

- (CGSize)minimumIconSize
{
  width = self->_minimumIconSize.width;
  height = self->_minimumIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end