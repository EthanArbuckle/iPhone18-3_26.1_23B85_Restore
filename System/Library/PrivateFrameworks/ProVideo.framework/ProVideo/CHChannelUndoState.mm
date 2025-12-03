@interface CHChannelUndoState
- (CHChannelUndoState)initWithChannel:(id)channel flagsOnly:(BOOL)only;
- (void)dealloc;
@end

@implementation CHChannelUndoState

- (void)dealloc
{
  ChannelStateDestroy(self->_pOZChannel, 1);
  v3.receiver = self;
  v3.super_class = CHChannelUndoState;
  [(CHChannelUndoState *)&v3 dealloc];
}

- (CHChannelUndoState)initWithChannel:(id)channel flagsOnly:(BOOL)only
{
  onlyCopy = only;
  v8.receiver = self;
  v8.super_class = CHChannelUndoState;
  v6 = [(CHChannelUndoState *)&v8 init];
  if (v6)
  {
    v6->_pOZChannel = ChannelStateCopy([channel ozChannel], onlyCopy);
    v6->_flagsOnly = onlyCopy;
  }

  return v6;
}

@end