@interface UIWebClipLinkTag
- (NSURL)hrefURL;
@end

@implementation UIWebClipLinkTag

- (NSURL)hrefURL
{
  v3 = [(NSString *)self->_href length];
  if (v3)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:self->_href encodingInvalidCharacters:0];
  }

  return v3;
}

@end