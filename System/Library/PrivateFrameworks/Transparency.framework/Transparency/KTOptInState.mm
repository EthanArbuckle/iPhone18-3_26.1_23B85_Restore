@interface KTOptInState
- (KTOptInState)initWithApplication:(id)a3 optIn:(unint64_t)a4;
- (KTOptInState)initWithCoder:(id)a3;
- (KTOptInState)initWithURI:(id)a3 application:(id)a4;
- (id)debugDescription;
- (id)description;
- (id)jsonDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTOptInState

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(KTOptInState *)self application];
  [v14 encodeObject:v4 forKey:@"application"];

  [v14 encodeInteger:-[KTOptInState state](self forKey:{"state"), @"state"}];
  [v14 encodeInteger:-[KTOptInState everOptIn](self forKey:{"everOptIn"), @"everOptIn"}];
  v5 = [(KTOptInState *)self uri];

  if (v5)
  {
    v6 = [(KTOptInState *)self uri];
    [v14 encodeObject:v6 forKey:@"uri"];
  }

  v7 = [(KTOptInState *)self smtTimestamp];

  if (v7)
  {
    v8 = [(KTOptInState *)self smtTimestamp];
    [v14 encodeObject:v8 forKey:@"smtTimestamp"];
  }

  v9 = [(KTOptInState *)self osVersion];

  if (v9)
  {
    v10 = [(KTOptInState *)self osVersion];
    [v14 encodeObject:v10 forKey:@"osVersion"];
  }

  v11 = [(KTOptInState *)self serialNumber];

  v12 = v14;
  if (v11)
  {
    v13 = [(KTOptInState *)self serialNumber];
    [v14 encodeObject:v13 forKey:@"serialNumber"];

    v12 = v14;
  }
}

- (KTOptInState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v7 = [v4 decodeIntegerForKey:@"state"];
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
    v14 = 0;
  }

  else
  {
    [(KTOptInState *)v10 setUri:v5];
    [(KTOptInState *)self setApplication:v6];
    [(KTOptInState *)self setState:v9];
    -[KTOptInState setEverOptIn:](self, "setEverOptIn:", [v4 decodeIntegerForKey:@"everOptIn"] != 0);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smtTimestamp"];
    [(KTOptInState *)self setSmtTimestamp:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    [(KTOptInState *)self setOsVersion:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(KTOptInState *)self setSerialNumber:v13];

    self = self;
    v14 = self;
  }

  return v14;
}

- (KTOptInState)initWithURI:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = KTOptInState;
  v8 = [(KTOptInState *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(KTOptInState *)v8 setUri:v6];
    [(KTOptInState *)v9 setApplication:v7];
    [(KTOptInState *)v9 setState:2];
    v10 = v9;
  }

  return v9;
}

- (KTOptInState)initWithApplication:(id)a3 optIn:(unint64_t)a4
{
  v5 = [(KTOptInState *)self initWithURI:0 application:a3];
  [(KTOptInState *)v5 setState:a4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(KTOptInState *)self state];
  v5 = @"Off";
  if (v4 == 1)
  {
    v5 = @"On";
  }

  if (v4 == 2)
  {
    v5 = @"Pending";
  }

  v6 = v5;
  v7 = [(KTOptInState *)self uri];
  v8 = [(KTOptInState *)self application];
  v9 = [v3 stringWithFormat:@"<KTOptInState: s: %@ u: %@[%@]>", v6, v7, v8];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(KTOptInState *)self state];
  v5 = @"Off";
  if (v4 == 1)
  {
    v5 = @"On";
  }

  if (v4 == 2)
  {
    v5 = @"Pending";
  }

  v6 = v5;
  v7 = [(KTOptInState *)self uri];
  v8 = [(KTOptInState *)self application];
  v9 = [v3 stringWithFormat:@"<KTOptInState: %p s: %@ u: %@[%@]>", self, v6, v7, v8];

  return v9;
}

- (id)jsonDescription
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(KTOptInState *)self state];
  v5 = @"Off";
  if (v4 == 1)
  {
    v5 = @"On";
  }

  if (v4 == 2)
  {
    v6 = @"Pending";
  }

  else
  {
    v6 = v5;
  }

  [v3 setObject:v6 forKeyedSubscript:@"state"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTOptInState everOptIn](self, "everOptIn")}];
  [v3 setObject:v7 forKeyedSubscript:@"everOptIn"];

  v8 = [(KTOptInState *)self application];
  [v3 setObject:v8 forKeyedSubscript:@"application"];

  v9 = [(KTOptInState *)self uri];
  [v3 setObject:v9 forKeyedSubscript:@"uri"];

  v10 = [(KTOptInState *)self smtTimestamp];
  v11 = [v10 kt_toISO_8601_UTCString];
  [v3 setObject:v11 forKeyedSubscript:@"smtTimestampReadable"];

  v12 = MEMORY[0x1E696AD98];
  v13 = [(KTOptInState *)self smtTimestamp];
  [v13 timeIntervalSince1970];
  v15 = [v12 numberWithDouble:v14 * 1000.0];
  [v3 setObject:v15 forKeyedSubscript:@"smtTimetampMs"];

  v16 = [(KTOptInState *)self osVersion];
  [v3 setObject:v16 forKeyedSubscript:@"osVersion"];

  v17 = [(KTOptInState *)self serialNumber];
  [v3 setObject:v17 forKeyedSubscript:@"serialNumber"];

  return v3;
}

@end