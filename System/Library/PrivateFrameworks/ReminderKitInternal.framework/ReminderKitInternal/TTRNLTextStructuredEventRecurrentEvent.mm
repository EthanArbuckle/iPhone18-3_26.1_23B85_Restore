@interface TTRNLTextStructuredEventRecurrentEvent
- (TTRNLTextStructuredEventRecurrentEvent)initWithRange:(_NSRange)range startDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day frequency:(id)frequency;
- (TTRNLTextStructuredEventRecurrentEvent)initWithRange:(_NSRange)range startDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day startComponents:(id)components endComponents:(id)endComponents frequencyComponents:(id)frequencyComponents;
- (_NSRange)range;
- (id)description;
- (int64_t)dayFrequency;
- (int64_t)frequencyForKey:(id)key;
- (int64_t)hourFrequency;
- (int64_t)monthFrequency;
- (int64_t)weekDay;
- (int64_t)weekOfMonthFrequency;
- (int64_t)weekOfYear;
- (int64_t)weekdayEnd;
- (int64_t)weekdayOrdinal;
- (int64_t)weekdayStart;
- (int64_t)yearFrequency;
@end

@implementation TTRNLTextStructuredEventRecurrentEvent

- (TTRNLTextStructuredEventRecurrentEvent)initWithRange:(_NSRange)range startDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day frequency:(id)frequency
{
  length = range.length;
  location = range.location;
  dateCopy = date;
  endDateCopy = endDate;
  frequencyCopy = frequency;
  v20.receiver = self;
  v20.super_class = TTRNLTextStructuredEventRecurrentEvent;
  v17 = [(TTRNLTextStructuredEventRecurrentEvent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_range.location = location;
    v17->_range.length = length;
    objc_storeStrong(&v17->_startDate, date);
    objc_storeStrong(&v18->_endDate, endDate);
    v18->_isAllDay = day;
    objc_storeStrong(&v18->_frequency, frequency);
  }

  return v18;
}

- (TTRNLTextStructuredEventRecurrentEvent)initWithRange:(_NSRange)range startDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day startComponents:(id)components endComponents:(id)endComponents frequencyComponents:(id)frequencyComponents
{
  length = range.length;
  location = range.location;
  dateCopy = date;
  endDateCopy = endDate;
  componentsCopy = components;
  endComponentsCopy = endComponents;
  frequencyComponentsCopy = frequencyComponents;
  v24.receiver = self;
  v24.super_class = TTRNLTextStructuredEventRecurrentEvent;
  v17 = [(TTRNLTextStructuredEventRecurrentEvent *)&v24 init];
  v18 = v17;
  if (v17)
  {
    v17->_range.location = location;
    v17->_range.length = length;
    objc_storeStrong(&v17->_startDate, date);
    objc_storeStrong(&v18->_endDate, endDate);
    v18->_isAllDay = day;
    objc_storeStrong(&v18->_startDateComponents, components);
    objc_storeStrong(&v18->_endDateComponents, endComponents);
    objc_storeStrong(&v18->_frequencyComponents, frequencyComponents);
  }

  return v18;
}

- (int64_t)hourFrequency
{
  if (self->_frequencyComponents)
  {
    return [(NSDateComponents *)self->_frequencyComponents hour];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B860]];
  }
}

- (int64_t)dayFrequency
{
  if (self->_frequencyComponents)
  {
    return [(NSDateComponents *)self->_frequencyComponents day];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B858]];
  }
}

- (int64_t)monthFrequency
{
  if (self->_frequencyComponents)
  {
    return [(NSDateComponents *)self->_frequencyComponents month];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B868]];
  }
}

- (int64_t)weekOfMonthFrequency
{
  if (self->_frequencyComponents)
  {
    return [(NSDateComponents *)self->_frequencyComponents weekOfMonth];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B870]];
  }
}

- (int64_t)weekDay
{
  if (self->_startDateComponents)
  {
    return [(NSDateComponents *)self->_startDateComponents weekday];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B888]];
  }
}

- (int64_t)weekdayOrdinal
{
  if (self->_startDateComponents)
  {
    return [(NSDateComponents *)self->_startDateComponents weekdayOrdinal];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B890]];
  }
}

- (int64_t)weekdayStart
{
  if (self->_startDateComponents)
  {
    return [(NSDateComponents *)self->_startDateComponents weekday];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B898]];
  }
}

- (int64_t)weekdayEnd
{
  if (self->_endDateComponents)
  {
    return [(NSDateComponents *)self->_endDateComponents weekday];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B880]];
  }
}

- (int64_t)weekOfYear
{
  if (self->_frequencyComponents)
  {
    return [(NSDateComponents *)self->_frequencyComponents weekOfYear];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B878]];
  }
}

- (int64_t)yearFrequency
{
  if (self->_frequencyComponents)
  {
    return [(NSDateComponents *)self->_frequencyComponents year];
  }

  else
  {
    return [(TTRNLTextStructuredEventRecurrentEvent *)self frequencyForKey:*MEMORY[0x277D2B8A0]];
  }
}

