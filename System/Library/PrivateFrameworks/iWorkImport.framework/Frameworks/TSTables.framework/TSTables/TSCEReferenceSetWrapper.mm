@interface TSCEReferenceSetWrapper
- (TSCEReferenceSetWrapper)initWithDependencyTracker:(id)a3;
- (TSCEReferenceSetWrapper)initWithReferenceSet:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)insertRefs:(id)a3;
@end

@implementation TSCEReferenceSetWrapper

- (TSCEReferenceSetWrapper)initWithDependencyTracker:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TSCEReferenceSetWrapper;
  if ([(TSCEReferenceSetWrapper *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (TSCEReferenceSetWrapper)initWithReferenceSet:(const void *)a3
{
  v4.receiver = self;
  v4.super_class = TSCEReferenceSetWrapper;
  if ([(TSCEReferenceSetWrapper *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  referenceSet = self->_referenceSet;
  if (referenceSet)
  {
    (*(*referenceSet + 8))(referenceSet, a2);
  }

  v4.receiver = self;
  v4.super_class = TSCEReferenceSetWrapper;
  [(TSCEReferenceSetWrapper *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCEReferenceSetWrapper alloc];
  referenceSet = self->_referenceSet;

  return objc_msgSend_initWithReferenceSet_(v4, v5, referenceSet, v6, v7);
}

- (void)insertRefs:(id)a3
{
  v10 = a3;
  if (v10)
  {
    referenceSet = self->_referenceSet;
    v9 = objc_msgSend_referenceSet(v10, v4, v5, v6, v7);
    TSCEReferenceSet::insertRefs(referenceSet, v9);
  }
}

@end