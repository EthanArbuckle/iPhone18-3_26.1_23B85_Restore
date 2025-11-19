@interface SFCalendarEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCalendarEvent)initWithCoder:(id)a3;
- (SFCalendarEvent)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCalendarEvent

- (SFCalendarEvent)initWithProtobuf:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SFCalendarEvent;
  v5 = [(SFCalendarEvent *)&v37 init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(SFCalendarEvent *)v5 setTitle:v7];
    }

    v8 = [v4 startDate];

    if (v8)
    {
      v9 = [v4 startDate];
      v10 = MEMORY[0x1E695DF00];
      [v9 secondsSince1970];
      v11 = [v10 dateWithTimeIntervalSince1970:?];
      [(SFCalendarEvent *)v5 setStartDate:v11];
    }

    v12 = [v4 endDate];

    if (v12)
    {
      v13 = [v4 endDate];
      v14 = MEMORY[0x1E695DF00];
      [v13 secondsSince1970];
      v15 = [v14 dateWithTimeIntervalSince1970:?];
      [(SFCalendarEvent *)v5 setEndDate:v15];
    }

    if ([v4 isAllDay])
    {
      -[SFCalendarEvent setIsAllDay:](v5, "setIsAllDay:", [v4 isAllDay]);
    }

    v16 = [v4 location];

    if (v16)
    {
      v17 = [SFStructuredLocation alloc];
      v18 = [v4 location];
      v19 = [(SFStructuredLocation *)v17 initWithProtobuf:v18];
      [(SFCalendarEvent *)v5 setLocation:v19];
    }

    v20 = [v4 notes];

    if (v20)
    {
      v21 = [v4 notes];
      [(SFCalendarEvent *)v5 setNotes:v21];
    }

    v22 = [v4 startTimeZone];

    if (v22)
    {
      v23 = [v4 startTimeZone];
      v24 = _SFPBTimeZoneHandwrittenTranslator(v23);
      [(SFCalendarEvent *)v5 setStartTimeZone:v24];
    }

    v25 = [v4 endTimeZone];

    if (v25)
    {
      v26 = [v4 endTimeZone];
      v27 = _SFPBTimeZoneHandwrittenTranslator(v26);
      [(SFCalendarEvent *)v5 setEndTimeZone:v27];
    }

    v28 = [v4 endLocation];

    if (v28)
    {
      v29 = [SFStructuredLocation alloc];
      v30 = [v4 endLocation];
      v31 = [(SFStructuredLocation *)v29 initWithProtobuf:v30];
      [(SFCalendarEvent *)v5 setEndLocation:v31];
    }

    v32 = [v4 url];

    if (v32)
    {
      v33 = [v4 url];
      v34 = _SFPBURLHandwrittenTranslator(v33);
      [(SFCalendarEvent *)v5 setUrl:v34];
    }

    v35 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v22 = [(SFCalendarEvent *)self title];
  v3 = [v22 hash];
  v4 = [(SFCalendarEvent *)self startDate];
  v5 = [v4 hash] ^ v3;
  v6 = [(SFCalendarEvent *)self endDate];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCalendarEvent *)self isAllDay];
  v9 = [(SFCalendarEvent *)self location];
  v10 = v7 ^ v8 ^ [v9 hash];
  v11 = [(SFCalendarEvent *)self notes];
  v12 = [v11 hash];
  v13 = [(SFCalendarEvent *)self startTimeZone];
  v14 = v12 ^ [v13 hash];
  v15 = [(SFCalendarEvent *)self endTimeZone];
  v16 = v14 ^ [v15 hash];
  v17 = [(SFCalendarEvent *)self endLocation];
  v18 = v10 ^ v16 ^ [v17 hash];
  v19 = [(SFCalendarEvent *)self url];
  v20 = [v19 hash];

  return v18 ^ v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFCalendarEvent *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(SFCalendarEvent *)self title];
      v7 = [(SFCalendarEvent *)v5 title];
      if ((v6 != 0) == (v7 == 0))
      {
        v11 = 0;
LABEL_52:

        goto LABEL_53;
      }

      v8 = [(SFCalendarEvent *)self title];
      if (v8)
      {
        v9 = [(SFCalendarEvent *)self title];
        v10 = [(SFCalendarEvent *)v5 title];
        if (![v9 isEqual:v10])
        {
          v11 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v80 = v10;
        v81 = v9;
      }

      v12 = [(SFCalendarEvent *)self startDate];
      v13 = [(SFCalendarEvent *)v5 startDate];
      if ((v12 != 0) == (v13 == 0))
      {
        goto LABEL_48;
      }

      v14 = [(SFCalendarEvent *)self startDate];
      if (v14)
      {
        v15 = [(SFCalendarEvent *)self startDate];
        v77 = [(SFCalendarEvent *)v5 startDate];
        v78 = v15;
        if (![v15 isEqual:v77])
        {
LABEL_46:

LABEL_47:
          goto LABEL_48;
        }
      }

      v79 = v14;
      v16 = [(SFCalendarEvent *)self endDate];
      v17 = [(SFCalendarEvent *)v5 endDate];
      if ((v16 != 0) == (v17 == 0))
      {

        if (!v14)
        {
LABEL_48:

          v11 = 0;
          if (!v8)
          {
LABEL_51:

            goto LABEL_52;
          }

          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v74 = v16;
      v75 = v17;
      v76 = [(SFCalendarEvent *)self endDate];
      if (v76)
      {
        v18 = [(SFCalendarEvent *)self endDate];
        v19 = [(SFCalendarEvent *)v5 endDate];
        v73 = v18;
        v20 = v18;
        v16 = v19;
        if (![v20 isEqual:v19])
        {
          goto LABEL_23;
        }
      }

      v21 = [(SFCalendarEvent *)self isAllDay];
      if (v21 != [(SFCalendarEvent *)v5 isAllDay])
      {
        v14 = v79;
        if (!v76)
        {
          goto LABEL_45;
        }

        goto LABEL_23;
      }

      v72 = v16;
      v22 = [(SFCalendarEvent *)self location];
      v23 = [(SFCalendarEvent *)v5 location];
      if ((v22 != 0) == (v23 == 0))
      {

        v14 = v79;
        goto LABEL_44;
      }

      v69 = v23;
      v70 = v22;
      [(SFCalendarEvent *)self location];
      v71 = v14 = v79;
      if (v71)
      {
        v24 = [(SFCalendarEvent *)self location];
        v67 = [(SFCalendarEvent *)v5 location];
        v68 = v24;
        if (![v24 isEqual:v67])
        {
          goto LABEL_42;
        }
      }

      v25 = [(SFCalendarEvent *)self notes];
      v26 = [(SFCalendarEvent *)v5 notes];
      if ((v25 != 0) == (v26 == 0))
      {

        goto LABEL_41;
      }

      v65 = v25;
      v66 = v26;
      v27 = [(SFCalendarEvent *)self notes];
      if (v27)
      {
        v28 = [(SFCalendarEvent *)self notes];
        v62 = [(SFCalendarEvent *)v5 notes];
        v63 = v28;
        if (![v28 isEqual:?])
        {
LABEL_39:

LABEL_40:
LABEL_41:
          v14 = v79;
          if (!v71)
          {
LABEL_43:

LABEL_44:
            v16 = v72;
            if (!v76)
            {
LABEL_45:

              if (!v14)
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

      v64 = v27;
      v29 = [(SFCalendarEvent *)self startTimeZone];
      v30 = [(SFCalendarEvent *)v5 startTimeZone];
      if ((v29 != 0) == (v30 == 0))
      {

        v27 = v64;
        if (!v64)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v60 = v30;
      v61 = [(SFCalendarEvent *)self startTimeZone];
      if (v61)
      {
        v31 = [(SFCalendarEvent *)self startTimeZone];
        v57 = [(SFCalendarEvent *)v5 startTimeZone];
        v58 = v31;
        v32 = v31;
        v33 = v64;
        if (![v32 isEqual:?])
        {
          goto LABEL_60;
        }
      }

      v59 = v29;
      v35 = [(SFCalendarEvent *)self endTimeZone];
      v36 = [(SFCalendarEvent *)v5 endTimeZone];
      if ((v35 != 0) == (v36 == 0))
      {

        v33 = v64;
        v29 = v59;
        if (!v61)
        {
          v40 = v71;
LABEL_61:

          if (v33)
          {
          }

          v14 = v79;
          if (v40)
          {
          }

          if (v76)
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

      v55 = v36;
      v56 = v35;
      v54 = [(SFCalendarEvent *)self endTimeZone];
      if (v54)
      {
        v37 = [(SFCalendarEvent *)self endTimeZone];
        v51 = [(SFCalendarEvent *)v5 endTimeZone];
        v52 = v37;
        if (![v37 isEqual:?])
        {
          v11 = 0;
          v38 = v61;
          v39 = v54;
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

          if (v76)
          {
          }

          if (v79)
          {
          }

          if (!v8)
          {
            goto LABEL_51;
          }

LABEL_49:
          v10 = v80;
          v9 = v81;
          goto LABEL_50;
        }
      }

      v41 = [(SFCalendarEvent *)self endLocation];
      v53 = [(SFCalendarEvent *)v5 endLocation];
      if ((v41 != 0) == (v53 == 0))
      {

        v11 = 0;
        goto LABEL_83;
      }

      v50 = [(SFCalendarEvent *)self endLocation];
      if (!v50 || (-[SFCalendarEvent endLocation](self, "endLocation"), v42 = objc_claimAutoreleasedReturnValue(), -[SFCalendarEvent endLocation](v5, "endLocation"), v46 = objc_claimAutoreleasedReturnValue(), v47 = v42, [v42 isEqual:?]))
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

        if (!v50)
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
      v38 = v61;
      v39 = v54;
      if (!v54)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFCalendarEvent *)self title];
  v6 = [v5 copy];
  [v4 setTitle:v6];

  v7 = [(SFCalendarEvent *)self startDate];
  v8 = [v7 copy];
  [v4 setStartDate:v8];

  v9 = [(SFCalendarEvent *)self endDate];
  v10 = [v9 copy];
  [v4 setEndDate:v10];

  [v4 setIsAllDay:{-[SFCalendarEvent isAllDay](self, "isAllDay")}];
  v11 = [(SFCalendarEvent *)self location];
  v12 = [v11 copy];
  [v4 setLocation:v12];

  v13 = [(SFCalendarEvent *)self notes];
  v14 = [v13 copy];
  [v4 setNotes:v14];

  v15 = [(SFCalendarEvent *)self startTimeZone];
  v16 = [v15 copy];
  [v4 setStartTimeZone:v16];

  v17 = [(SFCalendarEvent *)self endTimeZone];
  v18 = [v17 copy];
  [v4 setEndTimeZone:v18];

  v19 = [(SFCalendarEvent *)self endLocation];
  v20 = [v19 copy];
  [v4 setEndLocation:v20];

  v21 = [(SFCalendarEvent *)self url];
  v22 = [v21 copy];
  [v4 setUrl:v22];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCalendarEvent alloc] initWithFacade:self];
  v3 = [(_SFPBCalendarEvent *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCalendarEvent alloc] initWithFacade:self];
  v3 = [(_SFPBCalendarEvent *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCalendarEvent alloc] initWithFacade:self];
  v5 = [(_SFPBCalendarEvent *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCalendarEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCalendarEvent alloc] initWithData:v5];
  v7 = [(SFCalendarEvent *)self initWithProtobuf:v6];

  return v7;
}

@end