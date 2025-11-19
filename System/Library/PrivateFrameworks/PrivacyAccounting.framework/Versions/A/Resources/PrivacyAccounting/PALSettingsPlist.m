@interface PALSettingsPlist
+ (id)settingsFromFile:(id)a3 withError:(id *)a4;
- (PALSettingsPlist)init;
- (PALSettingsPlist)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PALSettingsPlist

+ (id)settingsFromFile:(id)a3 withError:(id *)a4
{
  v12 = 0;
  v5 = [NSData dataWithContentsOfFile:a3 options:0 error:&v12];
  v6 = v12;
  if (v5)
  {
    [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"PALSettings"];
    v11 = v6;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];
    v8 = v11;

    v6 = v8;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v9 = v6;
    *a4 = v6;
  }

LABEL_7:

  return v7;
}

- (PALSettingsPlist)init
{
  v3.receiver = self;
  v3.super_class = PALSettingsPlist;
  result = [(PALSettingsPlist *)&v3 init];
  if (result)
  {
    result->_loggingEnabled = 0;
    result->_lastPreflightCheck = 0.0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  loggingEnabled = self->_loggingEnabled;
  v5 = a3;
  [v5 encodeBool:loggingEnabled forKey:@"loggingEnabled"];
  [v5 encodeDouble:@"lastPreflightCheck" forKey:self->_lastPreflightCheck];
}

- (PALSettingsPlist)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PALSettingsPlist;
  v5 = [(PALSettingsPlist *)&v8 init];
  if (v5)
  {
    v5->_loggingEnabled = [v4 decodeBoolForKey:@"loggingEnabled"];
    [v4 decodeDoubleForKey:@"lastPreflightCheck"];
    v5->_lastPreflightCheck = v6;
  }

  return v5;
}

@end