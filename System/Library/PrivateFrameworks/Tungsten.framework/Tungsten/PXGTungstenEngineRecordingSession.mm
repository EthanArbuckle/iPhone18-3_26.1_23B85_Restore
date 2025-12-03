@interface PXGTungstenEngineRecordingSession
- (PXGTungstenEngineRecordingSession)initWithEngine:(id)engine directoryURL:(id)l;
- (void)stop;
@end

@implementation PXGTungstenEngineRecordingSession

- (void)stop
{
  v14 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = PXGTungstenEngineRecordingSession;
  [(PXGTungstenRecordingSession *)&v12 stop];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  renderers = [(PXGEngine *)self->_engine renderers];
  v4 = [renderers countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(renderers);
        }

        [*(*(&v8 + 1) + 8 * v7++) setRecordingSession:0];
      }

      while (v5 != v7);
      v5 = [renderers countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }

  [(PXGEngine *)self->_engine setRecordingSession:0];
}

- (PXGTungstenEngineRecordingSession)initWithEngine:(id)engine directoryURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  lCopy = l;
  v9 = objc_alloc_init(PXGTungstenRecordingJSONSerializer);
  [(PXGTungstenRecordingJSONSerializer *)v9 setPrettyPrint:1];
  v21.receiver = self;
  v21.super_class = PXGTungstenEngineRecordingSession;
  v10 = [(PXGTungstenRecordingSession *)&v21 initWithSerializer:v9 directoryURL:lCopy];
  if (v10)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    renderers = [engineCopy renderers];
    v12 = [renderers countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(renderers);
          }

          [*(*(&v17 + 1) + 8 * v15++) setRecordingSession:v10];
        }

        while (v13 != v15);
        v13 = [renderers countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }

    objc_storeStrong(&v10->_engine, engine);
  }

  return v10;
}

@end