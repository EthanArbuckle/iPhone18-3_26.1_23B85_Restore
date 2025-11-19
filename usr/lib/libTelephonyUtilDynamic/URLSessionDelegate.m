@interface URLSessionDelegate
- (id).cxx_construct;
- (shared_ptr<SessionTaskContext>)getContext:(int64_t)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)addCallbackHandler:(shared_ptr<ctu:(int64_t)a4 :Http::HttpRequestCallbackHandler>)a3 for:;
- (void)dealloc;
- (void)removeCallbackFor:(int64_t)a3;
@end

@implementation URLSessionDelegate

- (void)addCallbackHandler:(shared_ptr<ctu:(int64_t)a4 :Http::HttpRequestCallbackHandler>)a3 for:
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = operator new(0x30uLL);
  v8 = v7;
  v9 = *var0;
  v10 = *(var0 + 1);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v7->~__shared_weak_count = v9;
    v7->~__shared_weak_count_0 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7->~__shared_weak_count = v9;
    v7->~__shared_weak_count_0 = 0;
  }

  v7->__on_zero_shared_weak = 0;
  v7[1].~__shared_weak_count = 0;
  v7->__on_zero_shared = objc_opt_new();
  v8->__get_deleter = objc_opt_new();
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  v11->__vftable = &unk_1F1CB4E10;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  p_end_node = &self->fTaskHandlers.__tree_.__end_node_;
  left = self->fTaskHandlers.__tree_.__end_node_.__left_;
  if (left)
  {
    while (1)
    {
      while (1)
      {
        v14 = left;
        v15 = left[4].__left_;
        if (v15 <= var1)
        {
          break;
        }

        left = v14->__left_;
        p_end_node = v14;
        if (!v14->__left_)
        {
          goto LABEL_14;
        }
      }

      if (v15 >= var1)
      {
        break;
      }

      left = v14[1].__left_;
      if (!left)
      {
        p_end_node = v14 + 1;
        goto LABEL_14;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  else
  {
    v14 = &self->fTaskHandlers.__tree_.__end_node_;
LABEL_14:
    v16 = operator new(0x38uLL);
    v16[4] = var1;
    v16[5] = v8;
    v16[6] = v11;
    *v16 = 0;
    v16[1] = 0;
    v16[2] = v14;
    p_end_node->__left_ = v16;
    v17 = *self->fTaskHandlers.__tree_.__begin_node_;
    if (v17)
    {
      self->fTaskHandlers.__tree_.__begin_node_ = v17;
      v16 = p_end_node->__left_;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(self->fTaskHandlers.__tree_.__end_node_.__left_, v16);
    ++self->fTaskHandlers.__tree_.__size_;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
}

- (void)removeCallbackFor:(int64_t)a3
{
  left = self->fTaskHandlers.__tree_.__end_node_.__left_;
  if (!left)
  {
    return;
  }

  p_end_node = &self->fTaskHandlers.__tree_.__end_node_;
  v5 = self->fTaskHandlers.__tree_.__end_node_.__left_;
  do
  {
    v6 = *(v5 + 4);
    v7 = v6 >= a3;
    v8 = v6 < a3;
    if (v7)
    {
      p_end_node = v5;
    }

    v5 = *(v5 + v8);
  }

  while (v5);
  if (p_end_node == &self->fTaskHandlers.__tree_.__end_node_ || p_end_node[4].__left_ > a3)
  {
    return;
  }

  v9 = p_end_node[1].__left_;
  if (v9)
  {
    do
    {
      v10 = v9;
      v9 = v9->__left_;
    }

    while (v9);
  }

  else
  {
    v11 = p_end_node;
    do
    {
      v10 = v11[2].__left_;
      v36 = *v10 == v11;
      v11 = v10;
    }

    while (!v36);
  }

  if (self->fTaskHandlers.__tree_.__begin_node_ == p_end_node)
  {
    self->fTaskHandlers.__tree_.__begin_node_ = v10;
  }

  --self->fTaskHandlers.__tree_.__size_;
  v12 = p_end_node->__left_;
  v13 = p_end_node;
  if (p_end_node->__left_)
  {
    v14 = p_end_node[1].__left_;
    if (!v14)
    {
      v13 = p_end_node;
      goto LABEL_24;
    }

    do
    {
      v13 = v14;
      v14 = v14->__left_;
    }

    while (v14);
  }

  v12 = v13[1].__left_;
  if (v12)
  {
LABEL_24:
    v16 = 0;
    v15 = v13[2].__left_;
    v12[2].__left_ = v15;
    goto LABEL_25;
  }

  v15 = v13[2].__left_;
  v16 = 1;
LABEL_25:
  v17 = *v15;
  if (*v15 == v13)
  {
    *v15 = v12;
    if (v13 == left)
    {
      v17 = 0;
      left = v12;
    }

    else
    {
      v17 = v15[1];
    }
  }

  else
  {
    v15[1] = v12;
  }

  left_low = LOBYTE(v13[3].__left_);
  if (v13 != p_end_node)
  {
    v19 = p_end_node[2].__left_;
    v13[2].__left_ = v19;
    v19[*v19 != p_end_node] = v13;
    v21 = p_end_node->__left_;
    v20 = p_end_node[1].__left_;
    v21[2] = v13;
    v13->__left_ = v21;
    v13[1].__left_ = v20;
    if (v20)
    {
      *(v20 + 2) = v13;
    }

    LOBYTE(v13[3].__left_) = p_end_node[3].__left_;
    if (left == p_end_node)
    {
      left = v13;
    }
  }

  if (!left || !left_low)
  {
    goto LABEL_88;
  }

  if (!v16)
  {
    LOBYTE(v12[3].__left_) = 1;
    goto LABEL_88;
  }

  while (1)
  {
    v22 = v17[2].__left_;
    v23 = *v22;
    v24 = v17[3].__left_;
    if (*v22 == v17)
    {
      break;
    }

    if ((v17[3].__left_ & 1) == 0)
    {
      LOBYTE(v17[3].__left_) = 1;
      *(v22 + 24) = 0;
      v25 = v22[1];
      v26 = *v25;
      v22[1] = *v25;
      if (v26)
      {
        *(v26 + 16) = v22;
      }

      v27 = v22[2];
      v25[2] = v27;
      v27[*v27 != v22] = v25;
      *v25 = v22;
      v22[2] = v25;
      if (left == v17->__left_)
      {
        left = v17;
      }

      v17 = *(v17->__left_ + 1);
    }

    v28.__left_ = v17->__left_;
    if (v17->__left_ && *(v28.__left_ + 24) != 1)
    {
      v29 = v17[1].__left_;
      if (v29 && (v29[24] & 1) == 0)
      {
LABEL_74:
        v28.__left_ = v17;
      }

      else
      {
        *(v28.__left_ + 24) = 1;
        LOBYTE(v17[3].__left_) = 0;
        v37 = *(v28.__left_ + 1);
        v17->__left_ = v37;
        if (v37)
        {
          v37[2] = v17;
        }

        v38 = v17[2].__left_;
        *(v28.__left_ + 2) = v38;
        v38[*v38 != v17] = v28.__left_;
        *(v28.__left_ + 1) = v17;
        v17[2].__left_ = v28.__left_;
        v29 = v17;
      }

      v39 = *(v28.__left_ + 2);
      *(v28.__left_ + 24) = *(v39 + 24);
      *(v39 + 24) = 1;
      v29[24] = 1;
      v40 = *(v39 + 8);
      v41 = *v40;
      *(v39 + 8) = *v40;
      if (v41)
      {
        *(v41 + 16) = v39;
      }

      v42 = *(v39 + 16);
      v40[2] = v42;
      v42[*v42 != v39] = v40;
      *v40 = v39;
      goto LABEL_87;
    }

    v29 = v17[1].__left_;
    if (v29 && v29[24] != 1)
    {
      goto LABEL_74;
    }

    LOBYTE(v17[3].__left_) = 0;
    v30 = v17[2].__left_;
    if (v30 == left || (v30[3].__left_ & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_66:
    v17 = *(v30[2].__left_ + (*v30[2].__left_ == v30));
  }

  if ((v17[3].__left_ & 1) == 0)
  {
    LOBYTE(v17[3].__left_) = 1;
    *(v22 + 24) = 0;
    v31 = v23[1].__left_;
    *v22 = v31;
    if (v31)
    {
      v31[2].__left_ = v22;
    }

    v32 = v22[2];
    v23[2].__left_ = v32;
    v32[*v32 != v22] = v23;
    v23[1].__left_ = v22;
    v22[2] = v23;
    v33 = v17[1].__left_;
    if (left == v33)
    {
      left = v17;
    }

    v17 = v33->__left_;
  }

  v34.__left_ = v17->__left_;
  if (v17->__left_ && *(v34.__left_ + 24) != 1)
  {
    goto LABEL_83;
  }

  v35 = v17[1].__left_;
  if (!v35 || *(v35 + 24) == 1)
  {
    LOBYTE(v17[3].__left_) = 0;
    v30 = v17[2].__left_;
    v36 = LOBYTE(v30[3].__left_) != 1 || v30 == left;
    if (v36)
    {
LABEL_68:
      LOBYTE(v30[3].__left_) = 1;
      goto LABEL_88;
    }

    goto LABEL_66;
  }

  if (v34.__left_ && (*(v34.__left_ + 24) & 1) == 0)
  {
LABEL_83:
    v35 = v17;
    goto LABEL_84;
  }

  *(v35 + 24) = 1;
  LOBYTE(v17[3].__left_) = 0;
  v43 = *v35;
  v17[1].__left_ = *v35;
  if (v43)
  {
    *(v43 + 16) = v17;
  }

  v44 = v17[2].__left_;
  v35[2] = v44;
  v44[*v44 != v17] = v35;
  *v35 = v17;
  v17[2].__left_ = v35;
  v34.__left_ = v17;
LABEL_84:
  v39 = v35[2];
  *(v35 + 24) = *(v39 + 24);
  *(v39 + 24) = 1;
  *(v34.__left_ + 24) = 1;
  v40 = *v39;
  v45 = *(*v39 + 8);
  *v39 = v45;
  if (v45)
  {
    *(v45 + 16) = v39;
  }

  v46 = *(v39 + 16);
  v40[2] = v46;
  v46[*v46 != v39] = v40;
  v40[1] = v39;
LABEL_87:
  *(v39 + 16) = v40;
LABEL_88:
  v47 = p_end_node[6].__left_;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  operator delete(p_end_node);
}

- (void)dealloc
{
  p_end_node = &self->fTaskHandlers.__tree_.__end_node_;
  std::__tree<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>>>::destroy(self->fTaskHandlers.__tree_.__end_node_.__left_);
  self->fTaskHandlers.__tree_.__begin_node_ = p_end_node;
  self->fTaskHandlers.__tree_.__size_ = 0;
  p_end_node->__left_ = 0;
  v4.receiver = self;
  v4.super_class = URLSessionDelegate;
  [(URLSessionDelegate *)&v4 dealloc];
}

- (shared_ptr<SessionTaskContext>)getContext:(int64_t)a3
{
  left = self->fTaskHandlers.__tree_.__end_node_.__left_;
  p_end_node = &self->fTaskHandlers.__tree_.__end_node_;
  v5 = left;
  if (!left)
  {
    goto LABEL_9;
  }

  v7 = p_end_node;
  do
  {
    v8 = v5[4].__left_;
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v5;
    }

    v5 = v5[v10].__left_;
  }

  while (v5);
  if (v7 != p_end_node && v7[4].__left_ <= a3)
  {
    v12 = v7[5].__left_;
    v11 = v7[6].__left_;
    *v3 = v12;
    v3[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *v3 = 0;
    v3[1] = 0;
  }

  result.var1 = a2;
  result.var0 = p_end_node;
  return result;
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v10 = [a4 taskIdentifier];
  if (self)
  {
    [(URLSessionDelegate *)self getContext:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = operator new(0x68uLL);
      ctu::Http::HttpResponseConcrete::HttpResponseConcrete(v11, a5);
      *(v11 + 48) = [a4 _TLSNegotiatedCipherSuite];
      std::shared_ptr<ctu::Http::HttpResponse>::reset[abi:ne200100]<ctu::Http::HttpResponseConcrete,0>(0xAAAAAAAAAAAAAACALL, v11);
    }
  }

  else
  {
    v12 = 0;
  }

  (*(a6 + 2))(a6, 1);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v7 = [a4 taskIdentifier];
  if (self)
  {
    [(URLSessionDelegate *)self getContext:v7];
    v8 = v25[1];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        if (*v25)
        {
          v12 = v25;
          v13 = v25[4];
          {
            v17 = v16;
            v18 = v12[5];
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (a5)
            {
              v19 = [a5 domain];
              if ([v19 isEqualToString:*MEMORY[0x1E696A978]] && (v20 = objc_msgSend(a5, "code"), (v20 + 1009) <= 9))
              {
                v21 = *(&unk_1A9164B44 + v20 + 1009);
              }

              else
              {
                v21 = 0;
              }

              *(v17 + 2) = v21;
              v17[6] = [a5 code];
              v27 = a5;
              ctu::cf::CFSharedRef<__CFError>::operator=(v17 + 11, &v27);
            }

            else
            {
              v27 = v12[2];
              ctu::cf::CFSharedRef<__CFData const>::operator=(v16 + 10, &v27);
              *(v17 + 2) = 1;
            }
          }

          else
          {
            v18 = 0;
          }

          v22 = v25[5];
          v23 = v25[4];
          v24 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v11 + 16))(v11, &v23);
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v7 = [a4 taskIdentifier];
  if (self)
  {
    [(URLSessionDelegate *)self getContext:v7];
    if (a5)
    {
      [MEMORY[0xAAAAAAAAAAAAAABA] appendData:a5];
      if (MEMORY[0xAAAAAAAAAAAAAAB2])
      {
        v8 = std::__shared_weak_count::lock(MEMORY[0xAAAAAAAAAAAAAAB2]);
        if (v8)
        {
          v9 = v8;
          if (MEMORY[0xAAAAAAAAAAAAAAAA])
          {
            (*(*MEMORY[0xAAAAAAAAAAAAAAAA] + 32))(MEMORY[0xAAAAAAAAAAAAAAAA], [a5 length], objc_msgSend(MEMORY[0xAAAAAAAAAAAAAABA], "length"));
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v11 = [a4 taskIdentifier];
  if (self)
  {
    [(URLSessionDelegate *)self getContext:v11];
    if (MEMORY[0xAAAAAAAAAAAAAAB2])
    {
      v12 = std::__shared_weak_count::lock(MEMORY[0xAAAAAAAAAAAAAAB2]);
      if (v12)
      {
        v13 = v12;
        if (MEMORY[0xAAAAAAAAAAAAAAAA])
        {
          (*(*MEMORY[0xAAAAAAAAAAAAAAAA] + 40))(MEMORY[0xAAAAAAAAAAAAAAAA], a5, a6, a7);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  theDict[1] = *MEMORY[0x1E69E9840];
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v9 = [a4 taskIdentifier];
  if (!self)
  {
    Value = 0;
    v31 = 0;
    v32 = 0;
LABEL_21:
    v17 = 1;
    goto LABEL_22;
  }

  [(URLSessionDelegate *)self getContext:v9];
  v10 = [objc_msgSend(a5 "protectionSpace")];
  if ([v10 isEqualToString:*MEMORY[0x1E696A940]])
  {
    v11 = v31[1];
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        if (*v31)
        {
          theDict[0] = 0xAAAAAAAAAAAAAAAALL;
          (*(*v14 + 48))(theDict);
          if (theDict[0])
          {
            Value = CFDictionaryGetValue(theDict[0], *MEMORY[0x1E697B0B8]);
            if (!Value)
            {
LABEL_26:
              v17 = 1;
              goto LABEL_27;
            }

            TypeID = SecIdentityGetTypeID();
            if (TypeID == CFGetTypeID(Value))
            {
              Value = [MEMORY[0x1E696AF30] credentialWithIdentity:Value certificates:0 persistence:0];
              v17 = 0;
LABEL_27:
              ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(theDict);
              goto LABEL_31;
            }
          }

          Value = 0;
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    goto LABEL_20;
  }

  if (![v10 isEqualToString:*MEMORY[0x1E696A968]] || (v18 = v31[1]) == 0 || (v19 = std::__shared_weak_count::lock(v18)) == 0)
  {
LABEL_20:
    Value = 0;
    goto LABEL_21;
  }

  v13 = v19;
  v20 = *v31;
  if (!*v31)
  {
    goto LABEL_30;
  }

  (*(*v20 + 56))(theDict, v20);
  if (!theDict[0])
  {
    ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(theDict);
    goto LABEL_30;
  }

  (*(*v20 + 56))(&theArray, v20);
  Count = CFArrayGetCount(theArray);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&theArray);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(theDict);
  if (!Count)
  {
LABEL_30:
    Value = 0;
    v17 = 1;
    goto LABEL_31;
  }

  v22 = [objc_msgSend(a5 "protectionSpace")];
  if (((*(*v20 + 64))(v20, v22) & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_30;
    }

    LOWORD(theDict[0]) = 0;
    v26 = MEMORY[0x1E69E9C10];
    v27 = "DEBUG: Failed to validate certs.";
    v28 = 2;
LABEL_40:
    _os_log_debug_impl(&dword_1A90E3000, v26, OS_LOG_TYPE_DEBUG, v27, theDict, v28);
    goto LABEL_30;
  }

  (*(*v20 + 56))(theDict, v20);
  v23 = SecTrustSetAnchorCertificates(v22, theDict[0]);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(theDict);
  if (!v23)
  {
    LODWORD(theArray) = -1431655766;
    v25 = MEMORY[0x1AC580760](v22, &theArray);
    if (v25)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      LODWORD(theDict[0]) = 67109120;
      HIDWORD(theDict[0]) = v25;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "Server pinned certs' trust evaluation failed due to STATUS code: %d";
    }

    else
    {
      v29 = theArray;
      if (theArray == 4 || theArray == 1)
      {
        Value = [MEMORY[0x1E696AF30] credentialForTrust:{objc_msgSend(objc_msgSend(a5, "protectionSpace"), "serverTrust")}];
        v17 = 0;
        goto LABEL_31;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      LODWORD(theDict[0]) = 67109120;
      HIDWORD(theDict[0]) = v29;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "DEBUG: Server pinned certs' trust evaluation failed due to RESULT code: %u";
    }

    v28 = 8;
    goto LABEL_40;
  }

  Value = 0;
  v17 = 2;
LABEL_31:
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_22:
  (*(a6 + 2))(a6, v17, Value);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v11 = [a4 taskIdentifier];
  if (self)
  {
    [(URLSessionDelegate *)self getContext:v11];
    if (MEMORY[0xAAAAAAAAAAAAAAB2] && (v12 = std::__shared_weak_count::lock(MEMORY[0xAAAAAAAAAAAAAAB2])) != 0)
    {
      v13 = v12;
      if (MEMORY[0xAAAAAAAAAAAAAAAA])
      {
        v14 = (*(*MEMORY[0xAAAAAAAAAAAAAAAA] + 24))(MEMORY[0xAAAAAAAAAAAAAAAA], a6, a5);
      }

      else
      {
        v14 = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  (*(a7 + 2))(a7, v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end