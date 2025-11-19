@interface SOAPBaseDocument
- (id)XMLDataWithOptions:(unint64_t)a3;
@end

@implementation SOAPBaseDocument

- (id)XMLDataWithOptions:(unint64_t)a3
{
  v3 = [(SOAPBaseDocument *)self XMLStringWithOptions:a3];
  v4 = [v3 dataUsingEncoding:4];

  return v4;
}

@end