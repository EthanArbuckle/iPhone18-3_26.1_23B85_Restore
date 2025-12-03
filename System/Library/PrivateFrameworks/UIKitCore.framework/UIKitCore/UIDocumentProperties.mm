@interface UIDocumentProperties
- (LPLinkMetadata)metadata;
- (NSURL)_representedURL;
- (UIDocumentProperties)initWithMetadata:(LPLinkMetadata *)metadata;
- (UIDocumentProperties)initWithURL:(NSURL *)url;
- (UINavigationItem)_associatedNavigationItem;
- (_UIDocumentPropertiesHeaderView)headerView;
- (_UIDocumentPropertiesIconView)iconView;
- (id)_headerViewForMenuInteraction:(id)interaction sourceViewProvider:(id)provider;
- (id)_iconView;
- (id)_metadataWrapper;
- (id)_placeholderMetadata;
- (void)_didLoadMetadata:(id)metadata;
- (void)_fetchMetadataIfNecessary:(BOOL)necessary;
- (void)_performBlockAndCallIconRepresentationChangedHandlerIfNecessary:(id)necessary;
- (void)_setAssociatedNavigationItem:(id)item;
- (void)_setMetadata:(id)metadata;
- (void)_setMetadataProvider:(id)provider;
- (void)_updateMetadataInUse;
- (void)dealloc;
- (void)setActivityViewControllerProvider:(void *)activityViewControllerProvider;
- (void)setIconRepresentationAction:(id)action;
- (void)setMetadata:(LPLinkMetadata *)metadata;
- (void)setWantsIconRepresentation:(BOOL)wantsIconRepresentation;
@end

@implementation UIDocumentProperties

- (UIDocumentProperties)initWithURL:(NSURL *)url
{
  v6 = url;
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  v13.receiver = self;
  v13.super_class = UIDocumentProperties;
  v7 = [(UIDocumentProperties *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_url, url);
    v9 = [[_UIDocumentURLChangeObserver alloc] initWithFileURL:v6];
    urlChangeObserver = v8->_urlChangeObserver;
    v8->_urlChangeObserver = v9;
  }

  return v8;
}

- (UIDocumentProperties)initWithMetadata:(LPLinkMetadata *)metadata
{
  v5 = metadata;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"metadata != nil"}];
  }

  v11.receiver = self;
  v11.super_class = UIDocumentProperties;
  v6 = [(UIDocumentProperties *)&v11 init];
  if (v6)
  {
    v7 = [(LPLinkMetadata *)v5 copy];
    v8 = v6->_metadata;
    v6->_metadata = v7;
  }

  return v6;
}

- (void)dealloc
{
  urlChangeObserver = [(UIDocumentProperties *)self urlChangeObserver];
  isObserving = [urlChangeObserver isObserving];

  if (isObserving)
  {
    urlChangeObserver2 = [(UIDocumentProperties *)self urlChangeObserver];
    [urlChangeObserver2 stopObserving];
  }

  v6.receiver = self;
  v6.super_class = UIDocumentProperties;
  [(UIDocumentProperties *)&v6 dealloc];
}

- (void)_didLoadMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [(UIDocumentProperties *)self url];

  if (v4)
  {
    [(UIDocumentProperties *)self _setMetadata:metadataCopy];
  }
}

