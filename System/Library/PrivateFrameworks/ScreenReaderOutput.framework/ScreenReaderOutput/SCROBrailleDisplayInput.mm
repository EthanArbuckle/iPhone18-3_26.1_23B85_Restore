@interface SCROBrailleDisplayInput
- (void)dealloc;
@end

@implementation SCROBrailleDisplayInput

- (void)dealloc
{
  downKeys = self->_downKeys;
  if (downKeys)
  {
    CFRelease(downKeys);
    self->_downKeys = 0;
  }

  currentChord = self->_currentChord;
  if (currentChord)
  {
    CFRelease(currentChord);
    self->_currentChord = 0;
  }

  currentBrailleChord = self->_currentBrailleChord;
  if (currentBrailleChord)
  {
    CFRelease(currentBrailleChord);
    self->_currentBrailleChord = 0;
  }

  downBrailleDots = self->_downBrailleDots;
  if (downBrailleDots)
  {
    CFRelease(downBrailleDots);
    self->_downBrailleDots = 0;
  }

  v7.receiver = self;
  v7.super_class = SCROBrailleDisplayInput;
  [(SCROBrailleDisplayInput *)&v7 dealloc];
}

@end