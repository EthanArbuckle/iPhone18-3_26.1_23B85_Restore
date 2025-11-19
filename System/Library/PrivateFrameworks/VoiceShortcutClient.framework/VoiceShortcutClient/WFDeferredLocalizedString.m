@interface WFDeferredLocalizedString
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
@end

@implementation WFDeferredLocalizedString

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WFDeferredLocalizedString alloc] initWithString:self];
  v5 = [(WFDeferredLocalizedString *)self localizedValue];
  [(WFDeferredLocalizedString *)v4 setLocalizedValue:v5];

  v6 = [(WFDeferredLocalizedString *)self stringResource];
  [(WFDeferredLocalizedString *)v4 setStringResource:v6];

  return v4;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v4 = [(WFDeferredLocalizedString *)self backingStore];
  LOWORD(a3) = [v4 characterAtIndex:a3];

  return a3;
}

- (unint64_t)length
{
  v2 = [(WFDeferredLocalizedString *)self backingStore];
  v3 = [v2 length];

  return v3;
}

@end