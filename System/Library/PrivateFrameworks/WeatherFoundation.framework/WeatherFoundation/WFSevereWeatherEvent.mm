@interface WFSevereWeatherEvent
- (WFSevereWeatherEvent)initWithCoder:(id)coder;
- (WFSevereWeatherEvent)initWithIdentifier:(id)identifier areaName:(id)name eventDescription:(id)description source:(id)source expirationDate:(id)date URL:(id)l importance:(unint64_t)importance;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSevereWeatherEvent

- (WFSevereWeatherEvent)initWithIdentifier:(id)identifier areaName:(id)name eventDescription:(id)description source:(id)source expirationDate:(id)date URL:(id)l importance:(unint64_t)importance
{
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  sourceCopy = source;
  dateCopy = date;
  lCopy = l;
  v37.receiver = self;
  v37.super_class = WFSevereWeatherEvent;
  v21 = [(WFSevereWeatherEvent *)&v37 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [nameCopy copy];
    areaName = v21->_areaName;
    v21->_areaName = v24;

    v26 = [descriptionCopy copy];
    eventDescription = v21->_eventDescription;
    v21->_eventDescription = v26;

    v28 = [sourceCopy copy];
    source = v21->_source;
    v21->_source = v28;

    v30 = [dateCopy copy];
    v31 = v30;
    if (v30)
    {
      distantFuture = v30;
    }

    else
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    }

    expirationDate = v21->_expirationDate;
    v21->_expirationDate = distantFuture;

    v34 = [lCopy copy];
    URL = v21->_URL;
    v21->_URL = v34;

    v21->_importance = importance;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_identifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_areaName copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_eventDescription copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSString *)self->_source copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSDate *)self->_expirationDate copy];
  v14 = v4[5];
  v4[5] = v13;

  v15 = [(NSURL *)self->_URL copy];
  v16 = v4[6];
  v4[6] = v15;

  v4[7] = self->_importance;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFSevereWeatherEvent *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"WFSevereWeatherEventIdentifierKey"];

  areaName = [(WFSevereWeatherEvent *)self areaName];
  [coderCopy encodeObject:areaName forKey:@"WFSevereWeatherEventAreaNameKey"];

  eventDescription = [(WFSevereWeatherEvent *)self eventDescription];
  [coderCopy encodeObject:eventDescription forKey:@"WFSevereWeatherEventDescription"];

  source = [(WFSevereWeatherEvent *)self source];
  [coderCopy encodeObject:source forKey:@"WFSevereWeatherEventSourceKey"];

  expirationDate = [(WFSevereWeatherEvent *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"WFSevereWeatherEventExpirationDateKey"];

  [coderCopy encodeInteger:-[WFSevereWeatherEvent importance](self forKey:{"importance"), @"WFSevereWeatherEventImportanceKey"}];
  v10 = [(WFSevereWeatherEvent *)self URL];
  [coderCopy encodeObject:v10 forKey:@"WFSevereWeatherEventURLKey"];
}

- (WFSevereWeatherEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventAreaNameKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventDescription"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventSourceKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventExpirationDateKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventURLKey"];
  v11 = [coderCopy decodeIntegerForKey:@"WFSevereWeatherEventImportanceKey"];

  v12 = [(WFSevereWeatherEvent *)self initWithIdentifier:v5 areaName:v6 eventDescription:v7 source:v8 expirationDate:v9 URL:v10 importance:v11];
  return v12;
}

@end