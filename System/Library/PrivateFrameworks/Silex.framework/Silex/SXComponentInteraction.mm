@interface SXComponentInteraction
- (SXComponentInteraction)initWithComponentView:(id)view handler:(id)handler types:(unint64_t)types;
- (SXComponentView)componentView;
@end

@implementation SXComponentInteraction

- (SXComponentInteraction)initWithComponentView:(id)view handler:(id)handler types:(unint64_t)types
{
  viewCopy = view;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = SXComponentInteraction;
  v10 = [(SXComponentInteraction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_componentView, viewCopy);
    objc_storeStrong(&v11->_handler, handler);
    v11->_types = types;
  }

  return v11;
}

- (SXComponentView)componentView
{
  WeakRetained = objc_loadWeakRetained(&self->_componentView);

  return WeakRetained;
}

@end