@interface SSBinaryHeap
- (SSBinaryHeap)initWithComparator:(id)a3 maxCount:(unint64_t)a4;
- (void)addObject:(id)a3;
- (void)dealloc;
@end

@implementation SSBinaryHeap

- (SSBinaryHeap)initWithComparator:(id)a3 maxCount:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SSBinaryHeap;
  v7 = [(SSBinaryHeap *)&v11 init];
  if (v7)
  {
    v8 = _Block_copy(v6);
    comparator = v7->_comparator;
    v7->_comparator = v8;

    v7->_maxCount = a4;
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

- (void)addObject:(id)a3
{
  CFBinaryHeapAddValue(self->_binaryHeap, a3);
  if ([(SSBinaryHeap *)self count]> self->_maxCount)
  {

    [(SSBinaryHeap *)self removeMinimumValue];
  }
}

@end