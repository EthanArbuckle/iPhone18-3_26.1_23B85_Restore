@interface SSBinaryHeap
- (SSBinaryHeap)initWithComparator:(id)comparator maxCount:(unint64_t)count;
- (void)addObject:(id)object;
- (void)dealloc;
@end

@implementation SSBinaryHeap

- (SSBinaryHeap)initWithComparator:(id)comparator maxCount:(unint64_t)count
{
  comparatorCopy = comparator;
  v11.receiver = self;
  v11.super_class = SSBinaryHeap;
  v7 = [(SSBinaryHeap *)&v11 init];
  if (v7)
  {
    v8 = _Block_copy(comparatorCopy);
    comparator = v7->_comparator;
    v7->_comparator = v8;

    v7->_maxCount = count;
    compareContext.version = 0;
    memset(&compareContext.retain, 0, 24);
    compareContext.info = v7;
    v7->_binaryHeap = CFBinaryHeapCreate(*MEMORY[0x1E695E480], 0, &commonHeapCreate_heapCallbacks, &compareContext);
  }

  return v7;
}

- (void)dealloc
{
  CFRelease(self->_binaryHeap);
  v3.receiver = self;
  v3.super_class = SSBinaryHeap;
  [(SSBinaryHeap *)&v3 dealloc];
}

- (void)addObject:(id)object
{
  CFBinaryHeapAddValue(self->_binaryHeap, object);
  if ([(SSBinaryHeap *)self count]> self->_maxCount)
  {

    [(SSBinaryHeap *)self removeMinimumValue];
  }
}

@end