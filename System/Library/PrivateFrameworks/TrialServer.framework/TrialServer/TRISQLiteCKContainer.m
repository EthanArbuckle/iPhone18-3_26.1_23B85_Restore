@interface TRISQLiteCKContainer
- (TRISQLiteCKContainer)initWithContainerIdentifier:(id)a3 database:(id)a4;
@end

@implementation TRISQLiteCKContainer

- (TRISQLiteCKContainer)initWithContainerIdentifier:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRISQLiteCKContainer;
  v9 = [(TRISQLiteCKContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerIdentifier, a3);
    objc_storeStrong(&v10->_database, a4);
    [(TRISQLiteCKDatabase *)v10->_database setContainer:v10];
  }

  return v10;
}

@end