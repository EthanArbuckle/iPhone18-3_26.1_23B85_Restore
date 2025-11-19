uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::remote_description(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::remote_description;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,webrtc::SessionDescriptionInterface const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::current_local_description(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::current_local_description;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,webrtc::SessionDescriptionInterface const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::current_remote_description(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::current_remote_description;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,webrtc::SessionDescriptionInterface const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::pending_local_description(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::pending_local_description;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,webrtc::SessionDescriptionInterface const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::pending_remote_description(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::pending_remote_description;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,webrtc::SessionDescriptionInterface const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::RestartIce(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 24);
  v14 = webrtc::PeerConnectionInterface::RestartIce;
  v15 = 0;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::CreateOffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = *(a1 + 24);
  v19 = webrtc::PeerConnectionInterface::CreateOffer;
  v20 = 0;
  v21 = &v12;
  v22 = a3;
  webrtc::Event::Event(&v23, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v19;
    v9 = (v18 + (v20 >> 1));
    if (v20)
    {
      v8 = *(*v9 + v19);
    }

    (v8)(v9, *v21, v22);
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::CreateSessionDescriptionObserver *,webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v23, v6, v7);
  }

  pthread_mutex_destroy(&v23);
  return pthread_cond_destroy(&v24);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::CreateAnswer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = *(a1 + 24);
  v19 = webrtc::PeerConnectionInterface::CreateAnswer;
  v20 = 0;
  v21 = &v12;
  v22 = a3;
  webrtc::Event::Event(&v23, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v19;
    v9 = (v18 + (v20 >> 1));
    if (v20)
    {
      v8 = *(*v9 + v19);
    }

    (v8)(v9, *v21, v22);
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::CreateSessionDescriptionObserver *,webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v23, v6, v7);
  }

  pthread_mutex_destroy(&v23);
  return pthread_cond_destroy(&v24);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetLocalDescription(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = *(a1 + 24);
  v22 = webrtc::PeerConnectionInterface::SetLocalDescription;
  v23 = 0;
  v24 = a2;
  v25 = a3;
  webrtc::Event::Event(&v26, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v22;
    v9 = v25;
    v10 = v21 + (v23 >> 1);
    v11 = *v24;
    *v24 = 0;
    v18.n128_u64[0] = v11;
    v12 = *v9;
    *v9 = 0;
    v17 = v12;
    (v8)(v10, &v18, &v17);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v13 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  else
  {
    v18.n128_u64[0] = &v21;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v26, v6, v7);
  }

  pthread_mutex_destroy(&v26);
  return pthread_cond_destroy(&v27);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetLocalDescription(uint64_t a1, unint64_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 24);
  v18 = webrtc::PeerConnectionInterface::SetLocalDescription;
  v19 = 0;
  v20 = a2;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = v17 + (v19 >> 1);
    v9 = *v20;
    *v20 = 0;
    v14.n128_u64[0] = v9;
    (v7)(v8, &v14);
    if (v14.n128_u64[0])
    {
      (*(*v14.n128_u64[0] + 8))(v14.n128_u64[0]);
    }
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetLocalDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7[0] = *(a1 + 24);
  v7[1] = webrtc::PeerConnectionInterface::SetLocalDescription;
  v7[2] = 0;
  v7[4] = &v6;
  v7[5] = &v5;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *>::Marshal(v7, *(a1 + 8));
  pthread_mutex_destroy(&v8);
  return pthread_cond_destroy(&v9);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetLocalDescription(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::PeerConnectionInterface::SetLocalDescription;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::SetSessionDescriptionObserver *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetRemoteDescription(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = *(a1 + 24);
  v22 = webrtc::PeerConnectionInterface::SetRemoteDescription;
  v23 = 0;
  v24 = a2;
  v25 = a3;
  webrtc::Event::Event(&v26, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v22;
    v9 = v25;
    v10 = v21 + (v23 >> 1);
    v11 = *v24;
    *v24 = 0;
    v18.n128_u64[0] = v11;
    v12 = *v9;
    *v9 = 0;
    v17 = v12;
    (v8)(v10, &v18, &v17);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v13 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  else
  {
    v18.n128_u64[0] = &v21;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetRemoteDescriptionObserverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v26, v6, v7);
  }

  pthread_mutex_destroy(&v26);
  return pthread_cond_destroy(&v27);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetRemoteDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7[0] = *(a1 + 24);
  v7[1] = webrtc::PeerConnectionInterface::SetRemoteDescription;
  v7[2] = 0;
  v7[4] = &v6;
  v7[5] = &v5;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *>::Marshal(v7, *(a1 + 8));
  pthread_mutex_destroy(&v8);
  return pthread_cond_destroy(&v9);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::ShouldFireNegotiationNeededEvent(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = *(a1 + 24);
  v19 = webrtc::PeerConnectionInterface::ShouldFireNegotiationNeededEvent;
  v20 = 0;
  v22 = &v12;
  webrtc::Event::Event(&v23, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v8 = v19;
    v9 = (v18 + (v20 >> 1));
    if (v20)
    {
      v8 = *(*v9 + v19);
    }

    v7 = (v8)(v9, *v22);
    v21 = v7;
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,unsigned int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v23, v5, v6);
    v7 = v21;
  }

  pthread_mutex_destroy(&v23);
  pthread_cond_destroy(&v24);
  return v7 & 1;
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::GetConfiguration(uint64_t a1@<X0>, webrtc::PeerConnectionInterface::RTCConfiguration *a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::GetConfiguration;
  v16 = 0;
  webrtc::PeerConnectionInterface::RTCConfiguration::RTCConfiguration(v17);
  webrtc::Event::Event(&v18, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    (v15)(&v10, v14 + (v16 >> 1));
    webrtc::PeerConnectionInterface::RTCConfiguration::operator=(v17, &v10);
    webrtc::PeerConnectionInterface::RTCConfiguration::~RTCConfiguration(&v10);
  }

  else
  {
    v10.n128_u64[0] = &v14;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::RTCConfiguration>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v10, &v13, &v9);
    v11(1, &v10, &v10);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v18, v6, v7);
  }

  webrtc::PeerConnectionInterface::RTCConfiguration::RTCConfiguration(a2, v17);
  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  webrtc::PeerConnectionInterface::RTCConfiguration::~RTCConfiguration(v17);
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetConfiguration(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 24);
  v18 = webrtc::PeerConnectionInterface::SetConfiguration;
  v19 = 0;
  v20 = 0;
  v22[14] = 0;
  *v22 = 0;
  __p = 0uLL;
  *&v22[5] = 0;
  v23 = a2;
  webrtc::Event::Event(&v24, 0, 0);
  v5 = *(a1 + 8);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    (v18)(&v12, v17 + (v19 >> 1), v23);
    v20 = v12;
    if ((v22[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    __p = v13;
    *v22 = v14;
    *&v22[8] = v15[0];
    *&v22[11] = *(v15 + 3);
  }

  else
  {
    v12 = &v17;
    *(&v13 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
    v14 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCError,webrtc::PeerConnectionInterface::RTCConfiguration const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v12, &v16, &v11);
    (*(&v13 + 1))(1, &v12, &v12);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v24, v7, v8);
  }

  v9 = *&v22[8];
  *a3 = v20;
  *(a3 + 8) = __p;
  *(a3 + 24) = *v22;
  __p = 0uLL;
  *v22 = 0;
  *(a3 + 32) = v9;
  *(a3 + 35) = *&v22[11];
  pthread_mutex_destroy(&v24);
  pthread_cond_destroy(&v25);
  if ((v22[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddIceCandidate(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = *(a1 + 24);
  v19 = webrtc::PeerConnectionInterface::AddIceCandidate;
  v20 = 0;
  v22 = &v12;
  webrtc::Event::Event(&v23, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v8 = v19;
    v9 = (v18 + (v20 >> 1));
    if (v20)
    {
      v8 = *(*v9 + v19);
    }

    v7 = (v8)(v9, *v22);
    v21 = v7;
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,webrtc::IceCandidateInterface const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v23, v5, v6);
    v7 = v21;
  }

  pthread_mutex_destroy(&v23);
  pthread_cond_destroy(&v24);
  return v7 & 1;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddIceCandidate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 24);
  v16 = webrtc::PeerConnectionInterface::AddIceCandidate;
  v17 = 0;
  v18 = a2;
  v19 = a3;
  webrtc::Event::Event(&v20, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    webrtc::ReturnType<void>::Invoke<webrtc::PeerConnectionInterface,void (webrtc::PeerConnectionInterface::*)(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>),std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>>(v15, v16, v17, v18, v19);
  }

  else
  {
    v12.n128_u64[0] = &v15;
    v13 = absl::internal_any_invocable::LocalManagerTrivial;
    v14 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v12, &v11, &v10);
    v13(1, &v12, &v12);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v20, v6, v7);
  }

  pthread_mutex_destroy(&v20);
  return pthread_cond_destroy(&v21);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::RemoveIceCandidates(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 24);
  v16 = webrtc::PeerConnectionInterface::RemoveIceCandidates;
  v17 = 0;
  v19 = a2;
  webrtc::Event::Event(&v20, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = (v16)(v15 + (v17 >> 1), v19);
    v18 = v7;
  }

  else
  {
    v12.n128_u64[0] = &v15;
    v13 = absl::internal_any_invocable::LocalManagerTrivial;
    v14 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,std::vector<webrtc::Candidate> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v12, &v11, &v10);
    v13(1, &v12, &v12);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v20, v5, v6);
    v7 = v18;
  }

  pthread_mutex_destroy(&v20);
  pthread_cond_destroy(&v21);
  return v7 & 1;
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetBitrate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 24);
  v18 = webrtc::PeerConnectionInterface::SetBitrate;
  v19 = 0;
  v20 = 0;
  v22[14] = 0;
  *v22 = 0;
  __p = 0uLL;
  *&v22[5] = 0;
  v23 = a2;
  webrtc::Event::Event(&v24, 0, 0);
  v5 = *(a1 + 8);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    (v18)(&v12, v17 + (v19 >> 1), v23);
    v20 = v12;
    if ((v22[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    __p = v13;
    *v22 = v14;
    *&v22[8] = v15[0];
    *&v22[11] = *(v15 + 3);
  }

  else
  {
    v12 = &v17;
    *(&v13 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
    v14 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCError,webrtc::BitrateSettings const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v12, &v16, &v11);
    (*(&v13 + 1))(1, &v12, &v12);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v24, v7, v8);
  }

  v9 = *&v22[8];
  *a3 = v20;
  *(a3 + 8) = __p;
  *(a3 + 24) = *v22;
  __p = 0uLL;
  *v22 = 0;
  *(a3 + 32) = v9;
  *(a3 + 35) = *&v22[11];
  pthread_mutex_destroy(&v24);
  pthread_cond_destroy(&v25);
  if ((v22[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::ReconfigureBandwidthEstimation(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::ReconfigureBandwidthEstimation;
  v16 = 0;
  v17 = a2;
  webrtc::Event::Event(&v18, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    (v15)(v14 + (v16 >> 1), v17);
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::BandwidthEstimationSettings const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v18, v5, v6);
  }

  pthread_mutex_destroy(&v18);
  return pthread_cond_destroy(&v19);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetAudioPlayout(uint64_t a1, char a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::PeerConnectionInterface::SetAudioPlayout;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetAudioRecording(uint64_t a1, char a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::PeerConnectionInterface::SetAudioRecording;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::LookupDtlsTransportByMid@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = *(a1 + 24);
  v20 = webrtc::PeerConnectionInterface::LookupDtlsTransportByMid;
  v21 = 0;
  v22 = 0;
  v23 = a2;
  webrtc::Event::Event(&v24, 0, 0);
  v5 = *(a1 + 16);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    (v20)(&v16, v19 + (v21 >> 1), v23);
    v11 = v16.n128_u64[0];
    v16.n128_u64[0] = 0;
    v12 = v22;
    v22 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      if (v16.n128_u64[0])
      {
        (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
      }
    }
  }

  else
  {
    v16.n128_u64[0] = &v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::DtlsTransportInterface>,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v24, v7, v8);
  }

  v9 = v22;
  v22 = 0;
  *a3 = v9;
  pthread_mutex_destroy(&v24);
  pthread_cond_destroy(&v25);
  result = v22;
  if (v22)
  {
    return (*(*v22 + 8))(v22);
  }

  return result;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::GetSctpTransport@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v21 = 0;
  v22 = 0;
  v19 = v4;
  v20 = webrtc::PeerConnectionInterface::GetSctpTransport;
  webrtc::Event::Event(&v23, 0, 0);
  v5 = *(a1 + 16);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    (v20)(&v16, v19 + (v21 >> 1));
    v11 = v16.n128_u64[0];
    v16.n128_u64[0] = 0;
    v12 = v22;
    v22 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      if (v16.n128_u64[0])
      {
        (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
      }
    }
  }

  else
  {
    v16.n128_u64[0] = &v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::SctpTransportInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v23, v7, v8);
  }

  v9 = v22;
  v22 = 0;
  *a2 = v9;
  pthread_mutex_destroy(&v23);
  pthread_cond_destroy(&v24);
  result = v22;
  if (v22)
  {
    return (*(*v22 + 8))(v22);
  }

  return result;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::signaling_state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::signaling_state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::SignalingState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::ice_connection_state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::ice_connection_state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::IceConnectionState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::standardized_ice_connection_state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::standardized_ice_connection_state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::IceConnectionState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::peer_connection_state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::peer_connection_state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::PeerConnectionState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::ice_gathering_state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::ice_gathering_state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::IceGatheringState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::can_trickle_ice_candidates(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::can_trickle_ice_candidates;
  v16 = 0;
  v17 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,std::optional<BOOL>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddAdaptationResource(uint64_t a1, unint64_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 24);
  v18 = webrtc::PeerConnectionInterface::AddAdaptationResource;
  v19 = 0;
  v20 = a2;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = v17 + (v19 >> 1);
    v9 = *v20;
    *v20 = 0;
    v14.n128_u64[0] = v9;
    (v7)(v8, &v14);
    if (v14.n128_u64[0])
    {
      (*(*v14.n128_u64[0] + 8))(v14.n128_u64[0]);
    }
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::scoped_refptr<webrtc::Resource>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::StartRtcEventLog(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v22 = *(a1 + 24);
  v23 = webrtc::PeerConnectionInterface::StartRtcEventLog;
  v24 = 0;
  v26 = a2;
  v27 = &v16;
  webrtc::Event::Event(&v28, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v23;
    v9 = v27;
    v10 = (v22 + (v24 >> 1));
    if (v24)
    {
      v8 = *(*v10 + v23);
    }

    v11 = *v26;
    *v26 = 0;
    v19.n128_u64[0] = v11;
    v25 = (v8)(v10, &v19, *v9);
    v12 = v19.n128_u64[0];
    v19.n128_u64[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  else
  {
    v19.n128_u64[0] = &v22;
    v20 = absl::internal_any_invocable::LocalManagerTrivial;
    v21 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,std::unique_ptr<webrtc::RtcEventLogOutput>,long long>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v19, &v18, &v17);
    v20(1, &v19, &v19);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v28, v6, v7);
  }

  v13 = v25;
  pthread_mutex_destroy(&v28);
  pthread_cond_destroy(&v29);
  return v13;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::StartRtcEventLog(uint64_t a1, unint64_t *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = *(a1 + 24);
  v20 = webrtc::PeerConnectionInterface::StartRtcEventLog;
  v21 = 0;
  v23 = a2;
  webrtc::Event::Event(&v24, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v20;
    v8 = v19 + (v21 >> 1);
    v9 = *v23;
    *v23 = 0;
    v16.n128_u64[0] = v9;
    v22 = (v7)(v8, &v16);
    v10 = v16.n128_u64[0];
    v16.n128_u64[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    v16.n128_u64[0] = &v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,std::unique_ptr<webrtc::RtcEventLogOutput>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v24, v5, v6);
  }

  v11 = v22;
  pthread_mutex_destroy(&v24);
  pthread_cond_destroy(&v25);
  return v11;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::StopRtcEventLog(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 24);
  v14 = webrtc::PeerConnectionInterface::StopRtcEventLog;
  v15 = 0;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::SetDataChannelEventObserver(uint64_t a1, unint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = *(a1 + 24);
  v19 = webrtc::PeerConnectionInterface::SetDataChannelEventObserver;
  v20 = 0;
  v21 = a2;
  webrtc::Event::Event(&v22, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v19;
    v8 = v18 + (v20 >> 1);
    v9 = *v21;
    *v21 = 0;
    v15.n128_u64[0] = v9;
    (v7)(v8, &v15);
    v10 = v15.n128_u64[0];
    v15.n128_u64[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,std::unique_ptr<webrtc::DataChannelEventObserverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v22, v5, v6);
  }

  pthread_mutex_destroy(&v22);
  return pthread_cond_destroy(&v23);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::Close(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 24);
  v14 = webrtc::PeerConnectionInterface::Close;
  v15 = 0;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::GetNetworkController(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::GetNetworkController;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::NetworkControllerInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::StreamCollectionInterface>>::Marshal(void *a1, void *a2, void *a3)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a3)
  {
    v11 = a2[1];
    v12 = a2[2];
    v13 = (*a2 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(&v18, v13);
    v14 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    result = a2[3];
    a2[3] = v14;
    if (result)
    {
      (*(*result + 8))(result);
      result = v18.n128_u64[0];
      if (v18.n128_u64[0])
      {
        result = (*(*v18.n128_u64[0] + 8))(v18.n128_u64[0]);
      }
    }
  }

  else
  {
    v18.n128_u64[0] = a2;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::StreamCollectionInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a3 + 8))(a3, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    result = webrtc::Event::Wait((a2 + 5), v7, v8);
  }

  v10 = a2[3];
  a2[3] = 0;
  *a1 = v10;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::StreamCollectionInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,webrtc::MediaStreamInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  *(v1 + 24) = v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::MediaStreamInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::PeerConnectionInterface::AddTrack(uint64_t a1)
{
  return (*(*a1 + 64))();
}

{
  return (*(*a1 + 72))();
}

uint64_t webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&>::Invoke<0ul,1ul>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v6 = (*a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v7 = *v5;
  *v5 = 0;
  v13 = v7;
  v2(&v14, v6, &v13, v4);
  *(a1 + 24) = v14;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = *__p;
  *(a1 + 48) = v16;
  HIBYTE(v16) = 0;
  LOBYTE(__p[0]) = 0;
  *(a1 + 56) = v17[0];
  *(a1 + 59) = *(v17 + 3);
  if (*(a1 + 72) == v19)
  {
    if (*(a1 + 72))
    {
      v8 = v18;
      v18 = 0;
      v9 = *(a1 + 64);
      *(a1 + 64) = v8;
      if (v9)
      {
        (*(*v9 + 8))(v9);
        if (v19 != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      v11 = v18;
      v18 = 0;
      *(a1 + 64) = v11;
      *(a1 + 72) = 1;
      if (v19 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *(a1 + 72) = 0;
  }

  if (v19 != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

LABEL_18:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  result = v13;
  if (v13)
  {
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&>::Invoke<0ul,1ul>(*a1);
  pthread_mutex_lock((v1 + 96));
  *(v1 + 209) = 1;
  pthread_cond_broadcast((v1 + 160));

  return pthread_mutex_unlock((v1 + 96));
}

uint64_t webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&,std::vector<webrtc::RtpEncodingParameters> const&>::Invoke<0ul,1ul,2ul>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = (*a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v7 + v2);
  }

  v8 = *v5;
  *v5 = 0;
  v14 = v8;
  v2(&v15, v7, &v14, v4, v6);
  *(a1 + 24) = v15;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = *__p;
  *(a1 + 48) = v17;
  HIBYTE(v17) = 0;
  LOBYTE(__p[0]) = 0;
  *(a1 + 56) = v18[0];
  *(a1 + 59) = *(v18 + 3);
  if (*(a1 + 72) == v20)
  {
    if (*(a1 + 72))
    {
      v9 = v19;
      v19 = 0;
      v10 = *(a1 + 64);
      *(a1 + 64) = v9;
      if (v10)
      {
        (*(*v10 + 8))(v10);
        if (v20 != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      v12 = v19;
      v19 = 0;
      *(a1 + 64) = v12;
      *(a1 + 72) = 1;
      if (v20 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v11 = *(a1 + 64);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    *(a1 + 72) = 0;
  }

  if (v20 != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

LABEL_18:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  result = v14;
  if (v14)
  {
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&,std::vector<webrtc::RtpEncodingParameters> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&,std::vector<webrtc::RtpEncodingParameters> const&>::Invoke<0ul,1ul,2ul>(*a1);
  pthread_mutex_lock((v1 + 104));
  *(v1 + 217) = 1;
  pthread_cond_broadcast((v1 + 168));

  return pthread_mutex_unlock((v1 + 104));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCError,webrtc::scoped_refptr<webrtc::RtpSenderInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 64);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v8 = v6;
  v2(&v9, v5, &v8);
  *(v1 + 24) = v9;
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  *(v1 + 32) = v10;
  *(v1 + 48) = v11;
  HIBYTE(v11) = 0;
  LOBYTE(v10) = 0;
  *(v1 + 56) = v12[0];
  *(v1 + 59) = *(v12 + 3);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 72));
  *(v1 + 185) = 1;
  pthread_cond_broadcast((v1 + 136));
  return pthread_mutex_unlock((v1 + 72));
}

uint64_t webrtc::PeerConnectionInterface::AddTransceiver(uint64_t a1)
{
  return (*(*a1 + 88))();
}

{
  return (*(*a1 + 96))();
}

{
  return (*(*a1 + 104))();
}

{
  return (*(*a1 + 112))();
}

uint64_t webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>>::Invoke<0ul>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 80);
  v5 = (*a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v12 = v6;
  v2(&v13, v5, &v12);
  *(a1 + 24) = v13;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = *__p;
  *(a1 + 48) = v15;
  HIBYTE(v15) = 0;
  LOBYTE(__p[0]) = 0;
  *(a1 + 56) = v16[0];
  *(a1 + 59) = *(v16 + 3);
  if (*(a1 + 72) == v18)
  {
    if (*(a1 + 72))
    {
      v7 = v17;
      v17 = 0;
      v8 = *(a1 + 64);
      *(a1 + 64) = v7;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        if (v18 != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      v10 = v17;
      v17 = 0;
      *(a1 + 64) = v10;
      *(a1 + 72) = 1;
      if (v18 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(a1 + 72) = 0;
  }

  if (v18 != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

LABEL_18:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>>::Invoke<0ul>(*a1);
  pthread_mutex_lock((v1 + 88));
  *(v1 + 201) = 1;
  pthread_cond_broadcast((v1 + 152));

  return pthread_mutex_unlock((v1 + 88));
}

uint64_t webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,webrtc::RtpTransceiverInit const&>::Invoke<0ul,1ul>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v6 = (*a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v7 = *v5;
  *v5 = 0;
  v13 = v7;
  v2(&v14, v6, &v13, v4);
  *(a1 + 24) = v14;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = *__p;
  *(a1 + 48) = v16;
  HIBYTE(v16) = 0;
  LOBYTE(__p[0]) = 0;
  *(a1 + 56) = v17[0];
  *(a1 + 59) = *(v17 + 3);
  if (*(a1 + 72) == v19)
  {
    if (*(a1 + 72))
    {
      v8 = v18;
      v18 = 0;
      v9 = *(a1 + 64);
      *(a1 + 64) = v8;
      if (v9)
      {
        (*(*v9 + 8))(v9);
        if (v19 != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      v11 = v18;
      v18 = 0;
      *(a1 + 64) = v11;
      *(a1 + 72) = 1;
      if (v19 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *(a1 + 72) = 0;
  }

  if (v19 != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

LABEL_18:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  result = v13;
  if (v13)
  {
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,webrtc::RtpTransceiverInit const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,webrtc::RtpTransceiverInit const&>::Invoke<0ul,1ul>(*a1);
  pthread_mutex_lock((v1 + 96));
  *(v1 + 209) = 1;
  pthread_cond_broadcast((v1 + 160));

  return pthread_mutex_unlock((v1 + 96));
}

void webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType>::Invoke<0ul>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 80);
  v5 = (*a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(&v10, v5, *v4);
  *(a1 + 24) = v10;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = *__p;
  *(a1 + 48) = v12;
  HIBYTE(v12) = 0;
  LOBYTE(__p[0]) = 0;
  *(a1 + 56) = v13[0];
  *(a1 + 59) = *(v13 + 3);
  if (*(a1 + 72) == v15)
  {
    if (*(a1 + 72))
    {
      v6 = v14;
      v14 = 0;
      v7 = *(a1 + 64);
      *(a1 + 64) = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
        if (v15 != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      v9 = v14;
      v14 = 0;
      *(a1 + 64) = v9;
      *(a1 + 72) = 1;
      if (v15 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v8 = *(a1 + 64);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(a1 + 72) = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

LABEL_18:
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType>::Invoke<0ul>(*a1);
  pthread_mutex_lock((v1 + 88));
  *(v1 + 201) = 1;
  pthread_cond_broadcast((v1 + 152));

  return pthread_mutex_unlock((v1 + 88));
}

void webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType,webrtc::RtpTransceiverInit const&>::Invoke<0ul,1ul>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v6 = (*a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v2(&v11, v6, *v5, v4);
  *(a1 + 24) = v11;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = *__p;
  *(a1 + 48) = v13;
  HIBYTE(v13) = 0;
  LOBYTE(__p[0]) = 0;
  *(a1 + 56) = v14[0];
  *(a1 + 59) = *(v14 + 3);
  if (*(a1 + 72) == v16)
  {
    if (*(a1 + 72))
    {
      v7 = v15;
      v15 = 0;
      v8 = *(a1 + 64);
      *(a1 + 64) = v7;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        if (v16 != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      v10 = v15;
      v15 = 0;
      *(a1 + 64) = v10;
      *(a1 + 72) = 1;
      if (v16 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(a1 + 72) = 0;
  }

  if (v16 != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

LABEL_18:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType,webrtc::RtpTransceiverInit const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType,webrtc::RtpTransceiverInit const&>::Invoke<0ul,1ul>(*a1);
  pthread_mutex_lock((v1 + 96));
  *(v1 + 209) = 1;
  pthread_cond_broadcast((v1 + 160));

  return pthread_mutex_unlock((v1 + 96));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::RtpSenderInterface>,std::string const&,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v2(&v10, v6, v4, v5);
  v7 = v10;
  v10 = 0;
  v8 = *(v1 + 24);
  *(v1 + 24) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));
  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,std::vector<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v11);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2(&v11, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v9 = *(v6 - 1);
      v6 -= 8;
      v8 = v9;
      if (v9)
      {
        (*(*v8 + 8))(v8);
      }
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_12:
  *(v1 + 24) = v11;
  *(v1 + 40) = v12;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,std::vector<webrtc::scoped_refptr<webrtc::RtpReceiverInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v11);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2(&v11, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v9 = *(v6 - 1);
      v6 -= 8;
      v8 = v9;
      if (v9)
      {
        (*(*v8 + 8))(v8);
      }
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_12:
  *(v1 + 24) = v11;
  *(v1 + 40) = v12;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,std::vector<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v11);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2(&v11, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v9 = *(v6 - 1);
      v6 -= 8;
      v8 = v9;
      if (v9)
      {
        (*(*v8 + 8))(v8);
      }
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_12:
  *(v1 + 24) = v11;
  *(v1 + 40) = v12;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

uint64_t webrtc::PeerConnectionInterface::GetStats(uint64_t a1)
{
  return (*(*a1 + 152))();
}

{
  return (*(*a1 + 160))();
}

{
  return (*(*a1 + 168))();
}

{
  return (*(*a1 + 176))();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,webrtc::StatsObserver *,webrtc::MediaStreamTrackInterface *,webrtc::PeerConnectionInterface::StatsOutputLevel>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v7 + v2);
  }

  *(v1 + 24) = v2(v7, *v4, *v5, *v6);
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));

  return pthread_mutex_unlock((v1 + 56));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::RTCStatsCollectorCallback *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::scoped_refptr<webrtc::RtpSenderInterface>,webrtc::scoped_refptr<webrtc::RTCStatsCollectorCallback>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v7 = *v5;
  *v5 = 0;
  v11 = v7;
  v8 = *v4;
  *v4 = 0;
  v10 = v8;
  v2(v6, &v11, &v10);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));
  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::scoped_refptr<webrtc::RtpReceiverInterface>,webrtc::scoped_refptr<webrtc::RTCStatsCollectorCallback>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v7 = *v5;
  *v5 = 0;
  v11 = v7;
  v8 = *v4;
  *v4 = 0;
  v10 = v8;
  v2(v6, &v11, &v10);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));
  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

void webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::DataChannelInterface>>,std::string const&,webrtc::DataChannelInit const*>::Invoke<0ul,1ul>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = (*a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v2(&v11, v6, v4, *v5);
  *(a1 + 24) = v11;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = *__p;
  *(a1 + 48) = v13;
  HIBYTE(v13) = 0;
  LOBYTE(__p[0]) = 0;
  *(a1 + 56) = v14[0];
  *(a1 + 59) = *(v14 + 3);
  if (*(a1 + 72) == v16)
  {
    if (*(a1 + 72))
    {
      v7 = v15;
      v15 = 0;
      v8 = *(a1 + 64);
      *(a1 + 64) = v7;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        if (v16 != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      v10 = v15;
      v15 = 0;
      *(a1 + 64) = v10;
      *(a1 + 72) = 1;
      if (v16 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(a1 + 72) = 0;
  }

  if (v16 != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

LABEL_18:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::DataChannelInterface>>,std::string const&,webrtc::DataChannelInit const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::DataChannelInterface>>,std::string const&,webrtc::DataChannelInit const*>::Invoke<0ul,1ul>(*a1);
  pthread_mutex_lock((v1 + 96));
  *(v1 + 209) = 1;
  pthread_cond_broadcast((v1 + 160));

  return pthread_mutex_unlock((v1 + 96));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,webrtc::SessionDescriptionInterface const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::CreateSessionDescriptionObserver *,webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v2(v6, *v5, v4);
  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));

  return pthread_mutex_unlock((v1 + 48));
}

uint64_t webrtc::PeerConnectionInterface::SetLocalDescription(uint64_t a1)
{
  return (*(*a1 + 280))();
}

{
  return (*(*a1 + 288))();
}

{
  return (*(*a1 + 296))();
}

{
  return (*(*a1 + 304))();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v7 = *v5;
  *v5 = 0;
  v12 = v7;
  v8 = *v4;
  *v4 = 0;
  v11 = v8;
  v2(v6, &v12, &v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));
  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v8 = v6;
  v2(v5, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *>::Marshal(unint64_t a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == a2)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v11 = **(a1 + 32);
    v12 = **(a1 + 40);

    return v8(v10, v11, v12);
  }

  else
  {
    v16.n128_u64[0] = a1;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    return webrtc::Event::Wait((a1 + 48), v5, v6);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v2(v6, *v4, *v5);
  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));

  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::SetSessionDescriptionObserver *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::PeerConnectionInterface::SetRemoteDescription(uint64_t a1)
{
  return (*(*a1 + 312))();
}

{
  return (*(*a1 + 320))();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetRemoteDescriptionObserverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v7 = *v5;
  *v5 = 0;
  v12 = v7;
  v8 = *v4;
  *v4 = 0;
  v11 = v8;
  v2(v6, &v12, &v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));
  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,unsigned int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  *(v1 + 24) = v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::RTCConfiguration>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v6, v4);
  webrtc::PeerConnectionInterface::RTCConfiguration::operator=(v1 + 24, v6);
  webrtc::PeerConnectionInterface::RTCConfiguration::~RTCConfiguration(v6);
  pthread_mutex_lock((v1 + 424));
  *(v1 + 537) = 1;
  pthread_cond_broadcast((v1 + 488));
  return pthread_mutex_unlock((v1 + 424));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCError,webrtc::PeerConnectionInterface::RTCConfiguration const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 64);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v5 + v2))(&v7);
    *(v1 + 24) = v7;
    if (*(v1 + 55) < 0)
    {
LABEL_5:
      operator delete(*(v1 + 32));
    }
  }

  else
  {
    v2(&v7, v5, v4);
    *(v1 + 24) = v7;
    if (*(v1 + 55) < 0)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 32) = v8;
  *(v1 + 48) = v9;
  *(v1 + 56) = v10[0];
  *(v1 + 59) = *(v10 + 3);
  pthread_mutex_lock((v1 + 72));
  *(v1 + 185) = 1;
  pthread_cond_broadcast((v1 + 136));
  return pthread_mutex_unlock((v1 + 72));
}

uint64_t webrtc::PeerConnectionInterface::AddIceCandidate(uint64_t a1)
{
  return (*(*a1 + 352))();
}

{
  return (*(*a1 + 360))();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,webrtc::IceCandidateInterface const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  *(v1 + 24) = v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::ReturnType<void>::Invoke<webrtc::PeerConnectionInterface,void (webrtc::PeerConnectionInterface::*)(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>),std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>>(uint64_t a1, void (*a2)(void *, uint64_t *, _BYTE *), uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  v15 = *MEMORY[0x277D85DE8];
  v6 = (a1 + (a3 >> 1));
  if ((a3 & 1) == 0)
  {
    v7 = *a4;
    *a4 = 0;
    v12 = v7;
    v8 = *(a5 + 24);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_8;
  }

  v5 = *(*v6 + a2);
  v9 = *a4;
  *a4 = 0;
  v12 = v9;
  v8 = *(a5 + 24);
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v8 == a5)
  {
    v14 = v13;
    v10 = v6;
    (*(*v8 + 24))(v8, v13);
    v6 = v10;
  }

  else
  {
    v14 = v8;
    *(a5 + 24) = 0;
  }

LABEL_8:
  v5(v6, &v12, v13);
  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
    result = v12;
    v12 = 0;
    if (!result)
    {
      return result;
    }

    return (*(*result + 8))(result);
  }

  if (v14)
  {
    (*(*v14 + 40))();
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t **a1)
{
  v1 = *a1;
  webrtc::ReturnType<void>::Invoke<webrtc::PeerConnectionInterface,void (webrtc::PeerConnectionInterface::*)(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>),std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>>(**a1, v1[1], v1[2], v1[4], v1[5]);
  pthread_mutex_lock((v1 + 6));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 14));

  return pthread_mutex_unlock((v1 + 6));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,std::vector<webrtc::Candidate> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  *(v1 + 24) = v2(v5, v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCError,webrtc::BitrateSettings const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 64);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v5 + v2))(&v7);
    *(v1 + 24) = v7;
    if (*(v1 + 55) < 0)
    {
LABEL_5:
      operator delete(*(v1 + 32));
    }
  }

  else
  {
    v2(&v7, v5, v4);
    *(v1 + 24) = v7;
    if (*(v1 + 55) < 0)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 32) = v8;
  *(v1 + 48) = v9;
  *(v1 + 56) = v10[0];
  *(v1 + 59) = *(v10 + 3);
  pthread_mutex_lock((v1 + 72));
  *(v1 + 185) = 1;
  pthread_cond_broadcast((v1 + 136));
  return pthread_mutex_unlock((v1 + 72));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::BandwidthEstimationSettings const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::DtlsTransportInterface>,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(&v9, v5, v4);
  v6 = v9;
  v9 = 0;
  v7 = *(v1 + 24);
  *(v1 + 24) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::SctpTransportInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::SignalingState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::IceConnectionState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::PeerConnectionState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::PeerConnectionInterface::IceGatheringState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,std::optional<BOOL>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::scoped_refptr<webrtc::Resource>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v8 = v6;
  v2(v5, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::PeerConnectionInterface::StartRtcEventLog(uint64_t a1)
{
  return (*(*a1 + 480))();
}

{
  return (*(*a1 + 488))();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,std::unique_ptr<webrtc::RtcEventLogOutput>,long long>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v7 = *v4;
  *v4 = 0;
  v10 = v7;
  *(v1 + 24) = v2(v6, &v10, *v5);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));
  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,std::unique_ptr<webrtc::RtcEventLogOutput>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v9 = v6;
  *(v1 + 24) = v2(v5, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,std::unique_ptr<webrtc::DataChannelEventObserverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v9 = v6;
  v2(v5, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::NetworkControllerInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

BOOL webrtc::RefCountedObject<webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882991D8;
  a1[1] = &unk_288299260;
  v14 = a1;
  v15 = webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[2];
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v15(v14 + (v16 >> 1));
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[3];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>>::~RefCountedObject(void *a1)
{
  webrtc::RefCountedObject<webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>>::~RefCountedObject(a1);

  JUMPOUT(0x2743DA540);
}

void webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::GetAudioTracks(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v9[0] = *(a1 + 24);
  v9[1] = webrtc::MediaStreamInterface::GetAudioTracks;
  *__p = 0u;
  v11 = 0u;
  webrtc::Event::Event(&v12, 0, 0);
  webrtc::MethodCall<webrtc::MediaStreamInterface,std::vector<webrtc::scoped_refptr<webrtc::AudioTrackInterface>>>::Marshal(v9, *(a1 + 16), a2);
  pthread_mutex_destroy(&v12);
  pthread_cond_destroy(&v13);
  v4 = __p[1];
  if (__p[1])
  {
    v5 = v11;
    v6 = __p[1];
    if (v11 != __p[1])
    {
      do
      {
        v8 = *(v5 - 1);
        v5 -= 8;
        v7 = v8;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      while (v5 != v4);
      v6 = __p[1];
    }

    *&v11 = v4;
    operator delete(v6);
  }
}

void webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::GetVideoTracks(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v9[0] = *(a1 + 24);
  v9[1] = webrtc::MediaStreamInterface::GetVideoTracks;
  *__p = 0u;
  v11 = 0u;
  webrtc::Event::Event(&v12, 0, 0);
  webrtc::MethodCall<webrtc::MediaStreamInterface,std::vector<webrtc::scoped_refptr<webrtc::VideoTrackInterface>>>::Marshal(v9, *(a1 + 16), a2);
  pthread_mutex_destroy(&v12);
  pthread_cond_destroy(&v13);
  v4 = __p[1];
  if (__p[1])
  {
    v5 = v11;
    v6 = __p[1];
    if (v11 != __p[1])
    {
      do
      {
        v8 = *(v5 - 1);
        v5 -= 8;
        v7 = v8;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      while (v5 != v4);
      v6 = __p[1];
    }

    *&v11 = v4;
    operator delete(v6);
  }
}

uint64_t webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::FindAudioTrack@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v6[0] = *(a1 + 24);
  v6[1] = webrtc::MediaStreamInterface::FindAudioTrack;
  v6[2] = 0;
  v7 = 0;
  v8 = a2;
  webrtc::Event::Event(&v9, 0, 0);
  webrtc::MethodCall<webrtc::MediaStreamInterface,webrtc::scoped_refptr<webrtc::AudioTrackInterface>,std::string const&>::Marshal(v6, *(a1 + 16), a3);
  pthread_mutex_destroy(&v9);
  pthread_cond_destroy(&v10);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::FindVideoTrack@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v6[0] = *(a1 + 24);
  v6[1] = webrtc::MediaStreamInterface::FindVideoTrack;
  v6[2] = 0;
  v7 = 0;
  v8 = a2;
  webrtc::Event::Event(&v9, 0, 0);
  webrtc::MethodCall<webrtc::MediaStreamInterface,webrtc::scoped_refptr<webrtc::VideoTrackInterface>,std::string const&>::Marshal(v6, *(a1 + 16), a3);
  pthread_mutex_destroy(&v9);
  pthread_cond_destroy(&v10);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::AddTrack(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = *(a1 + 24);
  v5[1] = webrtc::MediaStreamInterface::AddTrack;
  v5[2] = 0;
  v5[4] = a2;
  webrtc::Event::Event(&v6, 0, 0);
  v3 = webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::AudioTrackInterface>>::Marshal(v5, *(a1 + 16));
  pthread_mutex_destroy(&v6);
  pthread_cond_destroy(&v7);
  return v3;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = *(a1 + 24);
  v5[1] = webrtc::MediaStreamInterface::AddTrack;
  v5[2] = 0;
  v5[4] = a2;
  webrtc::Event::Event(&v6, 0, 0);
  v3 = webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::VideoTrackInterface>>::Marshal(v5, *(a1 + 16));
  pthread_mutex_destroy(&v6);
  pthread_cond_destroy(&v7);
  return v3;
}

uint64_t webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::RemoveTrack(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = *(a1 + 24);
  v5[1] = webrtc::MediaStreamInterface::RemoveTrack;
  v5[2] = 0;
  v5[4] = a2;
  webrtc::Event::Event(&v6, 0, 0);
  v3 = webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::AudioTrackInterface>>::Marshal(v5, *(a1 + 16));
  pthread_mutex_destroy(&v6);
  pthread_cond_destroy(&v7);
  return v3;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = *(a1 + 24);
  v5[1] = webrtc::MediaStreamInterface::RemoveTrack;
  v5[2] = 0;
  v5[4] = a2;
  webrtc::Event::Event(&v6, 0, 0);
  v3 = webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::VideoTrackInterface>>::Marshal(v5, *(a1 + 16));
  pthread_mutex_destroy(&v6);
  pthread_cond_destroy(&v7);
  return v3;
}

uint64_t webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::RegisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::NotifierInterface::RegisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    v7(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::UnregisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::NotifierInterface::UnregisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>>::~RefCountedObject((a1 - 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamProxyWithInternal<webrtc::MediaStreamInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

void webrtc::MethodCall<webrtc::MediaStreamInterface,std::vector<webrtc::scoped_refptr<webrtc::AudioTrackInterface>>>::Marshal(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) == a2)
  {
    v10 = a1[1];
    v11 = a1[2];
    v12 = (*a1 + (v11 >> 1));
    if (v11)
    {
      (*(*v12 + v10))(&v20);
      v13 = a1[3];
      if (!v13)
      {
LABEL_15:
        v8 = v20;
        v9 = v21;
        goto LABEL_16;
      }
    }

    else
    {
      v10(&v20, v12);
      v13 = a1[3];
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = a1[4];
    v15 = v13;
    if (v14 != v13)
    {
      do
      {
        v17 = *(v14 - 1);
        v14 -= 8;
        v16 = v17;
        if (v17)
        {
          (*(*v16 + 8))(v16);
        }
      }

      while (v14 != v13);
      v15 = a1[3];
    }

    a1[4] = v13;
    operator delete(v15);
    goto LABEL_15;
  }

  *&v20 = a1;
  v21 = absl::internal_any_invocable::LocalManagerTrivial;
  v22 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,std::vector<webrtc::scoped_refptr<webrtc::AudioTrackInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
  (*(*a2 + 8))(a2, &v20, &v19, &v18);
  v21(1, &v20, &v20);
  v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v7.var0 = 3000000;
  webrtc::Event::Wait((a1 + 7), v6, v7);
  v8 = *(a1 + 3);
  v9 = a1[5];
LABEL_16:
  *a3 = v8;
  *(a3 + 16) = v9;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
}

uint64_t std::invoke[abi:sn200100]<webrtc::MethodCall<webrtc::MediaStreamInterface,std::vector<webrtc::scoped_refptr<webrtc::AudioTrackInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1}>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v11);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2(&v11, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v9 = *(v6 - 1);
      v6 -= 8;
      v8 = v9;
      if (v9)
      {
        (*(*v8 + 8))(v8);
      }
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_12:
  *(v1 + 24) = v11;
  *(v1 + 40) = v12;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

void webrtc::MethodCall<webrtc::MediaStreamInterface,std::vector<webrtc::scoped_refptr<webrtc::VideoTrackInterface>>>::Marshal(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) == a2)
  {
    v10 = a1[1];
    v11 = a1[2];
    v12 = (*a1 + (v11 >> 1));
    if (v11)
    {
      (*(*v12 + v10))(&v20);
      v13 = a1[3];
      if (!v13)
      {
LABEL_15:
        v8 = v20;
        v9 = v21;
        goto LABEL_16;
      }
    }

    else
    {
      v10(&v20, v12);
      v13 = a1[3];
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = a1[4];
    v15 = v13;
    if (v14 != v13)
    {
      do
      {
        v17 = *(v14 - 1);
        v14 -= 8;
        v16 = v17;
        if (v17)
        {
          (*(*v16 + 8))(v16);
        }
      }

      while (v14 != v13);
      v15 = a1[3];
    }

    a1[4] = v13;
    operator delete(v15);
    goto LABEL_15;
  }

  *&v20 = a1;
  v21 = absl::internal_any_invocable::LocalManagerTrivial;
  v22 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,std::vector<webrtc::scoped_refptr<webrtc::VideoTrackInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
  (*(*a2 + 8))(a2, &v20, &v19, &v18);
  v21(1, &v20, &v20);
  v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v7.var0 = 3000000;
  webrtc::Event::Wait((a1 + 7), v6, v7);
  v8 = *(a1 + 3);
  v9 = a1[5];
LABEL_16:
  *a3 = v8;
  *(a3 + 16) = v9;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
}

uint64_t std::invoke[abi:sn200100]<webrtc::MethodCall<webrtc::MediaStreamInterface,std::vector<webrtc::scoped_refptr<webrtc::VideoTrackInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1}>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v11);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2(&v11, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v9 = *(v6 - 1);
      v6 -= 8;
      v8 = v9;
      if (v9)
      {
        (*(*v8 + 8))(v8);
      }
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_12:
  *(v1 + 24) = v11;
  *(v1 + 40) = v12;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

uint64_t webrtc::MethodCall<webrtc::MediaStreamInterface,webrtc::scoped_refptr<webrtc::AudioTrackInterface>,std::string const&>::Marshal@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(&v18, v13, a1[4]);
    v14 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    result = a1[3];
    a1[3] = v14;
    if (result)
    {
      (*(*result + 8))(result);
      result = v18.n128_u64[0];
      if (v18.n128_u64[0])
      {
        result = (*(*v18.n128_u64[0] + 8))(v18.n128_u64[0]);
      }
    }
  }

  else
  {
    v18.n128_u64[0] = a1;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,webrtc::scoped_refptr<webrtc::AudioTrackInterface>,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    result = webrtc::Event::Wait((a1 + 5), v7, v8);
  }

  v10 = a1[3];
  a1[3] = 0;
  *a3 = v10;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,webrtc::scoped_refptr<webrtc::AudioTrackInterface>,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(&v9, v5, v4);
  v6 = v9;
  v9 = 0;
  v7 = *(v1 + 24);
  *(v1 + 24) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::MethodCall<webrtc::MediaStreamInterface,webrtc::scoped_refptr<webrtc::VideoTrackInterface>,std::string const&>::Marshal@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(&v18, v13, a1[4]);
    v14 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    result = a1[3];
    a1[3] = v14;
    if (result)
    {
      (*(*result + 8))(result);
      result = v18.n128_u64[0];
      if (v18.n128_u64[0])
      {
        result = (*(*v18.n128_u64[0] + 8))(v18.n128_u64[0]);
      }
    }
  }

  else
  {
    v18.n128_u64[0] = a1;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,webrtc::scoped_refptr<webrtc::VideoTrackInterface>,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    result = webrtc::Event::Wait((a1 + 5), v7, v8);
  }

  v10 = a1[3];
  a1[3] = 0;
  *a3 = v10;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,webrtc::scoped_refptr<webrtc::VideoTrackInterface>,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(&v9, v5, v4);
  v6 = v9;
  v9 = 0;
  v7 = *(v1 + 24);
  *(v1 + 24) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::MediaStreamInterface::AddTrack(uint64_t a1)
{
  return (*(*a1 + 72))();
}

{
  return (*(*a1 + 80))();
}

uint64_t webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::AudioTrackInterface>>::Marshal(unint64_t a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) != a2)
  {
    v16.n128_u64[0] = a1;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::AudioTrackInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait((a1 + 40), v5, v6);
    return *(a1 + 24);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v11 = (*a1 + (v9 >> 1));
  if (v9)
  {
    v8 = *(*v11 + v8);
  }

  v12 = *v10;
  *v10 = 0;
  v16.n128_u64[0] = v12;
  *(a1 + 24) = v8(v11, &v16);
  if (!v16.n128_u64[0])
  {
    return *(a1 + 24);
  }

  (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
  return *(a1 + 24);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::AudioTrackInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v8 = v6;
  *(v1 + 24) = v2(v5, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::VideoTrackInterface>>::Marshal(unint64_t a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) != a2)
  {
    v16.n128_u64[0] = a1;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::VideoTrackInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait((a1 + 40), v5, v6);
    return *(a1 + 24);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v11 = (*a1 + (v9 >> 1));
  if (v9)
  {
    v8 = *(*v11 + v8);
  }

  v12 = *v10;
  *v10 = 0;
  v16.n128_u64[0] = v12;
  *(a1 + 24) = v8(v11, &v16);
  if (!v16.n128_u64[0])
  {
    return *(a1 + 24);
  }

  (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
  return *(a1 + 24);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,BOOL,webrtc::scoped_refptr<webrtc::VideoTrackInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v8 = v6;
  *(v1 + 24) = v2(v5, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::MediaStreamInterface::RemoveTrack(uint64_t a1)
{
  return (*(*a1 + 88))();
}

{
  return (*(*a1 + 96))();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::MediaStreamInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

BOOL webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 12, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288299398;
  a1[1] = &unk_288299430;
  a1[2] = &unk_288299460;
  v14 = a1;
  v15 = webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[3];
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v15(v14 + (v16 >> 1));
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[5];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::~RefCountedObject(void *a1)
{
  webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::~RefCountedObject(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::enabled(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::MediaStreamTrackInterface::enabled;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 24);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6 & 1;
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::set_enabled(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6[0] = *(a1 + 40);
  v6[1] = webrtc::MediaStreamTrackInterface::set_enabled;
  v6[2] = 0;
  v6[4] = &v5;
  webrtc::Event::Event(&v7, 0, 0);
  v3 = webrtc::MethodCall<webrtc::VideoTrackInterface,BOOL,BOOL>::Marshal(v6, *(a1 + 24));
  pthread_mutex_destroy(&v7);
  pthread_cond_destroy(&v8);
  return v3;
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::MediaStreamTrackInterface::state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 32);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackInterface,webrtc::MediaStreamTrackInterface::TrackState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::AddOrUpdateSink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = *(a1 + 40);
  v19 = webrtc::VideoTrackInterface::AddOrUpdateSink;
  v20 = 0;
  v21 = &v12;
  v22 = a3;
  webrtc::Event::Event(&v23, 0, 0);
  v4 = *(a1 + 32);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v19;
    v9 = (v18 + (v20 >> 1));
    if (v20)
    {
      v8 = *(*v9 + v19);
    }

    (v8)(v9, *v21, v22);
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *,webrtc::VideoSinkWants const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v23, v6, v7);
  }

  pthread_mutex_destroy(&v23);
  return pthread_cond_destroy(&v24);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::RemoveSink(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::VideoTrackInterface::RemoveSink;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 32);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::content_hint(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::VideoTrackInterface::content_hint;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 24);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackInterface,webrtc::VideoTrackInterface::ContentHint>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::set_content_hint(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::VideoTrackInterface::set_content_hint;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 24);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::VideoTrackInterface::ContentHint>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::RequestRefreshFrame(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 40);
  v14 = webrtc::VideoSourceInterface<webrtc::VideoFrame>::RequestRefreshFrame;
  v15 = 32;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 32);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::RegisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::NotifierInterface::RegisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 24);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    v7(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::UnregisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::NotifierInterface::UnregisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 24);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

void *non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::~RefCountedObject(uint64_t a1)
{
  return webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::~RefCountedObject((a1 - 8));
}

{
  return webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::~RefCountedObject((a1 - 16));
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::~RefCountedObject((a1 - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>>::~RefCountedObject((a1 - 16));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 40) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrackInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t webrtc::MethodCall<webrtc::VideoTrackInterface,BOOL,BOOL>::Marshal(unint64_t a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == a2)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v11 = v8(v10, **(a1 + 32));
    *(a1 + 24) = v11;
    return v11 & 1;
  }

  else
  {
    v15.n128_u64[0] = a1;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,BOOL,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait((a1 + 40), v5, v6);
    return *(a1 + 24) & 1;
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,BOOL,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  *(v1 + 24) = v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackInterface,webrtc::MediaStreamTrackInterface::TrackState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *,webrtc::VideoSinkWants const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v2(v6, *v5, v4);
  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));

  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackInterface,webrtc::VideoTrackInterface::ContentHint>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::VideoTrackInterface::ContentHint>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

BOOL webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288299560;
  a1[1] = &unk_2882995F0;
  v14 = a1;
  v15 = webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[2];
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v15(v14 + (v16 >> 1));
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[3];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>>::~RefCountedObject(void *a1)
{
  webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>>::~RefCountedObject(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::enabled(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::MediaStreamTrackInterface::enabled;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::AudioTrackInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6 & 1;
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::set_enabled(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6[0] = *(a1 + 24);
  v6[1] = webrtc::MediaStreamTrackInterface::set_enabled;
  v6[2] = 0;
  v6[4] = &v5;
  webrtc::Event::Event(&v7, 0, 0);
  v3 = webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,BOOL>::Marshal(v6, *(a1 + 16));
  pthread_mutex_destroy(&v7);
  pthread_cond_destroy(&v8);
  return v3;
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::MediaStreamTrackInterface::state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::AudioTrackInterface,webrtc::MediaStreamTrackInterface::TrackState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::AddSink(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::AudioTrackInterface::AddSink;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::AudioTrackSinkInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::RemoveSink(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::AudioTrackInterface::RemoveSink;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::AudioTrackSinkInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::GetSignalLevel(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v6 = a2;
  v7[0] = v3;
  v7[1] = webrtc::AudioTrackInterface::GetSignalLevel;
  v7[2] = 0;
  v7[4] = &v6;
  webrtc::Event::Event(&v8, 0, 0);
  v4 = webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,int *>::Marshal(v7, *(a1 + 16));
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  return v4;
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::GetAudioProcessor@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::AudioTrackInterface::GetAudioProcessor;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::MethodCall<webrtc::AudioTrackInterface,webrtc::scoped_refptr<webrtc::AudioProcessorInterface>>::Marshal(v6, *(a1 + 16), a2);
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::RegisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::NotifierInterface::RegisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    v7(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::UnregisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::NotifierInterface::UnregisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>>::~RefCountedObject((a1 - 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrackInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

double webrtc::PeerConnectionInterface::IceServer::IceServer(webrtc::PeerConnectionInterface::IceServer *this)
{
  *(this + 24) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  return result;
}

std::string *webrtc::PeerConnectionInterface::IceServer::IceServer(std::string *this, const webrtc::PeerConnectionInterface::IceServer *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    goto LABEL_20;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
    if ((*(a2 + 95) & 0x80000000) == 0)
    {
LABEL_9:
      v8 = *(a2 + 72);
      this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
      *&this[3].__r_.__value_.__l.__data_ = v8;
      LODWORD(this[4].__r_.__value_.__l.__data_) = *(a2 + 24);
      if ((*(a2 + 127) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v7;
    if ((*(a2 + 95) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  LODWORD(this[4].__r_.__value_.__l.__data_) = *(a2 + 24);
  if ((*(a2 + 127) & 0x80000000) == 0)
  {
LABEL_10:
    v9 = *(a2 + 104);
    this[5].__r_.__value_.__r.__words[0] = *(a2 + 15);
    *&this[4].__r_.__value_.__r.__words[1] = v9;
    this[5].__r_.__value_.__l.__size_ = 0;
    this[5].__r_.__value_.__r.__words[2] = 0;
    this[6].__r_.__value_.__r.__words[0] = 0;
    v10 = *(a2 + 16);
    v11 = *(a2 + 17);
    v12 = v11 - v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

LABEL_16:
    if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_20:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_15:
  std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  v15 = *(a2 + 16);
  v16 = *(a2 + 17);
  v12 = v16 - v15;
  if (v16 != v15)
  {
    goto LABEL_16;
  }

LABEL_11:
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  this[7].__r_.__value_.__r.__words[0] = 0;
  v13 = *(a2 + 19);
  v14 = *(a2 + 20);
  if (v14 != v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    goto LABEL_20;
  }

  return this;
}

void webrtc::PeerConnectionInterface::IceServer::~IceServer(webrtc::PeerConnectionInterface::IceServer *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    v3 = *(this + 20);
    v4 = *(this + 19);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 19);
    }

    *(this + 20) = v2;
    operator delete(v4);
  }

  v6 = *(this + 16);
  if (v6)
  {
    v7 = *(this + 17);
    v8 = *(this + 16);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 16);
    }

    *(this + 17) = v6;
    operator delete(v8);
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
    if ((*(this + 95) & 0x80000000) == 0)
    {
LABEL_19:
      if ((*(this + 71) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  else if ((*(this + 95) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(*(this + 9));
  if ((*(this + 71) & 0x80000000) == 0)
  {
LABEL_20:
    v10 = *(this + 3);
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(this + 6));
  v10 = *(this + 3);
  if (!v10)
  {
LABEL_21:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_28:
    operator delete(*this);
    return;
  }

LABEL_26:
  v11 = *(this + 4);
  if (v11 == v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
    if (*(this + 23) < 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    do
    {
      v12 = *(v11 - 1);
      v11 -= 3;
      if (v12 < 0)
      {
        operator delete(*v11);
      }
    }

    while (v11 != v10);
    v13 = *(this + 3);
    *(this + 4) = v10;
    operator delete(v13);
    if (*(this + 23) < 0)
    {
      goto LABEL_28;
    }
  }
}

double webrtc::PeerConnectionInterface::RTCConfiguration::RTCConfiguration(webrtc::PeerConnectionInterface::RTCConfiguration *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 3;
  *(this + 8) = 1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 61) = 0;
  *(this + 18) = 5;
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 84) = 0;
  *(this + 11) = 0;
  *(this + 24) = 200;
  *(this + 100) = 0;
  *(this + 104) = xmmword_273BA03C0;
  *(this + 120) = 0;
  *(this + 62) = 1;
  *(this + 32) = 65537;
  *(this + 132) = 0;
  *(this + 34) = 1000;
  *(this + 140) = 0;
  *(this + 36) = 5000;
  *(this + 148) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0x10000;
  *(this + 160) = 0;
  *(this + 164) = 0;
  *(this + 168) = 0;
  *(this + 172) = 0;
  *(this + 176) = 0;
  *(this + 180) = 0;
  *(this + 184) = 0;
  *(this + 188) = 0;
  *(this + 192) = 0;
  *(this + 196) = 0;
  *(this + 200) = 0;
  *(this + 204) = 0;
  *(this + 208) = 0;
  *(this + 212) = 0;
  *(this + 27) = 0;
  *(this + 224) = 0;
  *(this + 228) = 0;
  *(this + 58) = 1;
  *(this + 236) = 0;
  *(this + 240) = 0;
  *(this + 272) = 0;
  *(this + 280) = 1;
  *(this + 316) = 0;
  *(this + 320) = 0;
  *(this + 324) = 0;
  *(this + 328) = 0;
  *(this + 376) = 0;
  *(this + 384) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 312) = 0;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 332) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0;
  return result;
}

webrtc::PeerConnectionInterface::RTCConfiguration *webrtc::PeerConnectionInterface::RTCConfiguration::RTCConfiguration(webrtc::PeerConnectionInterface::RTCConfiguration *this, const webrtc::PeerConnectionInterface::RTCConfiguration *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((v4 - *a2) >> 4)) < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  v10 = *(a2 + 221);
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  v14 = *(a2 + 10);
  v13 = *(a2 + 11);
  v15 = *(a2 + 4);
  v16 = *(a2 + 5);
  v18 = *(a2 + 6);
  v17 = *(a2 + 7);
  *(this + 240) = 0;
  *(this + 4) = v15;
  *(this + 5) = v16;
  *(this + 8) = v11;
  *(this + 9) = v12;
  *(this + 6) = v18;
  *(this + 7) = v17;
  *(this + 221) = v10;
  *(this + 12) = v8;
  *(this + 13) = v9;
  *(this + 10) = v14;
  *(this + 11) = v13;
  *(this + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    v19 = *(a2 + 60);
    *(this + 244) = *(a2 + 244);
    *(this + 60) = v19;
    *(this + 32) = 0;
    *(this + 33) = 0;
    *(this + 31) = 0;
    v21 = *(a2 + 31);
    v20 = *(a2 + 32);
    if (v20 != v21)
    {
      if (((v20 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(this + 272) = 1;
  }

  *(this + 280) = *(a2 + 280);
  if (*(a2 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, *(a2 + 36), *(a2 + 37));
  }

  else
  {
    v22 = *(a2 + 18);
    *(this + 38) = *(a2 + 38);
    *(this + 18) = v22;
  }

  v23 = *(a2 + 41);
  *(this + 312) = *(a2 + 312);
  *(this + 41) = v23;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  v24 = *(a2 + 42);
  v25 = *(a2 + 43);
  if (v25 != v24)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v26 = *(a2 + 360);
  *(this + 369) = *(a2 + 369);
  *(this + 360) = v26;
  return this;
}

void webrtc::PeerConnectionInterface::RTCConfiguration::~RTCConfiguration(webrtc::PeerConnectionInterface::RTCConfiguration *this)
{
  v2 = *(this + 42);
  if (v2)
  {
    *(this + 43) = v2;
    operator delete(v2);
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
    if (*(this + 272) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(this + 272) != 1)
  {
    goto LABEL_9;
  }

  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

LABEL_9:
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = *(this + 5);
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 8);
        v5 -= 8;
        v7 = v8;
        if (v8 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
        {
          v9 = *(v7 + 8);
          *(v7 + 8) = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          MEMORY[0x2743DA540](v7, 0x1020C40D5A9D86FLL);
        }
      }

      while (v5 != v4);
      v6 = *(this + 5);
    }

    *(this + 6) = v4;
    operator delete(v6);
  }

  v10 = *this;
  if (*this)
  {
    v11 = *(this + 1);
    v12 = *this;
    if (v11 != v10)
    {
      do
      {
        webrtc::PeerConnectionInterface::IceServer::~IceServer((v11 - 176));
      }

      while (v11 != v10);
      v12 = *this;
    }

    *(this + 1) = v10;
    operator delete(v12);
  }
}

double webrtc::PeerConnectionDependencies::PeerConnectionDependencies(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

__n128 webrtc::PeerConnectionDependencies::PeerConnectionDependencies(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a2 + 1) = 0;
  *a1 = v2;
  v3 = a2[1];
  a2[1] = 0u;
  *(a1 + 16) = v3;
  v4 = a2[2];
  a2[2] = 0u;
  *(a1 + 32) = v4;
  result = a2[3];
  a2[3] = 0u;
  *(a1 + 48) = result;
  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 64) = v6;
  return result;
}

void webrtc::PeerConnectionDependencies::~PeerConnectionDependencies(webrtc::PeerConnectionDependencies *this)
{
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

__n128 webrtc::PeerConnectionFactoryDependencies::PeerConnectionFactoryDependencies(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 32) = v3;
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    *(a1 + 72) = 1;
  }

  v5 = *(a2 + 80);
  *(a2 + 80) = 0u;
  *(a1 + 80) = v5;
  v6 = *(a2 + 96);
  *(a2 + 96) = 0u;
  *(a1 + 96) = v6;
  v7 = *(a2 + 112);
  *(a2 + 112) = 0u;
  *(a1 + 112) = v7;
  v8 = *(a2 + 128);
  *(a2 + 128) = 0u;
  *(a1 + 128) = v8;
  v9 = *(a2 + 144);
  *(a2 + 144) = 0u;
  *(a1 + 144) = v9;
  v10 = *(a2 + 160);
  *(a2 + 160) = 0u;
  *(a1 + 160) = v10;
  v11 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a1 + 176) = v11;
  v12 = *(a2 + 184);
  *(a2 + 184) = 0u;
  *(a1 + 184) = v12;
  v13 = *(a2 + 200);
  *(a2 + 200) = 0u;
  *(a1 + 200) = v13;
  v14 = *(a2 + 216);
  *(a2 + 216) = 0u;
  *(a1 + 216) = v14;
  v15 = *(a2 + 232);
  *(a2 + 232) = 0u;
  *(a1 + 232) = v15;
  result = *(a2 + 248);
  *(a2 + 248) = 0u;
  *(a1 + 248) = result;
  return result;
}

void webrtc::PeerConnectionFactoryDependencies::~PeerConnectionFactoryDependencies(webrtc::PeerConnectionFactoryDependencies *this)
{
  v2 = *(this + 32);
  *(this + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 31);
  *(this + 31) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 30);
  *(this + 30) = 0;
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  v5 = *(this + 29);
  *(this + 29) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 28);
  *(this + 28) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 27);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 26);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 25);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 24);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 23);
  *(this + 23) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 22);
  *(this + 22) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 21);
  *(this + 21) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 20);
  *(this + 20) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 19);
  *(this + 19) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 18);
  *(this + 18) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 17);
  *(this + 17) = 0;
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  v18 = *(this + 16);
  *(this + 16) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 15);
  *(this + 15) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 14);
  *(this + 14) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  v21 = *(this + 13);
  *(this + 13) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 12);
  *(this + 12) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 11);
  *(this + 11) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 10);
  *(this + 10) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  if (*(this + 72) == 1)
  {
    v25 = *(this + 4);
    if (v25)
    {
      if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v25 + 8))(v25);
      }
    }
  }
}

void webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionSuccess(atomic_uint *volatile *a1, void (***a2)(void))
{
  if (*a1)
  {
    atomic_fetch_add_explicit(*a1, 1u, memory_order_relaxed);
  }

  if (a2)
  {
    (**a2)(a2);
  }

  operator new();
}

void webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionFailure(atomic_uint *volatile *a1, void (***a2)(void), void *a3)
{
  if (*a1)
  {
    atomic_fetch_add_explicit(*a1, 1u, memory_order_relaxed);
  }

  if (a2)
  {
    (**a2)(a2);
  }

  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  operator new();
}

void webrtc::PeerConnectionMessageHandler::PostCreateSessionDescriptionFailure(uint64_t a1, void (***a2)(void), void *a3)
{
  if (a2)
  {
    (**a2)(a2);
  }

  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  operator new();
}

void webrtc::PeerConnectionMessageHandler::PostGetStats(atomic_uint *volatile *a1, void (***a2)(void), uint64_t a3, void (***a4)(void))
{
  if (*a1)
  {
    atomic_fetch_add_explicit(*a1, 1u, memory_order_relaxed);
  }

  if (a2)
  {
    (**a2)(a2);
  }

  if (a4)
  {
    (**a4)(a4);
  }

  operator new();
}

void webrtc::PeerConnectionMessageHandler::RequestUsagePatternReport(atomic_uint *volatile *a1)
{
  if (*a1)
  {
    atomic_fetch_add_explicit(*a1, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionSuccess(webrtc::SetSessionDescriptionObserver *)::$_0>(char a1, uint64_t *a2, uint64_t *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *a2 = 0;
    *a3 = v3;
  }

  result = *a2;
  if (*a2)
  {
    return (*(*result + 8))();
  }

  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionFailure(webrtc::SetSessionDescriptionObserver *,webrtc::RTCError &&)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v4 = *(v1 + 2);
  v3 = *(v1 + 1);
  v6 = v1[4];
  *__p = v3;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  *&v7[3] = *(v1 + 43);
  *v7 = *(v1 + 10);
  (*(*v2 + 40))(v2, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionFailure(webrtc::SetSessionDescriptionObserver *,webrtc::RTCError &&)::$_0>(uint64_t result, void **a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnectionMessageHandler::PostCreateSessionDescriptionFailure(webrtc::CreateSessionDescriptionObserver *,webrtc::RTCError)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v4 = *(v1 + 2);
  v3 = *(v1 + 1);
  v6 = v1[4];
  *__p = v3;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  *&v7[3] = *(v1 + 43);
  *v7 = *(v1 + 10);
  (*(*v2 + 40))(v2, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnectionMessageHandler::PostCreateSessionDescriptionFailure(webrtc::CreateSessionDescriptionObserver *,webrtc::RTCError)::$_0>(uint64_t result, void **a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnectionMessageHandler::PostGetStats(webrtc::StatsObserver *,webrtc::LegacyStatsCollectorInterface *,webrtc::MediaStreamTrackInterface *)::$_0 &&>(void **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  __p = 0;
  (*(*v1[1] + 32))(v1[1], v1[2], &__p);
  (*(**v1 + 32))(*v1, &__p);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnectionMessageHandler::PostGetStats(webrtc::StatsObserver *,webrtc::LegacyStatsCollectorInterface *,webrtc::MediaStreamTrackInterface *)::$_0>(uint64_t result, void **a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = v3[2];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,std::function<void ()(void)> &&>(uint64_t a1)
{
  v2 = *(*a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
    return absl::internal_any_invocable::RemoteManagerNontrivial<std::function<void ()(void)>>(v5, v6, v7);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<std::function<void ()(void)>>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4 == v3)
      {
        (*(*v4 + 32))(v4);
      }

      else if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

float32x4_t *cfftf1_ps(int a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a2;
  v9 = *(a6 + 4);
  if (v9 >= 1)
  {
    v12 = 0;
    if (a2 == a4)
    {
      v13 = a3;
    }

    else
    {
      v13 = a4;
    }

    v14 = a7;
    v15 = (a6 + 8);
    v16 = 1;
    do
    {
      v19 = *v15++;
      v18 = v19;
      v20 = v19 * v16;
      v21 = (2 * (a1 / (v19 * v16)));
      if (v19 > 3)
      {
        if (v18 == 4)
        {
          passf4_ps(v21, v16, v8, v13, a5 + 4 * v12, a5 + 4 * (v21 + v12), a5 + 4 * (v21 + v12 + v21), v14);
        }

        else if (v18 == 5)
        {
          passf5_ps(v21, v16, v8, v13, a5 + 4 * v12, a5 + 4 * (v21 + v12), a5 + 4 * (v21 + v12 + v21), a5 + 4 * (v21 + v12 + v21 + v21), v14);
        }
      }

      else if (v18 == 2)
      {
        passf2_ps((2 * (a1 / v20)), v16, v8, v13, a5 + 4 * v12, v14);
      }

      else if (v18 == 3)
      {
        passf3_ps(v21, v16, v8, v13, a5 + 4 * v12, a5 + 4 * (v21 + v12), v14);
      }

      v12 += v21 * (v18 - 1);
      v17 = v13 == a4;
      if (v13 == a4)
      {
        v13 = a3;
      }

      else
      {
        v13 = a4;
      }

      if (v17)
      {
        v8 = a4;
      }

      else
      {
        v8 = a3;
      }

      v16 = v20;
      --v9;
    }

    while (v9);
  }

  return v8;
}

float *passf5_ps(float *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  if (a2 >= 1 && result >= 2)
  {
    v9 = 0;
    v10 = a9 * 0.58779;
    v11 = a9 * 0.95106;
    v12 = a2 * result;
    v13 = 3 * result;
    v14 = (result - 1);
    v15 = a4 + 64 * a2 * result;
    v16 = 16 * result;
    v17 = vdupq_n_s32(0x3E9E377Au);
    v18 = vdupq_n_s32(0x3F4F1BBDu);
    v19 = 80 * result;
    v20 = a3 + v16;
    v21 = a4 + 16 * 3 * result * a2;
    v22 = a3 + 16 * (4 * result);
    v23 = a4 + 32 * a2 * result;
    v24 = a3 + 16 * (2 * result);
    result = (a5 + 4);
    v25 = a4 + 16 * v12;
    v26 = (a8 + 4);
    v27 = (a7 + 4);
    v28 = (a6 + 4);
    v29 = a3 + 16 * v13;
    do
    {
      v30 = 0;
      v31 = 0;
      v32 = v28;
      v33 = v27;
      v34 = v26;
      v35 = result;
      do
      {
        v37 = *(v20 + v30);
        v36 = *(v20 + v30 + 16);
        v39 = *(v22 + v30);
        v38 = *(v22 + v30 + 16);
        v40 = vsubq_f32(v36, v38);
        v41 = vaddq_f32(v36, v38);
        v43 = *(v24 + v30);
        v42 = *(v24 + v30 + 16);
        v45 = *(v29 + v30);
        v44 = *(v29 + v30 + 16);
        v46 = vsubq_f32(v42, v44);
        v47 = vaddq_f32(v42, v44);
        v48 = vsubq_f32(v37, v39);
        v49 = vaddq_f32(v37, v39);
        v50 = vaddq_f32(v43, v45);
        v51 = vsubq_f32(v43, v45);
        v52 = (a4 + v30);
        *v52 = vaddq_f32(*(a3 + v30), vaddq_f32(v49, v50));
        v52[1] = vaddq_f32(vaddq_f32(v41, v47), *(a3 + v30 + 16));
        v53 = *(a3 + v30);
        v54 = *(a3 + v30 + 16);
        v55 = vaddq_f32(vsubq_f32(vmulq_f32(v49, v17), vmulq_f32(v50, v18)), v53);
        v56 = vsubq_f32(vmulq_f32(v50, v17), vmulq_f32(v49, v18));
        v57 = vaddq_f32(vsubq_f32(vmulq_f32(v41, v17), vmulq_f32(v47, v18)), v54);
        v58 = vsubq_f32(vmulq_f32(v47, v17), vmulq_f32(v41, v18));
        v59 = vaddq_f32(vmulq_n_f32(v48, v11), vmulq_n_f32(v51, v10));
        v60 = vaddq_f32(v56, v53);
        v61 = vaddq_f32(vmulq_n_f32(v40, v11), vmulq_n_f32(v46, v10));
        v62 = vsubq_f32(vmulq_n_f32(v48, v10), vmulq_n_f32(v51, v11));
        v63 = vaddq_f32(v58, v54);
        v64 = vsubq_f32(vmulq_n_f32(v40, v10), vmulq_n_f32(v46, v11));
        v65 = vsubq_f32(v60, v64);
        v66 = vaddq_f32(v64, v60);
        v67 = vaddq_f32(v62, v63);
        v68 = vsubq_f32(v63, v62);
        v69 = vaddq_f32(v61, v55);
        v70 = vsubq_f32(v55, v61);
        v46.f32[0] = *(v35 - 1);
        v71 = vsubq_f32(v57, v59);
        v55.f32[0] = *v35 * a9;
        v72 = *(v32 - 1);
        v73 = *v32 * a9;
        v74 = vaddq_f32(v59, v57);
        v75 = *(v33 - 1);
        v57.f32[0] = *v33 * a9;
        v76 = *(v34 - 1);
        v77 = *v34 * a9;
        v78 = (v25 + v30);
        v79 = (v23 + v30);
        v80 = (v21 + v30);
        *v78 = vsubq_f32(vmulq_n_f32(v70, v46.f32[0]), vmulq_n_f32(v74, v55.f32[0]));
        v78[1] = vaddq_f32(vmulq_n_f32(v74, v46.f32[0]), vmulq_n_f32(v70, v55.f32[0]));
        *v79 = vsubq_f32(vmulq_n_f32(v65, v72), vmulq_n_f32(v67, v73));
        v79[1] = vaddq_f32(vmulq_n_f32(v67, v72), vmulq_n_f32(v65, v73));
        v81 = (v15 + v30);
        v31 += 2;
        v30 += 32;
        v35 += 2;
        *v80 = vsubq_f32(vmulq_n_f32(v66, v75), vmulq_n_f32(v68, v57.f32[0]));
        v80[1] = vaddq_f32(vmulq_n_f32(v68, v75), vmulq_n_f32(v66, v57.f32[0]));
        *v81 = vsubq_f32(vmulq_n_f32(v69, v76), vmulq_n_f32(v71, v77));
        v81[1] = vaddq_f32(vmulq_n_f32(v71, v76), vmulq_n_f32(v69, v77));
        v34 += 2;
        v33 += 2;
        v32 += 2;
      }

      while (v31 < v14);
      ++v9;
      v15 += v16;
      v20 += v19;
      v21 += v16;
      v22 += v19;
      v23 += v16;
      v24 += v19;
      v25 += v16;
      v29 += v19;
      a3 += v19;
      a4 += v16;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t passf4_ps(uint64_t result, int a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v8 = a2 * result;
  if (result == 2)
  {
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = (a4 + 16 * (2 * v8) + 16);
      do
      {
        v11 = 16 * v9;
        v12 = (a4 + 16 * v9);
        v13 = a3[1];
        v14 = a3[4];
        v15 = a3[5];
        v16 = vsubq_f32(*a3, v14);
        v17 = vaddq_f32(*a3, v14);
        v18 = vsubq_f32(v13, v15);
        v19 = vaddq_f32(v13, v15);
        v20 = a3[6];
        v21 = a3[7];
        v22 = a3[2];
        v23 = a3[3];
        v24 = vsubq_f32(v22, v20);
        v25 = vmulq_n_f32(vsubq_f32(v21, v23), a8);
        v26 = vaddq_f32(v22, v20);
        v27 = vaddq_f32(v21, v23);
        *v12 = vaddq_f32(v17, v26);
        v12[1] = vaddq_f32(v19, v27);
        *(a4 + 16 * v8 + v11) = vaddq_f32(v16, v25);
        v28 = vmulq_n_f32(v24, a8);
        *(a4 + 16 * (v8 + 1) + v11) = vaddq_f32(v18, v28);
        v10[-1] = vsubq_f32(v17, v26);
        *v10 = vsubq_f32(v19, v27);
        *(a4 + 16 * (3 * v8) + v11) = vsubq_f32(v16, v25);
        *(a4 + 16 * (3 * v8 + 1) + v11) = vsubq_f32(v18, v28);
        a3 += 8;
        v9 += 2;
        v10 += 2;
      }

      while (v9 < v8);
    }
  }

  else if (v8 >= 1 && result >= 2)
  {
    v30 = 0;
    v31 = &a3[(2 * result) + 1];
    v32 = 64 * result;
    v33 = a4 + 16 * (3 * v8);
    v34 = 16 * result;
    v35 = a4 + 16 * (2 * v8);
    v36 = (a7 + 4);
    v37 = &a3[(3 * result)];
    v38 = (a6 + 4);
    v39 = (a5 + 4);
    v40 = &a3[result + 1];
    v41 = a4 + 16 * v8;
    do
    {
      v42 = 0;
      v43 = 0;
      v44 = v39;
      v45 = v38;
      v46 = v36;
      do
      {
        v47 = a3[v42 / 0x10];
        v48 = a3[v42 / 0x10 + 1];
        v49 = *(v31 + v42 - 16);
        v50 = *(v31 + v42);
        v51 = vsubq_f32(v47, v49);
        v52 = vaddq_f32(v47, v49);
        v53 = vsubq_f32(v48, v50);
        v55 = *(v40 + v42 - 16);
        v54 = *(v40 + v42);
        v56 = vaddq_f32(v48, v50);
        v57 = v37[v42 / 0x10];
        v58 = v37[v42 / 0x10 + 1];
        v59 = vmulq_n_f32(vsubq_f32(v58, v54), a8);
        v60 = vsubq_f32(v55, v57);
        v61 = vaddq_f32(v55, v57);
        v62 = vmulq_n_f32(v60, a8);
        v63 = vaddq_f32(v58, v54);
        v64 = vaddq_f32(v52, v61);
        v65 = (a4 + v42);
        v66 = vsubq_f32(v52, v61);
        *v65 = v64;
        v65[1] = vaddq_f32(v56, v63);
        v67 = vsubq_f32(v56, v63);
        v68 = vaddq_f32(v51, v59);
        v69 = vsubq_f32(v51, v59);
        v70 = vaddq_f32(v53, v62);
        v71 = vsubq_f32(v53, v62);
        v62.f32[0] = *(v44 - 1);
        v64.f32[0] = *v44 * a8;
        v72 = vmulq_n_f32(v68, v64.f32[0]);
        v73 = vsubq_f32(vmulq_n_f32(v68, v62.f32[0]), vmulq_n_f32(v70, v64.f32[0]));
        v74 = vaddq_f32(vmulq_n_f32(v70, v62.f32[0]), v72);
        v62.f32[0] = *(v45 - 1);
        v64.f32[0] = *v45 * a8;
        v75 = (v41 + v42);
        *v75 = v73;
        v75[1] = v74;
        v76 = vmulq_n_f32(v66, v64.f32[0]);
        v77 = vsubq_f32(vmulq_n_f32(v66, v62.f32[0]), vmulq_n_f32(v67, v64.f32[0]));
        v78 = vmulq_n_f32(v67, v62.f32[0]);
        v74.f32[0] = *(v46 - 1);
        v62.f32[0] = *v46 * a8;
        v79 = (v35 + v42);
        v80 = (v33 + v42);
        v43 += 2;
        v42 += 32;
        *v79 = v77;
        v79[1] = vaddq_f32(v78, v76);
        *v80 = vsubq_f32(vmulq_n_f32(v69, v74.f32[0]), vmulq_n_f32(v71, v62.f32[0]));
        v80[1] = vaddq_f32(vmulq_n_f32(v71, v74.f32[0]), vmulq_n_f32(v69, v62.f32[0]));
        v46 += 2;
        v45 += 2;
        v44 += 2;
      }

      while (v43 < (result - 1));
      v30 += result;
      v31 += v32;
      v33 += v34;
      a3 = (a3 + v32);
      v35 += v34;
      v37 = (v37 + v32);
      v41 += v34;
      a4 += v34;
      v40 += v32;
    }

    while (v30 < v8);
  }

  return result;
}

uint64_t passf2_ps(uint64_t result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, float a6)
{
  v6 = a2 * result;
  if (result >= 3)
  {
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = 16 * result;
      v10 = &a3[v9 / 0x10 + 1];
      v11 = 16 * (2 * result);
      v12 = &a4[v6 + 1];
      v13 = (a5 + 4);
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = 1;
        v17 = v12;
        v18 = v10;
        do
        {
          v19 = a3[v16 - 1];
          v20 = v18[-1];
          v21 = vsubq_f32(v19, v20);
          v22 = vsubq_f32(a3[v16], *v18);
          v23 = *(v15 - 1);
          v24 = *v15 * a6;
          v25 = &a4[v16];
          v25[-1] = vaddq_f32(v19, v20);
          v26 = *v18;
          v18 += 2;
          *v25 = vaddq_f32(a3[v16], v26);
          v14 += 2;
          v17[-1] = vsubq_f32(vmulq_n_f32(v21, v23), vmulq_n_f32(v22, v24));
          *v17 = vaddq_f32(vmulq_n_f32(v22, v23), vmulq_n_f32(v21, v24));
          v17 += 2;
          v16 += 2;
          v15 += 2;
        }

        while (v14 < (result - 1));
        v8 += result;
        v10 += v11;
        v12 += v9;
        a3 = (a3 + v11);
        a4 = (a4 + v9);
      }

      while (v8 < v6);
    }
  }

  else if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      *a4 = vaddq_f32(*a3, a3[result]);
      a4[v6] = vsubq_f32(*a3, a3[result]);
      a4[1] = vaddq_f32(a3[1], a3[result + 1]);
      a4[v6 + 1] = vsubq_f32(a3[1], a3[result + 1]);
      v7 += result;
      a3 += 2 * result;
      a4 += result;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t passf3_ps(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v7 = a2 * result;
  if (a2 * result >= 1 && result >= 2)
  {
    v9 = 0;
    v10 = a7 * 0.86603;
    v11 = a3 + 16 * result + 16;
    v12 = 48 * result;
    v13 = a4 + 32 * v7;
    v14 = 16 * result;
    v15 = a3 + 16 * (2 * result) + 16;
    v16 = (a6 + 4);
    v17 = (a5 + 4);
    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    v19 = a4 + 16 * v7;
    do
    {
      v20 = 0;
      v21 = 0;
      v22 = v17;
      v23 = v16;
      do
      {
        v24 = *(a3 + v20);
        v25 = vaddq_f32(*(v11 + v20 - 16), *(v15 + v20 - 16));
        v26 = vsubq_f32(v24, vmulq_f32(v25, v18));
        v27 = (a4 + v20);
        *v27 = vaddq_f32(v24, v25);
        v28 = vaddq_f32(*(v11 + v20), *(v15 + v20));
        v29 = *(a3 + v20 + 16);
        v30 = vmulq_f32(v28, v18);
        v31 = vaddq_f32(v29, v28);
        v32 = vsubq_f32(v29, v30);
        v27[1] = v31;
        v33 = vmulq_n_f32(vsubq_f32(*(v11 + v20 - 16), *(v15 + v20 - 16)), v10);
        v34 = vmulq_n_f32(vsubq_f32(*(v11 + v20), *(v15 + v20)), v10);
        v35 = vsubq_f32(v26, v34);
        v36 = vaddq_f32(v26, v34);
        v37 = vaddq_f32(v32, v33);
        v38 = *(v22 - 1);
        v39 = *v22 * a7;
        v40 = *(v23 - 1);
        v41 = vsubq_f32(v32, v33);
        v32.f32[0] = *v23 * a7;
        v42 = (v19 + v20);
        v43 = (v13 + v20);
        v21 += 2;
        *v42 = vsubq_f32(vmulq_n_f32(v35, v38), vmulq_n_f32(v37, v39));
        v42[1] = vaddq_f32(vmulq_n_f32(v37, v38), vmulq_n_f32(v35, v39));
        *v43 = vsubq_f32(vmulq_n_f32(v36, v40), vmulq_n_f32(v41, v32.f32[0]));
        v43[1] = vaddq_f32(vmulq_n_f32(v41, v40), vmulq_n_f32(v36, v32.f32[0]));
        v20 += 32;
        v23 += 2;
        v22 += 2;
      }

      while (v21 < (result - 1));
      v9 += result;
      v11 += v12;
      v13 += v14;
      v15 += v12;
      v19 += v14;
      a3 += v12;
      a4 += v14;
    }

    while (v9 < v7);
  }

  return result;
}

int32x4_t *pffft_new_setup(int a1, int a2)
{
  v4 = malloc_type_malloc(0x60uLL, 0x10800403A6E6DD3uLL);
  v5 = v4;
  v4[4].i32[1] = a2;
  v6 = a1 / 2;
  if (a2)
  {
    v6 = a1;
  }

  v7 = v6 / 4;
  v279 = a1;
  v4->i32[0] = a1;
  v4->i32[1] = v7;
  v8 = malloc_type_malloc(32 * v7 + 64, 0xC0F571D9uLL);
  if (v8)
  {
    v10 = (v8 & 0xFFFFFFFFFFFFFFC0) + 64;
    *((v8 & 0xFFFFFFFFFFFFFFC0) + 0x38) = v8;
  }

  else
  {
    v10 = 0;
  }

  v5[4].i64[1] = v10;
  v5[5].i64[0] = v10;
  v11 = v5->i32[1];
  v12 = v5;
  v13 = (6 * v11 + (6 * v11 < 0 ? 3 : 0)) >> 2;
  v280 = v12;
  v12[5].i64[1] = v10 + 16 * (6 * v11 / 4);
  v286 = v10;
  if (!a2)
  {
    if (v11 >= 1)
    {
      v32 = 0;
      v33 = v279;
      v34 = 0.0;
      do
      {
        v35 = v34 * -6.28318531 / v33;
        v36 = __sincos_stret(v35);
        cosval = v36.__cosval;
        v38 = v32 & 3 | (24 * (v32 >> 2));
        *(v10 + 4 * v38) = cosval;
        sinval = v36.__sinval;
        *(v10 + 4 * (v38 | 4)) = sinval;
        v40 = v34 * -12.5663706 / v33;
        v41 = __sincos_stret(v40);
        v42 = v41.__cosval;
        *(v10 + 4 * (v38 + 8)) = v42;
        v43 = v41.__sinval;
        *(v10 + 4 * (v38 + 12)) = v43;
        v44 = v34 * -18.8495559 / v33;
        v45 = __sincos_stret(v44);
        *&v9 = v45.__cosval;
        *(v10 + 4 * (v38 + 16)) = v9;
        v46 = v45.__sinval;
        *(v10 + 4 * (v38 + 20)) = v46;
        v34 = v34 + 1.0;
        ++v32;
      }

      while (v11 != v32);
    }

    v47 = v279 / 4;
    if ((v279 & 0xFFFFFFFC) == 4)
    {
      result = v280;
      v280->i32[2] = v47;
      v280->i32[3] = 0;
      v49 = 1;
      goto LABEL_123;
    }

    v54 = 0;
    v55 = 0;
    v56 = &v280->i32[2];
    v57 = v280 + 1;
    v58 = v279 / 4;
    while (1)
    {
      v59 = v58 + 3;
      if (v58 >= 0)
      {
        v59 = v58;
      }

      if (v58 != (v59 & 0xFFFFFFFC))
      {
        break;
      }

      v60 = v58 & 0xFFFFFFFC;
      v58 = v59 >> 2;
      v61 = v55 + 1;
      v57->i32[v55] = 4;
      v54 += 0x100000000;
      ++v55;
      if (v60 == 4)
      {
        LODWORD(v62) = v61;
        goto LABEL_156;
      }
    }

    if (v58 == 1)
    {
      LODWORD(v62) = v55;
      goto LABEL_156;
    }

    v66 = v55 + 2;
    v62 = v54 >> 32;
    v67 = &v280->i8[4 * v55];
    while (v58 == ((v58 + (v58 >> 31)) & 0xFFFFFFFE))
    {
      v68 = v62;
      v57->i32[v62] = 2;
      if (!v62)
      {
        goto LABEL_37;
      }

      if (v62 >= 1)
      {
        v70 = v66 - 2;
        if (v70 >= 8)
        {
          v72 = v70 & 0xFFFFFFFFFFFFFFF8;
          v71 = v70 & 0xFFFFFFFFFFFFFFF8 | 2;
          v73 = v67;
          do
          {
            v9 = *(v73 - 1);
            *(v73 + 4) = *v73;
            *(v73 - 12) = v9;
            v73 -= 32;
            v72 -= 8;
          }

          while (v72);
          if (v70 == (v70 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_36;
          }
        }

        else
        {
          v71 = 2;
        }

        v74 = -v71;
        do
        {
          *&v67[4 * v74 + 24] = *&v67[4 * v74 + 20];
          --v74;
        }

        while (-v66 != v74);
      }

LABEL_36:
      v57->i32[0] = 2;
      v68 = v62;
LABEL_37:
      v69 = v58 & 0xFFFFFFFE;
      v58 /= 2;
      v62 = v68 + 1;
      ++v66;
      v67 += 4;
      if (v69 == 2)
      {
        goto LABEL_156;
      }
    }

    if (v58 != 1)
    {
      v220 = v62 << 32;
      v221 = &v280[1].i32[v62];
      while (v58 == 3 * (v58 / 3))
      {
        *v221++ = 3;
        v222 = v58 - 3;
        v220 += 0x100000000;
        LODWORD(v62) = v62 + 1;
        v58 /= 3;
        if (v222 < 3)
        {
          goto LABEL_156;
        }
      }

      if (v58 != 1)
      {
        v233 = v220 >> 32;
        while (v58 == 5 * (v58 / 5))
        {
          v234 = v233 + 1;
          v57->i32[v233] = 5;
          v235 = v58 - 5;
          ++v233;
          v58 /= 5;
          if (v235 <= 4)
          {
            goto LABEL_155;
          }
        }

        v234 = v233;
LABEL_155:
        LODWORD(v62) = v234;
      }
    }

LABEL_156:
    v280->i32[2] = v47;
    v280->i32[3] = v62;
    v208 = v62;
    if (v62 <= 1)
    {
      result = v280;
      goto LABEL_113;
    }

    v236 = 0;
    DWORD1(v9) = 1075388923;
    v237 = 6.28318531 / v47;
    v238 = v62;
    v274 = (16 * v13) | 4;
    v275 = 16 * v13;
    v273 = v10 + 16 * v13;
    v239 = 1;
    v240 = 1;
    result = v280;
    v276 = v62;
    v278 = v62;
    while (1)
    {
      v242 = v56[++v239];
      v241 = v242 * v240;
      v305 = v242;
      if (v242 >= 2)
      {
        break;
      }

LABEL_159:
      v240 = v241;
      if (v239 == v238)
      {
        v10 = v286;
LABEL_113:
        if (v208 < 1)
        {
          v49 = 1;
          goto LABEL_123;
        }

        v209 = v208;
        if (v208 >= 8)
        {
          v210 = v208 & 0x7FFFFFF8;
          v211 = result + 2;
          v212.i64[0] = 0x100000001;
          v212.i64[1] = 0x100000001;
          v213 = v209 & 0x7FFFFFF8;
          v214.i64[0] = 0x100000001;
          v214.i64[1] = 0x100000001;
          do
          {
            v212 = vmulq_s32(v211[-1], v212);
            v214 = vmulq_s32(*v211, v214);
            v211 += 2;
            v213 -= 8;
          }

          while (v213);
          v215 = vmulq_s32(v214, v212);
          *v215.i8 = vmul_s32(*v215.i8, *&vextq_s8(v215, v215, 8uLL));
          v49 = v215.i32[0] * v215.i32[1];
          if (v210 == v209)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v210 = 0;
          v49 = 1;
        }

        v216 = v209 - v210;
        v217 = &result[1].i32[v210];
        do
        {
          v218 = *v217++;
          v49 *= v218;
          --v216;
        }

        while (v216);
        goto LABEL_123;
      }
    }

    v243 = v47 / v241 - 3;
    if (v47 / v241 < 3)
    {
      v236 += v47 / v241 * (v242 - 1);
      goto LABEL_159;
    }

    v284 = v242 * v240;
    v285 = v239;
    v244 = 0;
    v245 = 0;
    v246 = v236;
    v288 = v236;
    v247 = 4 * v236;
    v248 = 4 * (v47 / v241);
    v295 = 8 * (v243 >> 1);
    v301 = (v47 / v241);
    v303 = (v243 >> 1) + 1;
    v249 = (v273 + v247);
    v250 = 1;
    v291 = v286 + v275 + v247;
    v293 = v286 + v274 + v247;
    v298 = v47 / v241 - 3;
    while (1)
    {
      v245 += v240;
      *&v9 = v237 * v245;
      v335 = v9;
      if (v243 >= 6 && (v291 + v248 * v244 + v295 >= v291 + v248 * v244 ? (v251 = v293 + v248 * v244 + v295 >= v293 + v248 * v244) : (v251 = 0), v251))
      {
        v253 = v246 + 2 * (v303 & 0xFFFFFFFC);
        v260 = v303 & 0xFFFFFFFC;
        v261 = v249;
        v262 = xmmword_273B90830;
        do
        {
          v329 = v262;
          v263.i64[0] = 0x100000001;
          v263.i64[1] = 0x100000001;
          v264 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(v262, v263)), *&v9);
          v323 = vcvtq_f64_f32(*v264.f32);
          v317 = vcvt_hight_f64_f32(v264);
          v265 = __sincos_stret(v317.f64[1]);
          v267 = __sincos_stret(v317.f64[0]);
          v266.f64[0] = v267.__cosval;
          v266.f64[1] = v265.__cosval;
          v311 = v266;
          v268 = __sincos_stret(v323.f64[1]);
          v271 = __sincos_stret(v323.f64[0]);
          v270.f64[0] = v271.__cosval;
          v269.f64[0] = v271.__sinval;
          v270.f64[1] = v268.__cosval;
          v341.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v270), v311);
          v272.f64[0] = v267.__sinval;
          v272.f64[1] = v265.__sinval;
          v269.f64[1] = v268.__sinval;
          v341.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v269), v272);
          vst2q_f32(v261, v341);
          v261 += 8;
          v9 = v335;
          v341.val[1].i64[0] = 0x400000004;
          v341.val[1].i64[1] = 0x400000004;
          v262 = vaddq_s32(v329, v341.val[1]);
          v260 -= 4;
        }

        while (v260);
        v252 = v303 & 0xFFFFFFFC;
        if ((v303 & 0xFFFFFFFC) == v303)
        {
          goto LABEL_164;
        }
      }

      else
      {
        v252 = 0;
        v253 = v246;
      }

      v254 = (v273 + 4 + 4 * v253);
      v255 = v303 - v252;
      v256 = v252 + 1;
      do
      {
        v257 = __sincos_stret((*&v9 * v256));
        v258 = v257.__cosval;
        v259 = v257.__sinval;
        *(v254 - 1) = v258;
        *v254 = v259;
        v9 = v335;
        v254 += 2;
        ++v256;
        --v255;
      }

      while (v255);
LABEL_164:
      v246 += v301;
      ++v250;
      ++v244;
      v249 = (v249 + v248);
      v243 = v298;
      if (v250 == v305)
      {
        v236 = v288 + v301 * (v305 - 1);
        result = v280;
        v56 = &v280->i32[2];
        v238 = v276;
        v208 = v278;
        v47 = v279 / 4;
        v241 = v284;
        v239 = v285;
        goto LABEL_159;
      }
    }
  }

  v302 = v10 + 16 * (6 * v11 / 4);
  if (v11 >= 1)
  {
    v14 = 0;
    v15 = v279;
    v16 = 0.0;
    do
    {
      v17 = v16 * -6.28318531 / v15;
      v18 = __sincos_stret(v17);
      v19 = v18.__cosval;
      v20 = v14 & 3 | (24 * (v14 >> 2));
      *(v10 + 4 * v20) = v19;
      v21 = v18.__sinval;
      *(v10 + 4 * (v20 | 4)) = v21;
      v22 = v16 * -12.5663706 / v15;
      v23 = __sincos_stret(v22);
      v24 = v23.__cosval;
      *(v10 + 4 * (v20 + 8)) = v24;
      v25 = v23.__sinval;
      *(v10 + 4 * (v20 + 12)) = v25;
      v26 = v16 * -18.8495559 / v15;
      v27 = __sincos_stret(v26);
      *&v9 = v27.__cosval;
      *(v10 + 4 * (v20 + 16)) = v9;
      v28 = v27.__sinval;
      *(v10 + 4 * (v20 + 20)) = v28;
      v16 = v16 + 1.0;
      ++v14;
    }

    while (v11 != v14);
  }

  v29 = v279 / 4;
  v282 = v279 / 4;
  if ((v279 & 0xFFFFFFFC) == 4)
  {
    v30 = 0;
    v31 = v10 + 16 * (6 * v11 / 4);
    goto LABEL_56;
  }

  v50 = 0;
  v51 = v280 + 1;
  while (v29 == 5 * (v29 / 5))
  {
    v52 = v50 + 1;
    v51->i32[v50] = 5;
    v53 = v29 - 5;
    ++v50;
    v29 /= 5;
    if (v53 <= 4)
    {
      v30 = v52;
      v31 = v10 + 16 * (6 * v11 / 4);
      goto LABEL_56;
    }
  }

  if (v29 == 1)
  {
    v30 = v50;
    v31 = v10 + 16 * (6 * v11 / 4);
    goto LABEL_56;
  }

  v63 = v50 + 2;
  v64 = &v280[1].i32[v50];
  v31 = v10 + 16 * (6 * v11 / 4);
  while (v29 == 3 * (v29 / 3))
  {
    *v64++ = 3;
    v65 = v29 - 3;
    ++v63;
    v29 /= 3;
    if (v65 <= 2)
    {
LABEL_55:
      v30 = v63 - 2;
      goto LABEL_56;
    }
  }

  v75 = v63 - 2;
  v30 = v63 - 2;
  if (v29 == 1)
  {
    goto LABEL_56;
  }

  v76 = v75 << 32;
  v77 = &v280[1].i32[v75];
  while (1)
  {
    v78 = v29 + 3;
    if (v29 >= 0)
    {
      v78 = v29;
    }

    if (v29 != (v78 & 0xFFFFFFFC))
    {
      break;
    }

    v79 = v29 & 0xFFFFFFFC;
    v29 = v78 >> 2;
    *v77++ = 4;
    ++v63;
    v76 += 0x100000000;
    if (v79 == 4)
    {
      goto LABEL_55;
    }
  }

  v30 = v63 - 2;
  if (v29 == 1)
  {
    goto LABEL_56;
  }

  v223 = 0;
  v224 = v76 >> 32;
  v225 = v63;
  v226 = &v280->i8[4 * v30];
  while (v29 == ((v29 + (v29 >> 31)) & 0xFFFFFFFE))
  {
    v51->i32[v224] = 2;
    if (!v224)
    {
      goto LABEL_136;
    }

    if (v224 >= 1)
    {
      v228 = v63 + v223 - 2;
      if (v228 >= 8)
      {
        v230 = (v225 - 2) & 0xFFFFFFFFFFFFFFF8;
        v229 = v228 & 0xFFFFFFFFFFFFFFF8 | 2;
        v231 = v226;
        do
        {
          v9 = *(v231 - 1);
          *(v231 + 4) = *v231;
          *(v231 - 12) = v9;
          v231 -= 32;
          v230 -= 8;
        }

        while (v230);
        if (v228 == (v228 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_135;
        }
      }

      else
      {
        v229 = 2;
      }

      v232 = -v229;
      do
      {
        *&v226[4 * v232 + 24] = *&v226[4 * v232 + 20];
        --v232;
      }

      while (-v225 != v232);
    }

LABEL_135:
    v51->i32[0] = 2;
LABEL_136:
    v227 = v29 & 0xFFFFFFFE;
    v29 /= 2;
    ++v224;
    ++v225;
    ++v223;
    v226 += 4;
    if (v227 == 2)
    {
      break;
    }
  }

  v30 = v224;
LABEL_56:
  v280->i32[2] = v282;
  v280->i32[3] = v30;
  if (v30 >= 1)
  {
    DWORD1(v9) = 1075388923;
    v80 = 6.28318531 / v282;
    v277 = v30;
    v283 = (v30 + 1);
    v281 = v31 - 4;
    v296 = v31 + 4;
    v297 = v10 + 16 * v13 + 8;
    v81 = 1;
    v82 = 1;
    v83 = 1;
    while (1)
    {
      v85 = v81 + 1;
      v86 = v280->i32[v85 + 2];
      v87 = v86 * v83;
      v304 = v86;
      v289 = v85;
      v287 = v86 * v83;
      if (v86 < 2)
      {
        goto LABEL_59;
      }

      v88 = v282 / v87;
      if (v282 / v87 < 1)
      {
        *(v281 + 4 * v82) = 1065353216;
LABEL_59:
        v84 = v82;
        goto LABEL_60;
      }

      v89 = 2 * v88;
      if (((2 * v88) | 1) > 4)
      {
        v90 = v89 + 1;
      }

      else
      {
        v90 = 4;
      }

      v91 = (v90 - 3);
      v92 = (v91 >> 1) + 1;
      if (v304 >= 6)
      {
        v299 = v83;
        v93 = 0;
        v94 = v92 & 0xFFFFFFFC;
        v294 = (v91 >> 1) + 1;
        v292 = (8 * ((v92 & 0xFFFFFFFC) >> 2)) | 4;
        if (v89 + 1 > 4)
        {
          v95 = v89 + 1;
        }

        else
        {
          v95 = 4;
        }

        v290 = (((v95 - 3) >> 1) + 1) & 0xFFFFFFFC;
        v96 = 1;
        while (1)
        {
          v97 = v82;
          v98 = (v31 + 4 * v82);
          *(v98 - 1) = 1065353216;
          v93 += v299;
          *&v9 = v80 * v93;
          v99 = v91;
          v318 = v9;
          if (v91 >= 6)
          {
            v84 = 2 * v94 + v82;
            v102 = v290;
            v103 = xmmword_273B90830;
            v104 = (v296 + 4 * v82);
            do
            {
              v330 = v103;
              v105.i64[0] = 0x100000001;
              v105.i64[1] = 0x100000001;
              v106 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(v103, v105)), *&v9);
              v324 = vcvtq_f64_f32(*v106.f32);
              v312 = vcvt_hight_f64_f32(v106);
              v107 = __sincos_stret(v312.f64[1]);
              v109 = __sincos_stret(v312.f64[0]);
              v108.f64[0] = v109.__cosval;
              v108.f64[1] = v107.__cosval;
              v306 = v108;
              v110 = __sincos_stret(v324.f64[1]);
              v113 = __sincos_stret(v324.f64[0]);
              v112.f64[0] = v113.__cosval;
              v111.f64[0] = v113.__sinval;
              v112.f64[1] = v110.__cosval;
              v336.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v112), v306);
              v114.f64[0] = v109.__sinval;
              v114.f64[1] = v107.__sinval;
              v111.f64[1] = v110.__sinval;
              v336.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v111), v114);
              vst2q_f32(v104, v336);
              v104 += 8;
              v9 = v318;
              v336.val[1].i64[0] = 0x400000004;
              v336.val[1].i64[1] = 0x400000004;
              v103 = vaddq_s32(v330, v336.val[1]);
              v102 -= 4;
            }

            while (v102);
            v100 = v94;
            v101 = v292;
            if (v94 == v294)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v100 = 0;
            v101 = 4;
            v84 = v97;
          }

          v115 = v101 - 2;
          v116 = (v297 + 4 * v84);
          v117 = v100 + 1;
          do
          {
            v84 += 2;
            v118 = __sincos_stret((*&v9 * v117));
            v119 = v118.__cosval;
            v120 = v118.__sinval;
            *(v116 - 1) = v119;
            *v116 = v120;
            v9 = v318;
            v115 += 2;
            v116 += 2;
            ++v117;
          }

          while (v115 <= v89);
LABEL_71:
          v31 = v302;
          v82 = v302 + 4 * v84;
          *(v98 - 1) = *(v82 - 4);
          *v98 = *v82;
          ++v96;
          LODWORD(v82) = v84;
          v91 = v99;
          if (v96 == v304)
          {
            goto LABEL_60;
          }
        }
      }

      *(v281 + 4 * v82) = 1065353216;
      *&v9 = v80 * v83;
      v300 = v90 - 3;
      v319 = v9;
      if (v91 < 6)
      {
        break;
      }

      v121 = v92 & 0xFFFFFFFC;
      v84 = v82 + 2 * v121;
      v122 = (8 * ((v92 & 0xFFFFFFFC) >> 2)) | 4;
      v123 = (v296 + 4 * v82);
      v124 = xmmword_273B90830;
      v125 = v121;
      do
      {
        v331 = v124;
        v126.i64[0] = 0x100000001;
        v126.i64[1] = 0x100000001;
        v127 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(v124, v126)), *&v9);
        v325 = vcvtq_f64_f32(*v127.f32);
        v313 = vcvt_hight_f64_f32(v127);
        v128 = __sincos_stret(v313.f64[1]);
        v130 = __sincos_stret(v313.f64[0]);
        v129.f64[0] = v130.__cosval;
        v129.f64[1] = v128.__cosval;
        v307 = v129;
        v131 = __sincos_stret(v325.f64[1]);
        v134 = __sincos_stret(v325.f64[0]);
        v133.f64[0] = v134.__cosval;
        v132.f64[0] = v134.__sinval;
        v133.f64[1] = v131.__cosval;
        v337.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v133), v307);
        v135.f64[0] = v130.__sinval;
        v135.f64[1] = v128.__sinval;
        v132.f64[1] = v131.__sinval;
        v337.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v132), v135);
        vst2q_f32(v123, v337);
        v123 += 8;
        v9 = v319;
        v337.val[1].i64[0] = 0x400000004;
        v337.val[1].i64[1] = 0x400000004;
        v124 = vaddq_s32(v331, v337.val[1]);
        v125 -= 4;
      }

      while (v125);
      v31 = v302;
      if (v121 != v92)
      {
        goto LABEL_85;
      }

LABEL_87:
      if (v304 == 2)
      {
        goto LABEL_60;
      }

      v142 = v84;
      *(v281 + 4 * v84) = 1065353216;
      *&v9 = v80 * (2 * v83);
      v320 = v9;
      if (v300 < 6)
      {
        LODWORD(v143) = 0;
        v144 = 4;
        v84 = v84;
LABEL_93:
        v158 = v144 - 2;
        v159 = (v297 + 4 * v84);
        v160 = v143 + 1;
        do
        {
          v84 += 2;
          v161 = __sincos_stret((*&v9 * v160));
          v162 = v161.__cosval;
          v163 = v161.__sinval;
          *(v159 - 1) = v162;
          *v159 = v163;
          v9 = v320;
          v158 += 2;
          v159 += 2;
          ++v160;
        }

        while (v158 <= v89);
        goto LABEL_95;
      }

      v143 = v92 & 0xFFFFFFFC;
      v84 = v84 + 2 * v143;
      v144 = (8 * ((v92 & 0xFFFFFFFC) >> 2)) | 4;
      v145 = (v296 + 4 * v142);
      v146 = xmmword_273B90830;
      v147 = v143;
      do
      {
        v332 = v146;
        v148.i64[0] = 0x100000001;
        v148.i64[1] = 0x100000001;
        v149 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(v146, v148)), *&v9);
        v326 = vcvtq_f64_f32(*v149.f32);
        v314 = vcvt_hight_f64_f32(v149);
        v150 = __sincos_stret(v314.f64[1]);
        v152 = __sincos_stret(v314.f64[0]);
        v151.f64[0] = v152.__cosval;
        v151.f64[1] = v150.__cosval;
        v308 = v151;
        v153 = __sincos_stret(v326.f64[1]);
        v156 = __sincos_stret(v326.f64[0]);
        v155.f64[0] = v156.__cosval;
        v154.f64[0] = v156.__sinval;
        v155.f64[1] = v153.__cosval;
        v338.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v155), v308);
        v157.f64[0] = v152.__sinval;
        v157.f64[1] = v150.__sinval;
        v154.f64[1] = v153.__sinval;
        v338.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v154), v157);
        vst2q_f32(v145, v338);
        v145 += 8;
        v9 = v320;
        v338.val[1].i64[0] = 0x400000004;
        v338.val[1].i64[1] = 0x400000004;
        v146 = vaddq_s32(v332, v338.val[1]);
        v147 -= 4;
      }

      while (v147);
      v31 = v302;
      if (v143 != v92)
      {
        goto LABEL_93;
      }

LABEL_95:
      if (v304 == 3)
      {
        goto LABEL_60;
      }

      v164 = v84;
      *(v281 + 4 * v84) = 1065353216;
      *&v9 = v80 * (3 * v83);
      v321 = v9;
      if (v300 < 6)
      {
        LODWORD(v165) = 0;
        v166 = 4;
        v84 = v84;
LABEL_101:
        v180 = v166 - 2;
        v181 = (v297 + 4 * v84);
        v182 = v165 + 1;
        do
        {
          v84 += 2;
          v183 = __sincos_stret((*&v9 * v182));
          v184 = v183.__cosval;
          v185 = v183.__sinval;
          *(v181 - 1) = v184;
          *v181 = v185;
          v9 = v321;
          v180 += 2;
          v181 += 2;
          ++v182;
        }

        while (v180 <= v89);
        goto LABEL_103;
      }

      v165 = v92 & 0xFFFFFFFC;
      v84 = v84 + 2 * v165;
      v166 = (8 * ((v92 & 0xFFFFFFFC) >> 2)) | 4;
      v167 = (v296 + 4 * v164);
      v168 = v165;
      v169 = xmmword_273B90830;
      do
      {
        v333 = v169;
        v170.i64[0] = 0x100000001;
        v170.i64[1] = 0x100000001;
        v171 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(v169, v170)), *&v9);
        v327 = vcvtq_f64_f32(*v171.f32);
        v315 = vcvt_hight_f64_f32(v171);
        v172 = __sincos_stret(v315.f64[1]);
        v174 = __sincos_stret(v315.f64[0]);
        v173.f64[0] = v174.__cosval;
        v173.f64[1] = v172.__cosval;
        v309 = v173;
        v175 = __sincos_stret(v327.f64[1]);
        v178 = __sincos_stret(v327.f64[0]);
        v177.f64[0] = v178.__cosval;
        v176.f64[0] = v178.__sinval;
        v177.f64[1] = v175.__cosval;
        v339.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v177), v309);
        v179.f64[0] = v174.__sinval;
        v179.f64[1] = v172.__sinval;
        v176.f64[1] = v175.__sinval;
        v339.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v176), v179);
        vst2q_f32(v167, v339);
        v167 += 8;
        v9 = v321;
        v339.val[1].i64[0] = 0x400000004;
        v339.val[1].i64[1] = 0x400000004;
        v169 = vaddq_s32(v333, v339.val[1]);
        v168 -= 4;
      }

      while (v168);
      v31 = v302;
      if (v165 != v92)
      {
        goto LABEL_101;
      }

