@interface CHChannelUndoState
- (CHChannelUndoState)initWithChannel:(id)a3 flagsOnly:(BOOL)a4;
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

- (CHChannelUndoState)initWithChannel:(id)a3 flagsOnly:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = CHChannelUndoState;
  v6 = [(CHChannelUndoState *)&v8 init];
  if (v6)
  {
    v6->_pOZChannel = ChannelStateCopy([a3 ozChannel], v4);
    v6->_flagsOnly = v4;
  }

  return v6;
}

@end