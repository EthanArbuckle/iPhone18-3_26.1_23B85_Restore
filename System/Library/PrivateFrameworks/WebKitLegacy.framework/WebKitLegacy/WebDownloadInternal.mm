@interface WebDownloadInternal
- (BOOL)download:(id)download shouldDecodeSourceDataOfMIMEType:(id)type;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)download:(id)download willSendRequest:(id)request redirectResponse:(id)response;
- (uint64_t)download:(WTF *)this decideDestinationWithSuggestedFilename:(void *)filename;
- (uint64_t)download:(WTF *)this didCreateDestination:(void *)destination;
- (uint64_t)download:(WTF *)this didFailWithError:(void *)error;
- (uint64_t)download:(WTF *)this didReceiveDataOfLength:(void *)length;
- (uint64_t)download:(WTF *)this didReceiveResponse:(void *)response;
- (uint64_t)download:(id)&& shouldDecodeSourceDataOfMIMEType:;
- (uint64_t)download:(uint64_t)download didReceiveResponse:;
- (uint64_t)downloadDidBegin:(WTF *)this;
- (uint64_t)downloadDidFinish:(WTF *)this;
- (void)dealloc;
- (void)download:(id)&& willSendRequest:redirectResponse:;
- (void)download:(id)download decideDestinationWithSuggestedFilename:(id)filename;
- (void)download:(id)download didCreateDestination:(id)destination;
- (void)download:(id)download didFailWithError:(id)error;
- (void)download:(id)download didReceiveDataOfLength:(unint64_t)length;
- (void)download:(id)download didReceiveResponse:(id)response;
- (void)download:(void *)download decideDestinationWithSuggestedFilename:;
- (void)download:(void *)download didCreateDestination:;
- (void)download:(void *)download didFailWithError:;
- (void)download:(void *)download didReceiveDataOfLength:;
- (void)download:(void *)download didReceiveResponse:;
- (void)downloadDidBegin:(id)begin;
- (void)downloadDidBegin:(void *)begin;
- (void)downloadDidFinish:(id)finish;
- (void)downloadDidFinish:(void *)finish;
- (void)setRealDelegate:(id)delegate;
@end

@implementation WebDownloadInternal

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WebDownloadInternal;
  [(WebDownloadInternal *)&v2 dealloc];
}

- (void)setRealDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
  }

  m_ptr = self->realDelegate.m_ptr;
  self->realDelegate.m_ptr = delegate;
  if (m_ptr)
  {
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_downloadDidBegin_ == selector || sel_download_willSendRequest_redirectResponse_ == selector || sel_download_didReceiveResponse_ == selector || sel_download_didReceiveDataOfLength_ == selector || sel_download_shouldDecodeSourceDataOfMIMEType_ == selector || sel_download_decideDestinationWithSuggestedFilename_ == selector || sel_download_didCreateDestination_ == selector || sel_downloadDidFinish_ == selector || sel_download_didFailWithError_ == selector)
  {
    return objc_opt_respondsToSelector() & 1;
  }

  v12.receiver = self;
  v12.super_class = WebDownloadInternal;
  return [(WebDownloadInternal *)&v12 respondsToSelector:?];
}

- (void)downloadDidBegin:(id)begin
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v5 = m_ptr;
  }

  if (begin)
  {
    beginCopy = begin;
  }

  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F472D7B0;
  v7[1] = m_ptr;
  v7[2] = begin;
  v8 = v7;
  WTF::callOnMainThread();
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

