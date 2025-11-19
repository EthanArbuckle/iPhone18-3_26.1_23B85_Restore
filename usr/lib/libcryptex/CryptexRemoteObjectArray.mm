@interface CryptexRemoteObjectArray
- (CryptexRemoteObjectArray)initWithArray:(id)a3;
@end

@implementation CryptexRemoteObjectArray

- (CryptexRemoteObjectArray)initWithArray:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CryptexRemoteObjectArray;
  v5 = [(CryptexRemoteObjectArray *)&v8 init];
  array = v5->_array;
  v5->_array = v4;

  return v5;
}

@end