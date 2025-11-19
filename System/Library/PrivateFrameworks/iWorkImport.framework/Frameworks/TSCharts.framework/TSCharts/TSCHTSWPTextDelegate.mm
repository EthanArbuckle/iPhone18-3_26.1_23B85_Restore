@interface TSCHTSWPTextDelegate
- (TSWPStyleProviding)styleProvidingSource;
@end

@implementation TSCHTSWPTextDelegate

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->styleProvidingSource);

  return WeakRetained;
}

@end