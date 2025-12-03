@interface NSString(CRCodable)
- (id)initWithCRCodableDataRepresentation:()CRCodable;
@end

@implementation NSString(CRCodable)

- (id)initWithCRCodableDataRepresentation:()CRCodable
{
  if (a3)
  {
    self = [self initWithData:a3 encoding:4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end