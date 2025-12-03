@interface RCPNaturalInputCollectionEventStream
- (RCPNaturalInputCollectionEventStream)initWithCurrentTimeOffset:(double)offset timestampProvider:(id)provider senderProperties:(id)properties;
- (id)finalizedEvents;
- (void)advanceTime:(double)time;
- (void)closeManipulatorAtLocation:(CGPoint)location withZPosition:(double)position sourceGroup:(int64_t)group interactionMethod:(int64_t)method;
- (void)commitEvent;
- (void)finish;
- (void)moveManipulatorByDelta:(CGVector)delta withZDelta:(double)zDelta sourceGroup:(int64_t)group interactionMethod:(int64_t)method;
- (void)moveManipulatorToLocation:(CGPoint)location withZPosition:(double)position sourceGroup:(int64_t)group interactionMethod:(int64_t)method;
- (void)moveSelectionByDelta:(CGVector)delta zDelta:(double)zDelta directionDelta:(CGVector)directionDelta zDirectionDelta:(double)zDirectionDelta;
- (void)moveSelectionToLocation:(CGPoint)location zPosition:(double)position direction:(CGPoint)direction zDirection:(double)zDirection;
- (void)openManipulatorAtLocation:(CGPoint)location withZPosition:(double)position sourceGroup:(int64_t)group interactionMethod:(int64_t)method;
- (void)rotateManipulatorByRotation3D:(__int128 *)d sourceGroup:(uint64_t)group interactionMethod:(uint64_t)method;
- (void)updatePhase;
@end

@implementation RCPNaturalInputCollectionEventStream

- (RCPNaturalInputCollectionEventStream)initWithCurrentTimeOffset:(double)offset timestampProvider:(id)provider senderProperties:(id)properties
{
  providerCopy = provider;
  propertiesCopy = properties;
  v21.receiver = self;
  v21.super_class = RCPNaturalInputCollectionEventStream;
  v10 = [(RCPNaturalInputCollectionEventStream *)&v21 init];
  v10->_currentTimeOffset = offset;
  timestampProvider = v10->_timestampProvider;
  v10->_timestampProvider = providerCopy;
  v12 = providerCopy;

  senderProperties = v10->_senderProperties;
  v10->_senderProperties = propertiesCopy;
  v14 = propertiesCopy;

  currentSelection = v10->_currentSelection;
  v10->_currentSelection = 0;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  currentManipulatorsBySourceGroup = v10->_currentManipulatorsBySourceGroup;
  v10->_currentManipulatorsBySourceGroup = dictionary;

  v10->_currentPhase = 3;
  array = [MEMORY[0x277CBEB18] array];
  eventBuffer = v10->_eventBuffer;
  v10->_eventBuffer = array;

  return v10;
}

- (void)advanceTime:(double)time
{
  [(RCPNaturalInputCollectionEventStream *)self currentTimeOffset];
  v6 = v5 + time;

  [(RCPNaturalInputCollectionEventStream *)self setCurrentTimeOffset:v6];
}

- (void)openManipulatorAtLocation:(CGPoint)location withZPosition:(double)position sourceGroup:(int64_t)group interactionMethod:(int64_t)method
{
  position = [[RCPNaturalInputCollectionManipulator alloc] initWithLocation:group zPosition:method sourceGroup:1 interactionMethod:location.x isOpen:location.y, position];
  currentManipulatorsBySourceGroup = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:group];
  [currentManipulatorsBySourceGroup setObject:position forKeyedSubscript:v10];

  [(RCPNaturalInputCollectionEventStream *)self updatePhase];

  [(RCPNaturalInputCollectionEventStream *)self commitEvent];
}

- (void)closeManipulatorAtLocation:(CGPoint)location withZPosition:(double)position sourceGroup:(int64_t)group interactionMethod:(int64_t)method
{
  position = [[RCPNaturalInputCollectionManipulator alloc] initWithLocation:group zPosition:method sourceGroup:0 interactionMethod:location.x isOpen:location.y, position];
  currentManipulatorsBySourceGroup = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:group];
  [currentManipulatorsBySourceGroup setObject:position forKeyedSubscript:v10];

  [(RCPNaturalInputCollectionEventStream *)self updatePhase];

  [(RCPNaturalInputCollectionEventStream *)self commitEvent];
}

- (void)moveManipulatorByDelta:(CGVector)delta withZDelta:(double)zDelta sourceGroup:(int64_t)group interactionMethod:(int64_t)method
{
  dy = delta.dy;
  dx = delta.dx;
  currentManipulatorsBySourceGroup = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:group];
  v22 = [currentManipulatorsBySourceGroup objectForKeyedSubscript:v13];

  if (v22)
  {
    [v22 location];
    v15 = dx + v14;
    [v22 location];
    v17 = dy + v16;
    [v22 zPosition];
    v19 = -[RCPNaturalInputCollectionManipulator initWithLocation:zPosition:sourceGroup:interactionMethod:isOpen:]([RCPNaturalInputCollectionManipulator alloc], "initWithLocation:zPosition:sourceGroup:interactionMethod:isOpen:", group, method, [v22 isOpen], v15, v17, v18 + zDelta);
    currentManipulatorsBySourceGroup2 = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:group];
    [currentManipulatorsBySourceGroup2 setObject:v19 forKeyedSubscript:v21];

    [(RCPNaturalInputCollectionEventStream *)self updatePhase];
    [(RCPNaturalInputCollectionEventStream *)self commitEvent];
  }
}

