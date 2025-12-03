@interface STHistoricalNotificationsCell
- (STHistoricalNotificationsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)value;
- (void)_currentViewModeDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)_handleEffectiveChangeForViewMode:(int64_t)mode hasMultilineLayout:(BOOL)layout;
- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)from to:(BOOL)to;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setValue:(id)value;
@end

@implementation STHistoricalNotificationsCell

- (STHistoricalNotificationsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v22.receiver = self;
  v22.super_class = STHistoricalNotificationsCell;
  v5 = [(STTableCell *)&v22 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = [STHistoricalUsageViewController historicalUsageViewControllerOfType:5 graphHeight:62.0];
  historicalUsageViewController = v5->_historicalUsageViewController;
  v5->_historicalUsageViewController = v6;

  childViewControllers = [(STTableCell *)v5 childViewControllers];
  [childViewControllers addObject:v5->_historicalUsageViewController];

  contentView = [(STHistoricalNotificationsCell *)v5 contentView];
  view = [(STHistoricalUsageViewController *)v5->_historicalUsageViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:view];
  v11 = _NSDictionaryOfVariableBindings(&cfstr_Historicalusag.isa, view, 0);
  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[historicalUsageView]-2.0-|" options:0 metrics:0 views:v11];
  v13 = [v12 mutableCopy];

  contentLayoutGuide = [(STTableCell *)v5 contentLayoutGuide];
  leadingAnchor = [contentLayoutGuide leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v13 addObject:v17];

  trailingAnchor = [contentLayoutGuide trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v13 addObject:v20];

  [MEMORY[0x277CCAAD0] activateConstraints:v13];
  [(STHistoricalUsageViewController *)v5->_historicalUsageViewController addObserver:v5 forKeyPath:@"currentViewMode" options:3 context:"KVOContextHistoricalNotificationsCell"];
  [(STHistoricalUsageViewController *)v5->_historicalUsageViewController addObserver:v5 forKeyPath:@"titleView.hasMultilineLayout" options:3 context:"KVOContextHistoricalNotificationsCell"];

  return v5;
}

- (void)dealloc
{
  [(STHistoricalUsageViewController *)self->_historicalUsageViewController removeObserver:self forKeyPath:@"currentViewMode" context:"KVOContextHistoricalNotificationsCell"];
  [(STHistoricalUsageViewController *)self->_historicalUsageViewController removeObserver:self forKeyPath:@"titleView.hasMultilineLayout" context:"KVOContextHistoricalNotificationsCell"];
  v3.receiver = self;
  v3.super_class = STHistoricalNotificationsCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextHistoricalNotificationsCell")
  {
    [(STHistoricalNotificationsCell *)self historicalUsageViewController];

    if ([pathCopy isEqualToString:@"currentViewMode"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v14 == null2)
      {

        v14 = 0;
      }

      -[STHistoricalNotificationsCell _currentViewModeDidChangeFrom:to:](self, "_currentViewModeDidChangeFrom:to:", [v12 integerValue], objc_msgSend(v14, "integerValue"));
    }

    else
    {
      [(STHistoricalNotificationsCell *)self historicalUsageViewController];

      if (![pathCopy isEqualToString:@"titleView.hasMultilineLayout"])
      {
        goto LABEL_16;
      }

      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null3 = [MEMORY[0x277CBEB68] null];

      if (v12 == null3)
      {

        v12 = 0;
      }

      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null4 = [MEMORY[0x277CBEB68] null];

      if (v14 == null4)
      {

        v14 = 0;
      }

      -[STHistoricalNotificationsCell _hasMulitlineLayoutDidChangeFrom:to:](self, "_hasMulitlineLayoutDidChangeFrom:to:", [v12 BOOLValue], objc_msgSend(v14, "BOOLValue"));
    }

    goto LABEL_16;
  }

  v18.receiver = self;
  v18.super_class = STHistoricalNotificationsCell;
  [(STHistoricalNotificationsCell *)&v18 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_16:
}

- (void)_currentViewModeDidChangeFrom:(int64_t)from to:(int64_t)to
{
  if (from != to)
  {
    historicalUsageViewController = [(STHistoricalNotificationsCell *)self historicalUsageViewController];
    titleView = [historicalUsageViewController titleView];
    hasMultilineLayout = [titleView hasMultilineLayout];

    [(STHistoricalNotificationsCell *)self _handleEffectiveChangeForViewMode:to hasMultilineLayout:hasMultilineLayout];
  }
}

- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)from to:(BOOL)to
{
  if (from != to)
  {
    toCopy = to;
    historicalUsageViewController = [(STHistoricalNotificationsCell *)self historicalUsageViewController];
    currentViewMode = [historicalUsageViewController currentViewMode];

    [(STHistoricalNotificationsCell *)self _handleEffectiveChangeForViewMode:currentViewMode hasMultilineLayout:toCopy];
  }
}

- (void)_handleEffectiveChangeForViewMode:(int64_t)mode hasMultilineLayout:(BOOL)layout
{
  layoutCopy = layout;
  v11[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  layoutCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SpecifierIdentifierHistoricalNotificationsCell-%lu-%d", mode, layoutCopy];
  v10 = @"HistoricalNotificationsSpecifierIdentifier";
  v11[0] = layoutCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"HistoricalNotificationsSpecifierIdentifierDidChange" object:self userInfo:v9];

  [(STHistoricalNotificationsCell *)self setNeedsUpdateConstraints];
  [defaultCenter postNotificationName:0x2876773C8 object:self];
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STHistoricalNotificationsCell;
  value = [(PSTableCell *)&v4 value];

  return value;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (!valueCopy || [valueCopy conformsToProtocol:&unk_2876DCA10])
  {
    v7.receiver = self;
    v7.super_class = STHistoricalNotificationsCell;
    [(PSTableCell *)&v7 setValue:v5];
    historicalUsageViewController = [(STHistoricalNotificationsCell *)self historicalUsageViewController];
    [historicalUsageViewController setCoordinator:v5];
  }
}

@end