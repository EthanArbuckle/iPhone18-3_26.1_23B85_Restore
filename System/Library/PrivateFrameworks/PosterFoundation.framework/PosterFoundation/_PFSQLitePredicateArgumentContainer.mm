@interface _PFSQLitePredicateArgumentContainer
+ (id)arg:(id)arg column:(id)column operator:(unint64_t)operator;
- (id)description;
@end

@implementation _PFSQLitePredicateArgumentContainer

+ (id)arg:(id)arg column:(id)column operator:(unint64_t)operator
{
  columnCopy = column;
  argCopy = arg;
  v9 = objc_opt_new();
  [v9 setArg:argCopy];

  [v9 setColumn:columnCopy];
  [v9 setOperator:operator];

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  column = [(_PFSQLitePredicateArgumentContainer *)self column];
  name = [column name];
  v6 = [v3 appendObject:name withName:@"columnName"];

  v7 = [(_PFSQLitePredicateArgumentContainer *)self arg];
  v8 = [v3 appendObject:v7 withName:@"arg"];

  v9 = NSStringForPFSQLPredicateOperator([(_PFSQLitePredicateArgumentContainer *)self operator]);
  v10 = [v3 appendObject:v9 withName:@"operator"];

  build = [v3 build];

  return build;
}

@end