@interface _UIDropInteractionWeakWrapper
- (UIDropInteraction)dropInteraction;
- (_UIDropInteractionWeakWrapper)initWithDropInteraction:(id)interaction;
@end

@implementation _UIDropInteractionWeakWrapper

- (_UIDropInteractionWeakWrapper)initWithDropInteraction:(id)interaction
{
  interactionCopy = interaction;
  v8.receiver = self;
  v8.super_class = _UIDropInteractionWeakWrapper;
  v5 = [(_UIDropInteractionWeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dropInteraction, interactionCopy);
  }

  return v6;
}

- (UIDropInteraction)dropInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_dropInteraction);

  return WeakRetained;
}

@end