@interface GQUProgressiveHelper
- (GQUProgressiveHelper)initWithClient:(const void *)client andCallbacks:(id *)callbacks;
- (void)appendDataToAttachment:(__CFURL *)attachment chunk:(__CFData *)chunk;
- (void)dealloc;
- (void)setNumbersSheetUri:(__CFString *)uri;
- (void)startDataWithOptions:(__CFDictionary *)options;
@end

@implementation GQUProgressiveHelper

- (GQUProgressiveHelper)initWithClient:(const void *)client andCallbacks:(id *)callbacks
{
  v9.receiver = self;
  v9.super_class = GQUProgressiveHelper;
  v6 = [(GQUProgressiveHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (client && callbacks)
    {
      v6->mClient = client;
      v6->mCallBacks = callbacks;
      v6->mStartedMainHTML = 0;
    }

    else
    {
    }
  }

  return v7;
}

- (void)dealloc
{
  mNumbersSheetUri = self->mNumbersSheetUri;
  if (mNumbersSheetUri)
  {
    CFRelease(mNumbersSheetUri);
  }

  v4.receiver = self;
  v4.super_class = GQUProgressiveHelper;
  [(GQUProgressiveHelper *)&v4 dealloc];
}

- (void)startDataWithOptions:(__CFDictionary *)options
{
  if (!self->started)
  {
    (self->mCallBacks->var0)(self->mClient, kUTTypeHTML, options);
    self->started = 1;
  }
}

- (void)appendDataToAttachment:(__CFURL *)attachment chunk:(__CFData *)chunk
{
  self->mStartedMainHTML = 1;
  if ((self->mCallBacks->var3)(self->mClient, a2))
  {
    mClient = self->mClient;
    var2 = self->mCallBacks->var2;

    var2(mClient, attachment, chunk, 0);
  }

  else
  {

    sub_3A3D0();
  }
}

- (void)setNumbersSheetUri:(__CFString *)uri
{
  mNumbersSheetUri = self->mNumbersSheetUri;
  if (mNumbersSheetUri)
  {
    CFRelease(mNumbersSheetUri);
    self->mNumbersSheetUri = 0;
  }

  if (uri)
  {
    self->mNumbersSheetUri = CFRetain(uri);
  }
}

@end