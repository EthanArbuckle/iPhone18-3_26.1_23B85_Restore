@interface _TVApplicationInspector
- (NSHashTable)highlightViews;
- (TVApplicationController)applicationController;
- (_TVApplicationInspector)initWithApplicationController:(id)controller;
- (_TVInspectorCapturingView)capturingView;
- (id)_highlightViewForElement:(id)element contentColor:(id)color borderColor:(id)borderColor;
- (id)rootView;
- (void)cancelHighlight;
- (void)capturingView:(id)view didCaptureTapOnView:(id)onView;
- (void)highlightViewElements:(id)elements contentColor:(id)color borderColor:(id)borderColor;
- (void)setInspectionModeEnabled:(BOOL)enabled;
@end

@implementation _TVApplicationInspector

- (_TVApplicationInspector)initWithApplicationController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _TVApplicationInspector;
  v5 = [(_TVApplicationInspector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_applicationController, controllerCopy);
    v6->_inspectionModeEnabled = 0;
  }

  return v6;
}

- (NSHashTable)highlightViews
{
  highlightViews = self->_highlightViews;
  if (!highlightViews)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v5 = self->_highlightViews;
    self->_highlightViews = weakObjectsHashTable;

    highlightViews = self->_highlightViews;
  }

  return highlightViews;
}

