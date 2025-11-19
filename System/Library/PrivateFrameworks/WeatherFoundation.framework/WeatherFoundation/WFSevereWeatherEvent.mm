@interface WFSevereWeatherEvent
- (WFSevereWeatherEvent)initWithCoder:(id)a3;
- (WFSevereWeatherEvent)initWithIdentifier:(id)a3 areaName:(id)a4 eventDescription:(id)a5 source:(id)a6 expirationDate:(id)a7 URL:(id)a8 importance:(unint64_t)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSevereWeatherEvent

- (WFSevereWeatherEvent)initWithIdentifier:(id)a3 areaName:(id)a4 eventDescription:(id)a5 source:(id)a6 expirationDate:(id)a7 URL:(id)a8 importance:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v37.receiver = self;
  v37.super_class = WFSevereWeatherEvent;
  v21 = [(WFSevereWeatherEvent *)&v37 init];
  if (v21)
  {
    v22 = [v15 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v16 copy];
    areaName = v21->_areaName;
    v21->_areaName = v24;

    v26 = [v17 copy];
    eventDescription = v21->_eventDescription;
    v21->_eventDescription = v26;

    v28 = [v18 copy];
    source = v21->_source;
    v21->_source = v28;

    v30 = [v19 copy];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    expirationDate = v21->_expirationDate;
    v21->_expirationDate = v32;

    v34 = [v20 copy];
    URL = v21->_URL;
    v21->_URL = v34;

    v21->_importance = a9;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFSevereWeatherEvent *)self identifier];
  [v4 encodeObject:v5 forKey:@"WFSevereWeatherEventIdentifierKey"];

  v6 = [(WFSevereWeatherEvent *)self areaName];
  [v4 encodeObject:v6 forKey:@"WFSevereWeatherEventAreaNameKey"];

  v7 = [(WFSevereWeatherEvent *)self eventDescription];
  [v4 encodeObject:v7 forKey:@"WFSevereWeatherEventDescription"];

  v8 = [(WFSevereWeatherEvent *)self source];
  [v4 encodeObject:v8 forKey:@"WFSevereWeatherEventSourceKey"];

  v9 = [(WFSevereWeatherEvent *)self expirationDate];
  [v4 encodeObject:v9 forKey:@"WFSevereWeatherEventExpirationDateKey"];

  [v4 encodeInteger:-[WFSevereWeatherEvent importance](self forKey:{"importance"), @"WFSevereWeatherEventImportanceKey"}];
  v10 = [(WFSevereWeatherEvent *)self URL];
  [v4 encodeObject:v10 forKey:@"WFSevereWeatherEventURLKey"];
}

- (WFSevereWeatherEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventIdentifierKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventAreaNameKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventDescription"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventSourceKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventExpirationDateKey"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFSevereWeatherEventURLKey"];
  v11 = [v4 decodeIntegerForKey:@"WFSevereWeatherEventImportanceKey"];

  v12 = [(WFSevereWeatherEvent *)self initWithIdentifier:v5 areaName:v6 eventDescription:v7 source:v8 expirationDate:v9 URL:v10 importance:v11];
  return v12;
}

@end