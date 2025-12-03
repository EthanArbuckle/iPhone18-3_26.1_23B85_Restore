@interface _SFPBCalendarEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCalendarEvent)initWithDictionary:(id)dictionary;
- (_SFPBCalendarEvent)initWithFacade:(id)facade;
- (_SFPBCalendarEvent)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setNotes:(id)notes;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCalendarEvent

- (_SFPBCalendarEvent)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCalendarEvent *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBCalendarEvent *)v5 setTitle:title2];
    }

    startDate = [facadeCopy startDate];

    if (startDate)
    {
      v9 = [_SFPBDate alloc];
      startDate2 = [facadeCopy startDate];
      v11 = [(_SFPBDate *)v9 initWithNSDate:startDate2];
      [(_SFPBCalendarEvent *)v5 setStartDate:v11];
    }

    endDate = [facadeCopy endDate];

    if (endDate)
    {
      v13 = [_SFPBDate alloc];
      endDate2 = [facadeCopy endDate];
      v15 = [(_SFPBDate *)v13 initWithNSDate:endDate2];
      [(_SFPBCalendarEvent *)v5 setEndDate:v15];
    }

    if ([facadeCopy hasIsAllDay])
    {
      -[_SFPBCalendarEvent setIsAllDay:](v5, "setIsAllDay:", [facadeCopy isAllDay]);
    }

    location = [facadeCopy location];

    if (location)
    {
      v17 = [_SFPBStructuredLocation alloc];
      location2 = [facadeCopy location];
      v19 = [(_SFPBStructuredLocation *)v17 initWithFacade:location2];
      [(_SFPBCalendarEvent *)v5 setLocation:v19];
    }

    notes = [facadeCopy notes];

    if (notes)
    {
      notes2 = [facadeCopy notes];
      [(_SFPBCalendarEvent *)v5 setNotes:notes2];
    }

    startTimeZone = [facadeCopy startTimeZone];

    if (startTimeZone)
    {
      v23 = [_SFPBTimeZone alloc];
      startTimeZone2 = [facadeCopy startTimeZone];
      v25 = [(_SFPBTimeZone *)v23 initWithNSTimeZone:startTimeZone2];
      [(_SFPBCalendarEvent *)v5 setStartTimeZone:v25];
    }

    endTimeZone = [facadeCopy endTimeZone];

    if (endTimeZone)
    {
      v27 = [_SFPBTimeZone alloc];
      endTimeZone2 = [facadeCopy endTimeZone];
      v29 = [(_SFPBTimeZone *)v27 initWithNSTimeZone:endTimeZone2];
      [(_SFPBCalendarEvent *)v5 setEndTimeZone:v29];
    }

    endLocation = [facadeCopy endLocation];

    if (endLocation)
    {
      v31 = [_SFPBStructuredLocation alloc];
      endLocation2 = [facadeCopy endLocation];
      v33 = [(_SFPBStructuredLocation *)v31 initWithFacade:endLocation2];
      [(_SFPBCalendarEvent *)v5 setEndLocation:v33];
    }

    v34 = [facadeCopy url];

    if (v34)
    {
      v35 = [_SFPBURL alloc];
      v36 = [facadeCopy url];
      v37 = [(_SFPBURL *)v35 initWithNSURL:v36];
      [(_SFPBCalendarEvent *)v5 setUrl:v37];
    }

    v38 = v5;
  }

  return v5;
}

- (_SFPBCalendarEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = _SFPBCalendarEvent;
  v5 = [(_SFPBCalendarEvent *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCalendarEvent *)v5 setTitle:v7];
    }

    v29 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDate alloc] initWithDictionary:v8];
      [(_SFPBCalendarEvent *)v5 setStartDate:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBDate alloc] initWithDictionary:v10];
      [(_SFPBCalendarEvent *)v5 setEndDate:v11];
    }

    v28 = v8;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"isAllDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCalendarEvent setIsAllDay:](v5, "setIsAllDay:", [v12 BOOLValue]);
    }

    v27 = v10;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBStructuredLocation alloc] initWithDictionary:v13];
      [(_SFPBCalendarEvent *)v5 setLocation:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"notes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBCalendarEvent *)v5 setNotes:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"startTimeZone"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBTimeZone alloc] initWithDictionary:v17];
      [(_SFPBCalendarEvent *)v5 setStartTimeZone:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"endTimeZone"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBTimeZone alloc] initWithDictionary:v19];
      [(_SFPBCalendarEvent *)v5 setEndTimeZone:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"endLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBStructuredLocation alloc] initWithDictionary:v21];
      [(_SFPBCalendarEvent *)v5 setEndLocation:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[_SFPBURL alloc] initWithDictionary:v23];
      [(_SFPBCalendarEvent *)v5 setUrl:v24];
    }

    v25 = v5;
  }

  return v5;
}

