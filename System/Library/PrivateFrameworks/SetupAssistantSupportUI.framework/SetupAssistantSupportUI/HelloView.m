@interface HelloView
+ (Class)layerClass;
- (void)dealloc;
- (void)layoutSubviews;
- (void)metalDisplayLink:(id)a3 needsUpdate:(id)a4;
@end

@implementation HelloView

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xC0);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for HelloView();
  [(HelloView *)&v4 dealloc];
}

+ (Class)layerClass
{
  type metadata accessor for HelloMetalLayer();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_265A8E990();
}

- (void)metalDisplayLink:(id)a3 needsUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_265A8F530(v7);
}

@end