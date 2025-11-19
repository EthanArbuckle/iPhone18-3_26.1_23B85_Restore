@interface _TVApplicationInspector
- (NSHashTable)highlightViews;
- (TVApplicationController)applicationController;
- (_TVApplicationInspector)initWithApplicationController:(id)a3;
- (_TVInspectorCapturingView)capturingView;
- (id)_highlightViewForElement:(id)a3 contentColor:(id)a4 borderColor:(id)a5;
- (id)rootView;
- (void)cancelHighlight;
- (void)capturingView:(id)a3 didCaptureTapOnView:(id)a4;
- (void)highlightViewElements:(id)a3 contentColor:(id)a4 borderColor:(id)a5;
- (void)setInspectionModeEnabled:(BOOL)a3;
@end

@implementation _TVApplicationInspector

- (_TVApplicationInspector)initWithApplicationController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _TVApplicationInspector;
  v5 = [(_TVApplicationInspector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_applicationController, v4);
    v6->_inspectionModeEnabled = 0;
  }

  return v6;
}

- (NSHashTable)highlightViews
{
  highlightViews = self->_highlightViews;
  if (!highlightViews)
  {
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v5 = self->_highlightViews;
    self->_highlightViews = v4;

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
  v3 = [(_TVApplicationInspector *)self applicationController];
  v4 = [v3 keyTraitEnvironment];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [v3 keyTraitEnvironment];
  v7 = v6;
  if (isKindOfClass)
  {
    v8 = [v6 view];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v3 keyTraitEnvironment];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [(_TVApplicationInspector *)self applicationController];
    v12 = [v11 navigationController];
    v13 = [v12 view];
    v10 = [v13 window];
  }

  return v10;
}

- (void)setInspectionModeEnabled:(BOOL)a3
{
  if (self->_inspectionModeEnabled != a3)
  {
    self->_inspectionModeEnabled = a3;
    if (a3)
    {
      v7 = [(_TVApplicationInspector *)self rootView];
      v5 = [(_TVApplicationInspector *)self capturingView];
      [v7 bounds];
      [v5 setFrame:?];

      v6 = [(_TVApplicationInspector *)self capturingView];
      [v7 addSubview:v6];
    }

    else
    {
      v7 = [(_TVApplicationInspector *)self capturingView];
      [v7 removeFromSuperview];
    }
  }
}

- (void)capturingView:(id)a3 didCaptureTapOnView:(id)a4
{
  v5 = [MEMORY[0x277D1B128] tv_approximateViewElementForView:a4];
  if (v5)
  {
    v8 = v5;
    v6 = [(_TVApplicationInspector *)self applicationController];
    v7 = [v6 _appContext];
    [v7 inspectElement:v8];

    [(_TVApplicationInspector *)self setInspectionModeEnabled:0];
    v5 = v8;
  }
}

- (void)highlightViewElements:(id)a3 contentColor:(id)a4 borderColor:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(_TVApplicationInspector *)self cancelHighlight];
  v11 = [(_TVApplicationInspector *)self highlightViews];
  [v11 removeAllObjects];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v8;
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
        v19 = [(_TVApplicationInspector *)self _highlightViewForElement:v18 contentColor:v9 borderColor:v10, v22, v23];
        if (v19)
        {
          v20 = [(_TVApplicationInspector *)self highlightViews];
          [v20 addObject:v19];
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
  v2 = [(_TVApplicationInspector *)self highlightViews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_highlightViewForElement:(id)a3 contentColor:(id)a4 borderColor:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 tv_proxyView];
  v11 = [v10 window];
  if (!v11 || ([v10 isHidden] & 1) != 0)
  {

LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  [v10 alpha];
  v15 = v14;

  if (v15 <= 0.0)
  {
    goto LABEL_4;
  }

  v47 = v10;
  v16 = [_TVInspectorHighlightView alloc];
  v17 = [(_TVInspectorHighlightView *)v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v49 = v8;
  [(_TVInspectorHighlightView *)v17 setContentColor:v8];
  v46 = v17;
  v48 = v9;
  [(_TVInspectorHighlightView *)v17 setBorderColor:v9];
  v18 = objc_alloc(MEMORY[0x277CCAB48]);
  v19 = [v7 elementName];
  v20 = [v18 initWithString:v19];

  v21 = *MEMORY[0x277D740A8];
  v22 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:15.0 weight:0.0];
  v23 = [v20 string];
  [v20 addAttribute:v21 value:v22 range:{0, objc_msgSend(v23, "length")}];

  v24 = *MEMORY[0x277D740C0];
  v25 = [MEMORY[0x277D75348] systemDarkPinkColor];
  v26 = [v20 string];
  [v20 addAttribute:v24 value:v25 range:{0, objc_msgSend(v26, "length")}];

  v27 = [v7 attributes];
  v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277D1AF30]];

  if ([v28 length])
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%@", v28];
    v30 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v29];
    v31 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:15.0 weight:0.0];
    [v30 addAttribute:v21 value:v31 range:{0, objc_msgSend(v29, "length")}];

    v32 = [MEMORY[0x277D75348] systemBlueColor];
    [v30 addAttribute:v24 value:v32 range:{0, objc_msgSend(v29, "length")}];

    [v20 appendAttributedString:v30];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = v7;
  v33 = [v7 attributes];
  v34 = [v33 objectForKeyedSubscript:*MEMORY[0x277D1AF20]];
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

        v43 = [MEMORY[0x277D75348] systemDarkPinkColor];
        [v41 addAttribute:v24 value:v43 range:{0, 1}];

        v44 = [MEMORY[0x277D75348] systemRedColor];
        [v41 addAttribute:v24 value:v44 range:{1, objc_msgSend(v40, "length") - 1}];

        [v20 appendAttributedString:v41];
      }

      v37 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v37);
  }

  v12 = v46;
  v45 = [(_TVInspectorHighlightView *)v46 descriptionLabel];
  [v45 setAttributedText:v20];

  v10 = v47;
  [(_TVInspectorHighlightView *)v46 highlightView:v47];

  v8 = v49;
  v7 = v50;
  v9 = v48;
LABEL_5:

  return v12;
}

- (TVApplicationController)applicationController
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationController);

  return WeakRetained;
}

@end