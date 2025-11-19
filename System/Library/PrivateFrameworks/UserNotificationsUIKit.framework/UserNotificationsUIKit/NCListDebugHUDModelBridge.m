@interface NCListDebugHUDModelBridge
+ (void)plotRect:(CGRect)a3 label:(id)a4;
+ (void)plotString:(id)a3 label:(id)a4 inListView:(id)a5;
+ (void)trackListView:(id)a3;
- (NCListDebugHUDModelBridge)init;
@end

@implementation NCListDebugHUDModelBridge

+ (void)trackListView:(id)a3
{
  v3 = qword_280D047F8;
  v4 = a3;
  if (v3 != -1)
  {
    v7 = v4;
    swift_once();
    v4 = v7;
  }

  if (qword_280D04800)
  {
    v6 = v4;
    v5 = qword_280D04800;
    sub_21E90EC08();
    swift_unknownObjectWeakAssign();
    sub_21E8FDEF0();

    v4 = v6;
  }
}

+ (void)plotString:(id)a3 label:(id)a4 inListView:(id)a5
{
  v6 = sub_21E92A458();
  v8 = v7;
  v9 = sub_21E92A458();
  v11 = v10;
  v12 = a5;
  sub_21E7950DC(v6, v8, v9, v11);
}

+ (void)plotRect:(CGRect)a3 label:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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