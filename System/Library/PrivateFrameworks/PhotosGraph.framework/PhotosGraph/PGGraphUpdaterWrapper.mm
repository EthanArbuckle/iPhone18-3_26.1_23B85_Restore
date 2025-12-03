@interface PGGraphUpdaterWrapper
- (PGGraphUpdaterWrapper)initWithGraphManager:(id)manager;
@end

@implementation PGGraphUpdaterWrapper

- (PGGraphUpdaterWrapper)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PGGraphUpdaterWrapper;
  v5 = [(PGGraphUpdaterWrapper *)&v9 init];
  if (v5)
  {
    v6 = [[PGGraphUpdater alloc] initWith:managerCopy];
    graphUpdater = v5->_graphUpdater;
    v5->_graphUpdater = v6;
  }

  return v5;
}

@end