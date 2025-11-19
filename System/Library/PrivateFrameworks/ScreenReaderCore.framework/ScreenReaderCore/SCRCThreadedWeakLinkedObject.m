@interface SCRCThreadedWeakLinkedObject
- (SCRCThreadedWeakLinkedObject)init;
@end

@implementation SCRCThreadedWeakLinkedObject

- (SCRCThreadedWeakLinkedObject)init
{
  v6.receiver = self;
  v6.super_class = SCRCThreadedWeakLinkedObject;
  v2 = [(SCRCThreadedWeakLinkedObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    releaseLock = v2->_releaseLock;
    v2->_releaseLock = v3;
  }

  return v2;
}

@end