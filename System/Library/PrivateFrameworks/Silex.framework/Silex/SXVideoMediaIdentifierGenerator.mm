@interface SXVideoMediaIdentifierGenerator
- (id)identifierForURL:(id)l;
@end

@implementation SXVideoMediaIdentifierGenerator

- (id)identifierForURL:(id)l
{
  absoluteString = [l absoluteString];
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v5 = [absoluteString stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  if ([v5 length])
  {
    nf_sha1 = [v5 nf_sha1];
  }

  else
  {
    nf_sha1 = 0;
  }

  return nf_sha1;
}

@end