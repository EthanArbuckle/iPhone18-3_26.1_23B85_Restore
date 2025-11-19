@interface PFTPriorityQueueingStrategy
@end

@implementation PFTPriorityQueueingStrategy

BOOL __64___PFTPriorityQueueingStrategy__insertionIndexForObject_buffer___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 priorityComparator];
  v6 = (v5)[2](v5, v4, *(a1 + 40));

  return v6 == 1;
}

@end