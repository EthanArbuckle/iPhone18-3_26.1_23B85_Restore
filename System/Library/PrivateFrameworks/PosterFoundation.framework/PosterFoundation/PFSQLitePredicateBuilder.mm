@interface PFSQLitePredicateBuilder
+ (id)builder;
- (PFSQLitePredicateBuilder)init;
- (id)andPredicate:(id)predicate;
- (id)buildAndPredicate;
- (id)buildOrPredicate;
- (id)orPredicate:(id)predicate;
- (id)whereColumn:(id)column equalTo:(id)to;
- (id)whereColumn:(id)column greaterThan:(id)than;
- (id)whereColumn:(id)column greaterThanOrEqualTo:(id)to;
- (id)whereColumn:(id)column inValues:(id)values;
- (id)whereColumn:(id)column lessThan:(id)than;
- (id)whereColumn:(id)column lessThanOrEqualTo:(id)to;
- (id)whereColumn:(id)column like:(id)like;
- (id)whereColumn:(id)column notEqualTo:(id)to;
- (id)whereColumn:(id)column notInValues:(id)values;
@end

@implementation PFSQLitePredicateBuilder

+ (id)builder
{
  v2 = objc_alloc_init(self);

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

- (id)whereColumn:(id)column equalTo:(id)to
{
  v5 = [PFSQLitePredicate predicateWithColumn:column operatorType:0 value:to];
  [(NSMutableOrderedSet *)self->_predicates addObject:v5];

  return self;
}

- (id)whereColumn:(id)column notEqualTo:(id)to
{
  objc_storeStrong(&self->_lastColumn, column);
  columnCopy = column;
  toCopy = to;
  v9 = [PFSQLitePredicate predicateWithColumn:columnCopy operatorType:1 value:toCopy];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)column lessThan:(id)than
{
  objc_storeStrong(&self->_lastColumn, column);
  columnCopy = column;
  thanCopy = than;
  v9 = [PFSQLitePredicate predicateWithColumn:columnCopy operatorType:2 value:thanCopy];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)column lessThanOrEqualTo:(id)to
{
  objc_storeStrong(&self->_lastColumn, column);
  columnCopy = column;
  toCopy = to;
  v9 = [PFSQLitePredicate predicateWithColumn:columnCopy operatorType:3 value:toCopy];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)column greaterThan:(id)than
{
  objc_storeStrong(&self->_lastColumn, column);
  columnCopy = column;
  thanCopy = than;
  v9 = [PFSQLitePredicate predicateWithColumn:columnCopy operatorType:4 value:thanCopy];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)column greaterThanOrEqualTo:(id)to
{
  objc_storeStrong(&self->_lastColumn, column);
  columnCopy = column;
  toCopy = to;
  v9 = [PFSQLitePredicate predicateWithColumn:columnCopy operatorType:5 value:toCopy];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)whereColumn:(id)column inValues:(id)values
{
  objc_storeStrong(&self->_lastColumn, column);
  columnCopy = column;
  valuesCopy = values;
  bs_array = [valuesCopy bs_array];

  v10 = [PFSQLitePredicate predicateWithColumn:columnCopy operatorType:6 value:bs_array];

  [(NSMutableOrderedSet *)self->_predicates addObject:v10];
  return self;
}

- (id)whereColumn:(id)column notInValues:(id)values
{
  objc_storeStrong(&self->_lastColumn, column);
  columnCopy = column;
  valuesCopy = values;
  bs_array = [valuesCopy bs_array];

  v10 = [PFSQLitePredicate predicateWithColumn:columnCopy operatorType:7 value:bs_array];

  [(NSMutableOrderedSet *)self->_predicates addObject:v10];
  return self;
}

- (id)whereColumn:(id)column like:(id)like
{
  objc_storeStrong(&self->_lastColumn, column);
  columnCopy = column;
  likeCopy = like;
  v9 = [PFSQLitePredicate predicateWithColumn:columnCopy operatorType:8 value:likeCopy];

  [(NSMutableOrderedSet *)self->_predicates addObject:v9];
  return self;
}

- (id)andPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = +[PFSQLitePredicateBuilder builder];
  predicateCopy[2](predicateCopy, v5);

  buildAndPredicate = [v5 buildAndPredicate];
  if (buildAndPredicate)
  {
    [(NSMutableOrderedSet *)self->_predicates addObject:buildAndPredicate];
  }

  return self;
}

- (id)orPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = +[PFSQLitePredicateBuilder builder];
  predicateCopy[2](predicateCopy, v5);

  buildOrPredicate = [v5 buildOrPredicate];
  if (buildOrPredicate)
  {
    [(NSMutableOrderedSet *)self->_predicates addObject:buildOrPredicate];
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
      firstObject = [(NSMutableOrderedSet *)self->_predicates firstObject];
    }

    else
    {
      array = [(NSMutableOrderedSet *)self->_predicates array];
      firstObject = [PFSQLitePredicate orPredicateWithPredicates:array];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)buildAndPredicate
{
  v3 = [(NSMutableOrderedSet *)self->_predicates count];
  if (v3)
  {
    if (v3 == 1)
    {
      firstObject = [(NSMutableOrderedSet *)self->_predicates firstObject];
    }

    else
    {
      array = [(NSMutableOrderedSet *)self->_predicates array];
      firstObject = [PFSQLitePredicate andPredicateWithPredicates:array];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end