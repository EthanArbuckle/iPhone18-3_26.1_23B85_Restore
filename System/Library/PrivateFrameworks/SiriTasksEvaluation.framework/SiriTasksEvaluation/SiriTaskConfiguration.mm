@interface SiriTaskConfiguration
- (SiriTaskConfiguration)initWithDictionary:(id)dictionary;
- (SiriTaskConfiguration)initWithJSONData:(id)data;
@end

@implementation SiriTaskConfiguration

- (SiriTaskConfiguration)initWithJSONData:(id)data
{
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v10];
  v5 = v10;
  v6 = v5;
  if (!v4)
  {
    NSLog(&cfstr_ErrorDeseriali.isa, v5);
LABEL_6:
    selfCopy = 0;
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
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (SiriTaskConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SiriTaskConfiguration;
  v5 = [(SiriTaskConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventTime"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 copy];
      [(SiriTaskConfiguration *)v5 setEventTime:v7];

      v8 = [dictionaryCopy objectForKeyedSubscript:@"taskName"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = [v8 copy];
        [(SiriTaskConfiguration *)v5 setTaskName:v9];

        v10 = [dictionaryCopy objectForKeyedSubscript:@"taskType"];
        if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v11 = [v10 copy];
          [(SiriTaskConfiguration *)v5 setTaskType:v11];

          v12 = [dictionaryCopy objectForKeyedSubscript:@"minDurationInSeconds"];
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