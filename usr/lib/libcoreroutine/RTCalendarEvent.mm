@interface RTCalendarEvent
+ (id)eventAvailabilityToString:(int64_t)string;
+ (id)participantStatusToString:(unint64_t)string;
- (RTCalendarEvent)initWithEventIdentifier:(id)identifier allDay:(BOOL)day startDate:(id)date endDate:(id)endDate participantStatus:(unint64_t)status availability:(int64_t)availability location:(id)location locationTitle:(id)self0 locationMapItemHandle:(id)self1;
- (id)description;
@end

@implementation RTCalendarEvent

+ (id)participantStatusToString:(unint64_t)string
{
  if (string > 7)
  {
    return @"Unhandled";
  }

  else
  {
    return off_2788C6960[string];
  }
}

+ (id)eventAvailabilityToString:(int64_t)string
{
  if (string > 3)
  {
    return @"Not Supported";
  }

  else
  {
    return off_2788C69A0[string];
  }
}

- (RTCalendarEvent)initWithEventIdentifier:(id)identifier allDay:(BOOL)day startDate:(id)date endDate:(id)endDate participantStatus:(unint64_t)status availability:(int64_t)availability location:(id)location locationTitle:(id)self0 locationMapItemHandle:(id)self1
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  locationCopy = location;
  titleCopy = title;
  handleCopy = handle;
  v37.receiver = self;
  v37.super_class = RTCalendarEvent;
  v23 = [(RTCalendarEvent *)&v37 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    eventIdentifier = v23->_eventIdentifier;
    v23->_eventIdentifier = v24;

    v23->_allDay = day;
    v26 = [dateCopy copy];
    startDate = v23->_startDate;
    v23->_startDate = v26;

    v28 = [endDateCopy copy];
    endDate = v23->_endDate;
    v23->_endDate = v28;

    v23->_participantStatus = status;
    v23->_availability = availability;
    v30 = [locationCopy copy];
    location = v23->_location;
    v23->_location = v30;

    v32 = [titleCopy copy];
    locationTitle = v23->_locationTitle;
    v23->_locationTitle = v32;

    v34 = [handleCopy copy];
    locationMapItemHandle = v23->_locationMapItemHandle;
    v23->_locationMapItemHandle = v34;
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_allDay)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  eventIdentifier = self->_eventIdentifier;
  stringFromDate = [(NSDate *)self->_startDate stringFromDate];
  stringFromDate2 = [(NSDate *)self->_endDate stringFromDate];
  v8 = [objc_opt_class() participantStatusToString:self->_participantStatus];
  v9 = [objc_opt_class() eventAvailabilityToString:self->_availability];
  v10 = v9;
  if (self->_location)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_locationTitle)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_locationMapItemHandle)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v3 stringWithFormat:@"eventIdentifier, %@, allDay, %@, startDate, %@, endDate, %@, particpantStatus, %@, availability, %@, location, %@, locationTitle, %@, locationMapItemHandle, %@", eventIdentifier, v4, stringFromDate, stringFromDate2, v8, v9, v11, v12, v13];

  return v14;
}

@end