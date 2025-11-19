@interface WGWidgetInfo
+ (double)maximumContentHeightForCompactDisplayMode;
+ (id)_productVersion;
+ (id)widgetInfoWithExtension:(id)a3;
+ (void)_updateRowHeightForContentSizeCategory;
- (BOOL)isLinkedOnOrAfterSystemVersion:(id)a3;
- (BOOL)wantsVisibleFrame;
- (CGSize)preferredContentSize;
- (NSString)_sdkVersion;
- (NSString)displayName;
- (WGWidgetInfo)initWithExtension:(id)a3;
- (WGWidgetInfo)widgetInfoWithExtension:(id)a3;
- (double)initialHeight;
- (id)_queue_iconFromWidgetBundleForWidgetWithIdentifier:(id)a3 extension:(id)a4;
- (id)_queue_iconWithOutlineForWidgetWithIdentifier:(id)a3 extension:(id)a4;
- (id)_queue_iconWithSize:(CGSize)a3 scale:(double)a4 forWidgetWithIdentifier:(id)a5 extension:(id)a6;
- (void)_requestIcon:(BOOL)a3 withHandler:(id)a4;
- (void)_resetIcons;
- (void)_resetIconsImpl;
- (void)_setWantsVisibleFrame:(BOOL)a3;
- (void)registerWidgetHost:(id)a3;
- (void)requestIconWithHandler:(id)a3;
- (void)requestSettingsIconWithHandler:(id)a3;
- (void)updatePreferredContentSize:(CGSize)a3 forWidgetHost:(id)a4;
@end

@implementation WGWidgetInfo

+ (id)widgetInfoWithExtension:(id)a3
{
  v4 = a3;
  if ([WGCalendarWidgetInfo isCalendarExtension:v4])
  {
    v5 = WGCalendarWidgetInfo;
  }

  else
  {
    v5 = a1;
  }

  v6 = [[v5 alloc] initWithExtension:v4];

  return v6;
}

+ (void)_updateRowHeightForContentSizeCategory
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WGWidgetRowHeightDidChangeNotification" object:0];
}

+ (double)maximumContentHeightForCompactDisplayMode
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 integerForKey:@"WGAzulWidgetsType"];

  if ((v3 - 1) < 2)
  {
    return 200.0;
  }

  if (v3 == 3)
  {
    return 400.0;
  }

  result = 0.0;
  if (!v3)
  {
    [MEMORY[0x277CD9378] widgetRowHeight];
    return v5 * 2.5;
  }

  return result;
}

+ (id)_productVersion
{
  if (_productVersion_onceToken != -1)
  {
    +[WGWidgetInfo _productVersion];
  }

  v3 = _productVersion___productVersion;

  return v3;
}

uint64_t __31__WGWidgetInfo__productVersion__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = _productVersion___productVersion;
  _productVersion___productVersion = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WGWidgetInfo)initWithExtension:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WGWidgetInfo;
  v6 = [(WGWidgetInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, a3);
    v7->_largestAllowedDisplayMode = 1;
  }

  return v7;
}

- (WGWidgetInfo)widgetInfoWithExtension:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [(WGWidgetInfo *)self extension];
  v8 = [v7 identifier];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    objc_storeStrong(&self->_extension, a3);
    displayName = self->_displayName;
    self->_displayName = 0;

    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)displayName
{
  v22 = *MEMORY[0x277D85DE8];
  displayName = self->_displayName;
  if (!displayName)
  {
    v4 = self->_extension;
    v5 = v4;
    if (v4)
    {
      v6 = [(NSExtension *)v4 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
      if (![v6 length])
      {
        v7 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
          v9 = [(NSExtension *)v5 identifier];
          v18 = 138543618;
          v19 = v9;
          v20 = 2114;
          v21 = @"CFBundleDisplayName";
          _os_log_impl(&dword_27425E000, v8, OS_LOG_TYPE_DEFAULT, "No display name found for identifier (%{public}@): specify a display name with the '%{public}@' key in the widget's Info.plist", &v18, 0x16u);
        }
      }
    }

    else
    {
      v6 = 0;
    }

    if (![v6 length])
    {
      v10 = MEMORY[0x277CC1E60];
      v11 = [(NSExtension *)v5 identifier];
      v12 = WGContainingBundleIdentifierForWidgetWithBundleIdentifier(v11);
      v13 = [v10 applicationProxyForIdentifier:v12];

      v14 = [v13 localizedName];

      v6 = v14;
    }

    if (![v6 length])
    {
      v15 = [(NSExtension *)v5 identifier];

      v6 = v15;
    }

    v16 = self->_displayName;
    self->_displayName = v6;

    displayName = self->_displayName;
  }

  return displayName;
}

