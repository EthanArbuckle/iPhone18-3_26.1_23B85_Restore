@interface VFXWeakPointer
- (id)weakRef;
@end

@implementation VFXWeakPointer

- (id)weakRef
{
  WeakRetained = objc_loadWeakRetained(&self->weakRef);

  return WeakRetained;
}

@end