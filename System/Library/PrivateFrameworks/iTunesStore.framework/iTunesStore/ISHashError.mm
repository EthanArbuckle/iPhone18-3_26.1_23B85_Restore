@interface ISHashError
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation ISHashError

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISHashError;
  [(ISHashError *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSString *)self->_actualHashString copyWithZone:zone];
  v5[2] = [(NSString *)self->_expectedHashString copyWithZone:zone];
  v5[3] = self->_rangeEnd;
  v5[4] = self->_rangeStart;
  return v5;
}

@end