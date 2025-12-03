@interface SRDRecognizer
- (SRDRecognizer)initWithRecognitionSystem:(__RXRecognitionSystem *)system delegate:(id)delegate flags:(unint64_t)flags;
- (void)dealloc;
@end

@implementation SRDRecognizer

- (SRDRecognizer)initWithRecognitionSystem:(__RXRecognitionSystem *)system delegate:(id)delegate flags:(unint64_t)flags
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SRDRecognizer;
  v9 = [(SRDRecognizer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_recognitionSystem = system;
    CFRetain(system);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v10->_recognizer = RXRecognizerCreateEx(*MEMORY[0x277CBECE8], v10->_recognitionSystem, v10, delegateCopy, flags);
  }

  return v10;
}

- (void)dealloc
{
  recognitionSystem = self->_recognitionSystem;
  if (recognitionSystem)
  {
    CFRelease(recognitionSystem);
    self->_recognitionSystem = 0;
  }

  v4.receiver = self;
  v4.super_class = SRDRecognizer;
  [(SRDRecognizer *)&v4 dealloc];
}

@end