@interface SCLUnlockHistoryItemFormatter
- (SCLUnlockHistoryItemFormatter)init;
- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes;
- (id)durationStringForHistoryItem:(id)item;
- (id)localizedStringWithTimeString:(id)string durationString:(id)durationString;
- (id)stringForObjectValue:(id)value;
- (id)timeStringForHistoryItem:(id)item;
@end

@implementation SCLUnlockHistoryItemFormatter

- (SCLUnlockHistoryItemFormatter)init
{
  v14.receiver = self;
  v14.super_class = SCLUnlockHistoryItemFormatter;
  v2 = [(SCLUnlockHistoryItemFormatter *)&v14 init];
  if (v2)
  {
    orangeColor = [MEMORY[0x277D75348] orangeColor];
    highlightColor = v2->_highlightColor;
    v2->_highlightColor = orangeColor;

    tableCellGrayTextColor = [MEMORY[0x277D75348] tableCellGrayTextColor];
    color = v2->_color;
    v2->_color = tableCellGrayTextColor;

    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = autoupdatingCurrentLocale;

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

- (id)localizedStringWithTimeString:(id)string durationString:(id)durationString
{
  v5 = MEMORY[0x277CCA8D8];
  durationStringCopy = durationString;
  stringCopy = string;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"UNLOCK_HISTORY_LIST_FORMAT" value:&stru_28762AB68 table:@"SettingsFormatters"];

  durationStringCopy = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, stringCopy, durationStringCopy];

  return durationStringCopy;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SCLUnlockHistoryItemFormatter *)self timeStringForHistoryItem:valueCopy];
    v6 = [(SCLUnlockHistoryItemFormatter *)self durationStringForHistoryItem:valueCopy];
    v7 = [(SCLUnlockHistoryItemFormatter *)self localizedStringWithTimeString:v5 durationString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes
{
  v26[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  attributesCopy = attributes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SCLUnlockHistoryItemFormatter *)self timeStringForHistoryItem:valueCopy];
    v24 = [(SCLUnlockHistoryItemFormatter *)self durationStringForHistoryItem:valueCopy];
    v9 = [(SCLUnlockHistoryItemFormatter *)self localizedStringWithTimeString:v8 durationString:?];
    fontDescriptor = [(SCLUnlockHistoryItemFormatter *)self fontDescriptor];
    v10 = [MEMORY[0x277D74300] fontWithDescriptor:0.0 size:?];
    v22 = *MEMORY[0x277D740C0];
    v25[0] = *MEMORY[0x277D740C0];
    color = [(SCLUnlockHistoryItemFormatter *)self color];
    v25[1] = *MEMORY[0x277D740A8];
    v26[0] = color;
    v26[1] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v13 = [v12 mutableCopy];

    if (attributesCopy)
    {
      [v13 addEntriesFromDictionary:attributesCopy];
    }

    v14 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9 attributes:v13];
    v15 = [v9 rangeOfString:v8];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v15;
      v18 = v16;
      highlightColor = [(SCLUnlockHistoryItemFormatter *)self highlightColor];
      [v14 addAttribute:v22 value:highlightColor range:{v17, v18}];
    }
  }

  else
  {
    v14 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)timeStringForHistoryItem:(id)item
{
  dateFormatter = self->_dateFormatter;
  itemCopy = item;
  calendar = [itemCopy calendar];
  [(NSDateFormatter *)dateFormatter setCalendar:calendar];

  v7 = self->_dateFormatter;
  timeZone = [itemCopy timeZone];
  [(NSDateFormatter *)v7 setTimeZone:timeZone];

  v9 = self->_dateFormatter;
  unlockedInterval = [itemCopy unlockedInterval];

  startDate = [unlockedInterval startDate];
  v12 = [(NSDateFormatter *)v9 stringFromDate:startDate];

  return v12;
}

- (id)durationStringForHistoryItem:(id)item
{
  itemCopy = item;
  unlockedInterval = [itemCopy unlockedInterval];
  startDate = [unlockedInterval startDate];

  unlockedInterval2 = [itemCopy unlockedInterval];
  endDate = [unlockedInterval2 endDate];

  calendar = [itemCopy calendar];

  v10 = [calendar components:192 fromDate:startDate toDate:endDate options:0];

  v11 = [(NSDateComponentsFormatter *)self->_componentsFormatter stringFromDateComponents:v10];

  return v11;
}

@end