- (void)_fetchMetadataIfNecessary:(BOOL)necessary
{
  if (necessary)
  {
LABEL_2:
    [(UIDocumentProperties *)self _setMetadataProvider:0];
    v5 = [(UIDocumentProperties *)self url];
    if (!v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:128 description:@"No metadata is provided but also no URL is present. This should never happen."];
    }

    urlChangeObserver = [(UIDocumentProperties *)self urlChangeObserver];
    isObserving = [urlChangeObserver isObserving];

    if ((isObserving & 1) == 0)
    {
      objc_initWeak(location, self);
      urlChangeObserver2 = [(UIDocumentProperties *)self urlChangeObserver];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __50__UIDocumentProperties__fetchMetadataIfNecessary___block_invoke;
      v17[3] = &unk_1E7128FA8;
      objc_copyWeak(&v19, location);
      v18 = v5;
      [urlChangeObserver2 startObservingWithChangeHandler:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(location);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v9 = getLPMetadataProviderClass_softClass;
    v24 = getLPMetadataProviderClass_softClass;
    if (!getLPMetadataProviderClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getLPMetadataProviderClass_block_invoke;
      location[3] = &unk_1E70F2F20;
      location[4] = &v21;
      __getLPMetadataProviderClass_block_invoke(location);
      v9 = v22[3];
    }

    v10 = v9;
    _Block_object_dispose(&v21, 8);
    v11 = objc_alloc_init(v9);
    [(UIDocumentProperties *)self _setMetadataProvider:v11];
    v12 = [(UIDocumentProperties *)self url];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__UIDocumentProperties__fetchMetadataIfNecessary___block_invoke_2;
    v16[3] = &unk_1E7128FD0;
    v16[4] = self;
    [v11 startFetchingMetadataForURL:v12 completionHandler:v16];

    return;
  }

  _metadata = [(UIDocumentProperties *)self _metadata];
  if (!_metadata)
  {
    _metadataProvider = [(UIDocumentProperties *)self _metadataProvider];

    if (_metadataProvider)
    {
      return;
    }

    goto LABEL_2;
  }
}

void __50__UIDocumentProperties__fetchMetadataIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v4 = [WeakRetained url];
    v5 = *(a1 + 32);

    if (v4 == v5)
    {
      [WeakRetained setUrl:v6];
    }
  }

  [WeakRetained _fetchMetadataIfNecessary:1];
}

void __50__UIDocumentProperties__fetchMetadataIfNecessary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v7 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v8 = _UIInternalPreference_UIDocumentHeaderMetadataReloadDelay;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UIDocumentHeaderMetadataReloadDelay)
      {
        while (v7 >= v8)
        {
          _UIInternalPreferenceSync(v7, &_UIInternalPreference_UIDocumentHeaderMetadataReloadDelay, @"UIDocumentHeaderMetadataReloadDelay", _UIInternalPreferenceUpdateInteger);
          v8 = _UIInternalPreference_UIDocumentHeaderMetadataReloadDelay;
          if (v7 == _UIInternalPreference_UIDocumentHeaderMetadataReloadDelay)
          {
            goto LABEL_5;
          }
        }

        v9 = qword_1EA95E7A8;
        if (qword_1EA95E7A8 >= 1)
        {
          v10 = *(__UILogGetCategoryCachedImpl("DocumentProperties", &_UIDocumentPropertiesHeaderPointerRegionShare_block_invoke___s_category) + 8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v14 = v9;
            _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Delaying reload by %d seconds for debugging purposes.", buf, 8u);
          }

          sleep(v9);
        }
      }
    }

LABEL_5:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__UIDocumentProperties__fetchMetadataIfNecessary___block_invoke_24;
    v11[3] = &unk_1E70F35B8;
    v11[4] = *(a1 + 32);
    v12 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (id)_headerViewForMenuInteraction:(id)interaction sourceViewProvider:(id)provider
{
  interactionCopy = interaction;
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_headerView);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_headerView);
  }

  else
  {
    v10 = [_UIDocumentPropertiesHeaderView alloc];
    _metadata = [(UIDocumentProperties *)self _metadata];
    if (_metadata)
    {
      v9 = [(_UIDocumentPropertiesHeaderView *)v10 initWithProperties:self metadata:_metadata menuInteraction:interactionCopy sourceViewProvider:providerCopy];
    }

    else
    {
      _placeholderMetadata = [(UIDocumentProperties *)self _placeholderMetadata];
      v9 = [(_UIDocumentPropertiesHeaderView *)v10 initWithProperties:self metadata:_placeholderMetadata menuInteraction:interactionCopy sourceViewProvider:providerCopy];
    }

    objc_storeWeak(&self->_headerView, v9);
    [(UIDocumentProperties *)self _fetchMetadataIfNecessary:0];
  }

  return v9;
}

