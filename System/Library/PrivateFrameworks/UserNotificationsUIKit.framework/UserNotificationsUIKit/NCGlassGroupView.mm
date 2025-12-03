@interface NCGlassGroupView
- (NCGlassGroupView)initWithCoder:(id)coder;
- (NCGlassGroupView)initWithFrame:(CGRect)frame;
@end

@implementation NCGlassGroupView

- (NCGlassGroupView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NCGlassGroupView;
  v3 = [(NCGlassGroupView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6[3] = sub_21E929A98();
  v6[4] = MEMORY[0x277D74A50];
  __swift_allocate_boxed_opaque_existential_1(v6);
  v4 = v3;
  sub_21E929A88();
  sub_21E92A718();

  return v4;
}

- (NCGlassGroupView)initWithCoder:(id)coder
{
  result = sub_21E92A988();
  __break(1u);
  return result;
}

@end