@interface PLSortedChangedObjects
- (PLSortedChangedObjects)initWithChangedObjects:(id)objects;
- (void)dealloc;
@end

@implementation PLSortedChangedObjects

- (void)dealloc
{
  free(self->_sortedObjectPointers);
  v3.receiver = self;
  v3.super_class = PLSortedChangedObjects;
  [(PLSortedChangedObjects *)&v3 dealloc];
}

- (PLSortedChangedObjects)initWithChangedObjects:(id)objects
{
  objectsCopy = objects;
  v10.receiver = self;
  v10.super_class = PLSortedChangedObjects;
  v6 = [(PLSortedChangedObjects *)&v10 init];
  if (v6)
  {
    v7 = [objectsCopy count];
    v6->_count = v7;
    objc_storeStrong(&v6->_changedObjects, objects);
    v8 = malloc_type_calloc(v7, 8uLL, 0x80040B8603338uLL);
    v6->_sortedObjectPointers = v8;
    [objectsCopy getObjects:v8 range:{0, v7}];
    qsort(v6->_sortedObjectPointers, v7, 8uLL, _pointerComparator);
  }

  return v6;
}

@end