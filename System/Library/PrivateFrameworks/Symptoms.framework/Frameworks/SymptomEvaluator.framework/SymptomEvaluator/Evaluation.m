@interface Evaluation
- (id)description;
@end

@implementation Evaluation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = _Block_copy(self->_callback);
  v5 = [v3 stringWithFormat:@"Evaluation at %p, block %@", self, v4];

  return v5;
}

@end