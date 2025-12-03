@interface _SSBDatabaseUpdateFetchDataSessionHandler
- (_SSBDatabaseUpdateFetchDataSessionHandler)initWithCompletionHandler:(void *)handler provider:(int)provider;
- (id).cxx_construct;
- (id)initWithCompletionHandler:provider:;
- (uint64_t)initWithCompletionHandler:provider:;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)initWithCompletionHandler:provider:;
@end

@implementation _SSBDatabaseUpdateFetchDataSessionHandler

- (_SSBDatabaseUpdateFetchDataSessionHandler)initWithCompletionHandler:(void *)handler provider:(int)provider
{
  v26 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = _SSBDatabaseUpdateFetchDataSessionHandler;
  v6 = [(_SSBDatabaseUpdateFetchDataSessionHandler *)&v17 init];
  if (v6)
  {
    _ZNSt3__115allocate_sharedB8sn200100I12ByteProviderNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(from);
    v7 = *(v6 + 3);
    *(v6 + 1) = *from;
    from[0] = 0;
    from[1] = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v7);
      if (from[1])
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](from[1]);
      }
    }

    objc_initWeak(&location, v6);
    std::allocate_shared[abi:sn200100]<ReadStream,std::allocator<ReadStream>,std::shared_ptr<ByteProvider> &,0>(v6 + 2, &v15);
    objc_copyWeak(&to, &location);
    std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&,NSError *)>::__value_func[abi:sn200100](v20, handler);
    v8 = operator new(8uLL);
    v18 = v15;
    v15 = 0uLL;
    objc_moveWeak(from, &to);
    if (v21)
    {
      if (v21 == v20)
      {
        v23 = &from[1];
        (*(*v21 + 3))();
      }

      else
      {
        v23 = v21;
        v21 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = 0;
    v9 = operator new(0x30uLL);
    *v9 = &unk_2838CE058;
    objc_moveWeak(v9 + 1, from);
    v10 = v23;
    if (v23)
    {
      if (v23 == &from[1])
      {
        v9[5] = v9 + 2;
        (*(*v10 + 3))(v10);
      }

      else
      {
        v9[5] = v23;
        v23 = 0;
      }
    }

    else
    {
      v9[5] = 0;
    }

    v25 = v9;
    Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(v8, &v18, v24);
    std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>::~__value_func[abi:sn200100](v24);
    std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&,NSError *)>::~__value_func[abi:sn200100](&from[1]);
    objc_destroyWeak(from);
    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](*(&v18 + 1));
    }

    v11 = *(v6 + 1);
    *(v6 + 1) = v8;
    if (v11)
    {
      if (*v11)
      {
        (*(*v11 + 8))();
      }

      operator delete(v11);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&,NSError *)>::~__value_func[abi:sn200100](v20);
    objc_destroyWeak(&to);
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](*(&v15 + 1));
    }

    *(v6 + 12) = provider;
    v12 = v6;
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, [responseCopy statusCode] == 200);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  self->_receivedBytes += [dataCopy length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80___SSBDatabaseUpdateFetchDataSessionHandler_URLSession_dataTask_didReceiveData___block_invoke;
  v7[3] = &unk_278564EC8;
  v7[4] = self;
  [dataCopy enumerateByteRangesUsingBlock:v7];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  logDataLength(self->_receivedBytes, self->_provider);
  if (errorCopy)
  {
    objc_storeStrong(&self->_error, error);
    ByteProvider::readFailedWithError(self->_byteProvider.__ptr_);
  }

  else
  {
    ByteProvider::finishedReadingSuccessfully(self->_byteProvider.__ptr_);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (uint64_t)initWithCompletionHandler:provider:
{
  *a2 = &unk_2838CE058;
  v3 = a2 + 16;
  objc_copyWeak((a2 + 8), (self + 8));
  return std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&,NSError *)>::__value_func[abi:sn200100](v3, self + 16);
}

- (void)initWithCompletionHandler:provider:
{
  WeakRetained = objc_loadWeakRetained((self + 8));
  v5 = WeakRetained;
  if (WeakRetained && (v6 = *(WeakRetained + 5)) != 0)
  {
    v7[0] = 0;
    v8 = 0;
    std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&,NSError *)>::operator()(self + 16, v7, v6);
    if (v8 == 1)
    {
      v9 = v7;
      std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v9);
    }
  }

  else
  {
    std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&,NSError *)>::operator()(self + 16, a2, 0);
  }
}

- (id)initWithCompletionHandler:provider:
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2838CE058;
  objc_copyWeak(v2 + 1, (self + 8));
  std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&,NSError *)>::__value_func[abi:sn200100]((v2 + 2), self + 16);
  return v2;
}

@end