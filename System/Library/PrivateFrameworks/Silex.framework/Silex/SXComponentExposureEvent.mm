@interface SXComponentExposureEvent
- (SXComponentExposureEvent)initWithComponent:(id)a3;
- (id)description;
@end

@implementation SXComponentExposureEvent

- (SXComponentExposureEvent)initWithComponent:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SXComponentExposureEvent;
  v5 = [(SXAnalyticsEvent *)&v17 init];
  if (v5)
  {
    v6 = [v4 identifier];
    componentIdentifier = v5->_componentIdentifier;
    v5->_componentIdentifier = v6;

    v8 = [v4 classification];
    v9 = [objc_opt_class() roleString];
    componentRole = v5->_componentRole;
    v5->_componentRole = v9;

    v11 = [v4 type];
    componentType = v5->_componentType;
    v5->_componentType = v11;

    v13 = [v4 analytics];
    v14 = [v13 jsonDictionary];
    metaData = v5->_metaData;
    v5->_metaData = v14;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(SXComponentExposureEvent *)self componentType];
  [v3 appendFormat:@"; type: %@", v4];

  v5 = [(SXComponentExposureEvent *)self componentIdentifier];
  [v3 appendFormat:@"; identifier: %@", v5];

  v6 = [(SXAnalyticsEvent *)self endDate];

  if (v6)
  {
    v7 = [(SXAnalyticsEvent *)self endDate];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = [(SXAnalyticsEvent *)self startDate];
    [v10 timeIntervalSinceReferenceDate];
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