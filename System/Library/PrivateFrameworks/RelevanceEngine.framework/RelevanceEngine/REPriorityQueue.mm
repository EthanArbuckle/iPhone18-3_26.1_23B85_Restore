@interface REPriorityQueue
- (BOOL)isEqual:(id)equal;
- (NSArray)allObjects;
- (REPriorityQueue)initWithComparator:(id)comparator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)minimumObject;
- (void)dealloc;
@end

@implementation REPriorityQueue

- (REPriorityQueue)initWithComparator:(id)comparator
{
  comparatorCopy = comparator;
  v11.receiver = self;
  v11.super_class = REPriorityQueue;
  v5 = [(REPriorityQueue *)&v11 init];
  if (v5)
  {
    v6 = [comparatorCopy copy];
    comparator = v5->_comparator;
    v5->_comparator = v6;

    v8 = v5->_comparator;
    compareContext.version = 0;
    compareContext.info = v8;
    compareContext.retain = REPriorityQueueRetain;
    compareContext.release = REPriorityQueueRelease;
    compareContext.copyDescription = REPriorityQueueCopyDescription;
    v5->_binaryHeap = CFBinaryHeapCreate(0, 0, &kREPriorityQueueCallbacks, &compareContext);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(REPriorityQueue *)self count];
      if (v6 == [(REPriorityQueue *)v5 count])
      {
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 1;
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __27__REPriorityQueue_isEqual___block_invoke;
        v9[3] = &unk_2785FD6D0;
        v11 = &v12;
        v10 = v5;
        [(REPriorityQueue *)self enumerateObjects:v9];
        v7 = *(v13 + 24);

        _Block_object_dispose(&v12, 8);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t __27__REPriorityQueue_isEqual___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24) == 1)
  {
    result = [*(a1 + 32) containsObject:a2];
    v2 = *(*(a1 + 40) + 8);
  }

  else
  {
    result = 0;
  }

  *(v2 + 24) = result;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[REPriorityQueue allocWithZone:?], "initWithComparator:", self->_comparator];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__REPriorityQueue_copyWithZone___block_invoke;
  v7[3] = &unk_2785FA0E0;
  v5 = v4;
  v8 = v5;
  [(REPriorityQueue *)self enumerateObjects:v7];

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_binaryHeap);
  v3.receiver = self;
  v3.super_class = REPriorityQueue;
  [(REPriorityQueue *)&v3 dealloc];
}

- (id)description
{
  v2 = CFCopyDescription(self->_binaryHeap);

  return v2;
}

- (NSArray)allObjects
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[REPriorityQueue count](self, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__REPriorityQueue_allObjects__block_invoke;
  v7[3] = &unk_2785FA0E0;
  v8 = v3;
  v4 = v3;
  [(REPriorityQueue *)self enumerateObjects:v7];
  v5 = [v4 copy];

  return v5;
}

- (id)minimumObject
{
  v3 = [(REPriorityQueue *)self count];
  if (v3)
  {
    v3 = CFBinaryHeapGetMinimum(self->_binaryHeap);
  }

  return v3;
}

@end