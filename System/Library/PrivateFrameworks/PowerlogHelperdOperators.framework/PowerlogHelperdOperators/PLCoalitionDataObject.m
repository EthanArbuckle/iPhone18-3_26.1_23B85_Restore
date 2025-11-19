@interface PLCoalitionDataObject
- (id)description;
- (void)dealloc;
- (void)setLaunchdName:(id)a3;
@end

@implementation PLCoalitionDataObject

- (void)setLaunchdName:(id)a3
{
  v6 = a3;
  if ([v6 containsString:@"/"])
  {
    v4 = [v6 lastPathComponent];
  }

  else
  {
    v4 = v6;
  }

  launchdName = self->_launchdName;
  self->_launchdName = v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLCoalitionDataObject *)self coalitionID];
  v5 = [(PLCoalitionDataObject *)self launchdName];
  v6 = [(PLCoalitionDataObject *)self bundleID];
  v7 = [v3 stringWithFormat:@"ID: %llu\nLaunchdName: %@\nBundleID: %@\n", v4, v5, v6];

  return v7;
}

- (void)dealloc
{
  v3 = [(PLCoalitionDataObject *)self coalStruct];

  if (v3)
  {
    v4 = [(PLCoalitionDataObject *)self coalStruct];
    v5 = [v4 pointerValue];

    if (v5)
    {
      free(v5);
    }
  }

  v6.receiver = self;
  v6.super_class = PLCoalitionDataObject;
  [(PLCoalitionDataObject *)&v6 dealloc];
}

@end