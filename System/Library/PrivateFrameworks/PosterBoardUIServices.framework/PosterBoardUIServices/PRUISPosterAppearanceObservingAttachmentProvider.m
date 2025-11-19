@interface PRUISPosterAppearanceObservingAttachmentProvider
- (CGRect)primaryContentTightFrame;
- (PRUISPosterAppearanceObservingAttachmentProvider)initWithPRSConfiguration:(id)a3;
- (PRUISPosterAppearanceObservingAttachmentProvider)initWithPoster:(id)a3;
- (PRUISPosterAttachment)obscurableContentAttachment;
- (PRUISPosterAttachment)overlayContentAttachment;
- (UIView)obscurableContentView;
- (UIView)obscurableOverlayView;
- (UIView)overlayContentView;
- (UIView)vibrantObscurableContentView;
- (id)_currentAppearance;
- (id)_updateContentStyleWithTitleStyleConfiguration:(id)a3 initialAppearance:(id)a4;
- (void)_loadTitleStyleConfigurationIfNeeded;
- (void)applyPosterAppearanceToObserver:(id)a3;
- (void)setPrimaryContentTightFrame:(CGRect)a3;
- (void)updateLayoutForChangedObscuredSubviewBounds;
@end

@implementation PRUISPosterAppearanceObservingAttachmentProvider

- (PRUISPosterAppearanceObservingAttachmentProvider)initWithPRSConfiguration:(id)a3
{
  v4 = MEMORY[0x1E69C52E8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 _path];

  v8 = [v6 _initWithPath:v7];
  v9 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self initWithPoster:v8];

  return v9;
}

- (PRUISPosterAppearanceObservingAttachmentProvider)initWithPoster:(id)a3
{
  v5 = a3;
  v6 = [v5 _path];
  if (([v6 isServerPosterPath] & 1) == 0)
  {
    [(PRUISPosterAppearanceObservingAttachmentProvider *)a2 initWithPoster:?];
  }

  v10.receiver = self;
  v10.super_class = PRUISPosterAppearanceObservingAttachmentProvider;
  v7 = [(PRUISPosterAppearanceObservingAttachmentProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_path, v6);
  }

  return v8;
}

- (UIView)obscurableContentView
{
  obscurableContentContainerView = self->_obscurableContentContainerView;
  if (!obscurableContentContainerView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_obscurableContentContainerView;
    self->_obscurableContentContainerView = v6;

    obscurableContentContainerView = self->_obscurableContentContainerView;
  }

  return obscurableContentContainerView;
}

- (PRUISPosterAttachment)obscurableContentAttachment
{
  obscurableContentContainerView = self->_obscurableContentContainerView;
  if (obscurableContentContainerView)
  {
    v3 = +[PRUISPosterAttachment attachmentWithView:level:](PRUISPosterAttachment, "attachmentWithView:level:", obscurableContentContainerView, [objc_opt_class() obscurableContentAttachmentLevel]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIView)vibrantObscurableContentView
{
  if (!self->_obscurableContentVibrancyView)
  {
    v3 = objc_alloc(MEMORY[0x1E698E818]);
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 bounds];
    v5 = [v3 initWithFrame:?];
    obscurableContentVibrancyView = self->_obscurableContentVibrancyView;
    self->_obscurableContentVibrancyView = v5;

    v7 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self obscurableContentView];
    [v7 addSubview:self->_obscurableContentVibrancyView];

    [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView setAutoresizingMask:18];
  }

  [(PRUISPosterAppearanceObservingAttachmentProvider *)self _loadTitleStyleConfigurationIfNeeded];
  titleStyleConfiguration = self->_titleStyleConfiguration;
  v9 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self _currentAppearance];
  v10 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self _updateContentStyleWithTitleStyleConfiguration:titleStyleConfiguration initialAppearance:v9];

  v11 = self->_obscurableContentVibrancyView;

  return [(BSUIVibrancyEffectView *)v11 contentView];
}

- (UIView)overlayContentView
{
  overlayContentView = self->_overlayContentView;
  if (!overlayContentView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_overlayContentView;
    self->_overlayContentView = v6;

    overlayContentView = self->_overlayContentView;
  }

  return overlayContentView;
}

- (UIView)obscurableOverlayView
{
  v23[4] = *MEMORY[0x1E69E9840];
  obscurableOverlayView = self->_obscurableOverlayView;
  if (!obscurableOverlayView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_obscurableOverlayView;
    self->_obscurableOverlayView = v5;

    v7 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self obscurableContentView];
    [v7 addSubview:self->_obscurableOverlayView];

    v18 = MEMORY[0x1E696ACD8];
    v22 = [(UIView *)self->_obscurableOverlayView widthAnchor];
    v21 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView widthAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v23[0] = v20;
    v19 = [(UIView *)self->_obscurableOverlayView heightAnchor];
    v8 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView heightAnchor];
    v9 = [v19 constraintEqualToAnchor:v8];
    v23[1] = v9;
    v10 = [(UIView *)self->_obscurableOverlayView centerXAnchor];
    v11 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v23[2] = v12;
    v13 = [(UIView *)self->_obscurableOverlayView centerYAnchor];
    v14 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v23[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v18 activateConstraints:v16];

    obscurableOverlayView = self->_obscurableOverlayView;
  }

  return obscurableOverlayView;
}

