@interface MOUserSafetyScanningPolicy
- (id)_interventionTypeDescription;
- (id)_policyDescription;
- (id)description;
@end

@implementation MOUserSafetyScanningPolicy

- (id)_policyDescription
{
  policy = [(MOUserSafetyScanningPolicy *)self policy];
  v3 = @"None";
  if (policy == 1)
  {
    v3 = @"NudityDetection";
  }

  if (policy == 2)
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
  interventionType = [(MOUserSafetyScanningPolicy *)self interventionType];
  v3 = interventionType;
  if (interventionType)
  {
    v4 = interventionType;
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
  _policyDescription = [(MOUserSafetyScanningPolicy *)self _policyDescription];
  _interventionTypeDescription = [(MOUserSafetyScanningPolicy *)self _interventionTypeDescription];
  v5 = [NSString stringWithFormat:@"%@ (%@)", _policyDescription, _interventionTypeDescription];

  return v5;
}

@end