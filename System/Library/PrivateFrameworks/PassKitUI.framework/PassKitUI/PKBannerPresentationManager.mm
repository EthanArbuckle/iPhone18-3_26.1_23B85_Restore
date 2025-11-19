@interface PKBannerPresentationManager
+ (id)_managerForDestination:(int64_t)a3 withProvider:(id)a4;
- (id)_createPresentableWithConfiguration:(id)a3;
- (id)_source;
- (void)_displayBanner;
- (void)bannerSourceDidInvalidate:(id)a3;
@end

@implementation PKBannerPresentationManager

- (id)_source
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = [MEMORY[0x1E698E580] bannerSourceForDestination:*(a1 + 8) forRequesterIdentifier:*(a1 + 24)];
    v4 = *(a1 + 32);
    *(a1 + 32) = v3;

    [*(a1 + 32) setDelegate:a1];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 32);
      v9 = 134218240;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKBannerPresentationManager (%lld): source created %p.", &v9, 0x16u);
    }

    v2 = *(a1 + 32);
  }

  return v2;
}

+ (id)_managerForDestination:(int64_t)a3 withProvider:(id)a4
{
  v5 = a4;
  if (a3 || !v5)
  {
    __break(1u);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PKBannerPresentationManager__managerForDestination_withProvider___block_invoke;
    block[3] = &unk_1E80119C8;
    v19 = 0;
    a3 = v5;
    v18 = a3;
    if (_MergedGlobals_608 == -1)
    {
      goto LABEL_4;
    }
  }

  dispatch_once(&_MergedGlobals_608, block);
LABEL_4:
  if (!qword_1EBD6AD70)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = [qword_1EBD6AD70 provider];

  if (v6 == a3)
  {
    v7 = qword_1EBD6AD70;
LABEL_8:
    v8 = v7;

    return v8;
  }

  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [qword_1EBD6AD70 provider];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v10 raise:v11 format:{@"PKBannerPresentationManager: cannot register provider %@ for destination %ld - already registered provider %@ previously.", v13, 0, v16}];

  __break(1u);
  return result;
}

void __67__PKBannerPresentationManager__managerForDestination_withProvider___block_invoke(uint64_t a1)
{
  v2 = [PKBannerPresentationManager alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v3;
  if (v2)
  {
    v12.receiver = v2;
    v12.super_class = PKBannerPresentationManager;
    v6 = objc_msgSendSuper2(&v12, sel_init);
    v2 = v6;
    if (v6)
    {
      v6->_destination = v4;
      objc_storeStrong(&v6->_provider, v3);
      v7 = [MEMORY[0x1E696AAE8] mainBundle];
      v8 = [v7 bundleIdentifier];
      v9 = [v8 copy];
      requesterIdentifier = v2->_requesterIdentifier;
      v2->_requesterIdentifier = v9;
    }
  }

  v11 = qword_1EBD6AD70;
  qword_1EBD6AD70 = v2;
}

- (id)_createPresentableWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [PKBannerPresentable alloc];
  v6 = self;
  result = v4;
  v8 = result;
  if (!v5)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    v20.receiver = v5;
    v20.super_class = PKBannerPresentable;
    v9 = [(PKBannerPresentationManager *)&v20 init];
    v5 = v9;
    if (v9)
    {
      v9->_destination = v6;
      v10 = [v8 factory];
      factory = v5->_factory;
      v5->_factory = v10;

      v12 = [v8 didStartHandler];
      didStartHandler = v5->_didStartHandler;
      v5->_didStartHandler = v12;

      v14 = [v8 didFinishHandler];
      didFinishHandler = v5->_didFinishHandler;
      v5->_didFinishHandler = v14;

      v16 = [MEMORY[0x1E696AFB0] UUID];
      v17 = [v16 UUIDString];
      v18 = [v17 copy];
      requestIdentifier = v5->_requestIdentifier;
      v5->_requestIdentifier = v18;
    }

LABEL_5:

    return v5;
  }

  __break(1u);
  return result;
}

- (void)_displayBanner
{
  v71 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[5];
    v3 = a1[2];
    if (v2)
    {
      if (![v3 shouldRevokeCurrentRequestForManager:a1])
      {
        return;
      }

      v4 = a1[5];
      if (v4)
      {
        v5 = *(v4 + 8);
      }

      else
      {
        v5 = 0;
      }

      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[1];
        *buf = 134218240;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = v5;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKBannerPresentationManager (%lld): revoking current presentable %p as requested by provider.", buf, 0x16u);
      }

      [v5 revoke];
      goto LABEL_62;
    }

    v8 = [v3 nextRequestForManager:a1];
    v9 = a1[5];
    a1[5] = v8;

    v10 = a1[5];
    if (!v10)
    {
      return;
    }

    v11 = *(v10 + 8);
    if (!v11 || (v5 = v11, *(v11 + 1) != a1))
    {
      __break(1u);
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v56 = __45__PKBannerPresentationManager__displayBanner__block_invoke;
    v57 = &unk_1E80220F8;
    v58 = a1;
    v12 = v55;
    if ((*(v5 + 24) & 1) != 0 || *(v5 + 25) == 1)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v5;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): error - reused presentable.", buf, 0xCu);
      }

      (v56)(v12, v5, 0);
      goto LABEL_61;
    }

    *(v5 + 24) = 1;
    v14 = _Block_copy(*(v5 + 7));
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __43__PKBannerPresentable__postWithCompletion___block_invoke;
    v68 = &unk_1E80220D0;
    v15 = v14;
    v69 = v15;
    v70 = v12;
    v16 = _Block_copy(buf);
    v17 = *(v5 + 7);
    *(v5 + 7) = v16;

    v18 = [(PKBannerPresentationManager *)*(v5 + 1) _source];
    v19 = *(v5 + 4);
    if (!v19)
    {
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 134217984;
        v64 = v5;
        _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): error - missing view controller factory.", v63, 0xCu);
      }

      v22 = 0;
