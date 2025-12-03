@interface VKRouteContextObserverThunk
- (VKRouteContextObserverThunk)initWithRouteContext:(id)context transitSupport:(void *)support;
- (id).cxx_construct;
- (void)dealloc;
- (void)routeContextStateDidChange:(id)change;
@end

@implementation VKRouteContextObserverThunk

- (id).cxx_construct
{
  *(self + 2) = &unk_1F2A580E8;
  *(self + 3) = 0;
  return self;
}

- (void)routeContextStateDidChange:(id)change
{
  v5[4] = *MEMORY[0x1E69E9840];
  transitSupport = self->_transitSupport;
  v4 = *(transitSupport + 2);
  v5[0] = &unk_1F2A1BD00;
  v5[1] = transitSupport;
  v5[3] = v5;
  md::LabelManager::queueCommand(v4, 43, 1, v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
}

- (void)dealloc
{
  [(VKRouteContext *)self->_routeContext._obj removeObserver:self withType:0];
  v3.receiver = self;
  v3.super_class = VKRouteContextObserverThunk;
  [(VKRouteContextObserverThunk *)&v3 dealloc];
}

- (VKRouteContextObserverThunk)initWithRouteContext:(id)context transitSupport:(void *)support
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = VKRouteContextObserverThunk;
  v7 = [(VKRouteContextObserverThunk *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_transitSupport = support;
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v7->_routeContext, contextCopy);
    [(VKRouteContext *)v8->_routeContext._obj addObserver:v8 withType:0];
  }

  return v8;
}

@end