- (int64_t)frequencyForKey:(id)key
{
  keyCopy = key;
  frequency = [(TTRNLTextStructuredEventRecurrentEvent *)self frequency];
  v6 = [frequency objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [v6 integerValue], v7 <= 0))
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:20];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v38.location = [(TTRNLTextStructuredEventRecurrentEvent *)self range];
  v7 = NSStringFromRange(v38);
  v8 = [v4 stringWithFormat:@"<%@ range=%@", v6, v7];
  [v3 addObject:v8];

  startDate = [(TTRNLTextStructuredEventRecurrentEvent *)self startDate];

  if (startDate)
  {
    v10 = MEMORY[0x277CCA968];
    startDate2 = [(TTRNLTextStructuredEventRecurrentEvent *)self startDate];
    v12 = [v10 localizedStringFromDate:startDate2 dateStyle:1 timeStyle:1];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"start=%@", v12];
    [v3 addObject:v13];
  }

  endDate = [(TTRNLTextStructuredEventRecurrentEvent *)self endDate];

  if (endDate)
  {
    v15 = MEMORY[0x277CCA968];
    endDate2 = [(TTRNLTextStructuredEventRecurrentEvent *)self endDate];
    v17 = [v15 localizedStringFromDate:endDate2 dateStyle:1 timeStyle:1];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"end=%@", v17];
    [v3 addObject:v18];
  }

  startDate3 = [(TTRNLTextStructuredEventRecurrentEvent *)self startDate];
  if (startDate3)
  {
  }

  else
  {
    endDate3 = [(TTRNLTextStructuredEventRecurrentEvent *)self endDate];

    if (!endDate3)
    {
      goto LABEL_9;
    }
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[TTRNLTextStructuredEventRecurrentEvent isAllDay](self, "isAllDay")}];
  v23 = [v21 stringWithFormat:@"isAllDay=%@", v22];
  [v3 addObject:v23];

LABEL_9:
  if ([(TTRNLTextStructuredEventRecurrentEvent *)self hourFrequency]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"hourFrequency=%ld", -[TTRNLTextStructuredEventRecurrentEvent hourFrequency](self, "hourFrequency")];
    [v3 addObject:v24];
  }

  if ([(TTRNLTextStructuredEventRecurrentEvent *)self dayFrequency]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"dayFrequency=%ld", -[TTRNLTextStructuredEventRecurrentEvent dayFrequency](self, "dayFrequency")];
    [v3 addObject:v25];
  }

  if ([(TTRNLTextStructuredEventRecurrentEvent *)self monthFrequency]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"monthFrequency=%ld", -[TTRNLTextStructuredEventRecurrentEvent monthFrequency](self, "monthFrequency")];
    [v3 addObject:v26];
  }

  if ([(TTRNLTextStructuredEventRecurrentEvent *)self weekOfMonthFrequency]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"weekOfMonthFrequency=%ld", -[TTRNLTextStructuredEventRecurrentEvent weekOfMonthFrequency](self, "weekOfMonthFrequency")];
    [v3 addObject:v27];
  }

  if ([(TTRNLTextStructuredEventRecurrentEvent *)self weekDay]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"weekDay=%ld", -[TTRNLTextStructuredEventRecurrentEvent weekDay](self, "weekDay")];
    [v3 addObject:v28];
  }

  if ([(TTRNLTextStructuredEventRecurrentEvent *)self weekOfYear]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"weekOfYear=%ld", -[TTRNLTextStructuredEventRecurrentEvent weekOfYear](self, "weekOfYear")];
    [v3 addObject:v29];
  }

  if ([(TTRNLTextStructuredEventRecurrentEvent *)self weekdayOrdinal]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"weekdayOrdinal=%ld", -[TTRNLTextStructuredEventRecurrentEvent weekdayOrdinal](self, "weekdayOrdinal")];
    [v3 addObject:v30];
  }

  if ([(TTRNLTextStructuredEventRecurrentEvent *)self weekdayStart]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"weekdayStart=%ld", -[TTRNLTextStructuredEventRecurrentEvent weekdayStart](self, "weekdayStart")];
    [v3 addObject:v31];
  }

  if ([(TTRNLTextStructuredEventRecurrentEvent *)self weekdayEnd]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"weekdayEnd=%ld", -[TTRNLTextStructuredEventRecurrentEvent weekdayEnd](self, "weekdayEnd")];
    [v3 addObject:v32];
  }

  if ([(TTRNLTextStructuredEventRecurrentEvent *)self yearFrequency]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"yearFrequency=%ld", -[TTRNLTextStructuredEventRecurrentEvent yearFrequency](self, "yearFrequency")];
    [v3 addObject:v33];
  }

  v34 = [v3 componentsJoinedByString:{@", "}];
  v35 = [v34 stringByAppendingString:@">"];

  return v35;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end