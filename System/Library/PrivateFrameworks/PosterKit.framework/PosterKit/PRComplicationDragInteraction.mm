@interface PRComplicationDragInteraction
- (PRComplicationDragInteraction)initWithDelegate:(id)a3 complicationDescriptor:(id)a4;
@end

@implementation PRComplicationDragInteraction

- (PRComplicationDragInteraction)initWithDelegate:(id)a3 complicationDescriptor:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PRComplicationDragInteraction;
  v8 = [(UIDragInteraction *)&v11 initWithDelegate:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_complicationDescriptor, a4);
  }

  return v9;
}

@end