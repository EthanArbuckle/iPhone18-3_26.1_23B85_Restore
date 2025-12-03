@interface SiriCoreSQLiteColumnConstraint
+ (id)defaultColumnConstraintWithName:(id)name value:(id)value;
+ (id)notNullColumnConstraintWithName:(id)name;
+ (id)primaryKeyColumnConstraintWithName:(id)name usesAutoIncrement:(BOOL)increment;
+ (id)uniqueColumnConstraintWithName:(id)name;
- (SiriCoreSQLiteColumnConstraint)initWithName:(id)name type:(int64_t)type value:(id)value options:(unint64_t)options;
@end

@implementation SiriCoreSQLiteColumnConstraint

- (SiriCoreSQLiteColumnConstraint)initWithName:(id)name type:(int64_t)type value:(id)value options:(unint64_t)options
{
  nameCopy = name;
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = SiriCoreSQLiteColumnConstraint;
  v12 = [(SiriCoreSQLiteColumnConstraint *)&v18 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_type = type;
    v15 = [valueCopy copy];
    value = v12->_value;
    v12->_value = v15;

    v12->_options = options;
  }

  return v12;
}

+ (id)defaultColumnConstraintWithName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:nameCopy type:4 value:valueCopy options:0];

  return v7;
}

+ (id)uniqueColumnConstraintWithName:(id)name
{
  nameCopy = name;
  v4 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:nameCopy type:3 value:0 options:0];

  return v4;
}

+ (id)notNullColumnConstraintWithName:(id)name
{
  nameCopy = name;
  v4 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:nameCopy type:2 value:0 options:0];

  return v4;
}

+ (id)primaryKeyColumnConstraintWithName:(id)name usesAutoIncrement:(BOOL)increment
{
  incrementCopy = increment;
  nameCopy = name;
  v6 = [[SiriCoreSQLiteColumnConstraint alloc] initWithName:nameCopy type:1 value:0 options:incrementCopy];

  return v6;
}

@end