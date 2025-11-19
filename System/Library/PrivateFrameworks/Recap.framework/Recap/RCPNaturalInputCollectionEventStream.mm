@interface RCPNaturalInputCollectionEventStream
- (RCPNaturalInputCollectionEventStream)initWithCurrentTimeOffset:(double)a3 timestampProvider:(id)a4 senderProperties:(id)a5;
- (id)finalizedEvents;
- (void)advanceTime:(double)a3;
- (void)closeManipulatorAtLocation:(CGPoint)a3 withZPosition:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6;
- (void)commitEvent;
- (void)finish;
- (void)moveManipulatorByDelta:(CGVector)a3 withZDelta:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6;
- (void)moveManipulatorToLocation:(CGPoint)a3 withZPosition:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6;
- (void)moveSelectionByDelta:(CGVector)a3 zDelta:(double)a4 directionDelta:(CGVector)a5 zDirectionDelta:(double)a6;
- (void)moveSelectionToLocation:(CGPoint)a3 zPosition:(double)a4 direction:(CGPoint)a5 zDirection:(double)a6;
- (void)openManipulatorAtLocation:(CGPoint)a3 withZPosition:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6;
- (void)rotateManipulatorByRotation3D:(__int128 *)a3 sourceGroup:(uint64_t)a4 interactionMethod:(uint64_t)a5;
- (void)updatePhase;
@end

@implementation RCPNaturalInputCollectionEventStream

- (RCPNaturalInputCollectionEventStream)initWithCurrentTimeOffset:(double)a3 timestampProvider:(id)a4 senderProperties:(id)a5
{
  v8 = a4;
  v9 = a5;
  v21.receiver = self;
  v21.super_class = RCPNaturalInputCollectionEventStream;
  v10 = [(RCPNaturalInputCollectionEventStream *)&v21 init];
  v10->_currentTimeOffset = a3;
  timestampProvider = v10->_timestampProvider;
  v10->_timestampProvider = v8;
  v12 = v8;

  senderProperties = v10->_senderProperties;
  v10->_senderProperties = v9;
  v14 = v9;

  currentSelection = v10->_currentSelection;
  v10->_currentSelection = 0;

  v16 = [MEMORY[0x277CBEB38] dictionary];
  currentManipulatorsBySourceGroup = v10->_currentManipulatorsBySourceGroup;
  v10->_currentManipulatorsBySourceGroup = v16;

  v10->_currentPhase = 3;
  v18 = [MEMORY[0x277CBEB18] array];
  eventBuffer = v10->_eventBuffer;
  v10->_eventBuffer = v18;

  return v10;
}

- (void)advanceTime:(double)a3
{
  [(RCPNaturalInputCollectionEventStream *)self currentTimeOffset];
  v6 = v5 + a3;

  [(RCPNaturalInputCollectionEventStream *)self setCurrentTimeOffset:v6];
}

- (void)openManipulatorAtLocation:(CGPoint)a3 withZPosition:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6
{
  v8 = [[RCPNaturalInputCollectionManipulator alloc] initWithLocation:a5 zPosition:a6 sourceGroup:1 interactionMethod:a3.x isOpen:a3.y, a4];
  v9 = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [v9 setObject:v8 forKeyedSubscript:v10];

  [(RCPNaturalInputCollectionEventStream *)self updatePhase];

  [(RCPNaturalInputCollectionEventStream *)self commitEvent];
}

- (void)closeManipulatorAtLocation:(CGPoint)a3 withZPosition:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6
{
  v8 = [[RCPNaturalInputCollectionManipulator alloc] initWithLocation:a5 zPosition:a6 sourceGroup:0 interactionMethod:a3.x isOpen:a3.y, a4];
  v9 = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [v9 setObject:v8 forKeyedSubscript:v10];

  [(RCPNaturalInputCollectionEventStream *)self updatePhase];

  [(RCPNaturalInputCollectionEventStream *)self commitEvent];
}

- (void)moveManipulatorByDelta:(CGVector)a3 withZDelta:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6
{
  dy = a3.dy;
  dx = a3.dx;
  v12 = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v22 = [v12 objectForKeyedSubscript:v13];

  if (v22)
  {
    [v22 location];
    v15 = dx + v14;
    [v22 location];
    v17 = dy + v16;
    [v22 zPosition];
    v19 = -[RCPNaturalInputCollectionManipulator initWithLocation:zPosition:sourceGroup:interactionMethod:isOpen:]([RCPNaturalInputCollectionManipulator alloc], "initWithLocation:zPosition:sourceGroup:interactionMethod:isOpen:", a5, a6, [v22 isOpen], v15, v17, v18 + a4);
    v20 = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v20 setObject:v19 forKeyedSubscript:v21];

    [(RCPNaturalInputCollectionEventStream *)self updatePhase];
    [(RCPNaturalInputCollectionEventStream *)self commitEvent];
  }
}

