@interface PXFeedConfiguration
- (BOOL)allowsPopOnEmptyBehavior;
- (BOOL)wantsEmbeddedScrollView;
- (PXFeedConfiguration)init;
- (PXFeedConfiguration)initWithDataSourceManagerPromise:(id)promise specManagerPromise:(id)managerPromise itemLayoutFactory:(id)factory;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataSourceManager;
- (id)specManagerWithExtendedTraitCollection:(id)collection;
@end

@implementation PXFeedConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  dataSourceManagerPromise = [(PXFeedConfiguration *)self dataSourceManagerPromise];
  specManagerPromise = [(PXFeedConfiguration *)self specManagerPromise];
  itemLayoutFactory = [(PXFeedConfiguration *)self itemLayoutFactory];
  v8 = [v4 initWithDataSourceManagerPromise:dataSourceManagerPromise specManagerPromise:specManagerPromise itemLayoutFactory:itemLayoutFactory];

  chromeControllerPromise = [(PXFeedConfiguration *)self chromeControllerPromise];
  [v8 setChromeControllerPromise:chromeControllerPromise];

  placeholderFactory = [(PXFeedConfiguration *)self placeholderFactory];
  [v8 setPlaceholderFactory:placeholderFactory];

  actionPerformer = [(PXFeedConfiguration *)self actionPerformer];
  [v8 setActionPerformer:actionPerformer];

  mediaProvider = [(PXFeedConfiguration *)self mediaProvider];
  [v8 setMediaProvider:mediaProvider];

  [v8 setShouldEmbedContentLayout:{-[PXFeedConfiguration shouldEmbedContentLayout](self, "shouldEmbedContentLayout")}];
  visibleRectChangeObserver = [(PXFeedConfiguration *)self visibleRectChangeObserver];
  [v8 setVisibleRectChangeObserver:visibleRectChangeObserver];

  return v8;
}

- (BOOL)allowsPopOnEmptyBehavior
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedConfiguration.m" lineNumber:55 description:{@"Method %s is a responsibility of subclass %@", "-[PXFeedConfiguration allowsPopOnEmptyBehavior]", v6}];

  abort();
}

- (BOOL)wantsEmbeddedScrollView
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedConfiguration.m" lineNumber:51 description:{@"Method %s is a responsibility of subclass %@", "-[PXFeedConfiguration wantsEmbeddedScrollView]", v6}];

  abort();
}

- (id)specManagerWithExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  specManagerPromise = [(PXFeedConfiguration *)self specManagerPromise];
  v6 = (specManagerPromise)[2](specManagerPromise, self, collectionCopy);

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PXFeedConfiguration_specManagerWithExtendedTraitCollection___block_invoke;
  v9[3] = &unk_1E773A180;
  v7 = v6;
  v10 = v7;
  [(PXFeedConfiguration *)self setSpecManagerPromise:v9];

  return v7;
}

- (id)dataSourceManager
{
  dataSourceManagerPromise = [(PXFeedConfiguration *)self dataSourceManagerPromise];
  v4 = (dataSourceManagerPromise)[2](dataSourceManagerPromise, self);

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PXFeedConfiguration_dataSourceManager__block_invoke;
  v7[3] = &unk_1E773A158;
  v5 = v4;
  v8 = v5;
  [(PXFeedConfiguration *)self setDataSourceManagerPromise:v7];

  return v5;
}

- (PXFeedConfiguration)initWithDataSourceManagerPromise:(id)promise specManagerPromise:(id)managerPromise itemLayoutFactory:(id)factory
{
  promiseCopy = promise;
  managerPromiseCopy = managerPromise;
  factoryCopy = factory;
  v17.receiver = self;
  v17.super_class = PXFeedConfiguration;
  v11 = [(PXFeedConfiguration *)&v17 init];
  if (v11)
  {
    v12 = [promiseCopy copy];
    dataSourceManagerPromise = v11->_dataSourceManagerPromise;
    v11->_dataSourceManagerPromise = v12;

    v14 = [managerPromiseCopy copy];
    specManagerPromise = v11->_specManagerPromise;
    v11->_specManagerPromise = v14;

    objc_storeStrong(&v11->_itemLayoutFactory, factory);
  }

  return v11;
}

- (PXFeedConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedConfiguration.m" lineNumber:15 description:{@"%s is not available as initializer", "-[PXFeedConfiguration init]"}];

  abort();
}

@end