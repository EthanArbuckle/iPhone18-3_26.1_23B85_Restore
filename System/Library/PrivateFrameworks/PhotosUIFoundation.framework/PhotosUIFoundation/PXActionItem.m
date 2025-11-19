@interface PXActionItem
- (PXActionItem)initWithTitle:(id)a3 systemImageName:(id)a4 role:(unint64_t)a5 state:(int64_t)a6 wantsDisclosureButton:(BOOL)a7 handler:(id)a8;
- (void)performAction:(id)a3 presentationSource:(id)a4;
@end

@implementation PXActionItem

- (void)performAction:(id)a3 presentationSource:(id)a4
{
  v4 = [(PXActionItem *)self handler:a3];
  v4[2]();
}

- (PXActionItem)initWithTitle:(id)a3 systemImageName:(id)a4 role:(unint64_t)a5 state:(int64_t)a6 wantsDisclosureButton:(BOOL)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v25.receiver = self;
  v25.super_class = PXActionItem;
  v17 = [(PXActionItem *)&v25 init];
  if (v17)
  {
    v18 = [v14 copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [v15 copy];
    systemImageName = v17->_systemImageName;
    v17->_systemImageName = v20;

    v17->_role = a5;
    v17->_state = a6;
    v17->_wantsDisclosureButton = a7;
    v22 = [v16 copy];
    handler = v17->_handler;
    v17->_handler = v22;
  }

  return v17;
}

@end