- (void)moveManipulatorToLocation:(CGPoint)location withZPosition:(double)position sourceGroup:(int64_t)group interactionMethod:(int64_t)method
{
  y = location.y;
  x = location.x;
  currentManipulatorsBySourceGroup = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:group];
  v14 = [currentManipulatorsBySourceGroup objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [RCPNaturalInputCollectionManipulator alloc];
    [v14 orientation];
    v16 = -[RCPNaturalInputCollectionManipulator initWithLocation:zPosition:orientation:sourceGroup:interactionMethod:isOpen:](v15, "initWithLocation:zPosition:orientation:sourceGroup:interactionMethod:isOpen:", &v19, group, method, [v14 isOpen], x, y, position);
    currentManipulatorsBySourceGroup2 = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:group];
    [currentManipulatorsBySourceGroup2 setObject:v16 forKeyedSubscript:v18];

    [(RCPNaturalInputCollectionEventStream *)self updatePhase];
    [(RCPNaturalInputCollectionEventStream *)self commitEvent];
  }
}

- (void)moveSelectionByDelta:(CGVector)delta zDelta:(double)zDelta directionDelta:(CGVector)directionDelta zDirectionDelta:(double)zDirectionDelta
{
  dy = directionDelta.dy;
  dx = directionDelta.dx;
  v10 = delta.dy;
  v11 = delta.dx;
  currentSelection = [(RCPNaturalInputCollectionEventStream *)self currentSelection];

  if (currentSelection)
  {
    currentSelection2 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [currentSelection2 location];
    v16 = v11 + v15;
    currentSelection3 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [currentSelection3 location];
    v19 = v10 + v18;

    currentSelection4 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [currentSelection4 zPosition];
    v22 = v21 + zDelta;

    currentSelection5 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [currentSelection5 direction];
    v25 = dx + v24;
    currentSelection6 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [currentSelection6 direction];
    v28 = dy + v27;

    currentSelection7 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [currentSelection7 zDirection];
    v31 = v30 + zDirectionDelta;

    v32 = [[RCPNaturalInputCollectionSelection alloc] initWithLocation:v16 zPosition:v19 direction:v22 zDirection:v25, v28, v31];
    [(RCPNaturalInputCollectionEventStream *)self setCurrentSelection:v32];
    [(RCPNaturalInputCollectionEventStream *)self updatePhase];
    [(RCPNaturalInputCollectionEventStream *)self commitEvent];
  }
}

- (void)moveSelectionToLocation:(CGPoint)location zPosition:(double)position direction:(CGPoint)direction zDirection:(double)zDirection
{
  zDirection = [[RCPNaturalInputCollectionSelection alloc] initWithLocation:location.x zPosition:location.y direction:position zDirection:direction.x, direction.y, zDirection];
  [(RCPNaturalInputCollectionEventStream *)self setCurrentSelection:zDirection];
  [(RCPNaturalInputCollectionEventStream *)self updatePhase];
  [(RCPNaturalInputCollectionEventStream *)self commitEvent];
}

- (void)finish
{
  [(RCPNaturalInputCollectionEventStream *)self setCurrentPhase:3];

  [(RCPNaturalInputCollectionEventStream *)self commitEvent];
}

- (void)updatePhase
{
  if ([(RCPNaturalInputCollectionEventStream *)self currentPhase]== 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(RCPNaturalInputCollectionEventStream *)self setCurrentPhase:v3];
}

- (id)finalizedEvents
{
  eventBuffer = [(RCPNaturalInputCollectionEventStream *)self eventBuffer];
  v3 = [eventBuffer copy];

  return v3;
}

- (void)commitEvent
{
  currentSelection = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
  v4 = MEMORY[0x277CBEA60];
  if (currentSelection)
  {
    currentSelection2 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    v6 = [currentSelection2 copy];
    array = [v4 arrayWithObject:v6];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v7 = [RCPNaturalInputCollectionEvent alloc];
  currentManipulatorsBySourceGroup = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  allValues = [currentManipulatorsBySourceGroup allValues];
  currentPhase = [(RCPNaturalInputCollectionEventStream *)self currentPhase];
  timestampProvider = [(RCPNaturalInputCollectionEventStream *)self timestampProvider];
  [(RCPNaturalInputCollectionEventStream *)self currentTimeOffset];
  v12 = -[RCPNaturalInputCollectionEvent initWithManipulators:selections:phase:timestamp:senderProperties:](v7, "initWithManipulators:selections:phase:timestamp:senderProperties:", allValues, array, currentPhase, [timestampProvider machAbsoluteTimeForTimeInterval:?], self->_senderProperties);

  eventBuffer = [(RCPNaturalInputCollectionEventStream *)self eventBuffer];
  [eventBuffer addObject:v12];
}

- (void)rotateManipulatorByRotation3D:(__int128 *)d sourceGroup:(uint64_t)group interactionMethod:(uint64_t)method
{
  v20 = d[1];
  v21 = *d;
  currentManipulatorsBySourceGroup = [self currentManipulatorsBySourceGroup];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:group];
  v10 = [currentManipulatorsBySourceGroup objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [RCPNaturalInputCollectionManipulator alloc];
    [v10 location];
    v13 = v12;
    v15 = v14;
    [v10 zPosition];
    v22[0] = v21;
    v22[1] = v20;
    v17 = -[RCPNaturalInputCollectionManipulator initWithLocation:zPosition:orientation:sourceGroup:interactionMethod:isOpen:](v11, "initWithLocation:zPosition:orientation:sourceGroup:interactionMethod:isOpen:", v22, group, method, [v10 isOpen], v13, v15, v16);
    currentManipulatorsBySourceGroup2 = [self currentManipulatorsBySourceGroup];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:group];
    [currentManipulatorsBySourceGroup2 setObject:v17 forKeyedSubscript:v19];

    [self updatePhase];
    [self commitEvent];
  }
}

@end