- (PRUISPosterAttachment)overlayContentAttachment
{
  overlayContentView = self->_overlayContentView;
  if (overlayContentView)
  {
    v3 = +[PRUISPosterAttachment attachmentWithView:level:](PRUISPosterAttachment, "attachmentWithView:level:", overlayContentView, [objc_opt_class() overlayContentAttachmentLevel]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateLayoutForChangedObscuredSubviewBounds
{
  titleStyleConfiguration = self->_titleStyleConfiguration;
  v5 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self _currentAppearance];
  v4 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self _updateContentStyleWithTitleStyleConfiguration:titleStyleConfiguration initialAppearance:v5];
}

- (id)_currentAppearance
{
  currentAppearance = self->_currentAppearance;
  if (currentAppearance)
  {
    v3 = currentAppearance;
    goto LABEL_18;
  }

  [(PRUISPosterAppearanceObservingAttachmentProvider *)self _loadTitleStyleConfigurationIfNeeded];
  v5 = [(PFServerPosterPath *)self->_path serverIdentity];
  v6 = [v5 role];

  if (!self->_titleStyleConfiguration)
  {
    goto LABEL_14;
  }

  v7 = [(PFServerPosterPath *)self->_path serverIdentity];
  v8 = [v7 provider];

  if (!v8)
  {
    v12 = PRUISLogRendering();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterAppearanceObservingAttachmentProvider _currentAppearance];
    }

    goto LABEL_11;
  }

  v9 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v8 error:0];
  v10 = [v9 URL];

  if (!v10)
  {
LABEL_11:
    v13 = PRUISLogRendering();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterAppearanceObservingAttachmentProvider _currentAppearance];
    }

    goto LABEL_14;
  }

  v11 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeFontWithExtensionBundleURL:v10 forRole:v6];

  if (!v11)
  {
LABEL_14:
    v14 = PRUISLogAttachments();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterAppearanceObservingAttachmentProvider _currentAppearance];
    }

    v11 = [MEMORY[0x1E69C5340] defaultTitleFontForRole:v6];
  }

  v15 = [v11 fontWithSize:84.0];

  v16 = objc_alloc(MEMORY[0x1E69C52D0]);
  v17 = objc_alloc(MEMORY[0x1E69C52D8]);
  v18 = [MEMORY[0x1E69DC888] whiteColor];
  v19 = [v17 initWithColor:v18];
  v20 = [v16 initWithFont:v15 labelColor:v19 preferredTitleAlignment:-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self->_titleStyleConfiguration preferredTitleLayout:{"preferredTitleAlignment"), -[PRPosterTitleStyleConfiguration preferredTitleLayout](self->_titleStyleConfiguration, "preferredTitleLayout")}];

  v21 = self->_currentAppearance;
  self->_currentAppearance = v20;
  v22 = v20;

  v3 = self->_currentAppearance;
LABEL_18:

  return v3;
}

- (void)applyPosterAppearanceToObserver:(id)a3
{
  v4 = a3;
  v7 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self _currentAppearance];
  v5 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self _updateContentStyleWithTitleStyleConfiguration:self->_titleStyleConfiguration initialAppearance:v7];
  [v4 posterAppearanceDidChange:v5];

  currentAppearance = self->_currentAppearance;
  self->_currentAppearance = v5;
}

- (void)_loadTitleStyleConfigurationIfNeeded
{
  p_titleStyleConfiguration = &self->_titleStyleConfiguration;
  if (!self->_titleStyleConfiguration)
  {
    v4 = [MEMORY[0x1E69C5320] modelObjectCacheForPath:self->_path];
    v5 = [v4 titleStyleConfiguration];
    if (v5)
    {
      objc_storeStrong(p_titleStyleConfiguration, v5);
      v6 = 0;
    }

    else
    {
      path = self->_path;
      v14 = 0;
      v8 = [MEMORY[0x1E69C5328] loadTitleStyleConfigurationForPath:path error:&v14];
      v6 = v14;
      titleStyleConfiguration = self->_titleStyleConfiguration;
      self->_titleStyleConfiguration = v8;
    }

    if (!*p_titleStyleConfiguration)
    {
      v10 = PRUISLogAttachments();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PRUISPosterAppearanceObservingAttachmentProvider _loadTitleStyleConfigurationIfNeeded];
      }

      v11 = PRUISLogAttachments();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PRUISPosterAppearanceObservingAttachmentProvider _loadTitleStyleConfigurationIfNeeded];
      }

      v12 = objc_alloc_init(MEMORY[0x1E69C5340]);
      v13 = *p_titleStyleConfiguration;
      *p_titleStyleConfiguration = v12;
    }
  }
}

