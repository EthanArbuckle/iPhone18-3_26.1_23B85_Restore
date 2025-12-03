@interface SXComponentExposureEvent
- (SXComponentExposureEvent)initWithComponent:(id)component;
- (id)description;
@end

@implementation SXComponentExposureEvent

- (SXComponentExposureEvent)initWithComponent:(id)component
{
  componentCopy = component;
  v17.receiver = self;
  v17.super_class = SXComponentExposureEvent;
  v5 = [(SXAnalyticsEvent *)&v17 init];
  if (v5)
  {
    identifier = [componentCopy identifier];
    componentIdentifier = v5->_componentIdentifier;
    v5->_componentIdentifier = identifier;

    classification = [componentCopy classification];
    roleString = [objc_opt_class() roleString];
    componentRole = v5->_componentRole;
    v5->_componentRole = roleString;

    type = [componentCopy type];
    componentType = v5->_componentType;
    v5->_componentType = type;

    analytics = [componentCopy analytics];
    jsonDictionary = [analytics jsonDictionary];
    metaData = v5->_metaData;
    v5->_metaData = jsonDictionary;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  componentType = [(SXComponentExposureEvent *)self componentType];
  [v3 appendFormat:@"; type: %@", componentType];

  componentIdentifier = [(SXComponentExposureEvent *)self componentIdentifier];
  [v3 appendFormat:@"; identifier: %@", componentIdentifier];

  endDate = [(SXAnalyticsEvent *)self endDate];

  if (endDate)
  {
    endDate2 = [(SXAnalyticsEvent *)self endDate];
    [endDate2 timeIntervalSinceReferenceDate];
    v9 = v8;
    startDate = [(SXAnalyticsEvent *)self startDate];
    [startDate timeIntervalSinceReferenceDate];
    [v3 appendFormat:@"; duration: %f", v9 - v11];
  }

  else
  {
    [v3 appendString:@"; duration: undetermined"];
  }

  [v3 appendString:@">"];

  return v3;
}

@end