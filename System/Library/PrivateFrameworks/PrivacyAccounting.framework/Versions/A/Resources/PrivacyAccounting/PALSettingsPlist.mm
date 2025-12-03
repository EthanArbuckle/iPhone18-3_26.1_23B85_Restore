@interface PALSettingsPlist
+ (id)settingsFromFile:(id)file withError:(id *)error;
- (PALSettingsPlist)init;
- (PALSettingsPlist)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PALSettingsPlist

+ (id)settingsFromFile:(id)file withError:(id *)error
{
  v12 = 0;
  v5 = [NSData dataWithContentsOfFile:file options:0 error:&v12];
  v6 = v12;
  if (v5)
  {
    [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"PALSettings"];
    v11 = v6;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];
    v8 = v11;

    v6 = v8;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v9 = v6;
    *error = v6;
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

- (void)encodeWithCoder:(id)coder
{
  loggingEnabled = self->_loggingEnabled;
  coderCopy = coder;
  [coderCopy encodeBool:loggingEnabled forKey:@"loggingEnabled"];
  [coderCopy encodeDouble:@"lastPreflightCheck" forKey:self->_lastPreflightCheck];
}

- (PALSettingsPlist)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PALSettingsPlist;
  v5 = [(PALSettingsPlist *)&v8 init];
  if (v5)
  {
    v5->_loggingEnabled = [coderCopy decodeBoolForKey:@"loggingEnabled"];
    [coderCopy decodeDoubleForKey:@"lastPreflightCheck"];
    v5->_lastPreflightCheck = v6;
  }

  return v5;
}

@end