LABEL_103:
      if (v304 != 4)
      {
        v186 = v84;
        *(v281 + 4 * v84) = 1065353216;
        *&v9 = v80 * (4 * v83);
        v322 = v9;
        if (v300 >= 6)
        {
          v187 = v92 & 0xFFFFFFFC;
          v84 = v84 + 2 * v187;
          v188 = (8 * ((v92 & 0xFFFFFFFC) >> 2)) | 4;
          v189 = (v296 + 4 * v186);
          v190 = v187;
          v191 = xmmword_273B90830;
          do
          {
            v334 = v191;
            v192.i64[0] = 0x100000001;
            v192.i64[1] = 0x100000001;
            v193 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(v191, v192)), *&v9);
            v328 = vcvtq_f64_f32(*v193.f32);
            v316 = vcvt_hight_f64_f32(v193);
            v194 = __sincos_stret(v316.f64[1]);
            v196 = __sincos_stret(v316.f64[0]);
            v195.f64[0] = v196.__cosval;
            v195.f64[1] = v194.__cosval;
            v310 = v195;
            v197 = __sincos_stret(v328.f64[1]);
            v200 = __sincos_stret(v328.f64[0]);
            v199.f64[0] = v200.__cosval;
            v198.f64[0] = v200.__sinval;
            v199.f64[1] = v197.__cosval;
            v340.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v199), v310);
            v201.f64[0] = v196.__sinval;
            v201.f64[1] = v194.__sinval;
            v198.f64[1] = v197.__sinval;
            v340.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v198), v201);
            vst2q_f32(v189, v340);
            v189 += 8;
            v9 = v322;
            v340.val[1].i64[0] = 0x400000004;
            v340.val[1].i64[1] = 0x400000004;
            v191 = vaddq_s32(v334, v340.val[1]);
            v190 -= 4;
          }

          while (v190);
          v31 = v302;
          if (v187 == v92)
          {
            goto LABEL_60;
          }
        }

        else
        {
          LODWORD(v187) = 0;
          v188 = 4;
          v84 = v84;
        }

        v202 = v188 - 2;
        v203 = (v297 + 4 * v84);
        v204 = v187 + 1;
        do
        {
          v84 += 2;
          v205 = __sincos_stret((*&v9 * v204));
          v206 = v205.__cosval;
          v207 = v205.__sinval;
          *(v203 - 1) = v206;
          *v203 = v207;
          v9 = v322;
          v202 += 2;
          v203 += 2;
          ++v204;
        }

        while (v202 <= v89);
      }

