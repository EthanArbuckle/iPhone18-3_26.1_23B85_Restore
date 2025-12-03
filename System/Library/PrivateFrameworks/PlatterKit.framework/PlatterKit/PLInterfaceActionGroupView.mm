@interface PLInterfaceActionGroupView
+ (void)initialize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)actions;
- (PLInterfaceActionGroupView)initWithFrame:(CGRect)frame;
- (id)_newInterfaceActionGroupViewWithActions:(id)actions;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_updateStylingOfInterfaceActionGroupView:(id)view;
- (void)layoutSubviews;
- (void)setActions:(id)actions;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation PLInterfaceActionGroupView

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {

    PLRegisterPlatterKitLogging();
  }
}

- (PLInterfaceActionGroupView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PLInterfaceActionGroupView;
  v3 = [(PLInterfaceActionGroupView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLInterfaceActionGroupView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (NSArray)actions
{
  actionGroup = [(UIInterfaceActionGroupView *)self->_actionsGroupView actionGroup];
  actions = [actionGroup actions];

  return actions;
}

- (void)_updateStylingOfInterfaceActionGroupView:(id)view
{
  v28 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = [(PLInterfaceActionGroupView *)self visualStylingProviderForCategory:1];
  v6 = [v5 _visualStylingForStyle:0];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  actionGroup = [viewCopy actionGroup];
  actions = [actionGroup actions];

  v9 = [actions countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(actions);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 type] != 2)
        {
          color = [v6 color];
          [v13 _setTitleTextColor:color];
        }
      }

      v10 = [actions countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v15 = [(PLInterfaceActionGroupView *)self visualStylingProviderForCategory:2];
  v16 = [v15 _visualStylingForStyle:5];
  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277D75630]);
    composedFilter = [v16 composedFilter];
    v19 = composedFilter;
    if (composedFilter)
    {
      v26 = composedFilter;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [v17 setFilters:v20];
    }

    else if (os_log_type_enabled(PLLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [PLInterfaceActionGroupView _updateStylingOfInterfaceActionGroupView:];
    }

    color2 = [v16 color];
    [v17 setBackgroundColor:color2];

    [v16 alpha];
    [v17 setOpacity:?];
    [viewCopy _setVisualStyleOverrideSeparatorAttributes:v17];
  }

  else if (os_log_type_enabled(PLLogGeneral, OS_LOG_TYPE_ERROR))
  {
    [PLInterfaceActionGroupView _updateStylingOfInterfaceActionGroupView:];
  }
}

- (id)_newInterfaceActionGroupViewWithActions:(id)actions
{
  v4 = [MEMORY[0x277D75620] actionGroupWithActions:actions];
  v5 = [objc_alloc(MEMORY[0x277D75628]) initWithActionGroup:v4 actionHandlerInvocationDelegate:0];
  [v5 setPresentationStyle:2];
  [(PLInterfaceActionGroupView *)self _updateStylingOfInterfaceActionGroupView:v5];
  [v5 _setDrawsBackground:0];
  [v5 _setSelectionHighlightContinuousCornerRadius:self->_cornerRadius];

  return v5;
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  actions = [(PLInterfaceActionGroupView *)self actions];
  v5 = [actionsCopy isEqualToArray:actions];

  if ((v5 & 1) == 0)
  {
    [(UIInterfaceActionGroupView *)self->_actionsGroupView removeFromSuperview];
    v6 = [(PLInterfaceActionGroupView *)self _newInterfaceActionGroupViewWithActions:actionsCopy];
    actionsGroupView = self->_actionsGroupView;
    self->_actionsGroupView = v6;

    [(PLInterfaceActionGroupView *)self addSubview:self->_actionsGroupView];
    self->_actionsDirty = 1;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIInterfaceActionGroupView *)self->_actionsGroupView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PLInterfaceActionGroupView;
  [(PLInterfaceActionGroupView *)&v7 layoutSubviews];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PLInterfaceActionGroupView_layoutSubviews__block_invoke;
  v6[3] = &unk_2784250D8;
  v6[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v6];
  if (self->_actionsDirty && [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
  {
    animation = [MEMORY[0x277CDA000] animation];
    v4 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [animation setTimingFunction:v4];

    [animation setType:*MEMORY[0x277CDA928]];
    [MEMORY[0x277D75D18] _currentAnimationDuration];
    [animation setDuration:?];
    layer = [(PLInterfaceActionGroupView *)self layer];
    [layer addAnimation:animation forKey:@"kCATransitionFade"];
  }

  self->_actionsDirty = 0;
}

uint64_t __44__PLInterfaceActionGroupView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[51];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *(*(a1 + 32) + 408);

  return [v4 layoutIfNeeded];
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  categoriesToProviders = self->_categoriesToProviders;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v5 = [(NSMutableDictionary *)categoriesToProviders objectForKey:v4];

  return v5;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  if (!self->_categoriesToProviders)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    categoriesToProviders = self->_categoriesToProviders;
    self->_categoriesToProviders = v6;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v9 = [(NSMutableDictionary *)self->_categoriesToProviders objectForKey:v8];
  [v9 _removeObserver:self];

  v10 = self->_categoriesToProviders;
  if (providerCopy)
  {
    [(NSMutableDictionary *)v10 setObject:providerCopy forKey:v8];
    [providerCopy _addObserver:self];
  }

  else
  {
    [(NSMutableDictionary *)v10 removeObjectForKey:v8];
  }
}

@end