- (_SFPBCalendarEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCalendarEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCalendarEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_endDate)
  {
    endDate = [(_SFPBCalendarEvent *)self endDate];
    dictionaryRepresentation = [endDate dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"endDate"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"endDate"];
    }
  }

  if (self->_endLocation)
  {
    endLocation = [(_SFPBCalendarEvent *)self endLocation];
    dictionaryRepresentation2 = [endLocation dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"endLocation"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"endLocation"];
    }
  }

  if (self->_endTimeZone)
  {
    endTimeZone = [(_SFPBCalendarEvent *)self endTimeZone];
    dictionaryRepresentation3 = [endTimeZone dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"endTimeZone"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"endTimeZone"];
    }
  }

  if (self->_isAllDay)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCalendarEvent isAllDay](self, "isAllDay")}];
    [dictionary setObject:v13 forKeyedSubscript:@"isAllDay"];
  }

  if (self->_location)
  {
    location = [(_SFPBCalendarEvent *)self location];
    dictionaryRepresentation4 = [location dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"location"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"location"];
    }
  }

  if (self->_notes)
  {
    notes = [(_SFPBCalendarEvent *)self notes];
    v18 = [notes copy];
    [dictionary setObject:v18 forKeyedSubscript:@"notes"];
  }

  if (self->_startDate)
  {
    startDate = [(_SFPBCalendarEvent *)self startDate];
    dictionaryRepresentation5 = [startDate dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"startDate"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"startDate"];
    }
  }

  if (self->_startTimeZone)
  {
    startTimeZone = [(_SFPBCalendarEvent *)self startTimeZone];
    dictionaryRepresentation6 = [startTimeZone dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"startTimeZone"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"startTimeZone"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBCalendarEvent *)self title];
    v26 = [title copy];
    [dictionary setObject:v26 forKeyedSubscript:@"title"];
  }

  if (self->_url)
  {
    v27 = [(_SFPBCalendarEvent *)self url];
    dictionaryRepresentation7 = [v27 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"url"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"url"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(_SFPBDate *)self->_startDate hash];
  v5 = [(_SFPBDate *)self->_endDate hash];
  if (self->_isAllDay)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(_SFPBStructuredLocation *)self->_location hash];
  v8 = [(NSString *)self->_notes hash];
  v9 = v8 ^ [(_SFPBTimeZone *)self->_startTimeZone hash];
  v10 = v9 ^ [(_SFPBTimeZone *)self->_endTimeZone hash];
  v11 = v7 ^ v10 ^ [(_SFPBStructuredLocation *)self->_endLocation hash];
  return v11 ^ [(_SFPBURL *)self->_url hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  title = [(_SFPBCalendarEvent *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_47;
  }

  title3 = [(_SFPBCalendarEvent *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBCalendarEvent *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  title = [(_SFPBCalendarEvent *)self startDate];
  title2 = [equalCopy startDate];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_47;
  }

  startDate = [(_SFPBCalendarEvent *)self startDate];
  if (startDate)
  {
    v13 = startDate;
    startDate2 = [(_SFPBCalendarEvent *)self startDate];
    startDate3 = [equalCopy startDate];
    v16 = [startDate2 isEqual:startDate3];

    if (!v16)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  title = [(_SFPBCalendarEvent *)self endDate];
  title2 = [equalCopy endDate];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_47;
  }

  endDate = [(_SFPBCalendarEvent *)self endDate];
  if (endDate)
  {
    v18 = endDate;
    endDate2 = [(_SFPBCalendarEvent *)self endDate];
    endDate3 = [equalCopy endDate];
    v21 = [endDate2 isEqual:endDate3];

    if (!v21)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  isAllDay = self->_isAllDay;
  if (isAllDay != [equalCopy isAllDay])
  {
    goto LABEL_48;
  }

  title = [(_SFPBCalendarEvent *)self location];
  title2 = [equalCopy location];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_47;
  }

  location = [(_SFPBCalendarEvent *)self location];
  if (location)
  {
    v24 = location;
    location2 = [(_SFPBCalendarEvent *)self location];
    location3 = [equalCopy location];
    v27 = [location2 isEqual:location3];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  title = [(_SFPBCalendarEvent *)self notes];
  title2 = [equalCopy notes];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_47;
  }

  notes = [(_SFPBCalendarEvent *)self notes];
  if (notes)
  {
    v29 = notes;
    notes2 = [(_SFPBCalendarEvent *)self notes];
    notes3 = [equalCopy notes];
    v32 = [notes2 isEqual:notes3];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  title = [(_SFPBCalendarEvent *)self startTimeZone];
  title2 = [equalCopy startTimeZone];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_47;
  }

  startTimeZone = [(_SFPBCalendarEvent *)self startTimeZone];
  if (startTimeZone)
  {
    v34 = startTimeZone;
    startTimeZone2 = [(_SFPBCalendarEvent *)self startTimeZone];
    startTimeZone3 = [equalCopy startTimeZone];
    v37 = [startTimeZone2 isEqual:startTimeZone3];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  title = [(_SFPBCalendarEvent *)self endTimeZone];
  title2 = [equalCopy endTimeZone];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_47;
  }

  endTimeZone = [(_SFPBCalendarEvent *)self endTimeZone];
  if (endTimeZone)
  {
    v39 = endTimeZone;
    endTimeZone2 = [(_SFPBCalendarEvent *)self endTimeZone];
    endTimeZone3 = [equalCopy endTimeZone];
    v42 = [endTimeZone2 isEqual:endTimeZone3];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  title = [(_SFPBCalendarEvent *)self endLocation];
  title2 = [equalCopy endLocation];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_47;
  }

  endLocation = [(_SFPBCalendarEvent *)self endLocation];
  if (endLocation)
  {
    v44 = endLocation;
    endLocation2 = [(_SFPBCalendarEvent *)self endLocation];
    endLocation3 = [equalCopy endLocation];
    v47 = [endLocation2 isEqual:endLocation3];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  title = [(_SFPBCalendarEvent *)self url];
  title2 = [equalCopy url];
  if ((title != 0) == (title2 == 0))
  {
LABEL_47:

    goto LABEL_48;
  }

  v48 = [(_SFPBCalendarEvent *)self url];
  if (!v48)
  {

LABEL_51:
    v53 = 1;
    goto LABEL_49;
  }

  v49 = v48;
  v50 = [(_SFPBCalendarEvent *)self url];
  v51 = [equalCopy url];
  v52 = [v50 isEqual:v51];

  if (v52)
  {
    goto LABEL_51;
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  title = [(_SFPBCalendarEvent *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  startDate = [(_SFPBCalendarEvent *)self startDate];
  if (startDate)
  {
    PBDataWriterWriteSubmessage();
  }

  endDate = [(_SFPBCalendarEvent *)self endDate];
  if (endDate)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCalendarEvent *)self isAllDay])
  {
    PBDataWriterWriteBOOLField();
  }

  location = [(_SFPBCalendarEvent *)self location];
  if (location)
  {
    PBDataWriterWriteSubmessage();
  }

  notes = [(_SFPBCalendarEvent *)self notes];
  if (notes)
  {
    PBDataWriterWriteStringField();
  }

  startTimeZone = [(_SFPBCalendarEvent *)self startTimeZone];
  if (startTimeZone)
  {
    PBDataWriterWriteSubmessage();
  }

  endTimeZone = [(_SFPBCalendarEvent *)self endTimeZone];
  if (endTimeZone)
  {
    PBDataWriterWriteSubmessage();
  }

  endLocation = [(_SFPBCalendarEvent *)self endLocation];
  if (endLocation)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBCalendarEvent *)self url];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setNotes:(id)notes
{
  v4 = [notes copy];
  notes = self->_notes;
  self->_notes = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end