- (id)_iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_iconView);
  }

  else
  {
    v5 = [_UIDocumentPropertiesIconView alloc];
    _metadata = [(UIDocumentProperties *)self _metadata];
    if (_metadata)
    {
      v4 = [(_UIDocumentPropertiesIconView *)v5 initWithProperties:self metadata:_metadata];
    }

    else
    {
      _placeholderMetadata = [(UIDocumentProperties *)self _placeholderMetadata];
      v4 = [(_UIDocumentPropertiesIconView *)v5 initWithProperties:self metadata:_placeholderMetadata];
    }

    objc_storeWeak(&self->_iconView, v4);
    [(UIDocumentProperties *)self _fetchMetadataIfNecessary:0];
  }

  return v4;
}

- (NSURL)_representedURL
{
  v3 = [(UIDocumentProperties *)self url];
  v4 = v3;
  if (v3)
  {
    originalURL = v3;
  }

  else
  {
    metadata = [(UIDocumentProperties *)self metadata];
    originalURL = [metadata originalURL];
  }

  return originalURL;
}

- (void)setActivityViewControllerProvider:(void *)activityViewControllerProvider
{
  v4 = [activityViewControllerProvider copy];
  v5 = self->_activityViewControllerProvider;
  self->_activityViewControllerProvider = v4;

  WeakRetained = objc_loadWeakRetained(&self->_headerView);
  [WeakRetained update];
}

- (void)_performBlockAndCallIconRepresentationChangedHandlerIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  wantsIconRepresentation = [(UIDocumentProperties *)self wantsIconRepresentation];
  necessaryCopy[2](necessaryCopy);

  wantsIconRepresentation2 = [(UIDocumentProperties *)self wantsIconRepresentation];
  wantsIconRepresentationChangedHandler = self->__wantsIconRepresentationChangedHandler;
  v8 = wantsIconRepresentation ^ wantsIconRepresentation2;
  if (wantsIconRepresentationChangedHandler)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(wantsIconRepresentationChangedHandler + 2);

    v10();
  }
}

- (void)setWantsIconRepresentation:(BOOL)wantsIconRepresentation
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__UIDocumentProperties_setWantsIconRepresentation___block_invoke;
  v3[3] = &unk_1E70F35E0;
  v3[4] = self;
  v4 = wantsIconRepresentation;
  [(UIDocumentProperties *)self _performBlockAndCallIconRepresentationChangedHandlerIfNecessary:v3];
}

- (void)setIconRepresentationAction:(id)action
{
  actionCopy = action;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__UIDocumentProperties_setIconRepresentationAction___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = actionCopy;
  v5 = actionCopy;
  [(UIDocumentProperties *)self _performBlockAndCallIconRepresentationChangedHandlerIfNecessary:v6];
}

- (void)_setAssociatedNavigationItem:(id)item
{
  v33 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_associatedNavigationItem);
  v6 = WeakRetained;
  if (WeakRetained != itemCopy && itemCopy != 0 && WeakRetained != 0)
  {
    v9 = *(__UILogGetCategoryCachedImpl("UINavigationItem", &_setAssociatedNavigationItem____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v10 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        selfCopy = [v10 stringWithFormat:@"<%@: %p>", v13, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      v15 = MEMORY[0x1E696AEC0];
      v16 = itemCopy;
      v26 = selfCopy;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v15 stringWithFormat:@"<%@: %p>", v18, v16];

      v20 = MEMORY[0x1E696AEC0];
      v21 = v6;
      v22 = v19;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v20 stringWithFormat:@"<%@: %p>", v24, v21];

      *buf = 138412802;
      v28 = selfCopy;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Setting %@ as the documentProperties object on %@ while already associated with %@ will result in the old navigation item's documentProperties to become nil.", buf, 0x20u);
    }

    [v6 setDocumentProperties:0];
  }

  objc_storeWeak(&self->_associatedNavigationItem, itemCopy);
}

