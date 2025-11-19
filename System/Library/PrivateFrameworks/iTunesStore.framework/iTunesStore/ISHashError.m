@interface ISHashError
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation ISHashError

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISHashError;
  [(ISHashError *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSString *)self->_actualHashString copyWithZone:a3];
  v5[2] = [(NSString *)self->_expectedHashString copyWithZone:a3];
  v5[3] = self->_rangeEnd;
  v5[4] = self->_rangeStart;
  return v5;
}

@end