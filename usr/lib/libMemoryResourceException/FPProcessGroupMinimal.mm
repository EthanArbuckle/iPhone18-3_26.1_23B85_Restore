@interface FPProcessGroupMinimal
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initUniqueProcessGroup;
- (void)addProcess:(id)process;
@end

@implementation FPProcessGroupMinimal

- (id)initUniqueProcessGroup
{
  uUID = [MEMORY[0x29EDBA140] UUID];
  v4 = sub_297E3B8D0(self, [uUID hash]);

  return v4;
}

- (void)addProcess:(id)process
{
  processCopy = process;
  if (([(NSMutableSet *)self->_processes containsObject:?]& 1) == 0)
  {
    v4 = 37 * self->_hashValue;
    self->_hashValue = v4 ^ [processCopy pid];
    [(NSMutableSet *)self->_processes addObject:processCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self->_hashValue != *(equal + 2))
  {
    return 0;
  }

  equalCopy = equal;
  processes = [(FPProcessGroupMinimal *)self processes];
  processes2 = [equalCopy processes];

  LOBYTE(equalCopy) = [processes isEqualToSet:processes2];
  return equalCopy;
}

- (id)description
{
  v2 = MEMORY[0x29EDBA0F8];
  processes = [(FPProcessGroupMinimal *)self processes];
  v4 = [processes description];
  v5 = [v2 stringWithFormat:@"FPProcessGroup%@", v4];

  return v5;
}

@end