@interface ISOSessionEstablishment
- (id)description;
@end

@implementation ISOSessionEstablishment

- (id)description
{
  v3 = [NSString alloc];
  v4 = sub_10000A080(self->_readerKey);
  v5 = [v3 initWithFormat:@"SessionEstablishment={\neReaderKey: %@\ndata: %@\n}", v4, self->_encData];

  return v5;
}

@end