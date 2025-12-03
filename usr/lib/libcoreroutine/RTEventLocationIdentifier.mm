@interface RTEventLocationIdentifier
+ (BOOL)areCalendarIdentifiersEqual:(id)equal otherCalendarId:(id)id;
- (BOOL)isEqual:(id)equal;
- (RTEventLocationIdentifier)initWithEvent:(id)event source:(unint64_t)source useCalendarIdentifier:(BOOL)identifier;
- (RTEventLocationIdentifier)initWithName:(id)name source:(unint64_t)source calendarIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)normalize;
- (unint64_t)hash;
@end

@implementation RTEventLocationIdentifier

- (id)normalize
{
  name = [(RTEventLocationIdentifier *)self name];
  lowercaseString = [name lowercaseString];

  stringByRemovingAllWhitespaceAndPunctuation = [lowercaseString stringByRemovingAllWhitespaceAndPunctuation];
  [(RTEventLocationIdentifier *)self setName:stringByRemovingAllWhitespaceAndPunctuation];

  return self;
}

- (unint64_t)hash
{
  name = [(RTEventLocationIdentifier *)self name];
  v4 = [name hash];
  v5 = [(RTEventLocationIdentifier *)self source]+ v4;
  calendarIdentifier = [(RTEventLocationIdentifier *)self calendarIdentifier];
  v7 = [calendarIdentifier hash];

  return v5 + v7;
}

- (RTEventLocationIdentifier)initWithName:(id)name source:(unint64_t)source calendarIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = RTEventLocationIdentifier;
  v10 = [(RTEventLocationIdentifier *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_source = source;
    v13 = [identifierCopy copy];
    calendarIdentifier = v10->_calendarIdentifier;
    v10->_calendarIdentifier = v13;
  }

  return v10;
}

- (RTEventLocationIdentifier)initWithEvent:(id)event source:(unint64_t)source useCalendarIdentifier:(BOOL)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v9 = eventCopy;
  switch(source)
  {
    case 2uLL:
      title = [eventCopy title];
      if (identifier)
      {
        calendar = [v9 calendar];
        calendarIdentifier = [calendar calendarIdentifier];
        v15 = [(RTEventLocationIdentifier *)self initWithName:title source:2 calendarIdentifier:calendarIdentifier];
        goto LABEL_12;
      }

      v16 = [(RTEventLocationIdentifier *)self initWithName:title source:2 calendarIdentifier:0];
LABEL_15:
      self = v16;
      goto LABEL_16;
    case 1uLL:
      title = [eventCopy locationWithoutPrediction];
      if (identifier)
      {
        calendar = [v9 calendar];
        calendarIdentifier = [calendar calendarIdentifier];
        v15 = [(RTEventLocationIdentifier *)self initWithName:title source:1 calendarIdentifier:calendarIdentifier];
LABEL_12:
        self = v15;

LABEL_16:
        selfCopy = self;
        goto LABEL_17;
      }

      v16 = [(RTEventLocationIdentifier *)self initWithName:title source:1 calendarIdentifier:0];
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

  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  name = [(RTEventLocationIdentifier *)self name];
  source = [(RTEventLocationIdentifier *)self source];
  calendarIdentifier = [(RTEventLocationIdentifier *)self calendarIdentifier];
  v8 = [v4 initWithName:name source:source calendarIdentifier:calendarIdentifier];

  return v8;
}

+ (BOOL)areCalendarIdentifiersEqual:(id)equal otherCalendarId:(id)id
{
  equalCopy = equal;
  idCopy = id;
  v7 = idCopy;
  if (equalCopy == idCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (equalCopy && idCopy)
    {
      v8 = [equalCopy isEqualToString:idCopy];
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    source = [(RTEventLocationIdentifier *)self source];
    if (source == [v5 source])
    {
      name = [(RTEventLocationIdentifier *)self name];
      name2 = [v5 name];
      if ([name isEqualToString:name2])
      {
        v9 = objc_opt_class();
        calendarIdentifier = [(RTEventLocationIdentifier *)self calendarIdentifier];
        calendarIdentifier2 = [v5 calendarIdentifier];
        v12 = [v9 areCalendarIdentifiersEqual:calendarIdentifier otherCalendarId:calendarIdentifier2];
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
  name = [(RTEventLocationIdentifier *)self name];
  source = [(RTEventLocationIdentifier *)self source];
  calendarIdentifier = [(RTEventLocationIdentifier *)self calendarIdentifier];
  v7 = [v3 stringWithFormat:@"name, %@, source, %lu, calendarIdentifier, %@", name, source, calendarIdentifier];

  return v7;
}

@end