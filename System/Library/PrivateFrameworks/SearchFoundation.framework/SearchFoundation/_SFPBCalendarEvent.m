@interface _SFPBCalendarEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCalendarEvent)initWithDictionary:(id)a3;
- (_SFPBCalendarEvent)initWithFacade:(id)a3;
- (_SFPBCalendarEvent)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setNotes:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCalendarEvent

- (_SFPBCalendarEvent)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCalendarEvent *)self init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(_SFPBCalendarEvent *)v5 setTitle:v7];
    }

    v8 = [v4 startDate];

    if (v8)
    {
      v9 = [_SFPBDate alloc];
      v10 = [v4 startDate];
      v11 = [(_SFPBDate *)v9 initWithNSDate:v10];
      [(_SFPBCalendarEvent *)v5 setStartDate:v11];
    }

    v12 = [v4 endDate];

    if (v12)
    {
      v13 = [_SFPBDate alloc];
      v14 = [v4 endDate];
      v15 = [(_SFPBDate *)v13 initWithNSDate:v14];
      [(_SFPBCalendarEvent *)v5 setEndDate:v15];
    }

    if ([v4 hasIsAllDay])
    {
      -[_SFPBCalendarEvent setIsAllDay:](v5, "setIsAllDay:", [v4 isAllDay]);
    }

    v16 = [v4 location];

    if (v16)
    {
      v17 = [_SFPBStructuredLocation alloc];
      v18 = [v4 location];
      v19 = [(_SFPBStructuredLocation *)v17 initWithFacade:v18];
      [(_SFPBCalendarEvent *)v5 setLocation:v19];
    }

    v20 = [v4 notes];

    if (v20)
    {
      v21 = [v4 notes];
      [(_SFPBCalendarEvent *)v5 setNotes:v21];
    }

    v22 = [v4 startTimeZone];

    if (v22)
    {
      v23 = [_SFPBTimeZone alloc];
      v24 = [v4 startTimeZone];
      v25 = [(_SFPBTimeZone *)v23 initWithNSTimeZone:v24];
      [(_SFPBCalendarEvent *)v5 setStartTimeZone:v25];
    }

    v26 = [v4 endTimeZone];

    if (v26)
    {
      v27 = [_SFPBTimeZone alloc];
      v28 = [v4 endTimeZone];
      v29 = [(_SFPBTimeZone *)v27 initWithNSTimeZone:v28];
      [(_SFPBCalendarEvent *)v5 setEndTimeZone:v29];
    }

    v30 = [v4 endLocation];

    if (v30)
    {
      v31 = [_SFPBStructuredLocation alloc];
      v32 = [v4 endLocation];
      v33 = [(_SFPBStructuredLocation *)v31 initWithFacade:v32];
      [(_SFPBCalendarEvent *)v5 setEndLocation:v33];
    }

    v34 = [v4 url];

    if (v34)
    {
      v35 = [_SFPBURL alloc];
      v36 = [v4 url];
      v37 = [(_SFPBURL *)v35 initWithNSURL:v36];
      [(_SFPBCalendarEvent *)v5 setUrl:v37];
    }

    v38 = v5;
  }

  return v5;
}