- (id)_queue_iconFromWidgetBundleForWidgetWithIdentifier:(id)a3 extension:(id)a4
{
  v5 = a3;
  v6 = a4;
  BSDispatchQueueAssertNotMain();
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1 || ((objc_msgSend(v6, "objectForInfoDictionaryKey:", @"CFBundleIconFilesRightToLeft"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_class(), v9 = v7, !v8) ? (v10 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v10 = 0) : (v10 = v9), v11 = v10, v9, v9, objc_msgSend(v11, "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    v13 = [v6 objectForInfoDictionaryKey:@"CFBundleIcons"];
    v14 = objc_opt_class();
    v15 = v13;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [v17 objectForKey:@"CFBundlePrimaryIcon"];

    v19 = objc_opt_class();
    v20 = v18;
    if (v19)
    {
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v23 = [v22 objectForKey:@"CFBundleIconName"];

    v24 = objc_opt_class();
    v25 = v23;
    if (v24)
    {
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v12 = v26;

    if (!v12)
    {
      v27 = [v6 objectForInfoDictionaryKey:@"CFBundleIconFiles"];
      v28 = objc_opt_class();
      v29 = v27;
      if (v28)
      {
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      v12 = [v31 firstObject];
    }
  }

  if ([v12 length])
  {
    v32 = MEMORY[0x277D755B8];
    v33 = MEMORY[0x277CCA8D8];
    v34 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v5];
    v35 = [v34 bundleURL];
    v36 = [v33 bundleWithURL:v35];
    v37 = [v32 imageNamed:v12 inBundle:v36];
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)_queue_iconWithSize:(CGSize)a3 scale:(double)a4 forWidgetWithIdentifier:(id)a5 extension:(id)a6
{
  height = a3.height;
  width = a3.width;
  v27[1] = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  BSDispatchQueueAssertNotMain();
  if ([v11 hasPrefix:@"com.apple."] && (-[WGWidgetInfo _queue_iconFromWidgetBundleForWidgetWithIdentifier:extension:](self, "_queue_iconFromWidgetBundleForWidgetWithIdentifier:extension:", v11, v12), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = objc_alloc(MEMORY[0x277D1B160]);
    v16 = [v14 CGImage];
    [v14 scale];
    v17 = [v15 initWithCGImage:v16 scale:?];
    v18 = objc_alloc(MEMORY[0x277D1B1A8]);
    v27[0] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v20 = [v18 initWithImages:v19];
  }

  else
  {
    v14 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v11];
    v20 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithResourceProxy:v14];
  }

  v21 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:width scale:{height, a4}];
  v22 = [v20 imageForImageDescriptor:v21];
  v23 = MEMORY[0x277D755B8];
  v24 = [v22 CGImage];
  [v22 scale];
  v25 = [v23 imageWithCGImage:v24 scale:0 orientation:?];

  return v25;
}

- (id)_queue_iconWithOutlineForWidgetWithIdentifier:(id)a3 extension:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertNotMain();
  if ([v6 hasPrefix:@"com.apple."] && (-[WGWidgetInfo _queue_iconFromWidgetBundleForWidgetWithIdentifier:extension:](self, "_queue_iconFromWidgetBundleForWidgetWithIdentifier:extension:", v6, v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = objc_alloc(MEMORY[0x277D1B160]);
    v11 = [v9 CGImage];
    [v9 scale];
    v12 = [v10 initWithCGImage:v11 scale:?];
    v13 = objc_alloc(MEMORY[0x277D1B1A8]);
    v22[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v15 = [v13 initWithImages:v14];
  }

  else
  {
    v9 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v6];
    v15 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithResourceProxy:v9];
  }

  v16 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B230]];
  [v16 setDrawBorder:1];
  v17 = [v15 imageForImageDescriptor:v16];
  v18 = MEMORY[0x277D755B8];
  v19 = [v17 CGImage];
  [v17 scale];
  v20 = [v18 imageWithCGImage:v19 scale:0 orientation:?];

  return v20;
}

- (void)_requestIcon:(BOOL)a3 withHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(WGWidgetInfo *)self widgetIdentifier];
    v8 = [(WGWidgetInfo *)self extension];
    objc_initWeak(&location, self);
    v9 = dispatch_get_global_queue(25, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__WGWidgetInfo__requestIcon_withHandler___block_invoke;
    v12[3] = &unk_279ED0F48;
    objc_copyWeak(&v16, &location);
    v17 = a3;
    v13 = v7;
    v14 = v8;
    v15 = v6;
    v10 = v8;
    v11 = v7;
    dispatch_async(v9, v12);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __41__WGWidgetInfo__requestIcon_withHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B230]];
  v3 = v2;
  if (*(a1 + 64))
  {
    [v2 size];
    v5 = v4;
    v7 = v6;
    [v3 scale];
    [WeakRetained _queue_iconWithSize:*(a1 + 32) scale:*(a1 + 40) forWidgetWithIdentifier:v5 extension:{v7, v8}];
  }

  else
  {
    [WeakRetained _queue_iconWithOutlineForWidgetWithIdentifier:*(a1 + 32) extension:*(a1 + 40)];
  }
  v9 = ;
  (*(*(a1 + 48) + 16))();
}

