@interface SFCalendarColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCalendarColor)initWithCoder:(id)coder;
- (SFCalendarColor)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCalendarColor

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFCalendarColor;
  v3 = [(SFColor *)&v7 hash];
  eventIdentifier = [(SFCalendarColor *)self eventIdentifier];
  v5 = [eventIdentifier hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFCalendarColor *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFCalendarColor, [(SFColor *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    eventIdentifier = [(SFCalendarColor *)self eventIdentifier];
    eventIdentifier2 = [(SFCalendarColor *)v5 eventIdentifier];
    if ((eventIdentifier != 0) == (eventIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      eventIdentifier3 = [(SFCalendarColor *)self eventIdentifier];
      if (eventIdentifier3)
      {
        eventIdentifier4 = [(SFCalendarColor *)self eventIdentifier];
        eventIdentifier5 = [(SFCalendarColor *)v5 eventIdentifier];
        v11 = [eventIdentifier4 isEqual:eventIdentifier5];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFCalendarColor;
  v4 = [(SFColor *)&v8 copyWithZone:zone];
  eventIdentifier = [(SFCalendarColor *)self eventIdentifier];
  v6 = [eventIdentifier copy];
  [v4 setEventIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCalendarColor alloc] initWithFacade:self];
  jsonData = [(_SFPBCalendarColor *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCalendarColor alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCalendarColor *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFCalendarColor;
  [(SFColor *)&v3 encodeWithCoder:coder];
}

- (SFCalendarColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCalendarColor *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBColor alloc] initWithData:v6];
  v8 = [[SFColor alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    eventIdentifier = [(SFColor *)v8 eventIdentifier];
    [(SFCalendarColor *)v5 setEventIdentifier:eventIdentifier];

    [(SFColor *)v8 redComponent];
    [(SFColor *)v5 setRedComponent:?];
    [(SFColor *)v8 greenComponent];
    [(SFColor *)v5 setGreenComponent:?];
    [(SFColor *)v8 blueComponent];
    [(SFColor *)v5 setBlueComponent:?];
    [(SFColor *)v8 alphaComponent];
    [(SFColor *)v5 setAlphaComponent:?];
    [(SFColor *)v5 setColorTintStyle:[(SFColor *)v8 colorTintStyle]];
    darkModeColor = [(SFColor *)v8 darkModeColor];
    [(SFColor *)v5 setDarkModeColor:darkModeColor];
  }

  return v5;
}

- (SFCalendarColor)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFCalendarColor;
  v5 = [(SFCalendarColor *)&v10 init];
  if (v5)
  {
    eventIdentifier = [protobufCopy eventIdentifier];

    if (eventIdentifier)
    {
      eventIdentifier2 = [protobufCopy eventIdentifier];
      [(SFCalendarColor *)v5 setEventIdentifier:eventIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

@end