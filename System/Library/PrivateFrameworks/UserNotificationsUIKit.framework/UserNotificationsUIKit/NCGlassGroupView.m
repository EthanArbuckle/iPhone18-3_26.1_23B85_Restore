@interface NCGlassGroupView
- (NCGlassGroupView)initWithCoder:(id)a3;
- (NCGlassGroupView)initWithFrame:(CGRect)a3;
@end

@implementation NCGlassGroupView

- (NCGlassGroupView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = NCGlassGroupView;
  v3 = [(NCGlassGroupView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6[3] = sub_21E929A98();
  v6[4] = MEMORY[0x277D74A50];
  __swift_allocate_boxed_opaque_existential_1(v6);
  v4 = v3;
  sub_21E929A88();
  sub_21E92A718();

  return v4;
}

- (NCGlassGroupView)initWithCoder:(id)a3
{
  result = sub_21E92A988();
  __break(1u);
  return result;
}

@end