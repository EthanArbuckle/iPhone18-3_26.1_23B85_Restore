@interface TRISQLiteCKContainer
- (TRISQLiteCKContainer)initWithContainerIdentifier:(id)identifier database:(id)database;
@end

@implementation TRISQLiteCKContainer

- (TRISQLiteCKContainer)initWithContainerIdentifier:(id)identifier database:(id)database
{
  identifierCopy = identifier;
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = TRISQLiteCKContainer;
  v9 = [(TRISQLiteCKContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerIdentifier, identifier);
    objc_storeStrong(&v10->_database, database);
    [(TRISQLiteCKDatabase *)v10->_database setContainer:v10];
  }

  return v10;
}

@end