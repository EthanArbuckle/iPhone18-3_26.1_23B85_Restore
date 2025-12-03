@interface RecognizerProvider
- (CHRecognizer)recognizer;
- (RecognizerProvider)initWithRecognitionLanguage:(id)language mode:(int)mode;
- (void)dealloc;
- (void)provideRecognizerToBlock:(id)block;
- (void)unloadRecognizer;
@end

@implementation RecognizerProvider

- (void)unloadRecognizer
{
  obj = self;
  objc_sync_enter(obj);
  recognizer = obj->_recognizer;
  obj->_recognizer = 0;

  objc_sync_exit(obj);
}

- (void)provideRecognizerToBlock:(id)block
{
  if (block)
  {
    obj = self;
    blockCopy = block;
    objc_sync_enter(obj);
    (blockCopy)[2](blockCopy, obj->_recognizer);

    objc_sync_exit(obj);
  }
}

- (CHRecognizer)recognizer
{
  v17[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recognizer = selfCopy->_recognizer;
  v4 = recognizer;
  if (!recognizer)
  {
    v5 = MEMORY[0x277CFEE58];
    recognitionMode = [(RecognizerProvider *)selfCopy recognitionMode];
    recognitionLanguage = [(RecognizerProvider *)selfCopy recognitionLanguage];
    v17[0] = recognitionLanguage;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v9 = [v5 newRemoteRecognizerWithMode:recognitionMode locales:v8];

    v10 = selfCopy->_recognizer;
    selfCopy->_recognizer = v9;
    v11 = v9;

    [(CHRecognizer *)selfCopy->_recognizer setMaxRecognitionResultCount:15];
    v4 = selfCopy->_recognizer;
  }

  v12 = v4;
  objc_sync_exit(selfCopy);

  if (!recognizer)
  {
    recognizerDidLoadBlock = [(RecognizerProvider *)selfCopy recognizerDidLoadBlock];

    if (recognizerDidLoadBlock)
    {
      recognizerDidLoadBlock2 = [(RecognizerProvider *)selfCopy recognizerDidLoadBlock];
      recognizerDidLoadBlock2[2]();
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)dealloc
{
  [(RecognizerProvider *)self unloadRecognizer];
  v3.receiver = self;
  v3.super_class = RecognizerProvider;
  [(RecognizerProvider *)&v3 dealloc];
}

- (RecognizerProvider)initWithRecognitionLanguage:(id)language mode:(int)mode
{
  languageCopy = language;
  v11.receiver = self;
  v11.super_class = RecognizerProvider;
  v8 = [(RecognizerProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recognitionLanguage, language);
    v9->_recognitionMode = mode;
  }

  return v9;
}

@end