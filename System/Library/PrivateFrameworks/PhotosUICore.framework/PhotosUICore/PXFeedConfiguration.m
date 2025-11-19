@interface PXFeedConfiguration
- (BOOL)allowsPopOnEmptyBehavior;
- (BOOL)wantsEmbeddedScrollView;
- (PXFeedConfiguration)init;
- (PXFeedConfiguration)initWithDataSourceManagerPromise:(id)a3 specManagerPromise:(id)a4 itemLayoutFactory:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataSourceManager;
- (id)specManagerWithExtendedTraitCollection:(id)a3;
@end

@implementation PXFeedConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PXFeedConfiguration *)self dataSourceManagerPromise];
  v6 = [(PXFeedConfiguration *)self specManagerPromise];
  v7 = [(PXFeedConfiguration *)self itemLayoutFactory];
  v8 = [v4 initWithDataSourceManagerPromise:v5 specManagerPromise:v6 itemLayoutFactory:v7];

  v9 = [(PXFeedConfiguration *)self chromeControllerPromise];
  [v8 setChromeControllerPromise:v9];

  v10 = [(PXFeedConfiguration *)self placeholderFactory];
  [v8 setPlaceholderFactory:v10];

  v11 = [(PXFeedConfiguration *)self actionPerformer];
  [v8 setActionPerformer:v11];

  v12 = [(PXFeedConfiguration *)self mediaProvider];
  [v8 setMediaProvider:v12];

  [v8 setShouldEmbedContentLayout:{-[PXFeedConfiguration shouldEmbedContentLayout](self, "shouldEmbedContentLayout")}];
  v13 = [(PXFeedConfiguration *)self visibleRectChangeObserver];
  [v8 setVisibleRectChangeObserver:v13];

  return v8;
}

- (BOOL)allowsPopOnEmptyBehavior
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedConfiguration.m" lineNumber:55 description:{@"Method %s is a responsibility of subclass %@", "-[PXFeedConfiguration allowsPopOnEmptyBehavior]", v6}];

  abort();
}

- (BOOL)wantsEmbeddedScrollView
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedConfiguration.m" lineNumber:51 description:{@"Method %s is a responsibility of subclass %@", "-[PXFeedConfiguration wantsEmbeddedScrollView]", v6}];

  abort();
}

- (id)specManagerWithExtendedTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedConfiguration *)self specManagerPromise];
  v6 = (v5)[2](v5, self, v4);

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
  v3 = [(PXFeedConfiguration *)self dataSourceManagerPromise];
  v4 = (v3)[2](v3, self);

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PXFeedConfiguration_dataSourceManager__block_invoke;
  v7[3] = &unk_1E773A158;
  v5 = v4;
  v8 = v5;
  [(PXFeedConfiguration *)self setDataSourceManagerPromise:v7];

  return v5;
}

- (PXFeedConfiguration)initWithDataSourceManagerPromise:(id)a3 specManagerPromise:(id)a4 itemLayoutFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PXFeedConfiguration;
  v11 = [(PXFeedConfiguration *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    dataSourceManagerPromise = v11->_dataSourceManagerPromise;
    v11->_dataSourceManagerPromise = v12;

    v14 = [v9 copy];
    specManagerPromise = v11->_specManagerPromise;
    v11->_specManagerPromise = v14;

    objc_storeStrong(&v11->_itemLayoutFactory, a5);
  }

  return v11;
}

- (PXFeedConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedConfiguration.m" lineNumber:15 description:{@"%s is not available as initializer", "-[PXFeedConfiguration init]"}];

  abort();
}

@end