@interface SCROBrailleDisplayCommandDispatcher
- (BOOL)handleBrailleKeyEvent:(id)event;
- (SCROBrailleDisplayCommandDispatcher)init;
- (SCROBrailleDisplayCommandDispatcherDelegate)delegate;
- (void)_handleDeleteEvent:(id)event;
- (void)_handleEscapeEvent:(id)event;
- (void)_handleForwardDeleteEvent:(id)event;
- (void)_handleMoveLeftEvent:(id)event;
- (void)_handleMoveRightEvent:(id)event;
- (void)_handlePanLeftEvent:(id)event;
- (void)_handlePanRightEvent:(id)event;
- (void)_handleReturnEvent:(id)event;
- (void)_handleRouterEvent:(id)event;
- (void)_handleToggleContractedBrailleEvent:(id)event;
- (void)_handleToggleEightDotBrailleEvent:(id)event;
- (void)_handleTranslateEvent:(id)event;
- (void)_handleUnsupportedEvent:(id)event;
- (void)_handleWordDescriptionEvent:(id)event;
@end

@implementation SCROBrailleDisplayCommandDispatcher

- (SCROBrailleDisplayCommandDispatcher)init
{
  v17.receiver = self;
  v17.super_class = SCROBrailleDisplayCommandDispatcher;
  v2 = [(SCROBrailleDisplayCommandDispatcher *)&v17 init];
  if (v2)
  {
    v16 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v15 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handlePanLeftEvent_];
    v3 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handlePanRightEvent_];
    v4 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handleMoveLeftEvent_];
    v5 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handleMoveRightEvent_];
    v6 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handleRouterEvent_];
    v7 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handleDeleteEvent_];
    v8 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handleEscapeEvent_];
    v14 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handleReturnEvent_];
    v9 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handleWordDescriptionEvent_];
    v10 = [MEMORY[0x277CCAE60] valueWithPointer:sel__handleTranslateEvent_];
    v11 = [v16 initWithObjectsAndKeys:{v15, @"VOTEventCommandBraillePanLeft", v3, @"VOTEventCommandBraillePanRight", v4, @"VOTEventCommandLeftArrow", v5, @"VOTEventCommandRightArrow", v6, @"VOTEventCommandBrailleRouter", v7, @"VOTEventCommandDelete", v8, @"VOTEventCommandEscape", v14, @"VOTEventCommandReturn", v9, @"VOTEventCommandWordDescription", v10, @"VOTEventCommandBrailleTranslate", 0}];
    commandDictionary = v2->_commandDictionary;
    v2->_commandDictionary = v11;
  }

  return v2;
}

- (void)_handlePanLeftEvent:(id)event
{
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandPanLeftForDispatcher:self];
}

- (void)_handlePanRightEvent:(id)event
{
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandPanRightForDispatcher:self];
}

- (void)_handleMoveLeftEvent:(id)event
{
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandMoveLeftForDispatcher:self];
}

- (void)_handleMoveRightEvent:(id)event
{
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandMoveRightForDispatcher:self];
}

- (void)_handleRouterEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandRouterKeyEvent:eventCopy forDispatcher:self];
}

- (void)_handleDeleteEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandDeleteKeyEvent:eventCopy forDispatcher:self];
}

- (void)_handleForwardDeleteEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandForwardDeleteKeyEvent:eventCopy forDispatcher:self];
}

- (void)_handleEscapeEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandEscapeKeyEvent:eventCopy forDispatcher:self];
}

- (void)_handleReturnEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandReturnBrailleEvent:eventCopy forDispatcher:self];
}

- (void)_handleWordDescriptionEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandWordDescriptionEvent:eventCopy forDispatcher:self];
}

- (void)_handleTranslateEvent:(id)event
{
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandTranslateForDispatcher:self];
}

- (void)_handleToggleContractedBrailleEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandToggleContractedBrailleEvent:eventCopy forDispatcher:self];
}

- (void)_handleToggleEightDotBrailleEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleCommandToggleEightDotBrailleEvent:eventCopy forDispatcher:self];
}

- (void)_handleUnsupportedEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [delegate handleUnsupportedKeyEvent:eventCopy forDispatcher:self];
}

- (BOOL)handleBrailleKeyEvent:(id)event
{
  eventCopy = event;
  delegate = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  brailleInputManager = [delegate brailleInputManager];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [brailleInputManager commandForBrailleKey:eventCopy];
    v9 = [(NSDictionary *)self->_commandDictionary objectForKey:v8];
    pointerValue = [v9 pointerValue];

    if (pointerValue)
    {
      [(SCROBrailleDisplayCommandDispatcher *)self performSelector:pointerValue withObject:eventCopy];
    }

    else
    {
      if (v8 || ![eventCopy getRouterIndex:0 token:0 location:0 appToken:0])
      {
        [(SCROBrailleDisplayCommandDispatcher *)self _handleUnsupportedEvent:eventCopy];
        v7 = 0;
        goto LABEL_10;
      }

      [(SCROBrailleDisplayCommandDispatcher *)self _handleRouterEvent:eventCopy];
    }

    v7 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (SCROBrailleDisplayCommandDispatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end