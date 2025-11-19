@interface TVRemoteParticipantCell
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TVRemoteParticipantCell

- (void)layoutSubviews
{
  v2 = self;
  sub_20B862A48();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_20B862B40();
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20B8636BC(v6, v7);
}

@end