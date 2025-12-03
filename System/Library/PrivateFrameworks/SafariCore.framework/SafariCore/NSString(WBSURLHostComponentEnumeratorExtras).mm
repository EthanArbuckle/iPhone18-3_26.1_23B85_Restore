@interface NSString(WBSURLHostComponentEnumeratorExtras)
- (WBSURLHostComponentEnumerator)safari_hostComponentsEnumerator;
- (WBSURLHostComponentEnumerator)safari_hostDomainsEnumerator;
@end

@implementation NSString(WBSURLHostComponentEnumeratorExtras)

- (WBSURLHostComponentEnumerator)safari_hostDomainsEnumerator
{
  v1 = [[WBSURLHostComponentEnumerator alloc] initWithHost:self options:4];

  return v1;
}

- (WBSURLHostComponentEnumerator)safari_hostComponentsEnumerator
{
  v1 = [[WBSURLHostComponentEnumerator alloc] initWithHost:self options:5];

  return v1;
}

@end