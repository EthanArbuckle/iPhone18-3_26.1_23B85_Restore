@interface SiriTaskConfiguration
- (SiriTaskConfiguration)initWithDictionary:(id)a3;
- (SiriTaskConfiguration)initWithJSONData:(id)a3;
@end

@implementation SiriTaskConfiguration

- (SiriTaskConfiguration)initWithJSONData:(id)a3
{
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v10];
  v5 = v10;
  v6 = v5;
  if (!v4)
  {
    NSLog(&cfstr_ErrorDeseriali.isa, v5);
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_opt_class();
    NSLog(&cfstr_GotAnInvalidJs.isa, v9);
    goto LABEL_6;
  }

  self = [(SiriTaskConfiguration *)self initWithDictionary:v4];
  v7 = self;
LABEL_7:

  return v7;
}

- (SiriTaskConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SiriTaskConfiguration;
  v5 = [(SiriTaskConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventTime"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 copy];
      [(SiriTaskConfiguration *)v5 setEventTime:v7];

      v8 = [v4 objectForKeyedSubscript:@"taskName"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = [v8 copy];
        [(SiriTaskConfiguration *)v5 setTaskName:v9];

        v10 = [v4 objectForKeyedSubscript:@"taskType"];
        if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v11 = [v10 copy];
          [(SiriTaskConfiguration *)v5 setTaskType:v11];

          v12 = [v4 objectForKeyedSubscript:@"minDurationInSeconds"];
          if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            -[SiriTaskConfiguration setMinDurationInSeconds:](v5, "setMinDurationInSeconds:", [v12 intValue]);
            v13 = v5;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end