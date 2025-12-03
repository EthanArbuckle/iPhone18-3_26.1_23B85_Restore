@interface NSOrderedSet
- (id)arrayByIntersectingWithOrderedSet:(id)set;
- (id)arrayBySubtractingOrderedSet:(id)set;
@end

@implementation NSOrderedSet

- (id)arrayBySubtractingOrderedSet:(id)set
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014F30;
  v8[3] = &unk_1000EDD18;
  setCopy = set;
  v4 = setCopy;
  v5 = [(NSOrderedSet *)self indexesOfObjectsPassingTest:v8];
  v6 = [(NSOrderedSet *)self objectsAtIndexes:v5];

  return v6;
}

- (id)arrayByIntersectingWithOrderedSet:(id)set
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015024;
  v8[3] = &unk_1000EDD18;
  setCopy = set;
  v4 = setCopy;
  v5 = [(NSOrderedSet *)self indexesOfObjectsPassingTest:v8];
  v6 = [(NSOrderedSet *)self objectsAtIndexes:v5];

  return v6;
}

@end