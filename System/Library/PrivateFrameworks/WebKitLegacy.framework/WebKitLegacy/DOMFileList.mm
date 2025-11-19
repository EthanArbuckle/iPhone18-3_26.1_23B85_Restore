@interface DOMFileList
- (DOMFile)item:(unsigned int)index;
- (unsigned)length;
- (void)dealloc;
@end

@implementation DOMFileList

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*(internal + 2) == 1)
      {
        v6 = *(internal + 7);
        v7 = *(internal + 2);
        if (v6)
        {
          v8 = 8 * v6;
          do
          {
            v9 = *v7;
            *v7 = 0;
            if (v9)
            {
              if (v9[4] == 1)
              {
                (*(*v9 + 8))(v9);
              }

              else
              {
                --v9[4];
              }
            }

            v7 = (v7 + 8);
            v8 -= 8;
          }

          while (v8);
          v7 = *(internal + 2);
        }

        if (v7)
        {
          *(internal + 2) = 0;
          *(internal + 6) = 0;
          WTF::fastFree(v7, v4);
        }

        if (*(internal + 2) != 1)
        {
          __break(0xC471u);
          return;
        }

        if (*internal)
        {
          *(*internal + 8) = 3;
          *internal = 0;
        }

        bmalloc::api::tzoneFree(internal, v4);
      }

      else
      {
        --*(internal + 2);
      }
    }

    v10.receiver = self;
    v10.super_class = DOMFileList;
    [(DOMObject *)&v10 dealloc];
  }
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super._internal + 7);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMFile)item:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v4 = WebCore::FileList::item(self->super._internal);
  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

@end