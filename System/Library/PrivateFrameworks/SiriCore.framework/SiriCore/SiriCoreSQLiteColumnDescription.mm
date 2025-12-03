@interface SiriCoreSQLiteColumnDescription
+ (id)integerPrimaryKeyColumnWithName:(id)name;
+ (id)uniqueTextColumnWithName:(id)name;
- (SiriCoreSQLiteColumnDescription)initWithName:(id)name type:(id)type constraints:(id)constraints;
- (SiriCoreSQLiteColumnDescription)initWithName:(id)name type:(id)type constraintsProvider:(id)provider;
@end

@implementation SiriCoreSQLiteColumnDescription

- (SiriCoreSQLiteColumnDescription)initWithName:(id)name type:(id)type constraintsProvider:(id)provider
{
  nameCopy = name;
  typeCopy = type;
  if (provider)
  {
    provider = (*(provider + 2))(provider);
  }

  v10 = [(SiriCoreSQLiteColumnDescription *)self initWithName:nameCopy type:typeCopy constraints:provider];

  return v10;
}

- (SiriCoreSQLiteColumnDescription)initWithName:(id)name type:(id)type constraints:(id)constraints
{
  nameCopy = name;
  typeCopy = type;
  constraintsCopy = constraints;
  v19.receiver = self;
  v19.super_class = SiriCoreSQLiteColumnDescription;
  v11 = [(SiriCoreSQLiteColumnDescription *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [typeCopy copy];
    type = v11->_type;
    v11->_type = v14;

    v16 = [constraintsCopy copy];
    constraints = v11->_constraints;
    v11->_constraints = v16;
  }

  return v11;
}

+ (id)uniqueTextColumnWithName:(id)name
{
  v10[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = [SiriCoreSQLiteColumnDescription alloc];
  v5 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:0 type:3 value:0 options:0];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(SiriCoreSQLiteColumnDescription *)v4 initWithName:nameCopy type:@"TEXT" constraints:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)integerPrimaryKeyColumnWithName:(id)name
{
  v10[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = [SiriCoreSQLiteColumnDescription alloc];
  v5 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:0 type:1 value:0 options:0];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(SiriCoreSQLiteColumnDescription *)v4 initWithName:nameCopy type:@"INTEGER" constraints:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end