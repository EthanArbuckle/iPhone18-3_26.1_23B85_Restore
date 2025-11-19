@interface UIKBEventDeferralPolicyAssistant
@end

@implementation UIKBEventDeferralPolicyAssistant

void __75___UIKBEventDeferralPolicyAssistant__handleObserverDeliveryPolicyDidChange__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained keyWindowIsDeferringTarget];
  v3 = [WeakRetained keyWindowIsAncestorOfDeferringTarget];
  if (WeakRetained)
  {
    v4 = [WeakRetained eventDeferralPolicyObserver];
    if (v4 && (v5 = v4, [WeakRetained eventDeferralPolicyObserver], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "deferringToken"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v7))
    {
      v8 = [WeakRetained eventDeferralPolicyObserver];
      [WeakRetained setKeyWindowIsDeferringTarget:{objc_msgSend(v8, "policyStatus") == 2}];

      v9 = [WeakRetained eventDeferralPolicyObserver];
      [WeakRetained setKeyWindowIsAncestorOfDeferringTarget:{objc_msgSend(v9, "policyStatus") == 1}];
    }

    else
    {
      [WeakRetained setKeyWindowIsDeferringTarget:0];
      [WeakRetained setKeyWindowIsAncestorOfDeferringTarget:0];
    }
  }

  v10 = [WeakRetained keyWindowIsDeferringTarget];
  v11 = [WeakRetained keyWindowIsAncestorOfDeferringTarget];
  v12 = _UIKBEventDeferralPolicyAssistantLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v13 = "Y";
    }

    else
    {
      v13 = "N";
    }

    if (v10)
    {
      v14 = "Y";
    }

    else
    {
      v14 = "N";
    }

    if (v3)
    {
      v15 = "Y";
    }

    else
    {
      v15 = "N";
    }

    if (v11)
    {
      v16 = "Y";
    }

    else
    {
      v16 = "N";
    }

    v17 = [WeakRetained eventDeferralPolicyObserver];
    v18 = [v17 deferringToken];
    v38 = 136316162;
    v39 = v13;
    v40 = 2080;
    v41 = v14;
    v42 = 2080;
    v43 = v15;
    v44 = 2080;
    v45 = v16;
    v46 = 2114;
    v47 = v18;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Event deferring policy changed: target:%s -> %s, ancestor:%s -> %s (token: %{public}@)", &v38, 0x34u);
  }

  if (WeakRetained && v2 != v10)
  {
    v19 = [WeakRetained reloadInputViewTask];
    [WeakRetained setReloadInputViewTask:0];
    v20 = [WeakRetained keyboardSceneDelegate];
    v21 = v20;
    if (v19 && v20)
    {
      v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v23 = [WeakRetained keyboardSceneDelegate];

      v24 = [WeakRetained keyWindowIsDeferringTarget];
      v25 = [v19 responder];
      v26 = _UIKBEventDeferralPolicyAssistantLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v35 = "Y";
        if (v22 == v23)
        {
          v36 = "Y";
        }

        else
        {
          v36 = "N";
        }

        if (v24)
        {
          v37 = "Y";
        }

        else
        {
          v37 = "N";
        }

        v38 = 136315650;
        v39 = v36;
        v40 = 2080;
        v41 = v37;
        if (!v25)
        {
          v35 = "N";
        }

        v42 = 2080;
        v43 = v35;
        _os_log_debug_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEBUG, "Key window isDeferringTarget did change with reloadInputViewTask (scene isActive:%s, keyWindow isDeferringTarget:%s hasResponder:%s)", &v38, 0x20u);
      }

      if (v22 == v23 && ((v24 ^ 1) & 1) == 0 && v25)
      {
        v27 = [v19 force];
        v28 = [v19 fromBecomeFirstResponder];
        v29 = _UIKBEventDeferralPolicyAssistantLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = v31;
          v33 = "N";
          v38 = 138544131;
          v40 = 2049;
          if (v27)
          {
            v34 = "Y";
          }

          else
          {
            v34 = "N";
          }

          v39 = v31;
          v41 = v25;
          if (v28)
          {
            v33 = "Y";
          }

          v42 = 2080;
          v43 = v34;
          v44 = 2080;
          v45 = v33;
          _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEFAULT, "Run reload task for become event deferring target (responder:<%{public}@: %{private}p>, force:%s, fromBFR:%s)", &v38, 0x2Au);
        }

        [v21 _reloadInputViewsForResponder:v25 force:v27 fromBecomeFirstResponder:v28];
      }
    }
  }
}

@end