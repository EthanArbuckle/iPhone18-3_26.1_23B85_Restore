@interface SXLastViewportComponentInsertionCondition
- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider;
@end

@implementation SXLastViewportComponentInsertionCondition

- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider
{
  providerCopy = provider;
  [marker approximateLocation];
  v8 = v7;
  [providerCopy documentSize];
  v10 = v9;
  [providerCopy viewportSize];
  v12 = v11;

  return v8 < v10 - v12;
}

@end