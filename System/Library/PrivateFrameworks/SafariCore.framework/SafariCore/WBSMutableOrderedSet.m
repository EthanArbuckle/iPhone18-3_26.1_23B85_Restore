@interface WBSMutableOrderedSet
- (BOOL)containsObject:(id)a3;
- (NSArray)array;
- (WBSMutableOrderedSet)initWithMaximumCount:(unint64_t)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectAtIndexWithoutAffectingRecency:(unint64_t)a3;
- (void)_moveObjectAtIndexToLast:(unint64_t)a3;
- (void)addObject:(id)a3;
- (void)markObjectAsRecentlyUsed:(id)a3;
@end

@implementation WBSMutableOrderedSet

- (NSArray)array
{
  v2 = [(NSMutableOrderedSet *)self->_mutableOrderedSet array];
  v3 = [v2 copy];

  return v3;
}

- (WBSMutableOrderedSet)initWithMaximumCount:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = WBSMutableOrderedSet;
  v4 = [(WBSMutableOrderedSet *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_maximumCount = a3;
    v6 = v4;
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if ([(NSMutableOrderedSet *)self->_mutableOrderedSet count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    [(WBSMutableOrderedSet *)self _moveObjectAtIndexToLast:a3];
    v5 = [(NSMutableOrderedSet *)self->_mutableOrderedSet objectAtIndex:a3];
  }

  return v5;
}

- (id)objectAtIndexWithoutAffectingRecency:(unint64_t)a3
{
  if ([(NSMutableOrderedSet *)self->_mutableOrderedSet count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableOrderedSet *)self->_mutableOrderedSet objectAtIndex:a3];
  }

  return v5;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  mutableOrderedSet = self->_mutableOrderedSet;
  v10 = v4;
  if (!mutableOrderedSet)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_mutableOrderedSet;
    self->_mutableOrderedSet = v6;

    v4 = v10;
    mutableOrderedSet = self->_mutableOrderedSet;
  }

  if (self->_maximumCount)
  {
    v8 = [(NSMutableOrderedSet *)mutableOrderedSet count];
    mutableOrderedSet = self->_mutableOrderedSet;
    if (v8 > self->_maximumCount)
    {
      [(NSMutableOrderedSet *)mutableOrderedSet removeObjectAtIndex:0];
      mutableOrderedSet = self->_mutableOrderedSet;
    }

    v4 = v10;
  }

  v9 = [(NSMutableOrderedSet *)mutableOrderedSet indexOfObject:v4];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet addObject:v10];
  }

  else
  {
    [(WBSMutableOrderedSet *)self _moveObjectAtIndexToLast:v9];
  }
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableOrderedSet *)self->_mutableOrderedSet containsObject:v4];
  if (v5)
  {
    [(WBSMutableOrderedSet *)self _moveObjectAtIndexToLast:[(NSMutableOrderedSet *)self->_mutableOrderedSet indexOfObject:v4]];
  }

  return v5;
}

- (void)markObjectAsRecentlyUsed:(id)a3
{
  v4 = [(NSMutableOrderedSet *)self->_mutableOrderedSet indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(WBSMutableOrderedSet *)self _moveObjectAtIndexToLast:v4];
  }
}

- (void)_moveObjectAtIndexToLast:(unint64_t)a3
{
  v5 = [(NSMutableOrderedSet *)self->_mutableOrderedSet count]- 1;
  if (v5 != a3)
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet moveObjectsAtIndexes:v6 toIndex:v5];
  }
}

@end