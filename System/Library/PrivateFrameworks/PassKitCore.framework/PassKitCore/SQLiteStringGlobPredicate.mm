@interface SQLiteStringGlobPredicate
+ (id)predicateWithProperty:(id)a3 havingPrefix:(id)a4;
+ (id)predicateWithProperty:(id)a3 havingSuffix:(id)a4;
+ (id)predicateWithProperty:(id)a3 matchingPattern:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SQLiteStringGlobPredicate

+ (id)predicateWithProperty:(id)a3 havingPrefix:(id)a4
{
  v6 = a3;
  v7 = [a4 stringByAppendingString:@"*"];
  v8 = [a1 predicateWithProperty:v6 matchingPattern:v7];

  return v8;
}

+ (id)predicateWithProperty:(id)a3 havingSuffix:(id)a4
{
  v6 = a3;
  v7 = [@"*" stringByAppendingString:a4];
  v8 = [a1 predicateWithProperty:v6 matchingPattern:v7];

  return v8;
}

+ (id)predicateWithProperty:(id)a3 matchingPattern:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [v6 copy];

  v9 = v7[1];
  v7[1] = v8;

  v10 = [v5 copy];
  v11 = v7[2];
  v7[2] = v10;

  return v7;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"(");
  v6 = [(SQLiteStringGlobPredicate *)self property];
  v7 = [(objc_class *)a3 disambiguatedSQLForProperty:v6];
  [v5 appendString:v7];

  [v5 appendString:@" GLOB ?"]);

  return v5;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"property: %@; ", self->_property];
  [v3 appendFormat:@"pattern: %@; ", self->_pattern];
  [v3 appendFormat:@">"];

  return v3;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = SQLiteStringGlobPredicate;
  v3 = [(SQLitePredicate *)&v6 hash];
  v4 = &v3[[(NSString *)self->_property hash]];
  return [(NSString *)self->_pattern hash]+ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SQLiteStringGlobPredicate;
  if ([(SQLitePredicate *)&v8 isEqual:v4])
  {
    pattern = self->_pattern;
    if (pattern == v4[2])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSString *)pattern isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end