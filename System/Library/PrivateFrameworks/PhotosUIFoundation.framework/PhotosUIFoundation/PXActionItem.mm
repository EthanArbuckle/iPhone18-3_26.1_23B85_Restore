@interface PXActionItem
- (PXActionItem)initWithTitle:(id)title systemImageName:(id)name role:(unint64_t)role state:(int64_t)state wantsDisclosureButton:(BOOL)button handler:(id)handler;
- (void)performAction:(id)action presentationSource:(id)source;
@end

@implementation PXActionItem

- (void)performAction:(id)action presentationSource:(id)source
{
  v4 = [(PXActionItem *)self handler:action];
  v4[2]();
}

- (PXActionItem)initWithTitle:(id)title systemImageName:(id)name role:(unint64_t)role state:(int64_t)state wantsDisclosureButton:(BOOL)button handler:(id)handler
{
  titleCopy = title;
  nameCopy = name;
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = PXActionItem;
  v17 = [(PXActionItem *)&v25 init];
  if (v17)
  {
    v18 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [nameCopy copy];
    systemImageName = v17->_systemImageName;
    v17->_systemImageName = v20;

    v17->_role = role;
    v17->_state = state;
    v17->_wantsDisclosureButton = button;
    v22 = [handlerCopy copy];
    handler = v17->_handler;
    v17->_handler = v22;
  }

  return v17;
}

@end