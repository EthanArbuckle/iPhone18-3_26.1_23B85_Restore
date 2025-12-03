@interface TSCEReferenceSetWrapper
- (TSCEReferenceSetWrapper)initWithDependencyTracker:(id)tracker;
- (TSCEReferenceSetWrapper)initWithReferenceSet:(const void *)set;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)insertRefs:(id)refs;
@end

@implementation TSCEReferenceSetWrapper

- (TSCEReferenceSetWrapper)initWithDependencyTracker:(id)tracker
{
  trackerCopy = tracker;
  v6.receiver = self;
  v6.super_class = TSCEReferenceSetWrapper;
  if ([(TSCEReferenceSetWrapper *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (TSCEReferenceSetWrapper)initWithReferenceSet:(const void *)set
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEReferenceSetWrapper alloc];
  referenceSet = self->_referenceSet;

  return objc_msgSend_initWithReferenceSet_(v4, v5, referenceSet, v6, v7);
}

- (void)insertRefs:(id)refs
{
  refsCopy = refs;
  if (refsCopy)
  {
    referenceSet = self->_referenceSet;
    v9 = objc_msgSend_referenceSet(refsCopy, v4, v5, v6, v7);
    TSCEReferenceSet::insertRefs(referenceSet, v9);
  }
}

@end