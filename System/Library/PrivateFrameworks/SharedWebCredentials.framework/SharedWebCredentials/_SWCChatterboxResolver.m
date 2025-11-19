@interface _SWCChatterboxResolver
+ (BOOL)_looksLikeAppleErrorPageURLResponse:(id)a3;
+ (BOOL)_looksLikeChatterboxURLComponents:(id)a3;
+ (id)_queue;
+ (id)_resolverForTask:(id)a3;
+ (id)_session;
+ (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
+ (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
+ (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
+ (void)_invokeCompletionHandlerForTask:(id)a3 result:(id)a4 error:(id)a5;
+ (void)_setResolver:(id)a3 forTask:(id)a4;
- (_SWCChatterboxResolver)initWithURL:(id)a3;
- (void)dealloc;
- (void)resolveWithCompletionHandler:(id)a3;
@end

@implementation _SWCChatterboxResolver

- (_SWCChatterboxResolver)initWithURL:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _SWCChatterboxResolver;
  v6 = [(_SWCChatterboxResolver *)&v12 init];
  v7 = v6;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:v7 file:@"SWCChatterboxResolver.mm" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"aURL != nil"}];

    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v5 resolvingAgainstBaseURL:1];
    URLComponents = v7->_URLComponents;
    v7->_URLComponents = v8;
  }

LABEL_4:

  return v7;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_280B21858 != -1)
  {
    dispatch_once(&qword_280B21858, &__block_literal_global_98);
  }

  v3 = qword_280B21850;
  if (os_log_type_enabled(qword_280B21850, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_debug_impl(&dword_265F54000, v3, OS_LOG_TYPE_DEBUG, "Deallocating %p", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = _SWCChatterboxResolver;
  [(_SWCChatterboxResolver *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)resolveWithCompletionHandler:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self->_URLComponents;
  v7 = objc_opt_class();
  if (!v5)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SWCChatterboxResolver.mm" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  if ([v7 _looksLikeChatterboxURLComponents:v6])
  {
    v8 = [(NSURLComponents *)v6 URL];
    os_unfair_recursive_lock_lock_with_options();
    if (self->_task)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"SWCChatterboxResolver.mm" lineNumber:87 description:{@"Already attempting to resolve this Chatterbox URL.", v8}];
    }

    if (qword_280B21858 != -1)
    {
      dispatch_once(&qword_280B21858, &__block_literal_global_98);
    }

    v9 = qword_280B21850;
    if (os_log_type_enabled(qword_280B21850, OS_LOG_TYPE_INFO))
    {
      *buf = 138739971;
      v20 = v8;
      _os_log_impl(&dword_265F54000, v9, OS_LOG_TYPE_INFO, "Resolving Chatterbox URL %{sensitive}@", buf, 0xCu);
    }

    v10 = [v7 _session];
    v11 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v8];
    v12 = [v10 dataTaskWithRequest:v11];
    [v12 resume];
    objc_storeStrong(&self->_task, v12);
    objc_storeStrong(&self->_session, v10);
    v13 = [v5 copy];
    completionHandler = self->_completionHandler;
    self->_completionHandler = v13;

    [v7 _setResolver:self forTask:v12];
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v8 = [(NSURLComponents *)v6 URL];
    if (qword_280B21858 != -1)
    {
      dispatch_once(&qword_280B21858, &__block_literal_global_98);
    }

    v15 = qword_280B21850;
    if (os_log_type_enabled(qword_280B21850, OS_LOG_TYPE_INFO))
    {
      *buf = 138739971;
      v20 = v8;
      _os_log_impl(&dword_265F54000, v15, OS_LOG_TYPE_INFO, "URL %{sensitive}@ is not from Chatterbox, returning verbatim.", buf, 0xCu);
    }

    (*(v5 + 2))(v5, v8, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = [v10 statusCode];
  if (qword_280B21858 != -1)
  {
    dispatch_once(&qword_280B21858, &__block_literal_global_98);
  }

  v13 = qword_280B21850;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v9 originalRequest];
    v15 = [v14 URL];
    *buf = 134218499;
    v25 = v12;
    v26 = 2117;
    v27 = v15;
    v28 = 2117;
    v29 = v10;
    _os_log_impl(&dword_265F54000, v13, OS_LOG_TYPE_INFO, "Got HTTP response %li for Chatterbox URL %{sensitive}@: %{sensitive}@", buf, 0x20u);
  }

  if ((v12 - 200) > 0x63)
  {
    if ((v12 - 400) <= 0xC7)
    {
      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"+[_SWCChatterboxResolver URLSession:dataTask:didReceiveResponse:completionHandler:]", @"Line", @"Function", &unk_2877A73C0}];
      v23[1] = v16;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:2];
      v19 = [v17 initWithDomain:@"HTTP" code:v12 userInfo:v18];
      [a1 _invokeCompletionHandlerForTask:v9 result:0 error:v19];

      goto LABEL_10;
    }

