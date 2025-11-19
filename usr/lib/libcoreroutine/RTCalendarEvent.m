@interface RTCalendarEvent
+ (id)eventAvailabilityToString:(int64_t)a3;
+ (id)participantStatusToString:(unint64_t)a3;
- (RTCalendarEvent)initWithEventIdentifier:(id)a3 allDay:(BOOL)a4 startDate:(id)a5 endDate:(id)a6 participantStatus:(unint64_t)a7 availability:(int64_t)a8 location:(id)a9 locationTitle:(id)a10 locationMapItemHandle:(id)a11;
- (id)description;
@end

@implementation RTCalendarEvent

+ (id)participantStatusToString:(unint64_t)a3
{
  if (a3 > 7)
  {
    return @"Unhandled";
  }

  else
  {
    return off_2788C6960[a3];
  }
}

+ (id)eventAvailabilityToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Not Supported";
  }

  else
  {
    return off_2788C69A0[a3];
  }
}

- (RTCalendarEvent)initWithEventIdentifier:(id)a3 allDay:(BOOL)a4 startDate:(id)a5 endDate:(id)a6 participantStatus:(unint64_t)a7 availability:(int64_t)a8 location:(id)a9 locationTitle:(id)a10 locationMapItemHandle:(id)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v37.receiver = self;
  v37.super_class = RTCalendarEvent;
  v23 = [(RTCalendarEvent *)&v37 init];
  if (v23)
  {
    v24 = [v17 copy];
    eventIdentifier = v23->_eventIdentifier;
    v23->_eventIdentifier = v24;

    v23->_allDay = a4;
    v26 = [v18 copy];
    startDate = v23->_startDate;
    v23->_startDate = v26;

    v28 = [v19 copy];
    endDate = v23->_endDate;
    v23->_endDate = v28;

    v23->_participantStatus = a7;
    v23->_availability = a8;
    v30 = [v20 copy];
    location = v23->_location;
    v23->_location = v30;

    v32 = [v21 copy];
    locationTitle = v23->_locationTitle;
    v23->_locationTitle = v32;

    v34 = [v22 copy];
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
  v6 = [(NSDate *)self->_startDate stringFromDate];
  v7 = [(NSDate *)self->_endDate stringFromDate];
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

  v14 = [v3 stringWithFormat:@"eventIdentifier, %@, allDay, %@, startDate, %@, endDate, %@, particpantStatus, %@, availability, %@, location, %@, locationTitle, %@, locationMapItemHandle, %@", eventIdentifier, v4, v6, v7, v8, v9, v11, v12, v13];

  return v14;
}

@end