- (void)moveManipulatorToLocation:(CGPoint)a3 withZPosition:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6
{
  y = a3.y;
  x = a3.x;
  v12 = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [RCPNaturalInputCollectionManipulator alloc];
    [v14 orientation];
    v16 = -[RCPNaturalInputCollectionManipulator initWithLocation:zPosition:orientation:sourceGroup:interactionMethod:isOpen:](v15, "initWithLocation:zPosition:orientation:sourceGroup:interactionMethod:isOpen:", &v19, a5, a6, [v14 isOpen], x, y, a4);
    v17 = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v17 setObject:v16 forKeyedSubscript:v18];

    [(RCPNaturalInputCollectionEventStream *)self updatePhase];
    [(RCPNaturalInputCollectionEventStream *)self commitEvent];
  }
}

- (void)moveSelectionByDelta:(CGVector)a3 zDelta:(double)a4 directionDelta:(CGVector)a5 zDirectionDelta:(double)a6
{
  dy = a5.dy;
  dx = a5.dx;
  v10 = a3.dy;
  v11 = a3.dx;
  v13 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];

  if (v13)
  {
    v14 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [v14 location];
    v16 = v11 + v15;
    v17 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [v17 location];
    v19 = v10 + v18;

    v20 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [v20 zPosition];
    v22 = v21 + a4;

    v23 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [v23 direction];
    v25 = dx + v24;
    v26 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [v26 direction];
    v28 = dy + v27;

    v29 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    [v29 zDirection];
    v31 = v30 + a6;

    v32 = [[RCPNaturalInputCollectionSelection alloc] initWithLocation:v16 zPosition:v19 direction:v22 zDirection:v25, v28, v31];
    [(RCPNaturalInputCollectionEventStream *)self setCurrentSelection:v32];
    [(RCPNaturalInputCollectionEventStream *)self updatePhase];
    [(RCPNaturalInputCollectionEventStream *)self commitEvent];
  }
}

- (void)moveSelectionToLocation:(CGPoint)a3 zPosition:(double)a4 direction:(CGPoint)a5 zDirection:(double)a6
{
  v7 = [[RCPNaturalInputCollectionSelection alloc] initWithLocation:a3.x zPosition:a3.y direction:a4 zDirection:a5.x, a5.y, a6];
  [(RCPNaturalInputCollectionEventStream *)self setCurrentSelection:v7];
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
  v2 = [(RCPNaturalInputCollectionEventStream *)self eventBuffer];
  v3 = [v2 copy];

  return v3;
}

- (void)commitEvent
{
  v3 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
  v4 = MEMORY[0x277CBEA60];
  if (v3)
  {
    v5 = [(RCPNaturalInputCollectionEventStream *)self currentSelection];
    v6 = [v5 copy];
    v14 = [v4 arrayWithObject:v6];
  }

  else
  {
    v14 = [MEMORY[0x277CBEA60] array];
  }

  v7 = [RCPNaturalInputCollectionEvent alloc];
  v8 = [(RCPNaturalInputCollectionEventStream *)self currentManipulatorsBySourceGroup];
  v9 = [v8 allValues];
  v10 = [(RCPNaturalInputCollectionEventStream *)self currentPhase];
  v11 = [(RCPNaturalInputCollectionEventStream *)self timestampProvider];
  [(RCPNaturalInputCollectionEventStream *)self currentTimeOffset];
  v12 = -[RCPNaturalInputCollectionEvent initWithManipulators:selections:phase:timestamp:senderProperties:](v7, "initWithManipulators:selections:phase:timestamp:senderProperties:", v9, v14, v10, [v11 machAbsoluteTimeForTimeInterval:?], self->_senderProperties);

  v13 = [(RCPNaturalInputCollectionEventStream *)self eventBuffer];
  [v13 addObject:v12];
}

- (void)rotateManipulatorByRotation3D:(__int128 *)a3 sourceGroup:(uint64_t)a4 interactionMethod:(uint64_t)a5
{
  v20 = a3[1];
  v21 = *a3;
  v8 = [a1 currentManipulatorsBySourceGroup];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [RCPNaturalInputCollectionManipulator alloc];
    [v10 location];
    v13 = v12;
    v15 = v14;
    [v10 zPosition];
    v22[0] = v21;
    v22[1] = v20;
    v17 = -[RCPNaturalInputCollectionManipulator initWithLocation:zPosition:orientation:sourceGroup:interactionMethod:isOpen:](v11, "initWithLocation:zPosition:orientation:sourceGroup:interactionMethod:isOpen:", v22, a4, a5, [v10 isOpen], v13, v15, v16);
    v18 = [a1 currentManipulatorsBySourceGroup];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v18 setObject:v17 forKeyedSubscript:v19];

    [a1 updatePhase];
    [a1 commitEvent];
  }
}

@end