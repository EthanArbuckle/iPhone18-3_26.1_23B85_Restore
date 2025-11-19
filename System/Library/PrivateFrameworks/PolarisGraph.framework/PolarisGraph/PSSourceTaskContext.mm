@interface PSSourceTaskContext
- (PSSourceTaskContext)init;
- (PSSourceTaskContext)initWithResourceHeap:(id)a3;
@end

@implementation PSSourceTaskContext

- (PSSourceTaskContext)init
{
  v6.receiver = self;
  v6.super_class = PSSourceTaskContext;
  v2 = [(PSSourceTaskContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PSResourceHeap);
    resourceHeap = v2->_resourceHeap;
    v2->_resourceHeap = v3;
  }

  return v2;
}

- (PSSourceTaskContext)initWithResourceHeap:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSSourceTaskContext;
  v6 = [(PSSourceTaskContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceHeap, a3);
  }

  return v7;
}

@end