@interface SQLiteStringLikePredicate
+ (id)predicateWithProperty:(id)property havingPrefix:(id)prefix;
+ (id)predicateWithProperty:(id)property havingSuffix:(id)suffix;
+ (id)predicateWithProperty:(id)property matchingPattern:(id)pattern;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
- (unint64_t)hash;
@end

@implementation SQLiteStringLikePredicate

+ (id)predicateWithProperty:(id)property havingPrefix:(id)prefix
{
  propertyCopy = property;
  v7 = [prefix stringByAppendingString:@"%"];
  v8 = [self predicateWithProperty:propertyCopy matchingPattern:v7];

  return v8;
}

+ (id)predicateWithProperty:(id)property havingSuffix:(id)suffix
{
  propertyCopy = property;
  v7 = [@"%" stringByAppendingString:suffix];
  v8 = [self predicateWithProperty:propertyCopy matchingPattern:v7];

  return v8;
}

+ (id)predicateWithProperty:(id)property matchingPattern:(id)pattern
{
  patternCopy = pattern;
  propertyCopy = property;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [propertyCopy copy];

  v9 = v7[1];
  v7[1] = v8;

  v10 = [patternCopy copy];
  v11 = v7[2];
  v7[2] = v10;

  return v7;
}

- (id)SQLForEntityClass:(Class)class
{
  v5 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"(");
  property = [(SQLiteStringLikePredicate *)self property];
  v7 = [(objc_class *)class disambiguatedSQLForProperty:property];
  [v5 appendString:v7];

  [v5 appendString:@" LIKE ?"]);

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
  v6.super_class = SQLiteStringLikePredicate;
  v3 = [(SQLitePredicate *)&v6 hash];
  v4 = &v3[[(NSString *)self->_property hash]];
  return [(NSString *)self->_pattern hash]+ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = SQLiteStringLikePredicate;
  if ([(SQLitePredicate *)&v8 isEqual:equalCopy])
  {
    pattern = self->_pattern;
    if (pattern == equalCopy[2])
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