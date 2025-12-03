@interface WFDeferredLocalizedString
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
@end

@implementation WFDeferredLocalizedString

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WFDeferredLocalizedString alloc] initWithString:self];
  localizedValue = [(WFDeferredLocalizedString *)self localizedValue];
  [(WFDeferredLocalizedString *)v4 setLocalizedValue:localizedValue];

  stringResource = [(WFDeferredLocalizedString *)self stringResource];
  [(WFDeferredLocalizedString *)v4 setStringResource:stringResource];

  return v4;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  backingStore = [(WFDeferredLocalizedString *)self backingStore];
  LOWORD(index) = [backingStore characterAtIndex:index];

  return index;
}

- (unint64_t)length
{
  backingStore = [(WFDeferredLocalizedString *)self backingStore];
  v3 = [backingStore length];

  return v3;
}

@end