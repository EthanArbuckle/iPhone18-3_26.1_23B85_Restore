@interface SKBlockDevice
- (id)copyIOMedia;
@end

@implementation SKBlockDevice

- (id)copyIOMedia
{
  v2 = [(SKIOObject *)self ioObjectWithClassName:@"IOMedia" iterateParents:0];
  v3 = [(SKIOObject *)[SKIOMedia alloc] initWithSKIOObject:v2];

  return v3;
}

@end