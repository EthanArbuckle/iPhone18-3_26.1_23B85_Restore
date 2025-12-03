@interface KTOptInState
- (KTOptInState)initWithApplication:(id)application optIn:(unint64_t)in;
- (KTOptInState)initWithCoder:(id)coder;
- (KTOptInState)initWithURI:(id)i application:(id)application;
- (id)debugDescription;
- (id)description;
- (id)jsonDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTOptInState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  application = [(KTOptInState *)self application];
  [coderCopy encodeObject:application forKey:@"application"];

  [coderCopy encodeInteger:-[KTOptInState state](self forKey:{"state"), @"state"}];
  [coderCopy encodeInteger:-[KTOptInState everOptIn](self forKey:{"everOptIn"), @"everOptIn"}];
  v5 = [(KTOptInState *)self uri];

  if (v5)
  {
    v6 = [(KTOptInState *)self uri];
    [coderCopy encodeObject:v6 forKey:@"uri"];
  }

  smtTimestamp = [(KTOptInState *)self smtTimestamp];

  if (smtTimestamp)
  {
    smtTimestamp2 = [(KTOptInState *)self smtTimestamp];
    [coderCopy encodeObject:smtTimestamp2 forKey:@"smtTimestamp"];
  }

  osVersion = [(KTOptInState *)self osVersion];

  if (osVersion)
  {
    osVersion2 = [(KTOptInState *)self osVersion];
    [coderCopy encodeObject:osVersion2 forKey:@"osVersion"];
  }

  serialNumber = [(KTOptInState *)self serialNumber];

  v12 = coderCopy;
  if (serialNumber)
  {
    serialNumber2 = [(KTOptInState *)self serialNumber];
    [coderCopy encodeObject:serialNumber2 forKey:@"serialNumber"];

    v12 = coderCopy;
  }
}

- (KTOptInState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v7 = [coderCopy decodeIntegerForKey:@"state"];
  if (v6)
  {
    v8 = v7 > 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || (v9 = v7, v16.receiver = self, v16.super_class = KTOptInState, v10 = [(KTOptInState *)&v16 init], (self = v10) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    [(KTOptInState *)v10 setUri:v5];
    [(KTOptInState *)self setApplication:v6];
    [(KTOptInState *)self setState:v9];
    -[KTOptInState setEverOptIn:](self, "setEverOptIn:", [coderCopy decodeIntegerForKey:@"everOptIn"] != 0);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smtTimestamp"];
    [(KTOptInState *)self setSmtTimestamp:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    [(KTOptInState *)self setOsVersion:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(KTOptInState *)self setSerialNumber:v13];

    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (KTOptInState)initWithURI:(id)i application:(id)application
{
  iCopy = i;
  applicationCopy = application;
  v12.receiver = self;
  v12.super_class = KTOptInState;
  v8 = [(KTOptInState *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(KTOptInState *)v8 setUri:iCopy];
    [(KTOptInState *)v9 setApplication:applicationCopy];
    [(KTOptInState *)v9 setState:2];
    v10 = v9;
  }

  return v9;
}

- (KTOptInState)initWithApplication:(id)application optIn:(unint64_t)in
{
  v5 = [(KTOptInState *)self initWithURI:0 application:application];
  [(KTOptInState *)v5 setState:in];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  state = [(KTOptInState *)self state];
  v5 = @"Off";
  if (state == 1)
  {
    v5 = @"On";
  }

  if (state == 2)
  {
    v5 = @"Pending";
  }

  v6 = v5;
  v7 = [(KTOptInState *)self uri];
  application = [(KTOptInState *)self application];
  v9 = [v3 stringWithFormat:@"<KTOptInState: s: %@ u: %@[%@]>", v6, v7, application];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  state = [(KTOptInState *)self state];
  v5 = @"Off";
  if (state == 1)
  {
    v5 = @"On";
  }

  if (state == 2)
  {
    v5 = @"Pending";
  }

  v6 = v5;
  v7 = [(KTOptInState *)self uri];
  application = [(KTOptInState *)self application];
  v9 = [v3 stringWithFormat:@"<KTOptInState: %p s: %@ u: %@[%@]>", self, v6, v7, application];

  return v9;
}

- (id)jsonDescription
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  state = [(KTOptInState *)self state];
  v5 = @"Off";
  if (state == 1)
  {
    v5 = @"On";
  }

  if (state == 2)
  {
    v6 = @"Pending";
  }

  else
  {
    v6 = v5;
  }

  [dictionary setObject:v6 forKeyedSubscript:@"state"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTOptInState everOptIn](self, "everOptIn")}];
  [dictionary setObject:v7 forKeyedSubscript:@"everOptIn"];

  application = [(KTOptInState *)self application];
  [dictionary setObject:application forKeyedSubscript:@"application"];

  v9 = [(KTOptInState *)self uri];
  [dictionary setObject:v9 forKeyedSubscript:@"uri"];

  smtTimestamp = [(KTOptInState *)self smtTimestamp];
  kt_toISO_8601_UTCString = [smtTimestamp kt_toISO_8601_UTCString];
  [dictionary setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"smtTimestampReadable"];

  v12 = MEMORY[0x1E696AD98];
  smtTimestamp2 = [(KTOptInState *)self smtTimestamp];
  [smtTimestamp2 timeIntervalSince1970];
  v15 = [v12 numberWithDouble:v14 * 1000.0];
  [dictionary setObject:v15 forKeyedSubscript:@"smtTimetampMs"];

  osVersion = [(KTOptInState *)self osVersion];
  [dictionary setObject:osVersion forKeyedSubscript:@"osVersion"];

  serialNumber = [(KTOptInState *)self serialNumber];
  [dictionary setObject:serialNumber forKeyedSubscript:@"serialNumber"];

  return dictionary;
}

@end