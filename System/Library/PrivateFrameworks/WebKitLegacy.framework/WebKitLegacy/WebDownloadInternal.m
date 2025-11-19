@interface WebDownloadInternal
- (BOOL)download:(id)a3 shouldDecodeSourceDataOfMIMEType:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)download:(id)a3 willSendRequest:(id)a4 redirectResponse:(id)a5;
- (uint64_t)download:(WTF *)this decideDestinationWithSuggestedFilename:(void *)a2;
- (uint64_t)download:(WTF *)this didCreateDestination:(void *)a2;
- (uint64_t)download:(WTF *)this didFailWithError:(void *)a2;
- (uint64_t)download:(WTF *)this didReceiveDataOfLength:(void *)a2;
- (uint64_t)download:(WTF *)this didReceiveResponse:(void *)a2;
- (uint64_t)download:(id)&& shouldDecodeSourceDataOfMIMEType:;
- (uint64_t)download:(uint64_t)a1 didReceiveResponse:;
- (uint64_t)downloadDidBegin:(WTF *)this;
- (uint64_t)downloadDidFinish:(WTF *)this;
- (void)dealloc;
- (void)download:(id)&& willSendRequest:redirectResponse:;
- (void)download:(id)a3 decideDestinationWithSuggestedFilename:(id)a4;
- (void)download:(id)a3 didCreateDestination:(id)a4;
- (void)download:(id)a3 didFailWithError:(id)a4;
- (void)download:(id)a3 didReceiveDataOfLength:(unint64_t)a4;
- (void)download:(id)a3 didReceiveResponse:(id)a4;
- (void)download:(void *)a1 decideDestinationWithSuggestedFilename:;
- (void)download:(void *)a1 didCreateDestination:;
- (void)download:(void *)a1 didFailWithError:;
- (void)download:(void *)a1 didReceiveDataOfLength:;
- (void)download:(void *)a1 didReceiveResponse:;
- (void)downloadDidBegin:(id)a3;
- (void)downloadDidBegin:(void *)a1;
- (void)downloadDidFinish:(id)a3;
- (void)downloadDidFinish:(void *)a1;
- (void)setRealDelegate:(id)a3;
@end

@implementation WebDownloadInternal

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WebDownloadInternal;
  [(WebDownloadInternal *)&v2 dealloc];
}

- (void)setRealDelegate:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->realDelegate.m_ptr;
  self->realDelegate.m_ptr = a3;
  if (m_ptr)
  {
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_downloadDidBegin_ == a3 || sel_download_willSendRequest_redirectResponse_ == a3 || sel_download_didReceiveResponse_ == a3 || sel_download_didReceiveDataOfLength_ == a3 || sel_download_shouldDecodeSourceDataOfMIMEType_ == a3 || sel_download_decideDestinationWithSuggestedFilename_ == a3 || sel_download_didCreateDestination_ == a3 || sel_downloadDidFinish_ == a3 || sel_download_didFailWithError_ == a3)
  {
    return objc_opt_respondsToSelector() & 1;
  }

  v12.receiver = self;
  v12.super_class = WebDownloadInternal;
  return [(WebDownloadInternal *)&v12 respondsToSelector:?];
}

- (void)downloadDidBegin:(id)a3
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v5 = m_ptr;
  }

  if (a3)
  {
    v6 = a3;
  }

  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F472D7B0;
  v7[1] = m_ptr;
  v7[2] = a3;
  v8 = v7;
  WTF::callOnMainThread();
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

- (id)download:(id)a3 willSendRequest:(id)a4 redirectResponse:(id)a5
{
  v22 = a3;
  v23 = self;
  v20 = a5;
  v21 = a4;
  v19 = 0;
  isMainThread = WTF::isMainThread(self);
  if (isMainThread)
  {
    v10 = [self->realDelegate.m_ptr download:a3 willSendRequest:a4 redirectResponse:a5];
    v11 = v10;
    if (!v10)
    {
      return v11;
    }

    v12 = v10;
    v19 = 0;
    goto LABEL_7;
  }

  v13 = WTF::WorkQueue::mainSingleton(isMainThread);
  v14 = WTF::fastMalloc(0x30);
  *v14 = &unk_1F472D7D8;
  v14[1] = &v19;
  v14[2] = &v23;
  v14[3] = &v22;
  v14[4] = &v21;
  v14[5] = &v20;
  v24 = v14;
  (*(*v13 + 24))(v13, &v24);
  v15 = v24;
  v24 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v11 = v19;
  v19 = 0;
  if (v11)
  {
LABEL_7:
    v16 = v11;
    v17 = v19;
    v19 = 0;
    if (v17)
    {
    }
  }

  return v11;
}

- (void)download:(id)a3 didReceiveResponse:(id)a4
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (a3)
  {
    v8 = a3;
  }

  if (a4)
  {
    v9 = a4;
  }

  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F472D800;
  v10[1] = m_ptr;
  v10[2] = a3;
  v10[3] = a4;
  v11 = v10;
  WTF::callOnMainThread();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

- (uint64_t)download:(uint64_t)a1 didReceiveResponse:
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
  }

  return a1;
}