LABEL_11:
    v20 = 1;
    goto LABEL_12;
  }

  v16 = [v10 URL];
  [a1 _invokeCompletionHandlerForTask:v9 result:v16 error:0];
LABEL_10:

  v20 = 0;
LABEL_12:
  v11[2](v11, v20);

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v12 = a4;
  v31 = a5;
  v13 = a6;
  v14 = a7;
  if (qword_280B21858 != -1)
  {
    dispatch_once(&qword_280B21858, &__block_literal_global_98);
  }

  v15 = qword_280B21850;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v12 originalRequest];
    v17 = [v16 URL];
    v18 = [v13 URL];
    *buf = 138740227;
    v35 = v17;
    v36 = 2117;
    v37 = v18;
    _os_log_impl(&dword_265F54000, v15, OS_LOG_TYPE_INFO, "Redirecting Chatterbox URL %{sensitive}@ => %{sensitive}@", buf, 0x16u);
  }

  if ([a1 _looksLikeAppleErrorPageURLResponse:v31])
  {
    if (qword_280B21858 != -1)
    {
      dispatch_once(&qword_280B21858, &__block_literal_global_98);
    }

    v19 = qword_280B21850;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = [v12 originalRequest];
      v29 = [v28 URL];
      *buf = 138739971;
      v35 = v29;
      _os_log_error_impl(&dword_265F54000, v19, OS_LOG_TYPE_ERROR, "Chatterbox URL %{sensitive}@: resolution failed server-side and redirected to a generic error page.", buf, 0xCu);
    }

    v20 = objc_alloc(MEMORY[0x277CCA9B8]);
    v33[0] = &unk_2877A73D8;
    v32[0] = @"Line";
    v32[1] = @"Function";
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[_SWCChatterboxResolver URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:]"];
    v22 = *MEMORY[0x277CCA068];
    v33[1] = v21;
    v33[2] = @"The specified Chatterbox URL redirected to an error page.";
    v23 = *MEMORY[0x277CCA760];
    v32[2] = v22;
    v32[3] = v23;
    v24 = [v13 URL];
    v33[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
    v26 = [v20 initWithDomain:@"SWCErrorDomain" code:9 userInfo:v25];
    [a1 _invokeCompletionHandlerForTask:v12 result:0 error:v26];

    [v12 cancel];
  }

  v14[2](v14, v13);

  v27 = *MEMORY[0x277D85DE8];
}

+ (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (qword_280B21858 != -1)
    {
      dispatch_once(&qword_280B21858, &__block_literal_global_98);
    }

    v11 = qword_280B21850;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = [v9 originalRequest];
      v18 = [v17 URL];
      v19 = 138740227;
      v20 = v18;
      v21 = 2112;
      v22 = v10;
      _os_log_error_impl(&dword_265F54000, v11, OS_LOG_TYPE_ERROR, "Error handling Chatterbox URL %{sensitive}@: %@", &v19, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    if (qword_280B21858 != -1)
    {
      dispatch_once(&qword_280B21858, &__block_literal_global_98);
    }

    v13 = qword_280B21850;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v9 originalRequest];
      v15 = [v14 URL];
      v19 = 138739971;
      v20 = v15;
      _os_log_impl(&dword_265F54000, v13, OS_LOG_TYPE_INFO, "Finished handling Chatterbox URL %{sensitive}@", &v19, 0xCu);
    }

    v11 = [v9 currentRequest];
    v12 = [v11 URL];
  }

  [a1 _invokeCompletionHandlerForTask:v9 result:v12 error:v10];
  if (!v10)
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)_queue
{
  if (qword_280B21838 != -1)
  {
    dispatch_once(&qword_280B21838, &__block_literal_global_1);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

+ (id)_session
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&qword_280B21840);
  if (!WeakRetained)
  {
    v4 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v5 = MEMORY[0x277CCAD30];
    v6 = [a1 _queue];
    WeakRetained = [v5 sessionWithConfiguration:v4 delegate:a1 delegateQueue:v6];
  }

  os_unfair_recursive_lock_unlock();

  return WeakRetained;
}

