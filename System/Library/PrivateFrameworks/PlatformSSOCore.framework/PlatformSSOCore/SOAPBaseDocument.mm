@interface SOAPBaseDocument
- (id)XMLDataWithOptions:(unint64_t)options;
@end

@implementation SOAPBaseDocument

- (id)XMLDataWithOptions:(unint64_t)options
{
  v3 = [(SOAPBaseDocument *)self XMLStringWithOptions:options];
  v4 = [v3 dataUsingEncoding:4];

  return v4;
}

@end