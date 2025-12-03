@interface VRXTurnBasedInstrumentationEvent
- (void)emitWithTurnIdentifier:(id)identifier;
- (void)emitWithTurnIdentifier:(id)identifier aceViewId:(id)id;
@end

@implementation VRXTurnBasedInstrumentationEvent

- (void)emitWithTurnIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)emitWithTurnIdentifier:(id)identifier aceViewId:(id)id
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"You must override %@ in a subclass", v6}];
}

@end