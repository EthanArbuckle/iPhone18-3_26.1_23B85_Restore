@interface _SCRCStackNode
- (_SCRCStackNode)prev;
@end

@implementation _SCRCStackNode

- (_SCRCStackNode)prev
{
  WeakRetained = objc_loadWeakRetained(&self->_prev);

  return WeakRetained;
}

@end