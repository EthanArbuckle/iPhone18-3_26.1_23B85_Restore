@interface SFCalendarEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCalendarEvent)initWithCoder:(id)coder;
- (SFCalendarEvent)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCalendarEvent

- (SFCalendarEvent)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v37.receiver = self;
  v37.super_class = SFCalendarEvent;
  v5 = [(SFCalendarEvent *)&v37 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFCalendarEvent *)v5 setTitle:title2];
    }

    startDate = [protobufCopy startDate];

    if (startDate)
    {
      startDate2 = [protobufCopy startDate];
      v10 = MEMORY[0x1E695DF00];
      [startDate2 secondsSince1970];
      v11 = [v10 dateWithTimeIntervalSince1970:?];
      [(SFCalendarEvent *)v5 setStartDate:v11];
    }

    endDate = [protobufCopy endDate];

    if (endDate)
    {
      endDate2 = [protobufCopy endDate];
      v14 = MEMORY[0x1E695DF00];
      [endDate2 secondsSince1970];
      v15 = [v14 dateWithTimeIntervalSince1970:?];
      [(SFCalendarEvent *)v5 setEndDate:v15];
    }

    if ([protobufCopy isAllDay])
    {
      -[SFCalendarEvent setIsAllDay:](v5, "setIsAllDay:", [protobufCopy isAllDay]);
    }

    location = [protobufCopy location];

    if (location)
    {
      v17 = [SFStructuredLocation alloc];
      location2 = [protobufCopy location];
      v19 = [(SFStructuredLocation *)v17 initWithProtobuf:location2];
      [(SFCalendarEvent *)v5 setLocation:v19];
    }

    notes = [protobufCopy notes];

    if (notes)
    {
      notes2 = [protobufCopy notes];
      [(SFCalendarEvent *)v5 setNotes:notes2];
    }

    startTimeZone = [protobufCopy startTimeZone];

    if (startTimeZone)
    {
      startTimeZone2 = [protobufCopy startTimeZone];
      v24 = _SFPBTimeZoneHandwrittenTranslator(startTimeZone2);
      [(SFCalendarEvent *)v5 setStartTimeZone:v24];
    }

    endTimeZone = [protobufCopy endTimeZone];

    if (endTimeZone)
    {
      endTimeZone2 = [protobufCopy endTimeZone];
      v27 = _SFPBTimeZoneHandwrittenTranslator(endTimeZone2);
      [(SFCalendarEvent *)v5 setEndTimeZone:v27];
    }

    endLocation = [protobufCopy endLocation];

    if (endLocation)
    {
      v29 = [SFStructuredLocation alloc];
      endLocation2 = [protobufCopy endLocation];
      v31 = [(SFStructuredLocation *)v29 initWithProtobuf:endLocation2];
      [(SFCalendarEvent *)v5 setEndLocation:v31];
    }

    v32 = [protobufCopy url];

    if (v32)
    {
      v33 = [protobufCopy url];
      v34 = _SFPBURLHandwrittenTranslator(v33);
      [(SFCalendarEvent *)v5 setUrl:v34];
    }

    v35 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  title = [(SFCalendarEvent *)self title];
  v3 = [title hash];
  startDate = [(SFCalendarEvent *)self startDate];
  v5 = [startDate hash] ^ v3;
  endDate = [(SFCalendarEvent *)self endDate];
  v7 = v5 ^ [endDate hash];
  isAllDay = [(SFCalendarEvent *)self isAllDay];
  location = [(SFCalendarEvent *)self location];
  v10 = v7 ^ isAllDay ^ [location hash];
  notes = [(SFCalendarEvent *)self notes];
  v12 = [notes hash];
  startTimeZone = [(SFCalendarEvent *)self startTimeZone];
  v14 = v12 ^ [startTimeZone hash];
  endTimeZone = [(SFCalendarEvent *)self endTimeZone];
  v16 = v14 ^ [endTimeZone hash];
  endLocation = [(SFCalendarEvent *)self endLocation];
  v18 = v10 ^ v16 ^ [endLocation hash];
  v19 = [(SFCalendarEvent *)self url];
  v20 = [v19 hash];

  return v18 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFCalendarEvent *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      title = [(SFCalendarEvent *)self title];
      title2 = [(SFCalendarEvent *)v5 title];
      if ((title != 0) == (title2 == 0))
      {
        v11 = 0;
LABEL_52:

        goto LABEL_53;
      }

      title3 = [(SFCalendarEvent *)self title];
      if (title3)
      {
        title4 = [(SFCalendarEvent *)self title];
        title5 = [(SFCalendarEvent *)v5 title];
        if (![title4 isEqual:title5])
        {
          v11 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v80 = title5;
        v81 = title4;
      }

      startDate = [(SFCalendarEvent *)self startDate];
      startDate2 = [(SFCalendarEvent *)v5 startDate];
      if ((startDate != 0) == (startDate2 == 0))
      {
        goto LABEL_48;
      }

      startDate3 = [(SFCalendarEvent *)self startDate];
      if (startDate3)
      {
        startDate4 = [(SFCalendarEvent *)self startDate];
        startDate5 = [(SFCalendarEvent *)v5 startDate];
        v78 = startDate4;
        if (![startDate4 isEqual:startDate5])
        {
LABEL_46:

LABEL_47:
          goto LABEL_48;
        }
      }

      v79 = startDate3;
      endDate = [(SFCalendarEvent *)self endDate];
      endDate2 = [(SFCalendarEvent *)v5 endDate];
      if ((endDate != 0) == (endDate2 == 0))
      {

        if (!startDate3)
        {
LABEL_48:

          v11 = 0;
          if (!title3)
          {
LABEL_51:

            goto LABEL_52;
          }

          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v74 = endDate;
      v75 = endDate2;
      endDate3 = [(SFCalendarEvent *)self endDate];
      if (endDate3)
      {
        endDate4 = [(SFCalendarEvent *)self endDate];
        endDate5 = [(SFCalendarEvent *)v5 endDate];
        v73 = endDate4;
        v20 = endDate4;
        endDate = endDate5;
        if (![v20 isEqual:endDate5])
        {
          goto LABEL_23;
        }
      }

      isAllDay = [(SFCalendarEvent *)self isAllDay];
      if (isAllDay != [(SFCalendarEvent *)v5 isAllDay])
      {
        startDate3 = v79;
        if (!endDate3)
        {
          goto LABEL_45;
        }

        goto LABEL_23;
      }

      v72 = endDate;
      location = [(SFCalendarEvent *)self location];
      location2 = [(SFCalendarEvent *)v5 location];
      if ((location != 0) == (location2 == 0))
      {

        startDate3 = v79;
        goto LABEL_44;
      }

      v69 = location2;
      v70 = location;
      [(SFCalendarEvent *)self location];
      v71 = startDate3 = v79;
      if (v71)
      {
        location3 = [(SFCalendarEvent *)self location];
        location4 = [(SFCalendarEvent *)v5 location];
        v68 = location3;
        if (![location3 isEqual:location4])
        {
          goto LABEL_42;
        }
      }

      notes = [(SFCalendarEvent *)self notes];
      notes2 = [(SFCalendarEvent *)v5 notes];
      if ((notes != 0) == (notes2 == 0))
      {

        goto LABEL_41;
      }

      v65 = notes;
      v66 = notes2;
      notes3 = [(SFCalendarEvent *)self notes];
      if (notes3)
      {
        notes4 = [(SFCalendarEvent *)self notes];
        notes5 = [(SFCalendarEvent *)v5 notes];
        v63 = notes4;
        if (![notes4 isEqual:?])
        {
LABEL_39:

LABEL_40:
LABEL_41:
          startDate3 = v79;
          if (!v71)
          {
LABEL_43:

LABEL_44:
            endDate = v72;
            if (!endDate3)
            {
LABEL_45:

              if (!startDate3)
              {
                goto LABEL_48;
              }

              goto LABEL_46;
            }

LABEL_23:

            goto LABEL_45;
          }

LABEL_42:

          goto LABEL_43;
        }
      }

      v64 = notes3;
      startTimeZone = [(SFCalendarEvent *)self startTimeZone];
      startTimeZone2 = [(SFCalendarEvent *)v5 startTimeZone];
      if ((startTimeZone != 0) == (startTimeZone2 == 0))
      {

        notes3 = v64;
        if (!v64)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v60 = startTimeZone2;
      startTimeZone3 = [(SFCalendarEvent *)self startTimeZone];
      if (startTimeZone3)
      {
        startTimeZone4 = [(SFCalendarEvent *)self startTimeZone];
        startTimeZone5 = [(SFCalendarEvent *)v5 startTimeZone];
        v58 = startTimeZone4;
        v32 = startTimeZone4;
        v33 = v64;
        if (![v32 isEqual:?])
        {
          goto LABEL_60;
        }
      }

      v59 = startTimeZone;
      endTimeZone = [(SFCalendarEvent *)self endTimeZone];
      endTimeZone2 = [(SFCalendarEvent *)v5 endTimeZone];
      if ((endTimeZone != 0) == (endTimeZone2 == 0))
      {

        v33 = v64;
        startTimeZone = v59;
        if (!startTimeZone3)
        {
          v40 = v71;
LABEL_61:

          if (v33)
          {
          }

          startDate3 = v79;
          if (v40)
          {
          }

          if (endDate3)
          {
          }

          if (!v79)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

LABEL_60:
        v40 = v71;

        goto LABEL_61;
      }

      v55 = endTimeZone2;
      v56 = endTimeZone;
      endTimeZone3 = [(SFCalendarEvent *)self endTimeZone];
      if (endTimeZone3)
      {
        endTimeZone4 = [(SFCalendarEvent *)self endTimeZone];
        endTimeZone5 = [(SFCalendarEvent *)v5 endTimeZone];
        v52 = endTimeZone4;
        if (![endTimeZone4 isEqual:?])
        {
          v11 = 0;
          v38 = startTimeZone3;
          v39 = endTimeZone3;
LABEL_84:

LABEL_85:
          if (v38)
          {
          }

          if (v64)
          {
          }

          if (v71)
          {
          }

          if (endDate3)
          {
          }

          if (v79)
          {
          }

          if (!title3)
          {
            goto LABEL_51;
          }

LABEL_49:
          title5 = v80;
          title4 = v81;
          goto LABEL_50;
        }
      }

      endLocation = [(SFCalendarEvent *)self endLocation];
      endLocation2 = [(SFCalendarEvent *)v5 endLocation];
      if ((endLocation != 0) == (endLocation2 == 0))
      {

        v11 = 0;
        goto LABEL_83;
      }

      endLocation3 = [(SFCalendarEvent *)self endLocation];
      if (!endLocation3 || (-[SFCalendarEvent endLocation](self, "endLocation"), v42 = objc_claimAutoreleasedReturnValue(), -[SFCalendarEvent endLocation](v5, "endLocation"), v46 = objc_claimAutoreleasedReturnValue(), v47 = v42, [v42 isEqual:?]))
      {
        v49 = [(SFCalendarEvent *)self url];
        v48 = [(SFCalendarEvent *)v5 url];
        if ((v49 != 0) == (v48 == 0))
        {

          v11 = 0;
        }

        else
        {
          v45 = [(SFCalendarEvent *)self url];
          if (v45)
          {
            v44 = [(SFCalendarEvent *)self url];
            v43 = [(SFCalendarEvent *)v5 url];
            v11 = [v44 isEqual:v43];
          }

          else
          {

            v11 = 1;
          }
        }

        if (!endLocation3)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v11 = 0;
      }

LABEL_82:
LABEL_83:
      v38 = startTimeZone3;
      v39 = endTimeZone3;
      if (!endTimeZone3)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    v11 = 0;
  }

LABEL_53:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(SFCalendarEvent *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  startDate = [(SFCalendarEvent *)self startDate];
  v8 = [startDate copy];
  [v4 setStartDate:v8];

  endDate = [(SFCalendarEvent *)self endDate];
  v10 = [endDate copy];
  [v4 setEndDate:v10];

  [v4 setIsAllDay:{-[SFCalendarEvent isAllDay](self, "isAllDay")}];
  location = [(SFCalendarEvent *)self location];
  v12 = [location copy];
  [v4 setLocation:v12];

  notes = [(SFCalendarEvent *)self notes];
  v14 = [notes copy];
  [v4 setNotes:v14];

  startTimeZone = [(SFCalendarEvent *)self startTimeZone];
  v16 = [startTimeZone copy];
  [v4 setStartTimeZone:v16];

  endTimeZone = [(SFCalendarEvent *)self endTimeZone];
  v18 = [endTimeZone copy];
  [v4 setEndTimeZone:v18];

  endLocation = [(SFCalendarEvent *)self endLocation];
  v20 = [endLocation copy];
  [v4 setEndLocation:v20];

  v21 = [(SFCalendarEvent *)self url];
  v22 = [v21 copy];
  [v4 setUrl:v22];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCalendarEvent alloc] initWithFacade:self];
  jsonData = [(_SFPBCalendarEvent *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCalendarEvent alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCalendarEvent *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCalendarEvent alloc] initWithFacade:self];
  data = [(_SFPBCalendarEvent *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCalendarEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCalendarEvent alloc] initWithData:v5];
  v7 = [(SFCalendarEvent *)self initWithProtobuf:v6];

  return v7;
}

@end