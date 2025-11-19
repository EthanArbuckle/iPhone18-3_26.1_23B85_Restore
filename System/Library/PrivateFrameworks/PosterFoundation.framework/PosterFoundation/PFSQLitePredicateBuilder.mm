@interface PFSQLitePredicateBuilder
+ (id)builder;
- (PFSQLitePredicateBuilder)init;
- (id)andPredicate:(id)a3;
- (id)buildAndPredicate;
- (id)buildOrPredicate;
- (id)orPredicate:(id)a3;
- (id)whereColumn:(id)a3 equalTo:(id)a4;
- (id)whereColumn:(id)a3 greaterThan:(id)a4;
- (id)whereColumn:(id)a3 greaterThanOrEqualTo:(id)a4;
- (id)whereColumn:(id)a3 inValues:(id)a4;
- (id)whereColumn:(id)a3 lessThan:(id)a4;
- (id)whereColumn:(id)a3 lessThanOrEqualTo:(id)a4;
- (id)whereColumn:(id)a3 like:(id)a4;
- (id)whereColumn:(id)a3 notEqualTo:(id)a4;
- (id)whereColumn:(id)a3 notInValues:(id)a4;
@end

@implementation PFSQLitePredicateBuilder

+ (id)builder
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (PFSQLitePredicateBuilder)init
{
  v6.receiver = self;
  v6.super_class = PFSQLitePredicateBuilder;
  v2 = [(PFSQLitePredicateBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    predicates = v2->_predicates;
    v2->_predicates = v3;
  }

  return v2;
}

- (id)whereColumn:(id)a3 equalTo:(id)a4
{
  v5 = [PFSQLitePredicate predicateWithColumn:a3 operatorType:0 value:a4];
  [(NSMutableOrderedSet *)self->_predicates addObject:v5];

  return self;
}

- (id)whereColumn:(id)a3 notEqualTo:(id)a4
{
  objc_storeStrong(&self->_lastColumn, a3);
  v7 = a3;
  v8 = a4;
  v9 = [PFSQLitePredicate predicateWithColumn:v7 operatorType:1 value:v8];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)a3 lessThan:(id)a4
{
  objc_storeStrong(&self->_lastColumn, a3);
  v7 = a3;
  v8 = a4;
  v9 = [PFSQLitePredicate predicateWithColumn:v7 operatorType:2 value:v8];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)a3 lessThanOrEqualTo:(id)a4
{
  objc_storeStrong(&self->_lastColumn, a3);
  v7 = a3;
  v8 = a4;
  v9 = [PFSQLitePredicate predicateWithColumn:v7 operatorType:3 value:v8];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)a3 greaterThan:(id)a4
{
  objc_storeStrong(&self->_lastColumn, a3);
  v7 = a3;
  v8 = a4;
  v9 = [PFSQLitePredicate predicateWithColumn:v7 operatorType:4 value:v8];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)a3 greaterThanOrEqualTo:(id)a4
{
  objc_storeStrong(&self->_lastColumn, a3);
  v7 = a3;
  v8 = a4;
  v9 = [PFSQLitePredicate predicateWithColumn:v7 operatorType:5 value:v8];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)a3 inValues:(id)a4
{
  objc_storeStrong(&self->_lastColumn, a3);
  v7 = a3;
  v8 = a4;
  v9 = [v8 bs_array];

  v10 = [PFSQLitePredicate predicateWithColumn:v7 operatorType:6 value:v9];

  [(NSMutableOrderedSet *)self->_predicates addObject:v10];
  return self;
}

- (id)whereColumn:(id)a3 notInValues:(id)a4
{
  objc_storeStrong(&self->_lastColumn, a3);
  v7 = a3;
  v8 = a4;
  v9 = [v8 bs_array];

  v10 = [PFSQLitePredicate predicateWithColumn:v7 operatorType:7 value:v9];

  [(NSMutableOrderedSet *)self->_predicates addObject:v10];
  return self;
}

- (id)whereColumn:(id)a3 like:(id)a4
{
  objc_storeStrong(&self->_lastColumn, a3);
  v7 = a3;
  v8 = a4;
  v9 = [PFSQLitePredicate predicateWithColumn:v7 operatorType:8 value:v8];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)andPredicate:(id)a3
{
  v4 = a3;
  v5 = +[PFSQLitePredicateBuilder builder];
  v4[2](v4, v5);

  v6 = [v5 buildAndPredicate];
  if (v6)
  {
    [(NSMutableOrderedSet *)self->_predicates addObject:v6];
  }

  return self;
}

- (id)orPredicate:(id)a3
{
  v4 = a3;
  v5 = +[PFSQLitePredicateBuilder builder];
  v4[2](v4, v5);

  v6 = [v5 buildOrPredicate];
  if (v6)
  {
    [(NSMutableOrderedSet *)self->_predicates addObject:v6];
  }

  return self;
}

- (id)buildOrPredicate
{
  v3 = [(NSMutableOrderedSet *)self->_predicates count];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(NSMutableOrderedSet *)self->_predicates firstObject];
    }

    else
    {
      v5 = [(NSMutableOrderedSet *)self->_predicates array];
      v4 = [PFSQLitePredicate orPredicateWithPredicates:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)buildAndPredicate
{
  v3 = [(NSMutableOrderedSet *)self->_predicates count];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(NSMutableOrderedSet *)self->_predicates firstObject];
    }

    else
    {
      v5 = [(NSMutableOrderedSet *)self->_predicates array];
      v4 = [PFSQLitePredicate andPredicateWithPredicates:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end