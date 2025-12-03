@interface NSURL(WBSURLHostComponentEnumeratorExtras)
- (id)safari_hostComponentsEnumerator;
- (id)safari_hostDomainsEnumerator;
@end

@implementation NSURL(WBSURLHostComponentEnumeratorExtras)

- (id)safari_hostComponentsEnumerator
{
  host = [self host];
  v2 = host;
  if (!host)
  {
    host = &stru_1F3064D08;
  }

  safari_hostComponentsEnumerator = [(__CFString *)host safari_hostComponentsEnumerator];

  return safari_hostComponentsEnumerator;
}

- (id)safari_hostDomainsEnumerator
{
  host = [self host];
  v2 = host;
  if (!host)
  {
    host = &stru_1F3064D08;
  }

  safari_hostDomainsEnumerator = [(__CFString *)host safari_hostDomainsEnumerator];

  return safari_hostDomainsEnumerator;
}

@end