- (id)_updateContentStyleWithTitleStyleConfiguration:(id)a3 initialAppearance:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  obscurableContentVibrancyView = self->_obscurableContentVibrancyView;
  if (obscurableContentVibrancyView)
  {
    v9 = [(BSUIVibrancyEffectView *)obscurableContentVibrancyView contentView];
    [v9 setNeedsLayout];

    v10 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView contentView];
    [v10 layoutIfNeeded];

    [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantContentRenderer clearAllStyles];
    v11 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView contentView];
    v12 = [v11 subviews];

    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v47;
      v21 = v16;
      v22 = v15;
      v23 = v14;
      v24 = v13;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v26 = *(*(&v46 + 1) + 8 * i);
          v53.origin.x = v24;
          v53.origin.y = v23;
          v53.size.width = v22;
          v53.size.height = v21;
          v55.origin.x = v13;
          v55.origin.y = v14;
          v55.size.width = v15;
          v55.size.height = v16;
          v27 = CGRectEqualToRect(v53, v55);
          [v26 frame];
          v32 = v28;
          v33 = v29;
          v34 = v30;
          v35 = v31;
          if (!v27)
          {
            v54.origin.x = v24;
            v54.origin.y = v23;
            v54.size.width = v22;
            v54.size.height = v21;
            *&v28 = CGRectUnion(v54, *&v32);
          }

          v24 = v28;
          v23 = v29;
          v22 = v30;
          v21 = v31;
        }

        v19 = [v17 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v19);
    }

    else
    {
      v21 = v16;
      v22 = v15;
      v23 = v14;
      v24 = v13;
    }

    if (CGRectIsEmpty(self->_primaryContentTightFrame))
    {
      self->_primaryContentTightFrame.origin.x = v24;
      self->_primaryContentTightFrame.origin.y = v23;
      self->_primaryContentTightFrame.size.width = v22;
      self->_primaryContentTightFrame.size.height = v21;
    }

    vibrantContentRenderer = self->_vibrantContentRenderer;
    if (vibrantContentRenderer)
    {
      [(PRPosterContentStyleVibrantContentRenderer *)vibrantContentRenderer setContentBoundingRect:v24, v23, v22, v21];
      [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantContentRenderer setStyleBoundingRect:self->_primaryContentTightFrame.origin.x, self->_primaryContentTightFrame.origin.y, self->_primaryContentTightFrame.size.width, self->_primaryContentTightFrame.size.height];
    }

    else
    {
      v38 = objc_alloc(MEMORY[0x1E69C5300]);
      v39 = self->_obscurableContentVibrancyView;
      v40 = [(BSUIVibrancyEffectView *)v39 contentView];
      v41 = [v38 initWithVibrancyView:v39 contentView:v40 contentBoundingRect:v7 styleBoundingRect:v24 initialAppearance:{v23, v22, v21, self->_primaryContentTightFrame.origin.x, self->_primaryContentTightFrame.origin.y, self->_primaryContentTightFrame.size.width, self->_primaryContentTightFrame.size.height}];
      v42 = self->_vibrantContentRenderer;
      self->_vibrantContentRenderer = v41;
    }

    v43 = [(PFServerPosterPath *)self->_path role];
    v44 = [v6 effectiveTitleContentStyleForRole:v43];
    [v44 applyStyleWithRenderer:self->_vibrantContentRenderer];

    v36 = [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantContentRenderer currentAppearance];
  }

  else
  {
    v36 = v7;
  }

  return v36;
}

- (void)setPrimaryContentTightFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_primaryContentTightFrame, a3))
  {
    self->_primaryContentTightFrame.origin.x = x;
    self->_primaryContentTightFrame.origin.y = y;
    self->_primaryContentTightFrame.size.width = width;
    self->_primaryContentTightFrame.size.height = height;
    titleStyleConfiguration = self->_titleStyleConfiguration;
    if (titleStyleConfiguration)
    {
      vibrantContentRenderer = self->_vibrantContentRenderer;
      if (vibrantContentRenderer)
      {
        v11 = [(PRPosterContentStyleVibrantContentRenderer *)vibrantContentRenderer currentAppearance];
        v10 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self _updateContentStyleWithTitleStyleConfiguration:titleStyleConfiguration initialAppearance:v11];
      }
    }
  }
}

- (CGRect)primaryContentTightFrame
{
  x = self->_primaryContentTightFrame.origin.x;
  y = self->_primaryContentTightFrame.origin.y;
  width = self->_primaryContentTightFrame.size.width;
  height = self->_primaryContentTightFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithPoster:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[path isServerPosterPath]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRUISPosterAppearanceObservingAttachmentProvider.m";
    v16 = 1024;
    v17 = 68;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end