- (void)requestIconWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WGWidgetInfo *)self _icon];
    if (v5)
    {
      v6 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__WGWidgetInfo_requestIconWithHandler___block_invoke;
      block[3] = &unk_279ED0F70;
      v12 = v4;
      v11 = v5;
      dispatch_async(v6, block);

      v7 = v12;
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __39__WGWidgetInfo_requestIconWithHandler___block_invoke_2;
      v8[3] = &unk_279ED0F98;
      v8[4] = self;
      v9 = v4;
      [(WGWidgetInfo *)self _requestIcon:1 withHandler:v8];
      v7 = v9;
    }
  }
}

void __39__WGWidgetInfo_requestIconWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WGWidgetInfo_requestIconWithHandler___block_invoke_3;
  block[3] = &unk_279ED09F0;
  objc_copyWeak(&v7, &location);
  v4 = v3;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
  (*(*(a1 + 40) + 16))();

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__WGWidgetInfo_requestIconWithHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setIcon:*(a1 + 32)];
}

- (void)requestSettingsIconWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WGWidgetInfo *)self _outlineIcon];
    if (v5)
    {
      v6 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__WGWidgetInfo_requestSettingsIconWithHandler___block_invoke;
      block[3] = &unk_279ED0F70;
      v12 = v4;
      v11 = v5;
      dispatch_async(v6, block);

      v7 = v12;
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47__WGWidgetInfo_requestSettingsIconWithHandler___block_invoke_2;
      v8[3] = &unk_279ED0F98;
      v8[4] = self;
      v9 = v4;
      [(WGWidgetInfo *)self _requestIcon:0 withHandler:v8];
      v7 = v9;
    }
  }
}

void __47__WGWidgetInfo_requestSettingsIconWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WGWidgetInfo_requestSettingsIconWithHandler___block_invoke_3;
  block[3] = &unk_279ED09F0;
  objc_copyWeak(&v7, &location);
  v4 = v3;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
  (*(*(a1 + 40) + 16))();

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __47__WGWidgetInfo_requestSettingsIconWithHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setOutlineIcon:*(a1 + 32)];
}

- (void)_resetIconsImpl
{
  BSDispatchQueueAssertMain();
  [(WGWidgetInfo *)self _setIcon:0];
  [(WGWidgetInfo *)self _setOutlineIcon:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"WGWidgetInfoIconDidInvalidateNotification" object:0];
}