LABEL_30:

      v30 = *(v5 + 5);
      if (v30)
      {
        [v22 presentationSize];
        v32 = v31;
        v34 = v33;
        [v22 containerSize];
        [v30 preferredContentSizeWithPresentationSize:v32 containerSize:{v34, v35, v36}];
        v38 = v37;
        v40 = v39;
        [*(v5 + 5) preferredContentSize];
        v42 = v41;
        v44 = v43;
        v45 = PKLogFacilityTypeGetObject();
        v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG);
        if (v42 == v38 && v44 == v40)
        {
          if (v46)
          {
            v74.width = v42;
            v74.height = v44;
            v54 = NSStringFromCGSize(v74);
            *v63 = 134218242;
            v64 = v5;
            v65 = 2112;
            v66 = v54;
            _os_log_debug_impl(&dword_1BD026000, v45, OS_LOG_TYPE_DEBUG, "PKBannerPresentable (%p): using existing preferred content size - %@.", v63, 0x16u);
          }
        }

        else
        {
          if (v46)
          {
            v73.width = v38;
            v73.height = v40;
            v53 = NSStringFromCGSize(v73);
            *v63 = 134218242;
            v64 = v5;
            v65 = 2112;
            v66 = v53;
            _os_log_debug_impl(&dword_1BD026000, v45, OS_LOG_TYPE_DEBUG, "PKBannerPresentable (%p): overriding preferred content size - %@.", v63, 0x16u);
          }

          [*(v5 + 5) setPreferredContentSize:{v38, v40}];
        }

        [*(v5 + 5) setPresentable:v5];
        if (*(v5 + 25) == 1)
        {
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *v63 = 134217984;
            v64 = v5;
            _os_log_impl(&dword_1BD026000, v45, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): revoked before posting.", v63, 0xCu);
          }

          goto LABEL_60;
        }

        if (v38 > 0.0 && v40 > 0.0 || (SBSIsSystemApertureAvailable() & 1) != 0)
        {
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(v5 + 5);
            *v63 = 134218240;
            v64 = v5;
            v65 = 2048;
            v66 = v47;
            _os_log_impl(&dword_1BD026000, v45, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): posting with %p...", v63, 0x16u);
          }

          v61 = *MEMORY[0x1E69D45D0];
          v62 = MEMORY[0x1E695E118];
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v59 = 0;
          v49 = [v18 postPresentable:v5 options:1 userInfo:v48 error:&v59];
          v50 = v59;

          v51 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
          if (v49)
          {
            if (v51)
            {
              *v63 = 134217984;
              v64 = v5;
              _os_log_impl(&dword_1BD026000, v45, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): posted.", v63, 0xCu);
            }

            *(v5 + 26) = 1;
          }

          else
          {
            if (v51)
            {
              *v63 = 134218242;
              v64 = v5;
              v65 = 2112;
              v66 = v50;
              _os_log_impl(&dword_1BD026000, v45, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): failed to post - %@.", v63, 0x16u);
            }

            [(PKBannerPresentable *)v5 _revoke];
          }

          goto LABEL_60;
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v72.width = v38;
          v72.height = v40;
          v52 = NSStringFromCGSize(v72);
          *v63 = 134218242;
          v64 = v5;
          v65 = 2112;
          v66 = v52;
          _os_log_impl(&dword_1BD026000, v45, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): invalid size %@ requested.", v63, 0x16u);
        }
      }

      [(PKBannerPresentable *)v5 _revoke];
LABEL_60:

LABEL_61:
LABEL_62:

      return;
    }

    v20 = _Block_copy(v19);
    v21 = *(v5 + 4);
    *(v5 + 4) = 0;

    v60 = 0;
    v22 = [v18 layoutDescriptionWithError:&v60];
    v23 = v60;
    if (v22)
    {
      v24 = (*(v20 + 16))(v20, [v18 destination], v22);
      v25 = *(v5 + 5);
      *(v5 + 5) = v24;

      if (*(v5 + 5))
      {
LABEL_29:

        goto LABEL_30;
      }

      v26 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 134217984;
        v64 = v5;
        v27 = "PKBannerPresentable (%p): error - missing view controller.";
        v28 = v26;
        v29 = 12;
LABEL_27:
        _os_log_impl(&dword_1BD026000, v28, OS_LOG_TYPE_DEFAULT, v27, v63, v29);
      }
    }

    else
    {
      v26 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 134218242;
        v64 = v5;
        v65 = 2112;
        v66 = v23;
        v27 = "PKBannerPresentable (%p): error - missing layout description - %@.";
        v28 = v26;
        v29 = 22;
        goto LABEL_27;
      }
    }

    goto LABEL_29;
  }
}

uint64_t __45__PKBannerPresentationManager__displayBanner__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [(PKBannerPresentationManager *)v4 _displayBanner];
}

- (void)bannerSourceDidInvalidate:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    destination = self->_destination;
    *buf = 134217984;
    v8 = destination;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKBannerPresentationManager (%lld): source invalidated.", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKBannerPresentationManager_bannerSourceDidInvalidate___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__PKBannerPresentationManager_bannerSourceDidInvalidate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(*(a1 + 32) + 40);
  if (v4)
  {
    v5 = *(v4 + 8);

    [(PKBannerPresentable *)v5 _revoke];
  }
}

@end