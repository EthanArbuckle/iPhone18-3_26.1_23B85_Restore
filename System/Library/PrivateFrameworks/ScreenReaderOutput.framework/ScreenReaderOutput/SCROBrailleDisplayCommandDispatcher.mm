@interface SCROBrailleDisplayCommandDispatcher
- (BOOL)handleBrailleKeyEvent:(id)a3;
- (SCROBrailleDisplayCommandDispatcher)init;
- (SCROBrailleDisplayCommandDispatcherDelegate)delegate;
- (void)_handleDeleteEvent:(id)a3;
- (void)_handleEscapeEvent:(id)a3;
- (void)_handleForwardDeleteEvent:(id)a3;
- (void)_handleMoveLeftEvent:(id)a3;
- (void)_handleMoveRightEvent:(id)a3;
- (void)_handlePanLeftEvent:(id)a3;
- (void)_handlePanRightEvent:(id)a3;
- (void)_handleReturnEvent:(id)a3;
- (void)_handleRouterEvent:(id)a3;
- (void)_handleToggleContractedBrailleEvent:(id)a3;
- (void)_handleToggleEightDotBrailleEvent:(id)a3;
- (void)_handleTranslateEvent:(id)a3;
- (void)_handleUnsupportedEvent:(id)a3;
- (void)_handleWordDescriptionEvent:(id)a3;
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

- (void)_handlePanLeftEvent:(id)a3
{
  v4 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v4 handleCommandPanLeftForDispatcher:self];
}

- (void)_handlePanRightEvent:(id)a3
{
  v4 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v4 handleCommandPanRightForDispatcher:self];
}

- (void)_handleMoveLeftEvent:(id)a3
{
  v4 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v4 handleCommandMoveLeftForDispatcher:self];
}

- (void)_handleMoveRightEvent:(id)a3
{
  v4 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v4 handleCommandMoveRightForDispatcher:self];
}

- (void)_handleRouterEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v5 handleCommandRouterKeyEvent:v4 forDispatcher:self];
}

- (void)_handleDeleteEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v5 handleCommandDeleteKeyEvent:v4 forDispatcher:self];
}

- (void)_handleForwardDeleteEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v5 handleCommandForwardDeleteKeyEvent:v4 forDispatcher:self];
}

- (void)_handleEscapeEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v5 handleCommandEscapeKeyEvent:v4 forDispatcher:self];
}

- (void)_handleReturnEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v5 handleCommandReturnBrailleEvent:v4 forDispatcher:self];
}

- (void)_handleWordDescriptionEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v5 handleCommandWordDescriptionEvent:v4 forDispatcher:self];
}

- (void)_handleTranslateEvent:(id)a3
{
  v4 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v4 handleCommandTranslateForDispatcher:self];
}

- (void)_handleToggleContractedBrailleEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v5 handleCommandToggleContractedBrailleEvent:v4 forDispatcher:self];
}

- (void)_handleToggleEightDotBrailleEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v5 handleCommandToggleEightDotBrailleEvent:v4 forDispatcher:self];
}

- (void)_handleUnsupportedEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  [v5 handleUnsupportedKeyEvent:v4 forDispatcher:self];
}

- (BOOL)handleBrailleKeyEvent:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayCommandDispatcher *)self delegate];
  v6 = [v5 brailleInputManager];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [v6 commandForBrailleKey:v4];
    v9 = [(NSDictionary *)self->_commandDictionary objectForKey:v8];
    v10 = [v9 pointerValue];

    if (v10)
    {
      [(SCROBrailleDisplayCommandDispatcher *)self performSelector:v10 withObject:v4];
    }

    else
    {
      if (v8 || ![v4 getRouterIndex:0 token:0 location:0 appToken:0])
      {
        [(SCROBrailleDisplayCommandDispatcher *)self _handleUnsupportedEvent:v4];
        v7 = 0;
        goto LABEL_10;
      }

      [(SCROBrailleDisplayCommandDispatcher *)self _handleRouterEvent:v4];
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