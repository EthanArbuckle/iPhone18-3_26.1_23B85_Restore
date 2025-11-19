@interface STCommunicationSafetyAnalyticsTipCell
+ (BOOL)didAcknowledgeTipViewForDSID:(id)a3;
+ (void)acknowledgeTipViewForDSID:(id)a3;
- (STCommunicationSafetyAnalyticsTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation STCommunicationSafetyAnalyticsTipCell

- (STCommunicationSafetyAnalyticsTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v17.receiver = self;
  v17.super_class = STCommunicationSafetyAnalyticsTipCell;
  v7 = a5;
  v8 = [(STTableCell *)&v17 initWithStyle:a3 reuseIdentifier:a4 specifier:v7];
  v9 = [v7 objectForKeyedSubscript:{*MEMORY[0x277D3FE10], v17.receiver, v17.super_class}];
  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3FF00]];

  v11 = [MEMORY[0x277D4BDF8] makeCommunicationSafetyAnalyticsTipViewControllerWithActionBlock:v9 dismissTipBlock:v10];
  v12 = [v11 view];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(STCommunicationSafetyAnalyticsTipCell *)v8 contentView];
  [v13 addSubview:v12];
  v14 = MEMORY[0x277CCAAD0];
  v15 = [MEMORY[0x277CCAAD0] st_constraintsForView:v12 equalToView:v13];
  [v14 activateConstraints:v15];

  return v8;
}

+ (void)acknowledgeTipViewForDSID:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v5 objectForKey:@"HasShownCommunicationSafetyAnalyticsTipByDSID"];
    if (([a1 didAcknowledgeTipViewForDSID:v4] & 1) == 0)
    {
      if (v6)
      {
        v7 = [v6 mutableCopy];
        [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v4];

        v6 = v7;
      }

      else
      {
        v8 = v4;
        v9[0] = MEMORY[0x277CBEC38];
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      }

      [v5 setObject:v6 forKey:@"HasShownCommunicationSafetyAnalyticsTipByDSID"];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[STCommunicationSafetyAnalyticsTipCell acknowledgeTipViewForDSID:];
  }
}

+ (BOOL)didAcknowledgeTipViewForDSID:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:@"HasShownCommunicationSafetyAnalyticsTipByDSID"];

  v7 = [v6 objectForKeyedSubscript:v4];

  LOBYTE(v4) = [v7 BOOLValue];
  return v4;
}

@end