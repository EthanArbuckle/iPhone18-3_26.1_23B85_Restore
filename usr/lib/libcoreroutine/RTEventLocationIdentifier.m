@interface RTEventLocationIdentifier
+ (BOOL)areCalendarIdentifiersEqual:(id)a3 otherCalendarId:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RTEventLocationIdentifier)initWithEvent:(id)a3 source:(unint64_t)a4 useCalendarIdentifier:(BOOL)a5;
- (RTEventLocationIdentifier)initWithName:(id)a3 source:(unint64_t)a4 calendarIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)normalize;
- (unint64_t)hash;
@end

@implementation RTEventLocationIdentifier

- (id)normalize
{
  v3 = [(RTEventLocationIdentifier *)self name];
  v4 = [v3 lowercaseString];

  v5 = [v4 stringByRemovingAllWhitespaceAndPunctuation];
  [(RTEventLocationIdentifier *)self setName:v5];

  return self;
}

- (unint64_t)hash
{
  v3 = [(RTEventLocationIdentifier *)self name];
  v4 = [v3 hash];
  v5 = [(RTEventLocationIdentifier *)self source]+ v4;
  v6 = [(RTEventLocationIdentifier *)self calendarIdentifier];
  v7 = [v6 hash];

  return v5 + v7;
}

- (RTEventLocationIdentifier)initWithName:(id)a3 source:(unint64_t)a4 calendarIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = RTEventLocationIdentifier;
  v10 = [(RTEventLocationIdentifier *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_source = a4;
    v13 = [v9 copy];
    calendarIdentifier = v10->_calendarIdentifier;
    v10->_calendarIdentifier = v13;
  }

  return v10;
}

- (RTEventLocationIdentifier)initWithEvent:(id)a3 source:(unint64_t)a4 useCalendarIdentifier:(BOOL)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  switch(a4)
  {
    case 2uLL:
      v12 = [v8 title];
      if (a5)
      {
        v13 = [v9 calendar];
        v14 = [v13 calendarIdentifier];
        v15 = [(RTEventLocationIdentifier *)self initWithName:v12 source:2 calendarIdentifier:v14];
        goto LABEL_12;
      }

      v16 = [(RTEventLocationIdentifier *)self initWithName:v12 source:2 calendarIdentifier:0];
LABEL_15:
      self = v16;
      goto LABEL_16;
    case 1uLL:
      v12 = [v8 locationWithoutPrediction];
      if (a5)
      {
        v13 = [v9 calendar];
        v14 = [v13 calendarIdentifier];
        v15 = [(RTEventLocationIdentifier *)self initWithName:v12 source:1 calendarIdentifier:v14];
LABEL_12:
        self = v15;

LABEL_16:
        v11 = self;
        goto LABEL_17;
      }

      v16 = [(RTEventLocationIdentifier *)self initWithName:v12 source:1 calendarIdentifier:0];
      goto LABEL_15;
    case 0uLL:
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "[RTEventLocationIdentifier initWithEvent:source:useCalendarIdentifier:]";
        v20 = 1024;
        v21 = 48;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: source != RTEventLocationIdentifierSourceUnknown (in %s:%d)", &v18, 0x12u);
      }

      break;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTEventLocationIdentifier *)self name];
  v6 = [(RTEventLocationIdentifier *)self source];
  v7 = [(RTEventLocationIdentifier *)self calendarIdentifier];
  v8 = [v4 initWithName:v5 source:v6 calendarIdentifier:v7];

  return v8;
}

+ (BOOL)areCalendarIdentifiersEqual:(id)a3 otherCalendarId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RTEventLocationIdentifier *)self source];
    if (v6 == [v5 source])
    {
      v7 = [(RTEventLocationIdentifier *)self name];
      v8 = [v5 name];
      if ([v7 isEqualToString:v8])
      {
        v9 = objc_opt_class();
        v10 = [(RTEventLocationIdentifier *)self calendarIdentifier];
        v11 = [v5 calendarIdentifier];
        v12 = [v9 areCalendarIdentifiersEqual:v10 otherCalendarId:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTEventLocationIdentifier *)self name];
  v5 = [(RTEventLocationIdentifier *)self source];
  v6 = [(RTEventLocationIdentifier *)self calendarIdentifier];
  v7 = [v3 stringWithFormat:@"name, %@, source, %lu, calendarIdentifier, %@", v4, v5, v6];

  return v7;
}

@end