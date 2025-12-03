@interface HelloView
+ (Class)layerClass;
- (void)dealloc;
- (void)layoutSubviews;
- (void)metalDisplayLink:(id)link needsUpdate:(id)update;
@end

@implementation HelloView

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xC0);
  selfCopy = self;
  v2();
  v4.receiver = selfCopy;
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
  selfCopy = self;
  sub_265A8E990();
}

- (void)metalDisplayLink:(id)link needsUpdate:(id)update
{
  linkCopy = link;
  updateCopy = update;
  selfCopy = self;
  sub_265A8F530(updateCopy);
}

@end