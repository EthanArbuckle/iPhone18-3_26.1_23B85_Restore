@interface SUGetOffTestingAlertItem
- (SUGetOffTestingAlertItem)initWithHandler:(id)handler;
- (id)_noButton;
- (id)_yesButton;
- (id)buttons;
- (void)alertWasDismissed:(unint64_t)dismissed;
@end

@implementation SUGetOffTestingAlertItem

- (SUGetOffTestingAlertItem)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = SUGetOffTestingAlertItem;
  v5 = [(SUBaseAlertItem *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x26D668B30](handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)alertWasDismissed:(unint64_t)dismissed
{
  v6.receiver = self;
  v6.super_class = SUGetOffTestingAlertItem;
  [(SUBaseAlertItem *)&v6 alertWasDismissed:?];
  if (dismissed != 1)
  {
    handler = self->_handler;
    if (handler)
    {
      handler[2](handler, 0);
    }
  }
}

- (id)buttons
{
  array = [MEMORY[0x277CBEB18] array];
  _yesButton = [(SUGetOffTestingAlertItem *)self _yesButton];
  [array addObject:_yesButton];

  _noButton = [(SUGetOffTestingAlertItem *)self _noButton];
  [array addObject:_noButton];

  v6 = [array copy];

  return v6;
}

- (id)_yesButton
{
  v3 = [SUAlertButtonDefinition alloc];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SUGetOffTestingAlertItem__yesButton__block_invoke;
  v6[3] = &unk_279CAA708;
  v6[4] = self;
  v4 = [(SUAlertButtonDefinition *)v3 initWithLabel:@"Continue" presentationStyle:0 isPreferredButton:1 handler:v6];

  return v4;
}

uint64_t __38__SUGetOffTestingAlertItem__yesButton__block_invoke(uint64_t a1)
{
  v2 = SULogAlerts();
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  SULogInfoForSubsystem(v2, @"[%@] User chose Continue", v5, v6, v7, v8, v9, v10, v4);

  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

- (id)_noButton
{
  v3 = [SUAlertButtonDefinition alloc];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SUGetOffTestingAlertItem__noButton__block_invoke;
  v6[3] = &unk_279CAA708;
  v6[4] = self;
  v4 = [(SUAlertButtonDefinition *)v3 initWithLabel:@"Continue Without Offloading" presentationStyle:0 isPreferredButton:0 handler:v6];

  return v4;
}

uint64_t __37__SUGetOffTestingAlertItem__noButton__block_invoke(uint64_t a1)
{
  v2 = SULogAlerts();
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  SULogInfoForSubsystem(v2, @"[%@] User chose Install-Without-Offload", v5, v6, v7, v8, v9, v10, v4);

  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

@end