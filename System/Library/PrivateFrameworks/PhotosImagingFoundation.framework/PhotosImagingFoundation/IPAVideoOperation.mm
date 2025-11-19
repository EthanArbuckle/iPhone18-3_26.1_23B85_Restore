@interface IPAVideoOperation
- (id)archivalRepresentation;
@end

@implementation IPAVideoOperation

- (id)archivalRepresentation
{
  v3 = [(IPAEditOperation *)self settingsDictionary];
  if (v3)
  {
    v4 = [(IPAEditOperation *)self identifier];
    v5 = objc_opt_new();
    [v5 setIdentifier:v4];
    [v5 setSettings:v3];
    v6 = IPAAdjustmentCurrentVersionForIdentifier(v4);
    [v5 setVersion:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end