@interface PGGraphUpdaterWrapper
- (PGGraphUpdaterWrapper)initWithGraphManager:(id)a3;
@end

@implementation PGGraphUpdaterWrapper

- (PGGraphUpdaterWrapper)initWithGraphManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphUpdaterWrapper;
  v5 = [(PGGraphUpdaterWrapper *)&v9 init];
  if (v5)
  {
    v6 = [[PGGraphUpdater alloc] initWith:v4];
    graphUpdater = v5->_graphUpdater;
    v5->_graphUpdater = v6;
  }

  return v5;
}

@end