@interface SiriCoreSQLiteColumnDescription
+ (id)integerPrimaryKeyColumnWithName:(id)a3;
+ (id)uniqueTextColumnWithName:(id)a3;
- (SiriCoreSQLiteColumnDescription)initWithName:(id)a3 type:(id)a4 constraints:(id)a5;
- (SiriCoreSQLiteColumnDescription)initWithName:(id)a3 type:(id)a4 constraintsProvider:(id)a5;
@end

@implementation SiriCoreSQLiteColumnDescription

- (SiriCoreSQLiteColumnDescription)initWithName:(id)a3 type:(id)a4 constraintsProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    a5 = (*(a5 + 2))(a5);
  }

  v10 = [(SiriCoreSQLiteColumnDescription *)self initWithName:v8 type:v9 constraints:a5];

  return v10;
}

- (SiriCoreSQLiteColumnDescription)initWithName:(id)a3 type:(id)a4 constraints:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SiriCoreSQLiteColumnDescription;
  v11 = [(SiriCoreSQLiteColumnDescription *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    type = v11->_type;
    v11->_type = v14;

    v16 = [v10 copy];
    constraints = v11->_constraints;
    v11->_constraints = v16;
  }

  return v11;
}

+ (id)uniqueTextColumnWithName:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [SiriCoreSQLiteColumnDescription alloc];
  v5 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:0 type:3 value:0 options:0];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(SiriCoreSQLiteColumnDescription *)v4 initWithName:v3 type:@"TEXT" constraints:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)integerPrimaryKeyColumnWithName:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [SiriCoreSQLiteColumnDescription alloc];
  v5 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:0 type:1 value:0 options:0];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(SiriCoreSQLiteColumnDescription *)v4 initWithName:v3 type:@"INTEGER" constraints:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end