LABEL_60:
      v82 = v84;
      v83 = v287;
      v81 = v289;
      v10 = v286;
      if (v289 == v283)
      {
        result = v280;
        v208 = v277;
        goto LABEL_113;
      }
    }

    LODWORD(v121) = 0;
    v122 = 4;
    v84 = v82;
LABEL_85:
    v136 = v122 - 2;
    v137 = (v297 + 4 * v84);
    v138 = v121 + 1;
    do
    {
      v84 += 2;
      v139 = __sincos_stret((*&v9 * v138));
      v140 = v139.__cosval;
      v141 = v139.__sinval;
      *(v137 - 1) = v140;
      *v137 = v141;
      v9 = v319;
      v136 += 2;
      v137 += 2;
      ++v138;
    }

    while (v136 <= v89);
    goto LABEL_87;
  }

  v49 = 1;
  result = v280;
LABEL_123:
  if (v49 != v279 / 4)
  {
    if (v10)
    {
      v219 = result;
      free(*(v10 - 8));
      result = v219;
    }

    free(result);
    return 0;
  }

  return result;
}

__n128 pffft_transform_internal(int *a1, uint64_t a2, float32x4_t *a3)
{
  v239[2] = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  MEMORY[0x28223BE20](a1, a2, a3);
  v12 = (&v239[-1] - v11);
  v14 = v13 & 1;
  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v12;
  }

  v239[0] = v7;
  v239[1] = v15;
  if (!v9)
  {
    v23 = v239[v14 == v10];
    if (a1[17])
    {
      if (v5 >= 1)
      {
        v24 = &v23[1];
        v25 = &v6[1];
        v26 = v5;
        do
        {
          v27 = v25[-1];
          v28 = vuzp1q_s32(v27, *v25);
          v29 = vuzp2q_s32(v27, *v25);
          v24[-1] = v28;
          *v24 = v29;
          v24 += 2;
          v25 += 2;
          --v26;
        }

        while (v26);
      }

      v30 = v10;
      v31 = cfftf1_ps(v5, v23, v239[v14 != v10], v23, *(a1 + 11), (a1 + 2), -1);
      v33 = v31 == a3;
      v34 = v31 != a3;
      if (v5 >= 4)
      {
        v35 = v239[v31 == a3];
        v36 = v5 >> 2;
        v37 = v239[v31 != a3] + 64;
        v38 = *(a1 + 10) + 48;
        do
        {
          v39 = *(v37 - 64);
          v40 = *(v37 - 48);
          v41 = *(v37 - 32);
          v42 = *(v37 - 16);
          v43 = *(v37 + 16);
          v44 = *(v37 + 32);
          v45 = *(v37 + 48);
          v46 = vzip1q_s32(v39, *v37);
          v47 = vzip2q_s32(v39, *v37);
          v48 = vzip1q_s32(v41, v44);
          v49 = vzip2q_s32(v41, v44);
          v50 = vzip1q_s32(v46, v48);
          v51 = vzip2q_s32(v46, v48);
          v52 = vzip1q_s32(v47, v49);
          v53 = vzip2q_s32(v47, v49);
          v54 = vzip1q_s32(v40, v43);
          v55 = vzip2q_s32(v40, v43);
          v56 = vzip1q_s32(v42, v45);
          v57 = vzip2q_s32(v42, v45);
          v58 = vzip1q_s32(v54, v56);
          v59 = vzip2q_s32(v54, v56);
          v60 = vzip1q_s32(v55, v57);
          v61 = vzip2q_s32(v55, v57);
          v63 = *(v38 - 48);
          v62 = *(v38 - 32);
          v64 = vmulq_f32(v51, v62);
          v65 = vsubq_f32(vmulq_f32(v51, v63), vmulq_f32(v62, v59));
          v66 = vaddq_f32(v64, vmulq_f32(v59, v63));
          v67 = *(v38 - 16);
          v68 = vsubq_f32(vmulq_f32(v52, v67), vmulq_f32(v60, *v38));
          v69 = vaddq_f32(vmulq_f32(v52, *v38), vmulq_f32(v60, v67));
          v71 = *(v38 + 16);
          v70 = *(v38 + 32);
          v72 = vmulq_f32(v53, v70);
          v73 = vsubq_f32(vmulq_f32(v53, v71), vmulq_f32(v61, v70));
          v74 = vaddq_f32(v72, vmulq_f32(v61, v71));
          v75 = vaddq_f32(v50, v68);
          v76 = vsubq_f32(v50, v68);
          v77 = vaddq_f32(v65, v73);
          v78 = vsubq_f32(v65, v73);
          v79 = vaddq_f32(v58, v69);
          v80 = vsubq_f32(v58, v69);
          v81 = vaddq_f32(v66, v74);
          v82 = vsubq_f32(v66, v74);
          *v35 = vaddq_f32(v75, v77);
          *(v35 + 16) = vaddq_f32(v79, v81);
          *(v35 + 32) = vaddq_f32(v76, v82);
          *(v35 + 48) = vsubq_f32(v80, v78);
          result = vaddq_f32(v80, v78);
          *(v35 + 64) = vsubq_f32(v75, v77);
          *(v35 + 80) = vsubq_f32(v79, v81);
          *(v35 + 96) = vsubq_f32(v76, v82);
          *(v35 + 112) = result;
          v37 += 128;
          v38 += 96;
          v35 += 128;
          --v36;
        }

        while (v36);
      }

      if (v30)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v115 = v10;
      v116 = rfftf1_ps(2 * v5, v6, v23, v239[v14 != v10], *(a1 + 11), (a1 + 2));
      v33 = v116 == a3;
      v34 = v116 != a3;
      result.n128_u64[0] = pffft_real_finalize(v5, v239[v116 != a3], v239[v116 == a3], *(a1 + 10)).u64[0];
      if (v115)
      {
LABEL_19:
        v83 = v239[v33];
        v84 = v239[v34];
        if (!a1[17])
        {
          v119 = *a1;
          v120 = v119 / 32;
          if (v119 >= 32)
          {
            v121 = v83 + 5;
            v122 = v84 + 1;
            v123 = &v84[(4 * v120) + 1];
            v124 = (v119 / 32);
            do
            {
              v125 = v121[-5];
              v126 = v121[-4];
              i32 = v122[-1].i32;
              vst2_f32(i32, v125);
              *v122 = vzip2q_s32(v125, v126);
              v122 += 2;
              v128 = v121[-1];
              v129 = *v121;
              v130 = vzip2q_s32(v128, *v121);
              v131 = v123[-1].i32;
              vst2_f32(v131, v128);
              *v123 = v130;
              v123 += 2;
              v121 += 8;
              --v124;
            }

            while (v124);
          }

          v132 = (v84 + 4 * (v119 / 2));
          v133 = v83[2];
          v134 = v83[3];
          v135 = vzip1q_s32(v133, v134);
          v136 = vzip2q_s32(v133, v134);
          v134.i64[0] = v136.i64[0];
          v134.i64[1] = v135.i64[1];
          v132[-1] = v134;
          i8 = v132[-1].i8;
          if (v119 < 64)
          {
            v142.i64[1] = v136.i64[1];
          }

          else
          {
            v138 = v120 - 1;
            v139 = v83 + 11;
            do
            {
              v140 = v139[-1];
              v141 = vzip1q_s32(v140, *v139);
              v142 = vzip2q_s32(v140, *v139);
              *&v143 = v142.i64[0];
              *(&v143 + 1) = v141.i64[1];
              v141.i64[1] = v136.i64[1];
              *(i8 - 2) = v143;
              *(i8 - 1) = v141;
              i8 -= 32;
              v139 += 8;
              v136.i64[1] = v142.i64[1];
              --v138;
            }

            while (v138);
          }

          v135.i64[1] = v142.i64[1];
          *(i8 - 1) = v135;
          v146 = (v84 + 4 * v119);
          v147 = v83[6];
          v148 = v83[7];
          result = vzip1q_s32(v147, v148);
          v149 = vzip2q_s32(v147, v148);
          v148.i64[0] = v149.i64[0];
          v148.i64[1] = result.n128_i64[1];
          v146[-1] = v148;
          v150 = v146[-1].i8;
          if (v119 < 64)
          {
            v155.i64[1] = v149.i64[1];
          }

          else
          {
            v151 = v120 - 1;
            v152 = v83 + 15;
            do
            {
              v153 = v152[-1];
              v154 = vzip1q_s32(v153, *v152);
              v155 = vzip2q_s32(v153, *v152);
              *&v156 = v155.i64[0];
              *(&v156 + 1) = v154.i64[1];
              v154.i64[1] = v149.i64[1];
              *(v150 - 2) = v156;
              *(v150 - 1) = v154;
              v150 -= 32;
              v152 += 8;
              v149.i64[1] = v155.i64[1];
              --v151;
            }

            while (v151);
          }

          result.n128_u64[1] = v155.u64[1];
          *(v150 - 1) = result;
          v117 = v239[v34];
          if (v117 != a3 && v5 >= 1)
          {
            goto LABEL_84;
          }

          return result;
        }

        v85 = a1[1];
        if (v85 >= 1)
        {
          v86 = 0;
          v87 = v83 + 1;
          do
          {
            v88 = (v86 & 3) * (v85 >> 2) + (v86 >> 2);
            result = v87[-1];
            v89 = *v87;
            v90 = vzip2q_s32(result, *v87);
            v91 = v84[2 * v88].i32;
            vst2_f32(v91, result);
            v84[(2 * (v88 & 0x3FFFFFFF)) | 1u] = v90;
            ++v86;
            v87 += 2;
          }

          while (v85 != v86);
        }

        goto LABEL_74;
      }
    }

    v117 = v239[v33];
    if (v117 != a3 && v5 >= 1)
    {
      goto LABEL_84;
    }

    return result;
  }

  v16 = (v14 != v10) ^ (v239[v14 != v10] == v6);
  if (v10)
  {
    v17 = v239[v16];
    if (a1[17])
    {
      if (v5 >= 1)
      {
        v18 = 0;
        v19 = (v17 + 16);
        do
        {
          v20 = (v18 & 3) * (v5 >> 2) + (v18 >> 2);
          v21 = v6[2 * v20];
          v22 = v6[(2 * (v20 & 0x3FFFFFFF)) | 1u];
          v19[-1] = vuzp1q_s32(v21, v22);
          *v19 = vuzp2q_s32(v21, v22);
          ++v18;
          v19 += 2;
        }

        while (v5 != v18);
      }

      goto LABEL_66;
    }

    v92 = *a1;
    v93 = v92;
    v94 = v92 / 32;
    if (v92 <= 31)
    {
      v114 = 0;
      v144 = &v6->f32[v92 / 4];
      v104 = (v17 + 4 * v92 - 96);
      v145 = *v144;
      v105 = v144 + 1;
      v107 = v145;
    }

    else
    {
      v95 = &v6[1];
      v96 = (v17 + 80);
      v97 = (v92 / 32);
      do
      {
        v98 = v95[-1];
        v99 = vuzp1q_s32(v98, *v95);
        v100 = vuzp2q_s32(v98, *v95);
        v96[-5] = v99;
        v96[-4] = v100;
        v101 = v95[(4 * v94) - 1];
        v102 = v95[4 * v94];
        v96[-1] = vuzp1q_s32(v101, v102);
        *v96 = vuzp2q_s32(v101, v102);
        v95 += 2;
        v96 += 8;
        --v97;
      }

      while (v97);
      v103 = (v6 + (v92 & 0xFFFFFFFC));
      v104 = (v17 + 4 * v92 - 96);
      v106 = *v103;
      v105 = v103 + 1;
      v107 = v106;
      if (v92 >= 64)
      {
        v108 = v94 - 1;
        v109.i64[1] = v107.i64[1];
        do
        {
          v110 = v109.i64[1];
          v111 = v105 + 2;
          v112 = *v105;
          v109 = v105[1];
          v113.i64[0] = v105[1].i64[0];
          v113.i64[1] = v105->i64[1];
          v112.i64[1] = v110;
          *v104 = vuzp1q_s32(v113, v112);
          v104[1] = vuzp2q_s32(v113, v112);
          v104 -= 8;
          v105 += 2;
          --v108;
        }

        while (v108);
        v114 = 1;
        v92 = v93;
        v105 = v111;
LABEL_60:
        v158 = v17 + 4 * v92;
        v159 = *v105;
        v107.i64[1] = v105->i64[1];
        v159.i64[1] = v109.i64[1];
        *v104 = vuzp1q_s32(v107, v159);
        v104[1] = vuzp2q_s32(v107, v159);
        v160 = &v6->f32[3 * v93 / 4];
        v161 = (v158 - 32);
        v163 = *v160;
        v162 = v160 + 1;
        v164 = v163;
        if (v114)
        {
          v165 = v94 - 1;
          v166.i64[1] = v164.i64[1];
          do
          {
            v167 = v166.i64[1];
            v168 = v162 + 2;
            v169 = *v162;
            v166 = v162[1];
            v170.i64[0] = v162[1].i64[0];
            v170.i64[1] = v162->i64[1];
            v169.i64[1] = v167;
            *v161 = vuzp1q_s32(v170, v169);
            v161[1] = vuzp2q_s32(v170, v169);
            v161 -= 8;
            v162 += 2;
            --v165;
          }

          while (v165);
          v162 = v168;
        }

        else
        {
          v166.i64[1] = v164.i64[1];
        }

        v171 = *v162;
        v164.i64[1] = v162->i64[1];
        v171.i64[1] = v166.i64[1];
        *v161 = vuzp1q_s32(v164, v171);
        v161[1] = vuzp2q_s32(v164, v171);
LABEL_66:
        v16 ^= 1u;
        v6 = v17;
        goto LABEL_67;
      }

      v114 = 0;
      v92 = v92;
    }

    v109.i64[1] = v107.i64[1];
    goto LABEL_60;
  }