+ (id)_resolverForTask:(id)a3
{
  v3 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [qword_280B21848 objectForKeyedSubscript:v3];
  os_unfair_recursive_lock_unlock();

  return v4;
}

+ (void)_setResolver:(id)a3 forTask:(id)a4
{
  v9 = a3;
  v5 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v6 = qword_280B21848;
  if (v9 && !qword_280B21848)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = qword_280B21848;
    qword_280B21848 = v7;

    v6 = qword_280B21848;
  }

  [v6 setObject:v9 forKeyedSubscript:v5];
  os_unfair_recursive_lock_unlock();
}

+ (void)_invokeCompletionHandlerForTask:(id)a3 result:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_recursive_lock_lock_with_options();
  v11 = [a1 _resolverForTask:v8];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 16);
    *(v11 + 16) = 0;

    v14 = MEMORY[0x2667737C0](*(v12 + 32));
    v15 = *(v12 + 32);
    *(v12 + 32) = 0;

    v16 = 0;
    if (!v9)
    {
      v16 = *(v12 + 8);
    }

    [a1 _setResolver:0 forTask:v8];
    v17 = *(v12 + 24);
    *(v12 + 24) = 0;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  os_unfair_recursive_lock_unlock();
  if (v14)
  {
    if (qword_280B21858 != -1)
    {
      dispatch_once(&qword_280B21858, &__block_literal_global_98);
    }

    v18 = qword_280B21850;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = MEMORY[0x2667737C0](v14);
      v21 = [v8 originalRequest];
      v22 = [v21 URL];
      v23 = 138412547;
      v24 = v20;
      v25 = 2117;
      v26 = v22;
      _os_log_debug_impl(&dword_265F54000, v18, OS_LOG_TYPE_DEBUG, "Invoking completion handler %@ for Chatterbox URL %{sensitive}@", &v23, 0x16u);
    }

    (v14)[2](v14, v9, v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_looksLikeChatterboxURLComponents:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"SWCChatterboxResolver.mm" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"urlComponents != nil"}];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [v5 scheme];
  v8 = [v5 host];
  if (!v7)
  {
    goto LABEL_13;
  }

  if (![v7 caseInsensitiveCompare:@"http"])
  {
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = 0;
  if ([v7 caseInsensitiveCompare:@"https"] || !v8)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (![v8 caseInsensitiveCompare:@"c.apple.com"])
  {
    v9 = 1;
    goto LABEL_14;
  }

  if (!qword_280B21760)
  {
    goto LABEL_13;
  }

  v10 = +[_SWCPrefs sharedPrefs];
  if ([v10 isAppleInternal])
  {
    v9 = [v8 caseInsensitiveCompare:qword_280B21760] == 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_14:
  objc_autoreleasePoolPop(v6);

  return v9;
}

+ (BOOL)_looksLikeAppleErrorPageURLResponse:(id)a3
{
  v3 = [a3 valueForHTTPHeaderField:@"Location"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v3];
    v5 = [v4 host];
    v6 = v5;
    if (v5 && ![v5 caseInsensitiveCompare:@"www.apple.com"])
    {
      v8 = [v4 path];
      if ([v8 isEqual:@"/error"])
      {
        v7 = 1;
      }

      else
      {
        v7 = [v8 hasSuffix:@"/error.html"];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end