- (id)download:(id)download willSendRequest:(id)request redirectResponse:(id)response
{
  downloadCopy = download;
  selfCopy = self;
  responseCopy = response;
  requestCopy = request;
  v19 = 0;
  isMainThread = WTF::isMainThread(self);
  if (isMainThread)
  {
    v10 = [self->realDelegate.m_ptr download:download willSendRequest:request redirectResponse:response];
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
  v14[2] = &selfCopy;
  v14[3] = &downloadCopy;
  v14[4] = &requestCopy;
  v14[5] = &responseCopy;
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

- (void)download:(id)download didReceiveResponse:(id)response
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (download)
  {
    downloadCopy = download;
  }

  if (response)
  {
    responseCopy = response;
  }

  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F472D800;
  v10[1] = m_ptr;
  v10[2] = download;
  v10[3] = response;
  v11 = v10;
  WTF::callOnMainThread();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

- (uint64_t)download:(uint64_t)download didReceiveResponse:
{
  v2 = *(download + 16);
  *(download + 16) = 0;
  if (v2)
  {
  }

  v3 = *(download + 8);
  *(download + 8) = 0;
  if (v3)
  {
  }

  v4 = *download;
  *download = 0;
  if (v4)
  {
  }

  return download;
}

- (void)download:(id)download didReceiveDataOfLength:(unint64_t)length
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (download)
  {
    downloadCopy = download;
  }

  v9 = WTF::fastMalloc(0x20);
  *v9 = &unk_1F472D828;
  v9[1] = m_ptr;
  v9[2] = download;
  v9[3] = length;
  v10 = v9;
  WTF::callOnMainThread();
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

- (BOOL)download:(id)download shouldDecodeSourceDataOfMIMEType:(id)type
{
  downloadCopy = download;
  selfCopy = self;
  typeCopy = type;
  v13 = 0;
  isMainThread = WTF::isMainThread(self);
  if (isMainThread)
  {
    m_ptr = self->realDelegate.m_ptr;

    return [m_ptr download:download shouldDecodeSourceDataOfMIMEType:type];
  }

  else
  {
    v10 = WTF::WorkQueue::mainSingleton(isMainThread);
    v11 = WTF::fastMalloc(0x28);
    *v11 = &unk_1F472D850;
    v11[1] = &v13;
    v11[2] = &selfCopy;
    v11[3] = &downloadCopy;
    v11[4] = &typeCopy;
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

- (void)download:(id)download decideDestinationWithSuggestedFilename:(id)filename
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (download)
  {
    downloadCopy = download;
  }

  if (filename)
  {
    filenameCopy = filename;
  }

  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F472D878;
  v10[1] = m_ptr;
  v10[2] = download;
  v10[3] = filename;
  v11 = v10;
  WTF::callOnMainThread();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

- (void)download:(id)download didCreateDestination:(id)destination
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (download)
  {
    downloadCopy = download;
  }

  if (destination)
  {
    destinationCopy = destination;
  }

  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F472D8A0;
  v10[1] = m_ptr;
  v10[2] = download;
  v10[3] = destination;
  v11 = v10;
  WTF::callOnMainThread();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

- (void)downloadDidFinish:(id)finish
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v5 = m_ptr;
  }

  if (finish)
  {
    finishCopy = finish;
  }

  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F472D8C8;
  v7[1] = m_ptr;
  v7[2] = finish;
  v8 = v7;
  WTF::callOnMainThread();
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

- (void)download:(id)download didFailWithError:(id)error
{
  m_ptr = self->realDelegate.m_ptr;
  if (m_ptr)
  {
    v7 = m_ptr;
  }

  if (download)
  {
    downloadCopy = download;
  }

  if (error)
  {
    errorCopy = error;
  }

  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F472D8F0;
  v10[1] = m_ptr;
  v10[2] = download;
  v10[3] = error;
  v11 = v10;
  WTF::callOnMainThread();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

- (void)downloadDidBegin:(void *)begin
{
  *begin = &unk_1F472D7B0;
  v2 = begin[2];
  begin[2] = 0;
  if (v2)
  {
  }

  v3 = begin[1];
  begin[1] = 0;
  if (v3)
  {
  }

  return begin;
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
  v2 = [*(**(self + 16) + 8) download:**(self + 24) willSendRequest:**(self + 32) redirectResponse:**(self + 40)];
  v3 = v2;
  v4 = *(self + 8);
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

- (void)download:(void *)download didReceiveResponse:
{
  *download = &unk_1F472D800;
  v2 = download[3];
  download[3] = 0;
  if (v2)
  {
  }

  v3 = download[2];
  download[2] = 0;
  if (v3)
  {
  }

  v4 = download[1];
  download[1] = 0;
  if (v4)
  {
  }

  return download;
}

- (uint64_t)download:(WTF *)this didReceiveResponse:(void *)response
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

  return WTF::fastFree(this, response);
}

- (void)download:(void *)download didReceiveDataOfLength:
{
  *download = &unk_1F472D828;
  v2 = download[2];
  download[2] = 0;
  if (v2)
  {
  }

  v3 = download[1];
  download[1] = 0;
  if (v3)
  {
  }

  return download;
}

- (uint64_t)download:(WTF *)this didReceiveDataOfLength:(void *)length
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

  return WTF::fastFree(this, length);
}

- (uint64_t)download:(id)&& shouldDecodeSourceDataOfMIMEType:
{
  result = [*(**(self + 16) + 8) download:**(self + 24) shouldDecodeSourceDataOfMIMEType:**(self + 32)];
  **(self + 8) = result;
  return result;
}

- (void)download:(void *)download decideDestinationWithSuggestedFilename:
{
  *download = &unk_1F472D878;
  v2 = download[3];
  download[3] = 0;
  if (v2)
  {
  }

  v3 = download[2];
  download[2] = 0;
  if (v3)
  {
  }

  v4 = download[1];
  download[1] = 0;
  if (v4)
  {
  }

  return download;
}

- (uint64_t)download:(WTF *)this decideDestinationWithSuggestedFilename:(void *)filename
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

  return WTF::fastFree(this, filename);
}

- (void)download:(void *)download didCreateDestination:
{
  *download = &unk_1F472D8A0;
  v2 = download[3];
  download[3] = 0;
  if (v2)
  {
  }

  v3 = download[2];
  download[2] = 0;
  if (v3)
  {
  }

  v4 = download[1];
  download[1] = 0;
  if (v4)
  {
  }

  return download;
}

- (uint64_t)download:(WTF *)this didCreateDestination:(void *)destination
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

  return WTF::fastFree(this, destination);
}

- (void)downloadDidFinish:(void *)finish
{
  *finish = &unk_1F472D8C8;
  v2 = finish[2];
  finish[2] = 0;
  if (v2)
  {
  }

  v3 = finish[1];
  finish[1] = 0;
  if (v3)
  {
  }

  return finish;
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

- (void)download:(void *)download didFailWithError:
{
  *download = &unk_1F472D8F0;
  v2 = download[3];
  download[3] = 0;
  if (v2)
  {
  }

  v3 = download[2];
  download[2] = 0;
  if (v3)
  {
  }

  v4 = download[1];
  download[1] = 0;
  if (v4)
  {
  }

  return download;
}

- (uint64_t)download:(WTF *)this didFailWithError:(void *)error
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

  return WTF::fastFree(this, error);
}

@end