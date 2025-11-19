@interface MOUserSafetyScanningPolicy
- (id)_interventionTypeDescription;
- (id)_policyDescription;
- (id)description;
@end

@implementation MOUserSafetyScanningPolicy

- (id)_policyDescription
{
  v2 = [(MOUserSafetyScanningPolicy *)self policy];
  v3 = @"None";
  if (v2 == 1)
  {
    v3 = @"NudityDetection";
  }

  if (v2 == 2)
  {
    return @"CommunicationSafety";
  }

  else
  {
    return v3;
  }
}

- (id)_interventionTypeDescription
{
  v2 = [(MOUserSafetyScanningPolicy *)self interventionType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"n/a";
  }

  v5 = v4;

  return v4;
}

- (id)description
{
  v3 = [(MOUserSafetyScanningPolicy *)self _policyDescription];
  v4 = [(MOUserSafetyScanningPolicy *)self _interventionTypeDescription];
  v5 = [NSString stringWithFormat:@"%@ (%@)", v3, v4];

  return v5;
}

@end