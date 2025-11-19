@interface SFCardSection(SpotlightExtras)
- (void)setSpotlightBackingResult:()SpotlightExtras;
@end

@implementation SFCardSection(SpotlightExtras)

- (void)setSpotlightBackingResult:()SpotlightExtras
{
  v4 = a3;
  value = [objc_alloc(objc_opt_class()) initWithResult:v4];

  [value setCard:0];
  [value setInlineCard:0];
  [value setCompactCard:0];
  objc_setAssociatedObject(a1, &spotlightBackingResultKey, value, 1);
}

@end