- (_SFPBCalendarEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = _SFPBCalendarEvent;
  v5 = [(_SFPBCalendarEvent *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCalendarEvent *)v5 setTitle:v7];
    }

    v29 = v6;
    v8 = [v4 objectForKeyedSubscript:@"startDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDate alloc] initWithDictionary:v8];
      [(_SFPBCalendarEvent *)v5 setStartDate:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"endDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBDate alloc] initWithDictionary:v10];
      [(_SFPBCalendarEvent *)v5 setEndDate:v11];
    }

    v28 = v8;
    v12 = [v4 objectForKeyedSubscript:@"isAllDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCalendarEvent setIsAllDay:](v5, "setIsAllDay:", [v12 BOOLValue]);
    }

    v27 = v10;
    v13 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBStructuredLocation alloc] initWithDictionary:v13];
      [(_SFPBCalendarEvent *)v5 setLocation:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"notes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBCalendarEvent *)v5 setNotes:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"startTimeZone"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBTimeZone alloc] initWithDictionary:v17];
      [(_SFPBCalendarEvent *)v5 setStartTimeZone:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"endTimeZone"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBTimeZone alloc] initWithDictionary:v19];
      [(_SFPBCalendarEvent *)v5 setEndTimeZone:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"endLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBStructuredLocation alloc] initWithDictionary:v21];
      [(_SFPBCalendarEvent *)v5 setEndLocation:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"url"];
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

- (_SFPBCalendarEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCalendarEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCalendarEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_endDate)
  {
    v4 = [(_SFPBCalendarEvent *)self endDate];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"endDate"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"endDate"];
    }
  }

  if (self->_endLocation)
  {
    v7 = [(_SFPBCalendarEvent *)self endLocation];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"endLocation"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"endLocation"];
    }
  }

  if (self->_endTimeZone)
  {
    v10 = [(_SFPBCalendarEvent *)self endTimeZone];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"endTimeZone"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"endTimeZone"];
    }
  }

  if (self->_isAllDay)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCalendarEvent isAllDay](self, "isAllDay")}];
    [v3 setObject:v13 forKeyedSubscript:@"isAllDay"];
  }

  if (self->_location)
  {
    v14 = [(_SFPBCalendarEvent *)self location];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"location"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"location"];
    }
  }

  if (self->_notes)
  {
    v17 = [(_SFPBCalendarEvent *)self notes];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"notes"];
  }

  if (self->_startDate)
  {
    v19 = [(_SFPBCalendarEvent *)self startDate];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"startDate"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"startDate"];
    }
  }

  if (self->_startTimeZone)
  {
    v22 = [(_SFPBCalendarEvent *)self startTimeZone];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"startTimeZone"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"startTimeZone"];
    }
  }

  if (self->_title)
  {
    v25 = [(_SFPBCalendarEvent *)self title];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"title"];
  }

  if (self->_url)
  {
    v27 = [(_SFPBCalendarEvent *)self url];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"url"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"url"];
    }
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  v5 = [(_SFPBCalendarEvent *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v7 = [(_SFPBCalendarEvent *)self title];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCalendarEvent *)self title];
    v10 = [v4 title];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCalendarEvent *)self startDate];
  v6 = [v4 startDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v12 = [(_SFPBCalendarEvent *)self startDate];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCalendarEvent *)self startDate];
    v15 = [v4 startDate];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCalendarEvent *)self endDate];
  v6 = [v4 endDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v17 = [(_SFPBCalendarEvent *)self endDate];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCalendarEvent *)self endDate];
    v20 = [v4 endDate];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  isAllDay = self->_isAllDay;
  if (isAllDay != [v4 isAllDay])
  {
    goto LABEL_48;
  }

  v5 = [(_SFPBCalendarEvent *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v23 = [(_SFPBCalendarEvent *)self location];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBCalendarEvent *)self location];
    v26 = [v4 location];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCalendarEvent *)self notes];
  v6 = [v4 notes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v28 = [(_SFPBCalendarEvent *)self notes];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBCalendarEvent *)self notes];
    v31 = [v4 notes];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCalendarEvent *)self startTimeZone];
  v6 = [v4 startTimeZone];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v33 = [(_SFPBCalendarEvent *)self startTimeZone];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBCalendarEvent *)self startTimeZone];
    v36 = [v4 startTimeZone];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCalendarEvent *)self endTimeZone];
  v6 = [v4 endTimeZone];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v38 = [(_SFPBCalendarEvent *)self endTimeZone];
  if (v38)
  {
    v39 = v38;
    v40 = [(_SFPBCalendarEvent *)self endTimeZone];
    v41 = [v4 endTimeZone];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCalendarEvent *)self endLocation];
  v6 = [v4 endLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v43 = [(_SFPBCalendarEvent *)self endLocation];
  if (v43)
  {
    v44 = v43;
    v45 = [(_SFPBCalendarEvent *)self endLocation];
    v46 = [v4 endLocation];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCalendarEvent *)self url];
  v6 = [v4 url];
  if ((v5 != 0) == (v6 == 0))
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
  v51 = [v4 url];
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

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_SFPBCalendarEvent *)self title];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBCalendarEvent *)self startDate];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBCalendarEvent *)self endDate];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCalendarEvent *)self isAllDay])
  {
    PBDataWriterWriteBOOLField();
  }

  v7 = [(_SFPBCalendarEvent *)self location];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBCalendarEvent *)self notes];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(_SFPBCalendarEvent *)self startTimeZone];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBCalendarEvent *)self endTimeZone];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBCalendarEvent *)self endLocation];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBCalendarEvent *)self url];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setNotes:(id)a3
{
  v4 = [a3 copy];
  notes = self->_notes;
  self->_notes = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end