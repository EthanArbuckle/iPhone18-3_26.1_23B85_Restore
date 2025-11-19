@interface NSArray(SpringBoard)
- (id)sb_arrayByAddingOrMovingObject:()SpringBoard;
- (id)sb_arrayByInsertingOrMovingObject:()SpringBoard toIndex:;
- (id)sb_arrayByRemovingObject:()SpringBoard;
- (id)sb_arrayByRemovingObjects:()SpringBoard;
@end

@implementation NSArray(SpringBoard)

- (id)sb_arrayByInsertingOrMovingObject:()SpringBoard toIndex:
{
  v6 = a3;
  v7 = [a1 mutableCopy];
  v8 = [a1 indexOfObject:v6];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 removeObjectAtIndex:v8];
  }

  [v7 insertObject:v6 atIndex:a4];

  return v7;
}

- (id)sb_arrayByAddingOrMovingObject:()SpringBoard
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  v6 = [a1 indexOfObject:v4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v6];
  }

  [v5 addObject:v4];

  return v5;
}

- (id)sb_arrayByRemovingObject:()SpringBoard
{
  v5 = a3;
  if (!v5)
  {
    [(NSArray(SpringBoard) *)a2 sb_arrayByRemovingObject:a1];
  }

  if ([a1 containsObject:v5])
  {
    v6 = [a1 mutableCopy];
    [v6 removeObject:v5];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (id)sb_arrayByRemovingObjects:()SpringBoard
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [a1 mutableCopy];
    [v5 removeObjectsInArray:v4];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (void)sb_arrayByRemovingObject:()SpringBoard .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSArray+SpringBoard.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"object"}];
}

@end