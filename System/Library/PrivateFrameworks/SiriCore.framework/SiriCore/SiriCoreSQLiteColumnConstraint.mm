@interface SiriCoreSQLiteColumnConstraint
+ (id)defaultColumnConstraintWithName:(id)a3 value:(id)a4;
+ (id)notNullColumnConstraintWithName:(id)a3;
+ (id)primaryKeyColumnConstraintWithName:(id)a3 usesAutoIncrement:(BOOL)a4;
+ (id)uniqueColumnConstraintWithName:(id)a3;
- (SiriCoreSQLiteColumnConstraint)initWithName:(id)a3 type:(int64_t)a4 value:(id)a5 options:(unint64_t)a6;
@end

@implementation SiriCoreSQLiteColumnConstraint

- (SiriCoreSQLiteColumnConstraint)initWithName:(id)a3 type:(int64_t)a4 value:(id)a5 options:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = SiriCoreSQLiteColumnConstraint;
  v12 = [(SiriCoreSQLiteColumnConstraint *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_type = a4;
    v15 = [v11 copy];
    value = v12->_value;
    v12->_value = v15;

    v12->_options = a6;
  }

  return v12;
}

+ (id)defaultColumnConstraintWithName:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:v6 type:4 value:v5 options:0];

  return v7;
}

+ (id)uniqueColumnConstraintWithName:(id)a3
{
  v3 = a3;
  v4 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:v3 type:3 value:0 options:0];

  return v4;
}

+ (id)notNullColumnConstraintWithName:(id)a3
{
  v3 = a3;
  v4 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:v3 type:2 value:0 options:0];

  return v4;
}

+ (id)primaryKeyColumnConstraintWithName:(id)a3 usesAutoIncrement:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:v5 type:1 value:0 options:v4];

  return v6;
}

@end