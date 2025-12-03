@interface ScrollPocketCollectorModel
- (NSString)description;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation ScrollPocketCollectorModel

- (NSString)description
{
  v3 = objc_opt_self();
  v4 = objc_opt_self();

  succinctStyle = [v4 succinctStyle];
  v6 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  if (!v6)
  {
    sub_18A4A7288();
    v6 = sub_18A4A7258();
  }

  return v6;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;

  sub_188FAB1D8(streamCopy);
}

@end