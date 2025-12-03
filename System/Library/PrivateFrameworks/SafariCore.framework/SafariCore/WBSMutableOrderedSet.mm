@interface WBSMutableOrderedSet
- (BOOL)containsObject:(id)object;
- (NSArray)array;
- (WBSMutableOrderedSet)initWithMaximumCount:(unint64_t)count;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexWithoutAffectingRecency:(unint64_t)recency;
- (void)_moveObjectAtIndexToLast:(unint64_t)last;
- (void)addObject:(id)object;
- (void)markObjectAsRecentlyUsed:(id)used;
@end

@implementation WBSMutableOrderedSet

- (NSArray)array
{
  array = [(NSMutableOrderedSet *)self->_mutableOrderedSet array];
  v3 = [array copy];

  return v3;
}

- (WBSMutableOrderedSet)initWithMaximumCount:(unint64_t)count
{
  v8.receiver = self;
  v8.super_class = WBSMutableOrderedSet;
  v4 = [(WBSMutableOrderedSet *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_maximumCount = count;
    v6 = v4;
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)index
{
  if ([(NSMutableOrderedSet *)self->_mutableOrderedSet count]<= index)
  {
    v5 = 0;
  }

  else
  {
    [(WBSMutableOrderedSet *)self _moveObjectAtIndexToLast:index];
    v5 = [(NSMutableOrderedSet *)self->_mutableOrderedSet objectAtIndex:index];
  }

  return v5;
}

- (id)objectAtIndexWithoutAffectingRecency:(unint64_t)recency
{
  if ([(NSMutableOrderedSet *)self->_mutableOrderedSet count]<= recency)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableOrderedSet *)self->_mutableOrderedSet objectAtIndex:recency];
  }

  return v5;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  mutableOrderedSet = self->_mutableOrderedSet;
  v10 = objectCopy;
  if (!mutableOrderedSet)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_mutableOrderedSet;
    self->_mutableOrderedSet = v6;

    objectCopy = v10;
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

    objectCopy = v10;
  }

  v9 = [(NSMutableOrderedSet *)mutableOrderedSet indexOfObject:objectCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet addObject:v10];
  }

  else
  {
    [(WBSMutableOrderedSet *)self _moveObjectAtIndexToLast:v9];
  }
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v5 = [(NSMutableOrderedSet *)self->_mutableOrderedSet containsObject:objectCopy];
  if (v5)
  {
    [(WBSMutableOrderedSet *)self _moveObjectAtIndexToLast:[(NSMutableOrderedSet *)self->_mutableOrderedSet indexOfObject:objectCopy]];
  }

  return v5;
}

- (void)markObjectAsRecentlyUsed:(id)used
{
  v4 = [(NSMutableOrderedSet *)self->_mutableOrderedSet indexOfObject:used];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(WBSMutableOrderedSet *)self _moveObjectAtIndexToLast:v4];
  }
}

- (void)_moveObjectAtIndexToLast:(unint64_t)last
{
  v5 = [(NSMutableOrderedSet *)self->_mutableOrderedSet count]- 1;
  if (v5 != last)
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:last];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet moveObjectsAtIndexes:v6 toIndex:v5];
  }
}

@end