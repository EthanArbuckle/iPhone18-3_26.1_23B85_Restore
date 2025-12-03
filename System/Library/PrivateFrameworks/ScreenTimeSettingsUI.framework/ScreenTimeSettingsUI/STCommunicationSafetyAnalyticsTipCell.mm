@interface STCommunicationSafetyAnalyticsTipCell
+ (BOOL)didAcknowledgeTipViewForDSID:(id)d;
+ (void)acknowledgeTipViewForDSID:(id)d;
- (STCommunicationSafetyAnalyticsTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation STCommunicationSafetyAnalyticsTipCell

- (STCommunicationSafetyAnalyticsTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v17.receiver = self;
  v17.super_class = STCommunicationSafetyAnalyticsTipCell;
  specifierCopy = specifier;
  v8 = [(STTableCell *)&v17 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v9 = [specifierCopy objectForKeyedSubscript:{*MEMORY[0x277D3FE10], v17.receiver, v17.super_class}];
  v10 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FF00]];

  v11 = [MEMORY[0x277D4BDF8] makeCommunicationSafetyAnalyticsTipViewControllerWithActionBlock:v9 dismissTipBlock:v10];
  view = [v11 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(STCommunicationSafetyAnalyticsTipCell *)v8 contentView];
  [contentView addSubview:view];
  v14 = MEMORY[0x277CCAAD0];
  v15 = [MEMORY[0x277CCAAD0] st_constraintsForView:view equalToView:contentView];
  [v14 activateConstraints:v15];

  return v8;
}

+ (void)acknowledgeTipViewForDSID:(id)d
{
  v9[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [standardUserDefaults objectForKey:@"HasShownCommunicationSafetyAnalyticsTipByDSID"];
    if (([self didAcknowledgeTipViewForDSID:dCopy] & 1) == 0)
    {
      if (v6)
      {
        v7 = [v6 mutableCopy];
        [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:dCopy];

        v6 = v7;
      }

      else
      {
        v8 = dCopy;
        v9[0] = MEMORY[0x277CBEC38];
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      }

      [standardUserDefaults setObject:v6 forKey:@"HasShownCommunicationSafetyAnalyticsTipByDSID"];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[STCommunicationSafetyAnalyticsTipCell acknowledgeTipViewForDSID:];
  }
}

+ (BOOL)didAcknowledgeTipViewForDSID:(id)d
{
  v3 = MEMORY[0x277CBEBD0];
  dCopy = d;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"HasShownCommunicationSafetyAnalyticsTipByDSID"];

  v7 = [v6 objectForKeyedSubscript:dCopy];

  LOBYTE(dCopy) = [v7 BOOLValue];
  return dCopy;
}

@end