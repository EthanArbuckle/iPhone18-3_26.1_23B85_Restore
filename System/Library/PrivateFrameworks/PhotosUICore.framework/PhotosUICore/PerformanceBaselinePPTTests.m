@interface PerformanceBaselinePPTTests
- (void)testScrolling:(id)a3;
@end

@implementation PerformanceBaselinePPTTests

- (void)testScrolling:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = self;
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x58);
  v7 = a3;
  v8 = self;
  v9 = v7;
  v10 = v8;
  v6(&unk_1A5351650, v5);
}

@end