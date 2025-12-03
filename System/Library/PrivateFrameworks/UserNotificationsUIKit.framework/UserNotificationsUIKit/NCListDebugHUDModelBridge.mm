@interface NCListDebugHUDModelBridge
+ (void)plotRect:(CGRect)rect label:(id)label;
+ (void)plotString:(id)string label:(id)label inListView:(id)view;
+ (void)trackListView:(id)view;
- (NCListDebugHUDModelBridge)init;
@end

@implementation NCListDebugHUDModelBridge

+ (void)trackListView:(id)view
{
  v3 = qword_280D047F8;
  viewCopy = view;
  if (v3 != -1)
  {
    v7 = viewCopy;
    swift_once();
    viewCopy = v7;
  }

  if (qword_280D04800)
  {
    v6 = viewCopy;
    v5 = qword_280D04800;
    sub_21E90EC08();
    swift_unknownObjectWeakAssign();
    sub_21E8FDEF0();

    viewCopy = v6;
  }
}

+ (void)plotString:(id)string label:(id)label inListView:(id)view
{
  v6 = sub_21E92A458();
  v8 = v7;
  v9 = sub_21E92A458();
  v11 = v10;
  viewCopy = view;
  sub_21E7950DC(v6, v8, v9, v11);
}

+ (void)plotRect:(CGRect)rect label:(id)label
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = sub_21E92A458();
  sub_21E924ECC(v8, v9, x, y, width, height);
}

- (NCListDebugHUDModelBridge)init
{
  v3.receiver = self;
  v3.super_class = NCListDebugHUDModelBridge;
  return [(NCListDebugHUDModelBridge *)&v3 init];
}

@end