- (void)download:(id)a3 didReceiveDataOfLength:(unint64_t)a4
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (a3)
  {
    v8 = a3;
  }

  v9 = WTF::fastMalloc(0x20);
  *v9 = &unk_1F472D828;
  v9[1] = m_ptr;
  v9[2] = a3;
  v9[3] = a4;
  v10 = v9;
  WTF::callOnMainThread();
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

- (BOOL)download:(id)a3 shouldDecodeSourceDataOfMIMEType:(id)a4
{
  v15 = a3;
  v16 = self;
  v14 = a4;
  v13 = 0;
  isMainThread = WTF::isMainThread(self);
  if (isMainThread)
  {
    m_ptr = self->realDelegate.m_ptr;

    return [m_ptr download:a3 shouldDecodeSourceDataOfMIMEType:a4];
  }

  else
  {
    v10 = WTF::WorkQueue::mainSingleton(isMainThread);
    v11 = WTF::fastMalloc(0x28);
    *v11 = &unk_1F472D850;
    v11[1] = &v13;
    v11[2] = &v16;
    v11[3] = &v15;
    v11[4] = &v14;
    v17 = v11;
    (*(*v10 + 24))(v10, &v17);
    v12 = v17;
    v17 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    return v13 & 1;
  }
}

- (void)download:(id)a3 decideDestinationWithSuggestedFilename:(id)a4
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (a3)
  {
    v8 = a3;
  }

  if (a4)
  {
    v9 = a4;
  }

  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F472D878;
  v10[1] = m_ptr;
  v10[2] = a3;
  v10[3] = a4;
  v11 = v10;
  WTF::callOnMainThread();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

- (void)download:(id)a3 didCreateDestination:(id)a4
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (a3)
  {
    v8 = a3;
  }

  if (a4)
  {
    v9 = a4;
  }

  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F472D8A0;
  v10[1] = m_ptr;
  v10[2] = a3;
  v10[3] = a4;
  v11 = v10;
  WTF::callOnMainThread();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

- (void)downloadDidFinish:(id)a3
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v5 = m_ptr;
  }

  if (a3)
  {
    v6 = a3;
  }

  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F472D8C8;
  v7[1] = m_ptr;
  v7[2] = a3;
  v8 = v7;
  WTF::callOnMainThread();
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

- (void)download:(id)a3 didFailWithError:(id)a4
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (a3)
  {
    v8 = a3;
  }

  if (a4)
  {
    v9 = a4;
  }

  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F472D8F0;
  v10[1] = m_ptr;
  v10[2] = a3;
  v10[3] = a4;
  v11 = v10;
  WTF::callOnMainThread();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

- (void)downloadDidBegin:(void *)a1
{
  *a1 = &unk_1F472D7B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
  }

  return a1;
}

- (uint64_t)downloadDidBegin:(WTF *)this
{
  *this = &unk_1F472D7B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)download:(id)&& willSendRequest:redirectResponse:
{
  v2 = [*(**(a1 + 16) + 8) download:**(a1 + 24) willSendRequest:**(a1 + 32) redirectResponse:**(a1 + 40)];
  v3 = v2;
  v4 = *(a1 + 8);
  if (v2)
  {
    v5 = v2;
  }

  v6 = *v4;
  *v4 = v3;
  if (v6)
  {
  }
}

- (void)download:(void *)a1 didReceiveResponse:
{
  *a1 = &unk_1F472D800;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
  }

  return a1;
}

- (uint64_t)download:(WTF *)this didReceiveResponse:(void *)a2
{
  *this = &unk_1F472D800;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)download:(void *)a1 didReceiveDataOfLength:
{
  *a1 = &unk_1F472D828;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
  }

  return a1;
}

- (uint64_t)download:(WTF *)this didReceiveDataOfLength:(void *)a2
{
  *this = &unk_1F472D828;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)download:(id)&& shouldDecodeSourceDataOfMIMEType:
{
  result = [*(**(a1 + 16) + 8) download:**(a1 + 24) shouldDecodeSourceDataOfMIMEType:**(a1 + 32)];
  **(a1 + 8) = result;
  return result;
}

- (void)download:(void *)a1 decideDestinationWithSuggestedFilename:
{
  *a1 = &unk_1F472D878;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
  }

  return a1;
}

- (uint64_t)download:(WTF *)this decideDestinationWithSuggestedFilename:(void *)a2
{
  *this = &unk_1F472D878;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)download:(void *)a1 didCreateDestination:
{
  *a1 = &unk_1F472D8A0;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
  }

  return a1;
}

- (uint64_t)download:(WTF *)this didCreateDestination:(void *)a2
{
  *this = &unk_1F472D8A0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)downloadDidFinish:(void *)a1
{
  *a1 = &unk_1F472D8C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
  }

  return a1;
}

- (uint64_t)downloadDidFinish:(WTF *)this
{
  *this = &unk_1F472D8C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)download:(void *)a1 didFailWithError:
{
  *a1 = &unk_1F472D8F0;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
  }

  return a1;
}

- (uint64_t)download:(WTF *)this didFailWithError:(void *)a2
{
  *this = &unk_1F472D8F0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
  }

  return WTF::fastFree(this, a2);
}

@end