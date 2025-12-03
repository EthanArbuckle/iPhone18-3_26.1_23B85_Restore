@interface PLCoalitionDataObject
- (id)description;
- (void)dealloc;
- (void)setLaunchdName:(id)name;
@end

@implementation PLCoalitionDataObject

- (void)dealloc
{
  coalStruct = [(PLCoalitionDataObject *)self coalStruct];

  if (coalStruct)
  {
    coalStruct2 = [(PLCoalitionDataObject *)self coalStruct];
    pointerValue = [coalStruct2 pointerValue];

    if (pointerValue)
    {
      free(pointerValue);
    }
  }

  v6.receiver = self;
  v6.super_class = PLCoalitionDataObject;
  [(PLCoalitionDataObject *)&v6 dealloc];
}

- (void)setLaunchdName:(id)name
{
  nameCopy = name;
  if ([nameCopy containsString:@"/"])
  {
    lastPathComponent = [nameCopy lastPathComponent];
  }

  else
  {
    lastPathComponent = nameCopy;
  }

  launchdName = self->_launchdName;
  self->_launchdName = lastPathComponent;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  coalitionID = [(PLCoalitionDataObject *)self coalitionID];
  launchdName = [(PLCoalitionDataObject *)self launchdName];
  bundleID = [(PLCoalitionDataObject *)self bundleID];
  v7 = [v3 stringWithFormat:@"ID: %llu\nLaunchdName: %@\nBundleID: %@\n", coalitionID, launchdName, bundleID];

  return v7;
}

@end