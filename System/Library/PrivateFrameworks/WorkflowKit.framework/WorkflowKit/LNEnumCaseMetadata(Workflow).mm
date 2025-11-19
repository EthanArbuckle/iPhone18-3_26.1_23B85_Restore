@interface LNEnumCaseMetadata(Workflow)
- (id)wf_localizedDisplayName;
- (id)wf_localizedSubtitle;
- (id)wf_symbolName;
@end

@implementation LNEnumCaseMetadata(Workflow)

- (id)wf_localizedSubtitle
{
  v1 = [a1 displayRepresentation];
  v2 = [v1 subtitle];
  v3 = [v2 wf_localizedString];

  return v3;
}

- (id)wf_symbolName
{
  v1 = [a1 displayRepresentation];
  v2 = [v1 image];

  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
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

  v5 = [v4 systemName];

  return v5;
}

- (id)wf_localizedDisplayName
{
  v1 = [a1 displayRepresentation];
  v2 = [v1 title];
  v3 = [v2 wf_localizedString];

  return v3;
}

@end