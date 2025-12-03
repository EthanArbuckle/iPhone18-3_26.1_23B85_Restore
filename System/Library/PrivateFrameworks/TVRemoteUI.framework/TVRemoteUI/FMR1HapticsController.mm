@interface FMR1HapticsController
- (NSString)description;
- (void)hapticDisplayLinkUpdateWithDisplaylink:(id)displaylink;
@end

@implementation FMR1HapticsController

- (NSString)description
{
  selfCopy = self;
  v3 = FMR1HapticsController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x26D6B1210](v3, v5);

  return v6;
}

- (void)hapticDisplayLinkUpdateWithDisplaylink:(id)displaylink
{
  displaylinkCopy = displaylink;
  selfCopy = self;
  FMR1HapticsController.hapticDisplayLinkUpdate(displaylink:)(displaylinkCopy);
}

@end