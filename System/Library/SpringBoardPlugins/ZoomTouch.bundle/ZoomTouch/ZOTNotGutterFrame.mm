@interface ZOTNotGutterFrame
@end

@implementation ZOTNotGutterFrame

void __ZOTNotGutterFrame_block_invoke(id a1)
{
  ZOTMainScreenSize();
  v2 = v1;
  v4 = v3;
  v5 = ZOTGutterDistance();
  *&v6 = v5;
  v7 = (v5 + v5);
  ZOTNotGutterFrame_nonGutterFrame_0 = v6;
  ZOTNotGutterFrame_nonGutterFrame_1 = v6;
  *&ZOTNotGutterFrame_nonGutterFrame_2 = v2 - v7;
  *&ZOTNotGutterFrame_nonGutterFrame_3 = v4 - v7;
}

@end