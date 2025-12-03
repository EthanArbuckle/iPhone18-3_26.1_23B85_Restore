@interface TVPAsyncPlayerDelegateOperation
- (BOOL)isEqual:(id)equal;
- (TVPAsyncPlayerDelegateOperation)init;
- (unint64_t)hash;
@end

@implementation TVPAsyncPlayerDelegateOperation

- (TVPAsyncPlayerDelegateOperation)init
{
  v6.receiver = self;
  v6.super_class = TVPAsyncPlayerDelegateOperation;
  v2 = [(TVPAsyncPlayerDelegateOperation *)&v6 init];
  if (v2)
  {
    ++init_counter;
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    identifier2 = [(TVPAsyncPlayerDelegateOperation *)self identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(TVPAsyncPlayerDelegateOperation *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end