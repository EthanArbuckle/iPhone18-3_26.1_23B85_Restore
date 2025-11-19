@interface _UIDropInteractionWeakWrapper
- (UIDropInteraction)dropInteraction;
- (_UIDropInteractionWeakWrapper)initWithDropInteraction:(id)a3;
@end

@implementation _UIDropInteractionWeakWrapper

- (_UIDropInteractionWeakWrapper)initWithDropInteraction:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIDropInteractionWeakWrapper;
  v5 = [(_UIDropInteractionWeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dropInteraction, v4);
  }

  return v6;
}

- (UIDropInteraction)dropInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_dropInteraction);

  return WeakRetained;
}

@end