@interface VKCustomFeatureDataSourceObserverThunk
- (VKCustomFeatureDataSourceObserverThunk)initWithDataSource:(id)source observer:(void *)observer;
- (id).cxx_construct;
- (void)clearObserver;
- (void)dataSource:(id)source didChangeSceneID:(unsigned __int8)d;
- (void)dataSource:(id)source didChangeSceneState:(unsigned __int8)state;
- (void)dataSource:(id)source featuresDidChangeForRect:(id)rect;
- (void)dealloc;
- (void)globalFeaturesDidChangeForDataSource:(id)source;
@end

@implementation VKCustomFeatureDataSourceObserverThunk

- (id).cxx_construct
{
  *(self + 2) = &unk_1F2A436A8;
  *(self + 3) = 0;
  return self;
}

- (void)dataSource:(id)source didChangeSceneID:(unsigned __int8)d
{
  v6[2] = *MEMORY[0x1E69E9840];
  observer = self->_observer;
  if (observer)
  {
    v5[0] = &unk_1F2A2C538;
    v5[1] = observer;
    LOBYTE(v6[0]) = d;
    v6[1] = v5;
    memset(v6 + 1, 0, 7);
    md::LabelCustomFeatureProvider::queueCommand(observer, 3, v5);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
  }
}

- (void)dataSource:(id)source didChangeSceneState:(unsigned __int8)state
{
  v6[2] = *MEMORY[0x1E69E9840];
  observer = self->_observer;
  if (observer)
  {
    v5[0] = &unk_1F2A2C4F0;
    v5[1] = observer;
    LOBYTE(v6[0]) = state;
    v6[1] = v5;
    memset(v6 + 1, 0, 7);
    md::LabelCustomFeatureProvider::queueCommand(observer, 2, v5);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
  }
}

- (void)globalFeaturesDidChangeForDataSource:(id)source
{
  v4[4] = *MEMORY[0x1E69E9840];
  observer = self->_observer;
  if (observer)
  {
    v4[0] = &unk_1F2A2C4A8;
    v4[1] = observer;
    v4[3] = v4;
    md::LabelCustomFeatureProvider::queueCommand(observer, 1, v4);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
  }
}

- (void)dataSource:(id)source featuresDidChangeForRect:(id)rect
{
  if (self->_observer)
  {
    operator new();
  }
}

- (void)clearObserver
{
  [(VKCustomFeatureDataSource *)self->_dataSource._obj removeObserver:self];
  obj = self->_dataSource._obj;
  if (obj)
  {
    self->_dataSource._obj = 0;
  }

  self->_observer = 0;
}

- (void)dealloc
{
  [(VKCustomFeatureDataSourceObserverThunk *)self clearObserver];
  v3.receiver = self;
  v3.super_class = VKCustomFeatureDataSourceObserverThunk;
  [(VKCustomFeatureDataSourceObserverThunk *)&v3 dealloc];
}

- (VKCustomFeatureDataSourceObserverThunk)initWithDataSource:(id)source observer:(void *)observer
{
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = VKCustomFeatureDataSourceObserverThunk;
  v7 = [(VKCustomFeatureDataSourceObserverThunk *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_observer = observer;
    v9 = sourceCopy;
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    obj = v8->_dataSource._obj;
    v8->_dataSource._obj = v10;

    [(VKCustomFeatureDataSource *)v8->_dataSource._obj addObserver:v8];
  }

  return v8;
}

@end