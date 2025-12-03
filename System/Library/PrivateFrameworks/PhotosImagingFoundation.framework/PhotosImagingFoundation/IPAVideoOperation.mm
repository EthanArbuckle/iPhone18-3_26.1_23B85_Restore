@interface IPAVideoOperation
- (id)archivalRepresentation;
@end

@implementation IPAVideoOperation

- (id)archivalRepresentation
{
  settingsDictionary = [(IPAEditOperation *)self settingsDictionary];
  if (settingsDictionary)
  {
    identifier = [(IPAEditOperation *)self identifier];
    v5 = objc_opt_new();
    [v5 setIdentifier:identifier];
    [v5 setSettings:settingsDictionary];
    v6 = IPAAdjustmentCurrentVersionForIdentifier(identifier);
    [v5 setVersion:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end