@interface SRDRecognizer
- (SRDRecognizer)initWithRecognitionSystem:(__RXRecognitionSystem *)a3 delegate:(id)a4 flags:(unint64_t)a5;
- (void)dealloc;
@end

@implementation SRDRecognizer

- (SRDRecognizer)initWithRecognitionSystem:(__RXRecognitionSystem *)a3 delegate:(id)a4 flags:(unint64_t)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SRDRecognizer;
  v9 = [(SRDRecognizer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_recognitionSystem = a3;
    CFRetain(a3);
    objc_storeWeak(&v10->_delegate, v8);
    v10->_recognizer = RXRecognizerCreateEx(*MEMORY[0x277CBECE8], v10->_recognitionSystem, v10, v8, a5);
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