LABEL_67:
  v172 = v239[v16];
  v173 = *(a1 + 10);
  if (!a1[17])
  {
    pffft_real_preprocess(v5, v6, v239[v16], v173);
    v117 = v239[rfftb1_ps(2 * v5, v172, a3, v15, *(a1 + 11), (a1 + 2)) != a3];
    if (v117 != a3 && v5 >= 1)
    {
      goto LABEL_84;
    }

    return result;
  }

  if (v5 >= 4)
  {
    v174 = v5 >> 2;
    v175 = v6 + 4;
    v176 = v173 + 3;
    v177 = v172;
    do
    {
      v178 = v175[-4];
      v179 = v175[-3];
      v180 = v175[-2];
      v181 = v175[-1];
      v182 = v175[1];
      v183 = v175[2];
      v184 = v175[3];
      v185 = vaddq_f32(v178, *v175);
      v186 = vsubq_f32(v178, *v175);
      v187 = vaddq_f32(v180, v183);
      v188 = vsubq_f32(v180, v183);
      v189 = vaddq_f32(v179, v182);
      v190 = vsubq_f32(v179, v182);
      v191 = vaddq_f32(v181, v184);
      v192 = vsubq_f32(v181, v184);
      v193 = vaddq_f32(v185, v187);
      v194 = vaddq_f32(v189, v191);
      v195 = vsubq_f32(v186, v192);
      v196 = vaddq_f32(v190, v188);
      v197 = vsubq_f32(v185, v187);
      v198 = vsubq_f32(v189, v191);
      v199 = vaddq_f32(v186, v192);
      v200 = vsubq_f32(v190, v188);
      v202 = v176[-3];
      v201 = v176[-2];
      v203 = vmulq_f32(v201, v195);
      v204 = vaddq_f32(vmulq_f32(v196, v201), vmulq_f32(v195, v202));
      v205 = vsubq_f32(vmulq_f32(v196, v202), v203);
      v206 = v176[-1];
      v207 = vmulq_f32(v197, *v176);
      v208 = vaddq_f32(vmulq_f32(v198, *v176), vmulq_f32(v197, v206));
      v209 = vsubq_f32(vmulq_f32(v198, v206), v207);
      v211 = v176[1];
      v210 = v176[2];
      v212 = vmulq_f32(v199, v210);
      v213 = vaddq_f32(vmulq_f32(v200, v210), vmulq_f32(v199, v211));
      v214 = vsubq_f32(vmulq_f32(v200, v211), v212);
      v215 = vzip1q_s32(v193, v208);
      v216 = vzip2q_s32(v193, v208);
      v217 = vzip1q_s32(v204, v213);
      v218 = vzip2q_s32(v204, v213);
      v219 = vzip1q_s32(v215, v217);
      v220 = vzip2q_s32(v215, v217);
      v221 = vzip1q_s32(v216, v218);
      v222 = vzip2q_s32(v216, v218);
      v223 = vzip1q_s32(v194, v209);
      v224 = vzip2q_s32(v194, v209);
      v225 = vzip1q_s32(v205, v214);
      *v177 = v219;
      v177[1] = vzip1q_s32(v223, v225);
      v226 = vzip2q_s32(v205, v214);
      v177[2] = v220;
      v177[3] = vzip2q_s32(v223, v225);
      v177[4] = v221;
      v177[5] = vzip1q_s32(v224, v226);
      v177[6] = v222;
      v177[7] = vzip2q_s32(v224, v226);
      v175 += 8;
      v176 += 6;
      v177 += 8;
      --v174;
    }

    while (v174);
  }

  v227 = cfftf1_ps(v5, v172, a3, v15, *(a1 + 11), (a1 + 2), 1);
  v34 = v227 != a3;
  if (v5 < 1)
  {
    return result;
  }

  v228 = (v239[v227 != a3] + 16);
  v229 = v5;
  do
  {
    v230 = v228[-1].i32;
    result = v228[-1];
    v231 = *v228;
    v232 = vzip2q_s32(result, *v228);
    vst2_f32(v230, result);
    *v228 = v232;
    v228 += 2;
    --v229;
  }

  while (v229);
