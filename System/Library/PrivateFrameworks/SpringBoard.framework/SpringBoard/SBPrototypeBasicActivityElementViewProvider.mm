@interface SBPrototypeBasicActivityElementViewProvider
- (BOOL)handleElementViewEvent:(int64_t)a3;
- (SAUILayoutHosting)layoutHost;
- (SBPrototypeBasicActivityElementViewProvider)init;
- (UIView)leadingView;
- (UIView)trailingView;
- (void)_activateApplication;
- (void)_updateLabel;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4;
@end

@implementation SBPrototypeBasicActivityElementViewProvider

- (SBPrototypeBasicActivityElementViewProvider)init
{
  v8.receiver = self;
  v8.super_class = SBPrototypeBasicActivityElementViewProvider;
  v2 = [(SBPrototypeBasicActivityElementViewProvider *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    startTime = v2->_startTime;
    v2->_startTime = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCA958]);
    formatter = v2->_formatter;
    v2->_formatter = v5;

    [(NSDateComponentsFormatter *)v2->_formatter setUnitsStyle:0];
    [(NSDateComponentsFormatter *)v2->_formatter setZeroFormattingBehavior:0x10000];
    [(NSDateComponentsFormatter *)v2->_formatter setAllowedUnits:192];
  }

  return v2;
}

- (BOOL)handleElementViewEvent:(int64_t)a3
{
  if (a3 < 2)
  {
    goto LABEL_4;
  }

  if (a3 == 2)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    startTime = self->_startTime;
    self->_startTime = v4;

    [(SBPrototypeBasicActivityElementViewProvider *)self _updateLabel];
    return 1;
  }

  if (a3 == 3)
  {
LABEL_4:
    [(SBPrototypeBasicActivityElementViewProvider *)self _activateApplication];
    return 1;
  }

  return 0;
}

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = MEMORY[0x277D755B8];
    v6 = MEMORY[0x277D755D0];
    v7 = [MEMORY[0x277D75348] systemOrangeColor];
    v8 = [v6 configurationWithHierarchicalColor:v7];
    v9 = [v5 systemImageNamed:@"timer" withConfiguration:v8];
    v10 = [v4 initWithImage:v9];
    v11 = self->_leadingView;
    self->_leadingView = v10;

    leadingView = self->_leadingView;
  }

  return leadingView;
}

- (UIView)trailingView
{
  v19[1] = *MEMORY[0x277D85DE8];
  trailingView = self->_trailingView;
  if (!trailingView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UIView *)v4 setText:@"00:00"];
    v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968]];
    v6 = *MEMORY[0x277D74388];
    v17[0] = *MEMORY[0x277D74398];
    v17[1] = v6;
    v18[0] = &unk_2833721E8;
    v18[1] = &unk_283372200;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v19[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

    v15 = *MEMORY[0x277D74338];
    v16 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [v5 fontDescriptorByAddingAttributes:v9];

    v11 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
    [(UIView *)v4 setFont:v11];

    v12 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIView *)v4 setTextColor:v12];

    v13 = self->_trailingView;
    self->_trailingView = v4;

    trailingView = self->_trailingView;
  }

  return trailingView;
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  if (self->_layoutMode != a3)
  {
    self->_layoutMode = a3;
    if (a3 < 2)
    {
      [(NSTimer *)self->_timer invalidate];
      timer = self->_timer;
      self->_timer = 0;
    }

    else
    {
      objc_initWeak(&location, self);
      v5 = MEMORY[0x277CBEBB8];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __68__SBPrototypeBasicActivityElementViewProvider_setLayoutMode_reason___block_invoke;
      v9[3] = &unk_2783AA438;
      objc_copyWeak(&v10, &location);
      v6 = [v5 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
      v7 = self->_timer;
      self->_timer = v6;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __68__SBPrototypeBasicActivityElementViewProvider_setLayoutMode_reason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateLabel];
  }

  else
  {
    [v5 invalidate];
  }
}

- (void)_activateApplication
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v2 = MEMORY[0x277CBEC38];
  [v5 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0AC58]];
  [v5 setObject:v2 forKey:*MEMORY[0x277D0AC70]];
  [v5 setObject:*MEMORY[0x277D67088] forKey:*MEMORY[0x277D0AC28]];
  v3 = [MEMORY[0x277D0AD60] optionsWithDictionary:v5];
  v4 = SBSCreateOpenApplicationService();
  [v4 openApplication:@"com.apple.mobiletimer" withOptions:v3 completion:0];
}

- (void)_updateLabel
{
  v7 = [(SBPrototypeBasicActivityElementViewProvider *)self trailingView];
  formatter = self->_formatter;
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:self->_startTime];
  v5 = [(NSDateComponentsFormatter *)formatter stringFromTimeInterval:?];
  [v7 setText:v5];

  if (self->_layoutMode != 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

@end