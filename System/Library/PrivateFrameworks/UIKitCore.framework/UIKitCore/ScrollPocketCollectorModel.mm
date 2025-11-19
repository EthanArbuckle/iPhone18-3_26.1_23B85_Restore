@interface ScrollPocketCollectorModel
- (NSString)description;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation ScrollPocketCollectorModel

- (NSString)description
{
  v3 = objc_opt_self();
  v4 = objc_opt_self();

  v5 = [v4 succinctStyle];
  v6 = [v3 descriptionForRootObject:self withStyle:v5];

  if (!v6)
  {
    sub_18A4A7288();
    v6 = sub_18A4A7258();
  }

  return v6;
}

- (void)appendDescriptionToStream:(id)a3
{
  v3 = a3;

  sub_188FAB1D8(v3);
}

@end