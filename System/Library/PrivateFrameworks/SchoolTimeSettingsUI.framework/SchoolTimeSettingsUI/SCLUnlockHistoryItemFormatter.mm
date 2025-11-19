@interface SCLUnlockHistoryItemFormatter
- (SCLUnlockHistoryItemFormatter)init;
- (id)attributedStringForObjectValue:(id)a3 withDefaultAttributes:(id)a4;
- (id)durationStringForHistoryItem:(id)a3;
- (id)localizedStringWithTimeString:(id)a3 durationString:(id)a4;
- (id)stringForObjectValue:(id)a3;
- (id)timeStringForHistoryItem:(id)a3;
@end

@implementation SCLUnlockHistoryItemFormatter

- (SCLUnlockHistoryItemFormatter)init
{
  v14.receiver = self;
  v14.super_class = SCLUnlockHistoryItemFormatter;
  v2 = [(SCLUnlockHistoryItemFormatter *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] orangeColor];
    highlightColor = v2->_highlightColor;
    v2->_highlightColor = v3;

    v5 = [MEMORY[0x277D75348] tableCellGrayTextColor];
    color = v2->_color;
    v2->_color = v5;

    v7 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v9;

    [(NSDateFormatter *)v2->_dateFormatter setDateStyle:0];
    [(NSDateFormatter *)v2->_dateFormatter setTimeStyle:1];
    v11 = objc_alloc_init(MEMORY[0x277CCA958]);
    componentsFormatter = v2->_componentsFormatter;
    v2->_componentsFormatter = v11;

    [(NSDateComponentsFormatter *)v2->_componentsFormatter setUnitsStyle:2];
    [(NSDateComponentsFormatter *)v2->_componentsFormatter setAllowedUnits:192];
    [(NSDateComponentsFormatter *)v2->_componentsFormatter setMaximumUnitCount:1];
  }

  return v2;
}

- (id)localizedStringWithTimeString:(id)a3 durationString:(id)a4
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"UNLOCK_HISTORY_LIST_FORMAT" value:&stru_28762AB68 table:@"SettingsFormatters"];

  v10 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, v7, v6];

  return v10;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SCLUnlockHistoryItemFormatter *)self timeStringForHistoryItem:v4];
    v6 = [(SCLUnlockHistoryItemFormatter *)self durationStringForHistoryItem:v4];
    v7 = [(SCLUnlockHistoryItemFormatter *)self localizedStringWithTimeString:v5 durationString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attributedStringForObjectValue:(id)a3 withDefaultAttributes:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SCLUnlockHistoryItemFormatter *)self timeStringForHistoryItem:v6];
    v24 = [(SCLUnlockHistoryItemFormatter *)self durationStringForHistoryItem:v6];
    v9 = [(SCLUnlockHistoryItemFormatter *)self localizedStringWithTimeString:v8 durationString:?];
    v23 = [(SCLUnlockHistoryItemFormatter *)self fontDescriptor];
    v10 = [MEMORY[0x277D74300] fontWithDescriptor:0.0 size:?];
    v22 = *MEMORY[0x277D740C0];
    v25[0] = *MEMORY[0x277D740C0];
    v11 = [(SCLUnlockHistoryItemFormatter *)self color];
    v25[1] = *MEMORY[0x277D740A8];
    v26[0] = v11;
    v26[1] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v13 = [v12 mutableCopy];

    if (v7)
    {
      [v13 addEntriesFromDictionary:v7];
    }

    v14 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9 attributes:v13];
    v15 = [v9 rangeOfString:v8];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v15;
      v18 = v16;
      v19 = [(SCLUnlockHistoryItemFormatter *)self highlightColor];
      [v14 addAttribute:v22 value:v19 range:{v17, v18}];
    }
  }

  else
  {
    v14 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)timeStringForHistoryItem:(id)a3
{
  dateFormatter = self->_dateFormatter;
  v5 = a3;
  v6 = [v5 calendar];
  [(NSDateFormatter *)dateFormatter setCalendar:v6];

  v7 = self->_dateFormatter;
  v8 = [v5 timeZone];
  [(NSDateFormatter *)v7 setTimeZone:v8];

  v9 = self->_dateFormatter;
  v10 = [v5 unlockedInterval];

  v11 = [v10 startDate];
  v12 = [(NSDateFormatter *)v9 stringFromDate:v11];

  return v12;
}

- (id)durationStringForHistoryItem:(id)a3
{
  v4 = a3;
  v5 = [v4 unlockedInterval];
  v6 = [v5 startDate];

  v7 = [v4 unlockedInterval];
  v8 = [v7 endDate];

  v9 = [v4 calendar];

  v10 = [v9 components:192 fromDate:v6 toDate:v8 options:0];

  v11 = [(NSDateComponentsFormatter *)self->_componentsFormatter stringFromDateComponents:v10];

  return v11;
}

@end