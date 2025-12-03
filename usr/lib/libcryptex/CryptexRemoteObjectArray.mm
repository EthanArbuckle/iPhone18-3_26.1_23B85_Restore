@interface CryptexRemoteObjectArray
- (CryptexRemoteObjectArray)initWithArray:(id)array;
@end

@implementation CryptexRemoteObjectArray

- (CryptexRemoteObjectArray)initWithArray:(id)array
{
  arrayCopy = array;
  v8.receiver = self;
  v8.super_class = CryptexRemoteObjectArray;
  v5 = [(CryptexRemoteObjectArray *)&v8 init];
  array = v5->_array;
  v5->_array = arrayCopy;

  return v5;
}

@end