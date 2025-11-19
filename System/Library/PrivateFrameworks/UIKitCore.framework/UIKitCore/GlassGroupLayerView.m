@interface GlassGroupLayerView
- (void)_materialDidReceiveLuma:(double)a3;
- (void)_prepareForLayerDump;
- (void)layoutSubviews;
@end

@implementation GlassGroupLayerView

- (void)layoutSubviews
{
  v2 = self;
  sub_18905E910();
}

- (void)_materialDidReceiveLuma:(double)a3
{
  sub_188A34624(0, &qword_1ED48F680);
  v5 = self;
  v6 = MEMORY[0x18CFE1B90](0.5, 1.0, 0.0);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = a3;
  v8 = v5;
  sub_188EB1F6C(v6, 0, sub_188C9B9B4, v7, signpost_c2_entryLock_start, 0);
}

- (void)_prepareForLayerDump
{
  v2 = self;
  sub_18905E6AC();
}

@end