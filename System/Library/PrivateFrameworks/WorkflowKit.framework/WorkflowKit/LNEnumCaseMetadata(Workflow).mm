@interface LNEnumCaseMetadata(Workflow)
- (id)wf_localizedDisplayName;
- (id)wf_localizedSubtitle;
- (id)wf_symbolName;
@end

@implementation LNEnumCaseMetadata(Workflow)

- (id)wf_localizedSubtitle
{
  displayRepresentation = [self displayRepresentation];
  subtitle = [displayRepresentation subtitle];
  wf_localizedString = [subtitle wf_localizedString];

  return wf_localizedString;
}

- (id)wf_symbolName
{
  displayRepresentation = [self displayRepresentation];
  image = [displayRepresentation image];

  if (image)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = image;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  systemName = [v4 systemName];

  return systemName;
}

- (id)wf_localizedDisplayName
{
  displayRepresentation = [self displayRepresentation];
  title = [displayRepresentation title];
  wf_localizedString = [title wf_localizedString];

  return wf_localizedString;
}

@end