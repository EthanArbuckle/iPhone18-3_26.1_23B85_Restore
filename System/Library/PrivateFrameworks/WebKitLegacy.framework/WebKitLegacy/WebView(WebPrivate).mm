@interface WebView(WebPrivate)
- (uint64_t)_commonInitializationWithFrameName:()WebPrivate groupName:;
- (uint64_t)_requestStartDataInteraction:()WebPrivate globalPosition:;
- (uint64_t)initSimpleHTMLDocumentWithStyle:()WebPrivate frame:preferences:groupName:;
- (void)_requestStartDataInteraction:()WebPrivate globalPosition:;
@end

@implementation WebView(WebPrivate)

- (uint64_t)_commonInitializationWithFrameName:()WebPrivate groupName:
{
  v4 = WTF::fastMalloc(0x28);
  result = WebCore::LocalFrameLoaderClient::LocalFrameLoaderClient(v4, self);
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *v4 = &unk_1F472B518;
  *(v4 + 4) = 0;
  *a2 = v4;
  return result;
}

- (uint64_t)initSimpleHTMLDocumentWithStyle:()WebPrivate frame:preferences:groupName:
{
  v4 = WTF::fastMalloc(0x28);
  result = WebCore::LocalFrameLoaderClient::LocalFrameLoaderClient(v4, self);
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *v4 = &unk_1F472B518;
  *(v4 + 4) = 0;
  *a2 = v4;
  return result;
}

- (void)_requestStartDataInteraction:()WebPrivate globalPosition:
{
  v6[0] = 0;
  v7 = -1;
  if (a2[24])
  {
    if (a2[24] == 255)
    {
      *(*(self + 8) + 4) = 256;
      v3 = v7;
      if (!v7)
      {
        return;
      }
    }

    else
    {
      WebCore::RemoteFrameGeometryTransformer::RemoteFrameGeometryTransformer();
      v7 = a2[24];
      v5 = *(self + 8);
      if (v7)
      {
        *(v5 + 4) = 256;
        v3 = v7;
        if (!v7)
        {
          return;
        }
      }

      else
      {
        *(v5 + 4) = v6[0] & 1 | 0x100;
        v3 = v7;
        if (!v7)
        {
          return;
        }
      }
    }
  }

  else
  {
    v6[0] = *a2;
    v7 = 0;
    *(*(self + 8) + 4) = v6[0] & 1 | 0x100;
    v3 = v7;
    if (!v7)
    {
      return;
    }
  }

  if (v3 != 255)
  {
    WebCore::RemoteFrameGeometryTransformer::~RemoteFrameGeometryTransformer(v6);
  }
}

- (uint64_t)_requestStartDataInteraction:()WebPrivate globalPosition:
{
  v3 = *(self + 1);
  *self = &unk_1F472C3B0;
  *(self + 1) = 0;
  if (v3 && (add = atomic_fetch_add(v3, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3);
    selfCopy = self;
    WTF::fastFree(v3, a2);
    self = selfCopy;
  }

  return WTF::fastFree(self, a2);
}

@end