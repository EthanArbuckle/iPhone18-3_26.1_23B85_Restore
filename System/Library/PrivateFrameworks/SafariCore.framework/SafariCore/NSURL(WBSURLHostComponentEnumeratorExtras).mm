@interface NSURL(WBSURLHostComponentEnumeratorExtras)
- (id)safari_hostComponentsEnumerator;
- (id)safari_hostDomainsEnumerator;
@end

@implementation NSURL(WBSURLHostComponentEnumeratorExtras)

- (id)safari_hostComponentsEnumerator
{
  v1 = [a1 host];
  v2 = v1;
  if (!v1)
  {
    v1 = &stru_1F3064D08;
  }

  v3 = [(__CFString *)v1 safari_hostComponentsEnumerator];

  return v3;
}

- (id)safari_hostDomainsEnumerator
{
  v1 = [a1 host];
  v2 = v1;
  if (!v1)
  {
    v1 = &stru_1F3064D08;
  }

  v3 = [(__CFString *)v1 safari_hostDomainsEnumerator];

  return v3;
}

@end