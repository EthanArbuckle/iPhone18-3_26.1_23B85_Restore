@interface SXComponentInteraction
- (SXComponentInteraction)initWithComponentView:(id)a3 handler:(id)a4 types:(unint64_t)a5;
- (SXComponentView)componentView;
@end

@implementation SXComponentInteraction

- (SXComponentInteraction)initWithComponentView:(id)a3 handler:(id)a4 types:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SXComponentInteraction;
  v10 = [(SXComponentInteraction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_componentView, v8);
    objc_storeStrong(&v11->_handler, a4);
    v11->_types = a5;
  }

  return v11;
}

- (SXComponentView)componentView
{
  WeakRetained = objc_loadWeakRetained(&self->_componentView);

  return WeakRetained;
}

@end