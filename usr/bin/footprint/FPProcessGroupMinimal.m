@interface FPProcessGroupMinimal
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initUniqueProcessGroup;
- (void)addProcess:(id)a3;
@end

@implementation FPProcessGroupMinimal

- (id)initUniqueProcessGroup
{
  v3 = +[NSUUID UUID];
  v4 = sub_100016870(self, [v3 hash]);

  return v4;
}

- (void)addProcess:(id)a3
{
  v5 = a3;
  if (([(NSMutableSet *)self->_processes containsObject:?]& 1) == 0)
  {
    v4 = 37 * self->_hashValue;
    self->_hashValue = v4 ^ [v5 pid];
    [(NSMutableSet *)self->_processes addObject:v5];
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self->_hashValue != *(a3 + 2))
  {
    return 0;
  }

  v4 = a3;
  v5 = [(FPProcessGroupMinimal *)self processes];
  v6 = [v4 processes];

  LOBYTE(v4) = [v5 isEqualToSet:v6];
  return v4;
}

- (id)description
{
  v2 = [(FPProcessGroupMinimal *)self processes];
  v3 = [v2 description];
  v4 = [NSString stringWithFormat:@"FPProcessGroup%@", v3];

  return v4;
}

@end