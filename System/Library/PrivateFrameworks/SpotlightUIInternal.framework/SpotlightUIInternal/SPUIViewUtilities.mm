@interface SPUIViewUtilities
+ (void)setGlassForView:(id)view style:(unint64_t)style;
+ (void)setGlassGroupForView:(id)view;
- (SPUIViewUtilities)init;
@end

@implementation SPUIViewUtilities

+ (void)setGlassForView:(id)view style:(unint64_t)style
{
  v7[3] = sub_26B862BC4();
  v7[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v7);
  viewCopy = view;
  sub_26B862434(style);
  sub_26B862D34();
}

+ (void)setGlassGroupForView:(id)view
{
  v5[3] = sub_26B862B64();
  v5[4] = MEMORY[0x277D74A50];
  __swift_allocate_boxed_opaque_existential_1(v5);
  viewCopy = view;
  sub_26B862B54();
  sub_26B862D34();
}

- (SPUIViewUtilities)init
{
  v3.receiver = self;
  v3.super_class = SPUIViewUtilities;
  return [(SPUIViewUtilities *)&v3 init];
}

@end