@interface PSBillingPeriodSelectorSpecifier
- (PSBillingPeriodSelectorSpecifier)initWithStatisticsCache:(id)cache;
- (PSBillingPeriodSelectorSpecifierDelegate)delegate;
- (id)getBillingPeriod:(id)period;
- (void)refreshSelectorWithStatisticsCache:(id)cache;
- (void)setBillingPeriod:(id)period specifier:(id)specifier;
@end

@implementation PSBillingPeriodSelectorSpecifier

- (PSBillingPeriodSelectorSpecifier)initWithStatisticsCache:(id)cache
{
  cacheCopy = cache;
  v8.receiver = self;
  v8.super_class = PSBillingPeriodSelectorSpecifier;
  v5 = [(PSBillingPeriodSelectorSpecifier *)&v8 initWithName:&stru_287730CE8 target:self set:sel_setBillingPeriod_specifier_ get:sel_getBillingPeriod_ detail:0 cell:9 edit:0];
  v6 = v5;
  if (v5)
  {
    [(PSBillingPeriodSelectorSpecifier *)v5 refreshSelectorWithStatisticsCache:cacheCopy];
    [(PSBillingPeriodSelectorSpecifier *)v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40130]];
  }

  return v6;
}

- (void)refreshSelectorWithStatisticsCache:(id)cache
{
  v28 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  useCalendarMonthBillingCycle = [cacheCopy useCalendarMonthBillingCycle];
  getLogger = [(PSBillingPeriodSelectorSpecifier *)self getLogger];
  v7 = os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT);
  if (useCalendarMonthBillingCycle)
  {
    if (v7)
    {
      *buf = 136315138;
      v27 = "[PSBillingPeriodSelectorSpecifier refreshSelectorWithStatisticsCache:]";
      _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "%s using calendar month billing cycle", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"THIS_MONTH" value:&stru_287730CE8 table:@"WirelessData"];
    v25 = v9;
    v10 = @"LAST_MONTH";
    v11 = &v25;
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v27 = "[PSBillingPeriodSelectorSpecifier refreshSelectorWithStatisticsCache:]";
      _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "%s using carrier-provided billing cycle", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"THIS_BILLING_PERIOD" value:&stru_287730CE8 table:@"WirelessData"];
    v24 = v9;
    v10 = @"LAST_BILLING_PERIOD";
    v11 = &v24;
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v10 value:&stru_287730CE8 table:@"WirelessData"];
  v11[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  previousBillingCycleEndDate = [cacheCopy previousBillingCycleEndDate];

  if (previousBillingCycleEndDate)
  {
    v16 = &unk_2877326A8;
  }

  else
  {
    getLogger2 = [(PSBillingPeriodSelectorSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[PSBillingPeriodSelectorSpecifier refreshSelectorWithStatisticsCache:]";
      _os_log_impl(&dword_2658CA000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s hiding previous period", buf, 0xCu);
    }

    v18 = [v14 objectAtIndexedSubscript:0];
    v23 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];

    v20 = [&unk_2877326A8 objectAtIndexedSubscript:0];
    v22 = v20;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

    v14 = v19;
  }

  [(PSBillingPeriodSelectorSpecifier *)self setValues:v16 titles:v14];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setBillingPeriod:(id)period specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  periodCopy = period;
  getLogger = [(PSBillingPeriodSelectorSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSBillingPeriodSelectorSpecifier selectedPeriod](self, "selectedPeriod")}];
    v10 = 136315650;
    v11 = "[PSBillingPeriodSelectorSpecifier setBillingPeriod:specifier:]";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = periodCopy;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting from %@ to %@", &v10, 0x20u);
  }

  -[PSBillingPeriodSelectorSpecifier setSelectedPeriod:](self, "setSelectedPeriod:", [periodCopy unsignedIntegerValue]);
  delegate = [(PSBillingPeriodSelectorSpecifier *)self delegate];
  [delegate selectedBillingPeriodChanged:{-[PSBillingPeriodSelectorSpecifier selectedPeriod](self, "selectedPeriod")}];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getBillingPeriod:(id)period
{
  v3 = MEMORY[0x277CCABB0];
  selectedPeriod = [(PSBillingPeriodSelectorSpecifier *)self selectedPeriod];

  return [v3 numberWithUnsignedInteger:selectedPeriod];
}

- (PSBillingPeriodSelectorSpecifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end