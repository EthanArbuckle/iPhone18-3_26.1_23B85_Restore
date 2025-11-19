@interface GQUProgressiveHelper
- (GQUProgressiveHelper)initWithClient:(const void *)a3 andCallbacks:(id *)a4;
- (void)appendDataToAttachment:(__CFURL *)a3 chunk:(__CFData *)a4;
- (void)dealloc;
- (void)setNumbersSheetUri:(__CFString *)a3;
- (void)startDataWithOptions:(__CFDictionary *)a3;
@end

@implementation GQUProgressiveHelper

- (GQUProgressiveHelper)initWithClient:(const void *)a3 andCallbacks:(id *)a4
{
  v9.receiver = self;
  v9.super_class = GQUProgressiveHelper;
  v6 = [(GQUProgressiveHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (a3 && a4)
    {
      v6->mClient = a3;
      v6->mCallBacks = a4;
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

- (void)startDataWithOptions:(__CFDictionary *)a3
{
  if (!self->started)
  {
    (self->mCallBacks->var0)(self->mClient, kUTTypeHTML, a3);
    self->started = 1;
  }
}

- (void)appendDataToAttachment:(__CFURL *)a3 chunk:(__CFData *)a4
{
  self->mStartedMainHTML = 1;
  if ((self->mCallBacks->var3)(self->mClient, a2))
  {
    mClient = self->mClient;
    var2 = self->mCallBacks->var2;

    var2(mClient, a3, a4, 0);
  }

  else
  {

    sub_3A3D0();
  }
}

- (void)setNumbersSheetUri:(__CFString *)a3
{
  mNumbersSheetUri = self->mNumbersSheetUri;
  if (mNumbersSheetUri)
  {
    CFRelease(mNumbersSheetUri);
    self->mNumbersSheetUri = 0;
  }

  if (a3)
  {
    self->mNumbersSheetUri = CFRetain(a3);
  }
}

@end