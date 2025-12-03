@interface PRComplicationDragInteraction
- (PRComplicationDragInteraction)initWithDelegate:(id)delegate complicationDescriptor:(id)descriptor;
@end

@implementation PRComplicationDragInteraction

- (PRComplicationDragInteraction)initWithDelegate:(id)delegate complicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = PRComplicationDragInteraction;
  v8 = [(UIDragInteraction *)&v11 initWithDelegate:delegate];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_complicationDescriptor, descriptor);
  }

  return v9;
}

@end