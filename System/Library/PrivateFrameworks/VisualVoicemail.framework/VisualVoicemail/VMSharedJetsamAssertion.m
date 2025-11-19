@interface VMSharedJetsamAssertion
- (VMSharedJetsamAssertion)initWithJetsamAssertion:(shared_ptr<VMJetsamAssertion>)a3;
- (id).cxx_construct;
- (id)description;
- (void)dealloc;
@end

@implementation VMSharedJetsamAssertion

- (VMSharedJetsamAssertion)initWithJetsamAssertion:(shared_ptr<VMJetsamAssertion>)a3
{
  ptr = a3.__ptr_;
  v17.receiver = self;
  v17.super_class = VMSharedJetsamAssertion;
  v4 = [(VMSharedJetsamAssertion *)&v17 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v6 = *ptr;
    v7 = *(ptr + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->jetsam.__cntrl_;
    v5->jetsam.__ptr_ = v6;
    v5->jetsam.__cntrl_ = v7;
    if (cntrl)
    {
      sub_100083FCC(cntrl);
      v6 = v5->jetsam.__ptr_;
    }

    v9 = sub_100026660(*(v6 + 3));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v5->jetsam.__ptr_ + 1);
      v11 = objc_opt_class();
      v12 = v5->jetsam.__ptr_;
      v13 = *(v12 + 2);
      v14 = *v12;
      *buf = 136316418;
      v19 = v10;
      v20 = 2080;
      v21 = " ";
      v22 = 2112;
      v23 = v11;
      v24 = 2048;
      v25 = v13;
      v26 = 2080;
      v27 = v14;
      v28 = 2048;
      v29 = v5;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ [%lu, %s, %p] created", buf, 0x3Eu);
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = sub_100026660(*(self->jetsam.__ptr_ + 3));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(self->jetsam.__ptr_ + 1);
    v5 = objc_opt_class();
    ptr = self->jetsam.__ptr_;
    v7 = *(ptr + 2);
    v8 = *ptr;
    *buf = 136316418;
    v12 = v4;
    v13 = 2080;
    v14 = " ";
    v15 = 2112;
    v16 = v5;
    v17 = 2048;
    v18 = v7;
    v19 = 2080;
    v20 = v8;
    v21 = 2048;
    v22 = self;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ [%lu, %s, %p] deleted", buf, 0x3Eu);
  }

  v10.receiver = self;
  v10.super_class = VMSharedJetsamAssertion;
  [(VMSharedJetsamAssertion *)&v10 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  [v3 appendFormat:@"jetsam=[%lu, %s]", *(self->jetsam.__ptr_ + 2), *self->jetsam.__ptr_];
  [v3 appendFormat:@">"];

  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end