@interface PerformanceBaselinePPTTests
- (void)testScrolling:(id)scrolling;
@end

@implementation PerformanceBaselinePPTTests

- (void)testScrolling:(id)scrolling
{
  v5 = swift_allocObject();
  *(v5 + 16) = scrolling;
  *(v5 + 24) = self;
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x58);
  scrollingCopy = scrolling;
  selfCopy = self;
  v9 = scrollingCopy;
  v10 = selfCopy;
  v6(&unk_1A5351650, v5);
}

@end