- (_TVInspectorCapturingView)capturingView
{
  capturingView = self->_capturingView;
  if (!capturingView)
  {
    v4 = [_TVInspectorCapturingView alloc];
    v5 = [(_TVInspectorCapturingView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_capturingView;
    self->_capturingView = v5;

    [(_TVInspectorCapturingView *)self->_capturingView setDelegate:self];
    capturingView = self->_capturingView;
  }

  return capturingView;
}

- (id)rootView
{
  applicationController = [(_TVApplicationInspector *)self applicationController];
  keyTraitEnvironment = [applicationController keyTraitEnvironment];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  keyTraitEnvironment2 = [applicationController keyTraitEnvironment];
  v7 = keyTraitEnvironment2;
  if (isKindOfClass)
  {
    view = [keyTraitEnvironment2 view];
LABEL_5:
    v9 = view;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [applicationController keyTraitEnvironment];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  if (v9)
  {
    window = v9;
  }

  else
  {
    applicationController2 = [(_TVApplicationInspector *)self applicationController];
    navigationController = [applicationController2 navigationController];
    view2 = [navigationController view];
    window = [view2 window];
  }

  return window;
}

- (void)setInspectionModeEnabled:(BOOL)enabled
{
  if (self->_inspectionModeEnabled != enabled)
  {
    self->_inspectionModeEnabled = enabled;
    if (enabled)
    {
      rootView = [(_TVApplicationInspector *)self rootView];
      capturingView = [(_TVApplicationInspector *)self capturingView];
      [rootView bounds];
      [capturingView setFrame:?];

      capturingView2 = [(_TVApplicationInspector *)self capturingView];
      [rootView addSubview:capturingView2];
    }

    else
    {
      rootView = [(_TVApplicationInspector *)self capturingView];
      [rootView removeFromSuperview];
    }
  }
}

- (void)capturingView:(id)view didCaptureTapOnView:(id)onView
{
  v5 = [MEMORY[0x277D1B128] tv_approximateViewElementForView:onView];
  if (v5)
  {
    v8 = v5;
    applicationController = [(_TVApplicationInspector *)self applicationController];
    _appContext = [applicationController _appContext];
    [_appContext inspectElement:v8];

    [(_TVApplicationInspector *)self setInspectionModeEnabled:0];
    v5 = v8;
  }
}

- (void)highlightViewElements:(id)elements contentColor:(id)color borderColor:(id)borderColor
{
  v30 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  colorCopy = color;
  borderColorCopy = borderColor;
  [(_TVApplicationInspector *)self cancelHighlight];
  highlightViews = [(_TVApplicationInspector *)self highlightViews];
  [highlightViews removeAllObjects];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = elementsCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v24;
    *&v14 = 138412290;
    v22 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [(_TVApplicationInspector *)self _highlightViewForElement:v18 contentColor:colorCopy borderColor:borderColorCopy, v22, v23];
        if (v19)
        {
          highlightViews2 = [(_TVApplicationInspector *)self highlightViews];
          [highlightViews2 addObject:v19];
        }

        else
        {
          [(_TVApplicationInspector *)self cancelHighlight];
          v21 = TVMLKitLogObject;
          if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
          {
            *buf = v22;
            v28 = v18;
            _os_log_debug_impl(&dword_26CD9A000, v21, OS_LOG_TYPE_DEBUG, "Couldn't find view to highlight for %@", buf, 0xCu);
          }
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v15);
  }
}

- (void)cancelHighlight
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  highlightViews = [(_TVApplicationInspector *)self highlightViews];
  v3 = [highlightViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(highlightViews);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [highlightViews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_highlightViewForElement:(id)element contentColor:(id)color borderColor:(id)borderColor
{
  v57 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  colorCopy = color;
  borderColorCopy = borderColor;
  tv_proxyView = [elementCopy tv_proxyView];
  window = [tv_proxyView window];
  if (!window || ([tv_proxyView isHidden] & 1) != 0)
  {

LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  [tv_proxyView alpha];
  v15 = v14;

  if (v15 <= 0.0)
  {
    goto LABEL_4;
  }

  v47 = tv_proxyView;
  v16 = [_TVInspectorHighlightView alloc];
  v17 = [(_TVInspectorHighlightView *)v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v49 = colorCopy;
  [(_TVInspectorHighlightView *)v17 setContentColor:colorCopy];
  v46 = v17;
  v48 = borderColorCopy;
  [(_TVInspectorHighlightView *)v17 setBorderColor:borderColorCopy];
  v18 = objc_alloc(MEMORY[0x277CCAB48]);
  elementName = [elementCopy elementName];
  v20 = [v18 initWithString:elementName];

  v21 = *MEMORY[0x277D740A8];
  v22 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:15.0 weight:0.0];
  string = [v20 string];
  [v20 addAttribute:v21 value:v22 range:{0, objc_msgSend(string, "length")}];

  v24 = *MEMORY[0x277D740C0];
  systemDarkPinkColor = [MEMORY[0x277D75348] systemDarkPinkColor];
  string2 = [v20 string];
  [v20 addAttribute:v24 value:systemDarkPinkColor range:{0, objc_msgSend(string2, "length")}];

  attributes = [elementCopy attributes];
  v28 = [attributes objectForKeyedSubscript:*MEMORY[0x277D1AF30]];

  if ([v28 length])
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%@", v28];
    v30 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v29];
    v31 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:15.0 weight:0.0];
    [v30 addAttribute:v21 value:v31 range:{0, objc_msgSend(v29, "length")}];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v30 addAttribute:v24 value:systemBlueColor range:{0, objc_msgSend(v29, "length")}];

    [v20 appendAttributedString:v30];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = elementCopy;
  attributes2 = [elementCopy attributes];
  v34 = [attributes2 objectForKeyedSubscript:*MEMORY[0x277D1AF20]];
  v35 = [v34 componentsSeparatedByString:@" "];

  obj = v35;
  v36 = [v35 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v53;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@".%@", *(*(&v52 + 1) + 8 * i)];
        v41 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v40];
        v42 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:15.0 weight:0.0];
        [v41 addAttribute:v21 value:v42 range:{0, objc_msgSend(v40, "length")}];

        systemDarkPinkColor2 = [MEMORY[0x277D75348] systemDarkPinkColor];
        [v41 addAttribute:v24 value:systemDarkPinkColor2 range:{0, 1}];

        systemRedColor = [MEMORY[0x277D75348] systemRedColor];
        [v41 addAttribute:v24 value:systemRedColor range:{1, objc_msgSend(v40, "length") - 1}];

        [v20 appendAttributedString:v41];
      }

      v37 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v37);
  }

  v12 = v46;
  descriptionLabel = [(_TVInspectorHighlightView *)v46 descriptionLabel];
  [descriptionLabel setAttributedText:v20];

  tv_proxyView = v47;
  [(_TVInspectorHighlightView *)v46 highlightView:v47];

  colorCopy = v49;
  elementCopy = v50;
  borderColorCopy = v48;
LABEL_5:

  return v12;
}

- (TVApplicationController)applicationController
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationController);

  return WeakRetained;
}

@end