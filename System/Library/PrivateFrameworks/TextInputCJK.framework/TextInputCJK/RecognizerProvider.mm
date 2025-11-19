@interface RecognizerProvider
- (CHRecognizer)recognizer;
- (RecognizerProvider)initWithRecognitionLanguage:(id)a3 mode:(int)a4;
- (void)dealloc;
- (void)provideRecognizerToBlock:(id)a3;
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

- (void)provideRecognizerToBlock:(id)a3
{
  if (a3)
  {
    obj = self;
    v4 = a3;
    objc_sync_enter(obj);
    (v4)[2](v4, obj->_recognizer);

    objc_sync_exit(obj);
  }
}

- (CHRecognizer)recognizer
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  recognizer = v2->_recognizer;
  v4 = recognizer;
  if (!recognizer)
  {
    v5 = MEMORY[0x277CFEE58];
    v6 = [(RecognizerProvider *)v2 recognitionMode];
    v7 = [(RecognizerProvider *)v2 recognitionLanguage];
    v17[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v9 = [v5 newRemoteRecognizerWithMode:v6 locales:v8];

    v10 = v2->_recognizer;
    v2->_recognizer = v9;
    v11 = v9;

    [(CHRecognizer *)v2->_recognizer setMaxRecognitionResultCount:15];
    v4 = v2->_recognizer;
  }

  v12 = v4;
  objc_sync_exit(v2);

  if (!recognizer)
  {
    v13 = [(RecognizerProvider *)v2 recognizerDidLoadBlock];

    if (v13)
    {
      v14 = [(RecognizerProvider *)v2 recognizerDidLoadBlock];
      v14[2]();
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

- (RecognizerProvider)initWithRecognitionLanguage:(id)a3 mode:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RecognizerProvider;
  v8 = [(RecognizerProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recognitionLanguage, a3);
    v9->_recognitionMode = a4;
  }

  return v9;
}

@end