- (id)_placeholderMetadata
{
  v4 = [(UIDocumentProperties *)self url];
  if (!v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:250 description:{@"No URL available, unable to create placeholder metadata. This is a UIKit bug."}];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getLPLinkMetadataClass_softClass;
  v14 = getLPLinkMetadataClass_softClass;
  if (!getLPLinkMetadataClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getLPLinkMetadataClass_block_invoke_0;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getLPLinkMetadataClass_block_invoke_0(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = objc_alloc_init(v5);
  [v7 setOriginalURL:v4];
  [v7 setURL:v4];

  return v7;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"metadata != nil"}];
  }

  if (pthread_main_np() != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:265 description:@"Call must be made on main thread"];
  }

  [(UIDocumentProperties *)self _setMetadataProvider:0];
  v6 = [metadataCopy copy];
  objc_storeStrong(&self->_metadata, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__UIDocumentProperties__setMetadata___block_invoke;
  v10[3] = &unk_1E70F3C60;
  v11 = v6;
  selfCopy = self;
  v7 = v6;
  [v7 _loadAsynchronousFieldsWithUpdateHandler:v10];
}

void __37__UIDocumentProperties__setMetadata___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _metadata];

    if (v3 == v4)
    {
      v5 = *(a1 + 40);

      [v5 _updateMetadataInUse];
    }
  }
}

- (void)_updateMetadataInUse
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:289 description:@"Call must be made on main thread"];
  }

  metadata = self->_metadata;
  headerView = [(UIDocumentProperties *)self headerView];
  linkView = [headerView linkView];
  [linkView setMetadata:metadata];

  v7 = self->_metadata;
  iconView = [(UIDocumentProperties *)self iconView];
  [iconView setMetadata:v7];
}

- (void)_setMetadataProvider:(id)provider
{
  providerCopy = provider;
  [(LPMetadataProvider *)self->__metadataProvider cancel];
  metadataProvider = self->__metadataProvider;
  self->__metadataProvider = providerCopy;
}

- (void)setMetadata:(LPLinkMetadata *)metadata
{
  [(UIDocumentProperties *)self _setMetadata:metadata];
  [(UIDocumentProperties *)self _setMetadataProvider:0];
  [(UIDocumentProperties *)self setUrl:0];
  urlChangeObserver = [(UIDocumentProperties *)self urlChangeObserver];
  isObserving = [urlChangeObserver isObserving];

  if (isObserving)
  {
    urlChangeObserver2 = [(UIDocumentProperties *)self urlChangeObserver];
    [urlChangeObserver2 stopObserving];
  }

  [(UIDocumentProperties *)self setUrlChangeObserver:0];
}

- (LPLinkMetadata)metadata
{
  _metadata = [(UIDocumentProperties *)self _metadata];
  v4 = [_metadata copy];
  v5 = v4;
  if (v4)
  {
    _placeholderMetadata = v4;
  }

  else
  {
    _placeholderMetadata = [(UIDocumentProperties *)self _placeholderMetadata];
  }

  v7 = _placeholderMetadata;

  return v7;
}

- (UINavigationItem)_associatedNavigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedNavigationItem);

  return WeakRetained;
}

- (_UIDocumentPropertiesHeaderView)headerView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerView);

  return WeakRetained;
}

- (_UIDocumentPropertiesIconView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (id)_metadataWrapper
{
  metadata = [(UIDocumentProperties *)self metadata];
  if (metadata)
  {
    v3 = objc_alloc_init(_UIDocumentPropertiesMetadata);
    [(_UIDocumentPropertiesMetadata *)v3 setMetadata:metadata];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end