LABEL_74:
  v117 = v239[v34];
  if (v117 != a3 && v5 >= 1)
  {
LABEL_84:
    v235 = &a3[1];
    v236 = (v117 + 16);
    do
    {
      result = v236[-1];
      v237 = *v236;
      v235[-1] = result;
      *v235 = v237;
      v235 += 2;
      v236 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

float32x4_t *rfftf1_ps(int a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v8 = *(a6 + 4);
  if (v8 >= 1)
  {
    v9 = a1 - 1;
    if (a2 == a4)
    {
      v10 = a3;
    }

    else
    {
      v10 = a4;
    }

    v182 = (v8 + 1);
    v183 = a6 + 8;
    v188 = a5 + 4;
    v11 = 1;
    v12 = vdupq_n_s32(0x3F5DB3D7u);
    v13.i64[0] = 0xBF000000BF000000;
    v13.i64[1] = 0xBF000000BF000000;
    v14.i64[0] = 0x3F0000003F000000;
    v14.i64[1] = 0x3F0000003F000000;
    v15 = vdupq_n_s32(0x3E9E377Au);
    v16 = vdupq_n_s32(0x3F4F1BBDu);
    v17 = vdupq_n_s32(0x3F737871u);
    v18 = vdupq_n_s32(0x3F167918u);
    LODWORD(v19) = a1;
    v186 = a3;
    v185 = a1;
    v184 = *(a6 + 4);
    v179 = v15;
    v180 = v12;
    v177 = v17;
    v178 = v16;
    v176 = v18;
    do
    {
      v21 = *(v183 + 4 * (v8 - v11));
      v22 = (a1 / v19);
      v23 = v22 * (v21 - 1);
      v24 = v9 - v23;
      v19 = (v19 / v21);
      v189 = v9 - v23;
      if (v21 > 3)
      {
        if (v21 != 4)
        {
          if (v21 == 5 && v19 >= 1)
          {
            v69 = v189 + v22 + v22;
            v175 = v69;
            v173 = v69 + v22;
            v70 = v22 * ~v19 - 1;
            v71 = (v19 + 1);
            v72 = v71 - 1;
            v73 = 5 * v22;
            v74 = 10 * v22;
            v75 = 8 * v22;
            v76 = -2 - 6 * v22;
            v77 = &v10[6 * v22 + 2 + v76];
            v78 = &v7[(v19 + 1) * v22 + 1];
            v172 = (3 * v19) + 1;
            v171 = (4 * v19) | 1;
            v79 = (2 * v19) | 1;
            v80 = &v7[v172 * v22 + 1];
            v81 = &v7[v171 * v22 + 1];
            v82 = &v7[v79 * v22 + 1];
            v83 = (5 * v19) + 1;
            v84 = &v7[v83 * v22 + 1];
            v85 = 16 * v22;
            v86 = &v10[~(6 * v22)];
            do
            {
              v87 = v70;
              v88 = *(v84 + 16 * v70);
              v89 = *(v82 + 16 * v70);
              v90 = vaddq_f32(v88, v89);
              v91 = vsubq_f32(v88, v89);
              v92 = *(v81 + 16 * v70);
              v93 = *(v80 + 16 * v70);
              v94 = vaddq_f32(v92, v93);
              v95 = vsubq_f32(v92, v93);
              v96 = *(v78 + 16 * v70);
              *v77 = vaddq_f32(v96, vaddq_f32(v90, v94));
              v97 = &v86[v75];
              *v97 = vaddq_f32(v96, vsubq_f32(vmulq_f32(v90, v15), vmulq_f32(v94, v16)));
              v97[1] = vaddq_f32(vmulq_f32(v91, v17), vmulq_f32(v95, v18));
              v98 = &v86[v74];
              v74 += v73;
              v75 += v73;
              v77 += 5 * v22;
              v78 += v85;
              v80 += v85;
              *v98 = vaddq_f32(v96, vsubq_f32(vmulq_f32(v94, v15), vmulq_f32(v90, v16)));
              v98[1] = vsubq_f32(vmulq_f32(v91, v18), vmulq_f32(v95, v17));
              v81 += v85;
              v82 += v85;
              v84 += v85;
              --v72;
            }

            while (v72);
            if (v22 >= 3)
            {
              v99 = &v10[(v22 + 2) - 3];
              v100 = (v99 + v76 * 16 + 112 * v22);
              v101 = 16 * (v22 + 4 * v22);
              v102 = (v99 + v76 * 16 + 144 * v22);
              v103 = 4 * v9;
              v104 = &v10[10 * v22 + 3 + v76];
              v105 = &v10[8 * v22 + 3 + v76];
              v106 = &v10[6 * v22 + 3 + v76];
              v174 = v189 + v22;
              v107 = &v7[(v19 + 1) * v22 + 2 + v87];
              v108 = &v7[v79 * v22 + 2 + v87];
              v109 = 16 * v22;
              v110 = v7 + 3;
              v111 = &v7[v83 * v22 + 3 + v87];
              v112 = &v110[v171 * v22 + v87];
              v113 = &v110[v172 * v22 + v87];
              v114 = 1;
              v115 = v103 - 4 * v23;
              do
              {
                v116 = 0;
                v117 = v188;
                v118 = v102;
                v119 = v100;
                v120 = 3;
                do
                {
                  v121 = *(v117 + v115 - 4);
                  v122 = *(v117 + v115);
                  v123 = *(v117 + 4 * v174 - 4);
                  v124 = *(v117 + 4 * v174);
                  v125 = *(v117 + 4 * v175 - 4);
                  v126 = *(v117 + 4 * v175);
                  v127 = *(v117 + 4 * v173 - 4);
                  v128 = *(v117 + 4 * v173);
                  v130 = *(v108 + v116);
                  v129 = *(v108 + v116 + 16);
                  v131 = vmulq_n_f32(v129, v121);
                  v132 = vaddq_f32(vmulq_n_f32(v129, v122), vmulq_n_f32(v130, v121));
                  v133 = vsubq_f32(vmulq_n_f32(v130, v122), v131);
                  v135 = v113[v116 / 0x10 - 1];
                  v134 = v113[v116 / 0x10];
                  v136 = vmulq_n_f32(v134, v123);
                  v137 = vaddq_f32(vmulq_n_f32(v134, v124), vmulq_n_f32(v135, v123));
                  v138 = vsubq_f32(vmulq_n_f32(v135, v124), v136);
                  v140 = v112[v116 / 0x10 - 1];
                  v139 = v112[v116 / 0x10];
                  v141 = vmulq_n_f32(v139, v125);
                  v142 = vaddq_f32(vmulq_n_f32(v139, v126), vmulq_n_f32(v140, v125));
                  v143 = vsubq_f32(vmulq_n_f32(v140, v126), v141);
                  v145 = *(v111 + v116 - 16);
                  v144 = *(v111 + v116);
                  v146 = vmulq_n_f32(v144, v127);
                  v147 = vaddq_f32(vmulq_n_f32(v144, v128), vmulq_n_f32(v145, v127));
                  v148 = vsubq_f32(vmulq_n_f32(v145, v128), v146);
                  v149 = vaddq_f32(v132, v147);
                  v150 = vsubq_f32(v147, v132);
                  v151 = vsubq_f32(v133, v148);
                  v152 = vaddq_f32(v133, v148);
                  v153 = vaddq_f32(v137, v142);
                  v154 = vsubq_f32(v142, v137);
                  v155 = vsubq_f32(v138, v143);
                  v156 = vaddq_f32(v138, v143);
                  v157 = *(v107 + v116);
                  v158 = *(v107 + v116 + 16);
                  v159 = (v106 + v116);
                  *v159 = vaddq_f32(v157, vaddq_f32(v153, v149));
                  v159[1] = vsubq_f32(v158, vaddq_f32(v156, v152));
                  v160 = vaddq_f32(v157, vsubq_f32(vmulq_f32(v149, v15), vmulq_f32(v153, v16)));
                  v161 = vsubq_f32(v158, vsubq_f32(vmulq_f32(v152, v15), vmulq_f32(v156, v16)));
                  v162 = vaddq_f32(v157, vsubq_f32(vmulq_f32(v153, v15), vmulq_f32(v149, v16)));
                  v163 = vsubq_f32(v158, vsubq_f32(vmulq_f32(v156, v15), vmulq_f32(v152, v16)));
                  v164 = vaddq_f32(vmulq_f32(v155, v18), vmulq_f32(v151, v17));
                  v165 = vaddq_f32(vmulq_f32(v154, v18), vmulq_f32(v150, v17));
                  v166 = vsubq_f32(vmulq_f32(v151, v18), vmulq_f32(v155, v17));
                  v167 = vsubq_f32(vmulq_f32(v150, v18), vmulq_f32(v154, v17));
                  v168 = (v105 + v116);
                  *v168 = vsubq_f32(v160, v164);
                  *v119 = vaddq_f32(v164, v160);
                  v168[1] = vaddq_f32(v165, v161);
                  v119[1] = vsubq_f32(v165, v161);
                  v169 = (v104 + v116);
                  *v169 = vsubq_f32(v162, v166);
                  *v118 = vaddq_f32(v166, v162);
                  v169[1] = vaddq_f32(v167, v163);
                  v120 += 2;
                  v119 -= 2;
                  v118[1] = vsubq_f32(v167, v163);
                  v116 += 32;
                  v118 -= 2;
                  v117 += 8;
                }

                while (v120 <= v22);
                ++v114;
                v100 = (v100 + v101);
                v104 += v101;
                v102 = (v102 + v101);
                v105 += v101;
                v106 += v101;
                v107 += v109;
                v111 += v109;
                v112 = (v112 + v109);
                v108 += v109;
                v113 = (v113 + v109);
              }

              while (v114 != v71);
            }
          }

          goto LABEL_8;
        }

        radf4_ps(v22, v19, v7, v10, a5 + 4 * v24, a5 + 4 * (v24 + v22), a5 + 4 * (v24 + v22 + v22));
      }

      else
      {
        if (v21 != 2)
        {
          if (v21 == 3 && v19 >= 1)
          {
            v25 = (2 * v19);
            v26 = 16 * v22;
            v27 = v7;
            v28 = v10;
            v29 = v19;
            do
            {
              v30 = *(v27 + v26 * v19);
              v31 = *(v27 + v26 * v25);
              v32 = vaddq_f32(v30, v31);
              v33 = *v27;
              *v28 = vaddq_f32(*v27, v32);
              v34 = &v28[2 * v22];
              v34[-1] = vaddq_f32(v33, vmulq_f32(v32, v13));
              *v34 = vmulq_f32(vsubq_f32(v31, v30), v12);
              v28 += 3 * v22;
              v27 = (v27 + v26);
              --v29;
            }

            while (v29);
            if (v22 >= 3)
            {
              v35 = 0;
              v36 = (v22 << 33) - 0x300000000;
              v37 = &v10[2 * v22];
              v38 = 16 * (v22 + 2 * v22);
              v39 = v188 - 4 * v23 + 4 * v9;
              v40 = 16 * v22;
              v41 = v7 + v40 * v25;
              v42 = &v7[v19 * v22];
              v43 = v10;
              do
              {
                v44 = 0;
                v45 = 0xFFFFFFFFFFFFFFELL;
                v46 = (v188 + 4 * (v189 + v22));
                v47 = v39;
                v48 = v36;
                v49 = 2;
                do
                {
                  v50 = *(v47 - 1);
                  v51 = v42[v44 + 1];
                  v52 = v42[v44 + 2];
                  v53 = vaddq_f32(vmulq_n_f32(v51, v50), vmulq_n_f32(v52, *v47));
                  v54 = vsubq_f32(vmulq_n_f32(v52, v50), vmulq_n_f32(v51, *v47));
                  v51.f32[0] = *(v46 - 1);
                  v55 = *&v41[v44 * 16 + 16];
                  v56 = *&v41[v44 * 16 + 32];
                  v57 = vaddq_f32(vmulq_n_f32(v55, v51.f32[0]), vmulq_n_f32(v56, *v46));
                  v58 = vsubq_f32(vmulq_n_f32(v56, v51.f32[0]), vmulq_n_f32(v55, *v46));
                  v59 = vaddq_f32(v53, v57);
                  v60 = vaddq_f32(v54, v58);
                  v61 = v7[v44 + 1];
                  v62 = v7[v44 + 2];
                  v63 = &v43[v44];
                  v63[1] = vaddq_f32(v61, v59);
                  v63[2] = vaddq_f32(v62, v60);
                  v64 = vsubq_f32(v61, vmulq_f32(v59, v14));
                  v65 = vsubq_f32(v62, vmulq_f32(v60, v14));
                  v66 = vmulq_f32(vsubq_f32(v54, v58), v12);
                  v67 = vmulq_f32(vsubq_f32(v57, v53), v12);
                  v68 = &v37[v44];
                  v68[1] = vaddq_f32(v66, v64);
                  *(v10 + (v48 >> 28)) = vsubq_f32(v64, v66);
                  v68[2] = vaddq_f32(v67, v65);
                  v37[v45] = vsubq_f32(v67, v65);
                  v49 += 2;
                  v48 -= 0x200000000;
                  v45 -= 2;
                  v47 += 2;
                  v44 += 2;
                  v46 += 2;
                }

                while (v49 < v22);
                ++v35;
                v36 += (3 * v22) << 32;
                v37 = (v37 + v38);
                v41 += v40;
                v42 = (v42 + v40);
                v43 = (v43 + v38);
                v7 = (v7 + v40);
              }

              while (v35 != v19);
            }
          }

          goto LABEL_8;
        }

        radf2_ps(v22, v19, v7, v10, a5 + 4 * v24);
      }

      v18 = v176;
      v17 = v177;
      v16 = v178;
      v15 = v179;
      v14.i64[0] = 0x3F0000003F000000;
      v14.i64[1] = 0x3F0000003F000000;
      v13.i64[0] = 0xBF000000BF000000;
      v13.i64[1] = 0xBF000000BF000000;
      v12 = v180;
LABEL_8:
      v20 = v10 == a4;
      if (v10 == a4)
      {
        v10 = v186;
      }

      else
      {
        v10 = a4;
      }

      if (v20)
      {
        v7 = a4;
      }

      else
      {
        v7 = v186;
      }

      ++v11;
      v9 = v189;
      a1 = v185;
      v8 = v184;
    }

    while (v11 != v182);
  }

  return v7;
}