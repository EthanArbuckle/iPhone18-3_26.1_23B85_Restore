@interface FPProcessGroupMinimal
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initUniqueProcessGroup;
- (void)addProcess:(id)process;
@end

@implementation FPProcessGroupMinimal

- (id)initUniqueProcessGroup
{
  v3 = +[NSUUID UUID];
  v4 = sub_100016870(self, [v3 hash]);

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
  processes = [(FPProcessGroupMinimal *)self processes];
  v3 = [processes description];
  v4 = [NSString stringWithFormat:@"FPProcessGroup%@", v3];

  return v4;
}

@end