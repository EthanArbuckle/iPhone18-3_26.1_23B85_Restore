@interface _PFSQLitePredicateArgumentContainer
+ (id)arg:(id)a3 column:(id)a4 operator:(unint64_t)a5;
- (id)description;
@end

@implementation _PFSQLitePredicateArgumentContainer

+ (id)arg:(id)a3 column:(id)a4 operator:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setArg:v8];

  [v9 setColumn:v7];
  [v9 setOperator:a5];

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(_PFSQLitePredicateArgumentContainer *)self column];
  v5 = [v4 name];
  v6 = [v3 appendObject:v5 withName:@"columnName"];

  v7 = [(_PFSQLitePredicateArgumentContainer *)self arg];
  v8 = [v3 appendObject:v7 withName:@"arg"];

  v9 = NSStringForPFSQLPredicateOperator([(_PFSQLitePredicateArgumentContainer *)self operator]);
  v10 = [v3 appendObject:v9 withName:@"operator"];

  v11 = [v3 build];

  return v11;
}

@end