- (void)_resetIcons
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __27__WGWidgetInfo__resetIcons__block_invoke;
  v2[3] = &unk_279ED0AB8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __27__WGWidgetInfo__resetIcons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetIconsImpl];
}

- (NSString)_sdkVersion
{
  sdkVersion = self->_sdkVersion;
  if (!sdkVersion)
  {
    v4 = MEMORY[0x277CC1E60];
    v5 = [(WGWidgetInfo *)self widgetIdentifier];
    v6 = WGContainingBundleIdentifierForWidgetWithBundleIdentifier(v5);
    v7 = [v4 applicationProxyForIdentifier:v6];

    v8 = [v7 sdkVersion];
    v9 = [v8 copy];
    v10 = self->_sdkVersion;
    self->_sdkVersion = v9;

    if (!self->_sdkVersion)
    {
      v11 = [(WGWidgetInfo *)self widgetIdentifier];
      v12 = [v11 hasPrefix:@"com.apple."];

      if (v12)
      {
        v13 = [objc_opt_class() _productVersion];
        v14 = self->_sdkVersion;
        self->_sdkVersion = v13;
      }
    }

    sdkVersion = self->_sdkVersion;
  }

  return sdkVersion;
}

- (BOOL)isLinkedOnOrAfterSystemVersion:(id)a3
{
  v4 = a3;
  v5 = [(WGWidgetInfo *)self _sdkVersion];
  v6 = _WGIsSystemVersionSameOrAfterSystemVersion(v5, v4);

  return v6;
}

- (double)initialHeight
{
  v2 = objc_opt_class();

  [v2 maximumContentHeightForCompactDisplayMode];
  return result;
}

- (BOOL)wantsVisibleFrame
{
  if ((*&self->_widgetInfoFlags & 1) == 0)
  {
    *&self->_widgetInfoFlags |= 1u;
    v3 = [(WGWidgetInfo *)self widgetIdentifier];
    v4 = [v3 hasPrefix:@"com.apple."];
    if (v4)
    {
      LOBYTE(v4) = _WGBoolValueForInfoDictionaryKey(v3, @"NCWidgetWantsVisibleFrame");
    }

    self->_wantsVisibleFrame = v4;
  }

  return self->_wantsVisibleFrame;
}

- (void)_setWantsVisibleFrame:(BOOL)a3
{
  widgetInfoFlags = self->_widgetInfoFlags;
  if (self->_wantsVisibleFrame != a3 || (widgetInfoFlags & 1) == 0)
  {
    *&self->_widgetInfoFlags = widgetInfoFlags | 1;
    self->_wantsVisibleFrame = a3;
  }
}

- (void)registerWidgetHost:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    registeredWidgetHosts = self->_registeredWidgetHosts;
    v9 = v5;
    if (!registeredWidgetHosts)
    {
      v7 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      v8 = self->_registeredWidgetHosts;
      self->_registeredWidgetHosts = v7;

      registeredWidgetHosts = self->_registeredWidgetHosts;
    }

    [(NSPointerArray *)registeredWidgetHosts addPointer:v9];
    [(WGWidgetInfo *)self preferredContentSize];
    v4 = [v9 setPreferredContentSize:?];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)updatePreferredContentSize:(CGSize)a3 forWidgetHost:(id)a4
{
  height = a3.height;
  width = a3.width;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [v7 widgetInfo];

  if (v8 == self)
  {
    [(WGWidgetInfo *)self preferredContentSize];
    v10 = v9;
    v12 = v11;
    [(WGWidgetInfo *)self setPreferredContentSize:width, height];
    if (v10 != width || v12 != height)
    {
      [(NSPointerArray *)self->_registeredWidgetHosts compact];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = self->_registeredWidgetHosts;
      v14 = [(NSPointerArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          v17 = 0;
          do
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v19 + 1) + 8 * v17);
            if (v18 != v7)
            {
              [v18 setPreferredContentSize:{width, height, v19}];
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [(NSPointerArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v15);
      }
    }
  }
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end