@interface PSURLControllerHandler
- (PSURLControllerHandlerDelegate)delegate;
- (void)_performCompletionAfterActiveTransitionCompletes:(id)a3;
- (void)_performScrollingAndHighlightingOperationsOnController:(id)a3 withOffset:(id)a4 scrollTargetIdentifier:(id)a5;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
@end

@implementation PSURLControllerHandler

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v140 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PSURLControllerHandler *)self delegate];
    *buf = 136446978;
    v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
    v131 = 2160;
    v132 = 1752392040;
    v133 = 2112;
    v134 = v6;
    v135 = 2112;
    *v136 = v9;
    _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: resourceDictionary: %{mask.hash}@, delegate: %@", buf, 0x2Au);
  }

  if (!_applicationStateProvider)
  {
    v11 = PKLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
      _os_log_impl(&dword_18B008000, v11, OS_LOG_TYPE_INFO, "%{public}s: State provider not set, continuing.", buf, 0xCu);
    }

LABEL_12:

    v15 = [(PSURLControllerHandler *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = PKLogForCategory(5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(PSURLControllerHandler *)self delegate];
        v19 = NSStringFromSelector(sel_handleURL_);
        *buf = 136446978;
        v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
        v131 = 2160;
        v132 = 1752392040;
        v133 = 2112;
        v134 = v18;
        v135 = 2114;
        *v136 = v19;
        _os_log_impl(&dword_18B008000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate '%{mask.hash}@' implements %{public}@.", buf, 0x2Au);
      }

      v20 = [(PSURLControllerHandler *)self delegate];
      [v20 handleURL:v6];
    }

    v11 = [v6 objectForKey:@"path"];
    v21 = MEMORY[0x1E695DF70];
    v22 = [v11 pathComponents];
    v23 = [v21 arrayWithArray:v22];

    if (![v23 count])
    {
      v67 = PKLogForCategory(5);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = [(PSURLControllerHandler *)self delegate];
        *buf = 136446722;
        v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
        v131 = 2160;
        v132 = 1752392040;
        v133 = 2112;
        v134 = v68;
        _os_log_impl(&dword_18B008000, v67, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate '%{mask.hash}@' no path components to process calling completion if set and bailing.", buf, 0x20u);
      }

      [(PSURLControllerHandler *)self _performCompletionAfterActiveTransitionCompletes:v7];
      v69 = [v6 objectForKeyedSubscript:@"pptTestName"];
      if (!v69)
      {
        goto LABEL_117;
      }

      v70 = [(PSURLControllerHandler *)self delegate];
      v71 = objc_opt_respondsToSelector();

      if ((v71 & 1) == 0)
      {
        goto LABEL_117;
      }

      v72 = [(PSURLControllerHandler *)self delegate];
      [v72 handleScrollPPTTestName:v69];
LABEL_116:

LABEL_117:
      goto LABEL_118;
    }

    v24 = [v23 objectAtIndexedSubscript:0];
    v25 = 0;
    v26 = 0;
    if ([v23 count] >= 2)
    {
      v26 = [v23 objectAtIndexedSubscript:1];
      v27 = SFObjectAndOffsetForURLPair();
      v25 = [v27 objectForKeyedSubscript:@"object"];
    }

    v125 = v26;
    v126 = v25;
    [v23 removeObjectAtIndex:0];
    v124 = v24;
    v28 = SFObjectAndOffsetForURLPair();
    v29 = [v28 objectForKey:@"object"];
    v30 = [v28 objectForKey:@"offsetValue"];
    [v30 floatValue];
    v32 = v31;

    v123 = v28;
    v127 = [v28 objectForKey:@"offsetItem"];
    v33 = [(PSURLControllerHandler *)self delegate];
    v122 = v29;
    v34 = [v33 specifierForID:v29];

    v35 = [v6 objectForKeyedSubscript:@"animate"];
    v121 = [v35 BOOLValue];

    if (!v34 || ([v34 propertyForKey:@"enabled"], (v36 = objc_claimAutoreleasedReturnValue()) != 0) && (v37 = v36, objc_msgSend(v34, "propertyForKey:", @"enabled"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "BOOLValue"), v38, v37, !v39))
    {
      v73 = PKLogForCategory(5);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
        v131 = 2160;
        v132 = 1752392040;
        v133 = 2112;
        v134 = v34;
        _os_log_impl(&dword_18B008000, v73, OS_LOG_TYPE_DEFAULT, "%{public}s: Specifier %{mask.hash}@ cannot handle URL (either nil or disabled), calling completion and bailing.", buf, 0x20u);
      }

      objc_opt_class();
      v74 = [(PSURLControllerHandler *)self delegate];
      if (objc_opt_isKindOfClass())
      {
        v75 = v74;
      }

      else
      {
        v75 = 0;
      }

      v47 = v75;

      v76 = v127;
      if (v127)
      {
        v77 = 0;
      }

      else
      {
        v77 = v32 == 0.0;
      }

      if (!v77 && v47)
      {
        v78 = PKLogForCategory(5);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
          _os_log_impl(&dword_18B008000, v78, OS_LOG_TYPE_DEFAULT, "%{public}s: delegate has pending scroll/highlight operation to perform.", buf, 0xCu);
        }

        if (v32 == 0.0)
        {
          [(PSURLControllerHandler *)self _performScrollingAndHighlightingOperationsOnController:v47 withOffset:0 scrollTargetIdentifier:v127];
        }

        else
        {
          *&v79 = v32;
          v80 = [MEMORY[0x1E696AD98] numberWithFloat:v79];
          [(PSURLControllerHandler *)self _performScrollingAndHighlightingOperationsOnController:v47 withOffset:v80 scrollTargetIdentifier:v127];
        }
      }

      [(PSURLControllerHandler *)self _performCompletionAfterActiveTransitionCompletes:v7];
      goto LABEL_115;
    }

    WeakRetained = objc_loadWeakRetained(v34 + 1);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v42 = PKLogForCategory(5);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 136446978;
        v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
        v131 = 2160;
        v132 = 1752392040;
        v133 = 2112;
        v134 = v34;
        v135 = 2114;
        *v136 = v44;
        _os_log_impl(&dword_18B008000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s: Specifier %{mask.hash}@ has target that is a %{public}@, calling load.", buf, 0x2Au);
      }

      v45 = objc_loadWeakRetained(v34 + 1);
      [v45 load];
    }

    v46 = [(PSURLControllerHandler *)self delegate];
    v47 = [v46 selectSpecifier:v34];

    [v47 loadViewIfNeeded];
    v48 = PKLogForCategory(5);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [(PSURLControllerHandler *)self delegate];
      *buf = 136447746;
      v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
      v131 = 2160;
      v132 = 1752392040;
      v133 = 2112;
      v134 = v49;
      v135 = 2160;
      *v136 = 1752392040;
      *&v136[8] = 2112;
      *&v136[10] = v47;
      *&v136[18] = 2160;
      *&v136[20] = 1752392040;
      *&v136[28] = 2112;
      *&v136[30] = v34;
      _os_log_impl(&dword_18B008000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate '%{mask.hash}@' returned target controller %{mask.hash}@ for specifier %{mask.hash}@", buf, 0x48u);
    }

    objc_opt_class();
    v50 = [(PSURLControllerHandler *)self delegate];
    if (objc_opt_isKindOfClass())
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;

    v120 = v52;
    if ([v52 isURLHandlingDeferredForViewControllerContainment] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v53 = PKLogForCategory(5);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v112 = [(PSURLControllerHandler *)self delegate];
        v117 = NSStringFromSelector(sel_isURLHandlingDeferredForViewControllerContainment);
        *buf = 136447490;
        v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
        v131 = 2160;
        v132 = 1752392040;
        v133 = 2112;
        v134 = v112;
        v135 = 2114;
        *v136 = v117;
        *&v136[8] = 2160;
        *&v136[10] = 1752392040;
        *&v136[18] = 2112;
        *&v136[20] = v47;
        _os_log_impl(&dword_18B008000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate '%{mask.hash}@' has %{public}@ set, setting on target controller %{mask.hash}@.", buf, 0x3Eu);
      }

      [v47 setUrlHandlingDeferredForViewControllerContainment:{objc_msgSend(v52, "isURLHandlingDeferredForViewControllerContainment")}];
    }

    if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v34 setProperty:v6 forKey:@"URLDictionary"];
      objc_opt_class();
      v118 = objc_opt_isKindOfClass();
      if ((v118 & 1) == 0)
      {
        v54 = PKLogForCategory(5);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = objc_opt_class();
          v113 = [(PSURLControllerHandler *)self delegate];
          v56 = [v113 rootController];
          *buf = 136447490;
          v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
          v131 = 2160;
          v132 = 1752392040;
          v133 = 2112;
          v134 = v47;
          v135 = 2114;
          *v136 = v55;
          *&v136[8] = 2160;
          *&v136[10] = 1752392040;
          *&v136[18] = 2112;
          *&v136[20] = v56;
          _os_log_impl(&dword_18B008000, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: Target controller %{mask.hash}@ is not a %{public}@, setting rootController to %{mask.hash}@.", buf, 0x3Eu);
        }

        v57 = [(PSURLControllerHandler *)self delegate];
        v58 = [v57 rootController];
        [v47 setRootController:v58];
      }

      v59 = [(PSURLControllerHandler *)self delegate];
      v60 = objc_opt_respondsToSelector();

      if (v60)
      {
        v61 = PKLogForCategory(5);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v114 = NSStringFromSelector(sel_isShowingSetupController);
          v62 = [(PSURLControllerHandler *)self delegate];
          *buf = 136447234;
          v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
          v131 = 2114;
          v132 = v114;
          v133 = 2160;
          v134 = 1752392040;
          v135 = 2112;
          *v136 = v62;
          v63 = v62;
          *&v136[8] = 1024;
          *&v136[10] = v118 & 1;
          _os_log_impl(&dword_18B008000, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting %{public}@ on delegate %{mask.hash}@ to %{BOOL}d.", buf, 0x30u);
        }

        v64 = [(PSURLControllerHandler *)self delegate];
        [v64 setShowingSetupController:v118 & 1];
      }

      v65 = [v6 objectForKeyedSubscript:@"fromSearch"];
      if ([v65 BOOLValue])
      {

        goto LABEL_76;
      }

      v83 = [v47 canBeShownFromSuspendedState];

      if (v83)
      {
LABEL_76:
        if (v32 == 0.0)
        {
          if (v127)
          {
            v86 = v127;
          }

          else
          {
            v86 = v126;
          }

          [(PSURLControllerHandler *)self _performScrollingAndHighlightingOperationsOnController:v47 withOffset:0 scrollTargetIdentifier:v86];
        }

        else
        {
          *&v66 = v32;
          v84 = [MEMORY[0x1E696AD98] numberWithFloat:v66];
          if (v127)
          {
            v85 = v127;
          }

          else
          {
            v85 = v126;
          }

          [(PSURLControllerHandler *)self _performScrollingAndHighlightingOperationsOnController:v47 withOffset:v84 scrollTargetIdentifier:v85];
        }

        v87 = [(PSURLControllerHandler *)self delegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v88 = [(PSURLControllerHandler *)self delegate];
          v89 = [v88 conformsToProtocol:&unk_1EFE6C730];

          if (!v89)
          {
            goto LABEL_91;
          }

          v90 = PKLogForCategory(5);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            v91 = [(PSURLControllerHandler *)self delegate];
            *buf = 136447234;
            v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
            v131 = 2160;
            v132 = 1752392040;
            v133 = 2112;
            v134 = v91;
            v135 = 2160;
            *v136 = 1752392040;
            *&v136[8] = 2112;
            *&v136[10] = v47;
            _os_log_impl(&dword_18B008000, v90, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting delegate %{mask.hash}@ as parentController for target controller %{mask.hash}@.", buf, 0x34u);
          }

          v87 = [(PSURLControllerHandler *)self delegate];
          [v47 setParentController:v87];
        }

LABEL_91:
        [v47 setSpecifier:v34];
        v92 = [MEMORY[0x1E696AEC0] pathWithComponents:v23];

        v119 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
        [v119 setObject:v92 forKey:@"path"];
        v128 = 0;
        if ([v23 count] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v110 = v92;
          v93 = PKLogForCategory(5);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            v94 = NSStringFromSelector(sel_prepareHandlingURLForSpecifierID_resourceDictionary_animatePush_);
            *buf = 136446978;
            v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
            v131 = 2160;
            v132 = 1752392040;
            v133 = 2112;
            v134 = v47;
            v135 = 2114;
            *v136 = v94;
            _os_log_impl(&dword_18B008000, v93, OS_LOG_TYPE_DEFAULT, "%{public}s: Target controller %{mask.hash}@ responds to %{public}@", buf, 0x2Au);
          }

          v95 = SFObjectAndOffsetForURLPair();
          v96 = [v95 objectForKeyedSubscript:@"object"];
          if (v96)
          {
            v115 = v95;
            v97 = v96;
            v98 = [v47 prepareHandlingURLForSpecifierID:v96 resourceDictionary:v119 animatePush:&v128 withCompletion:v7] ^ 1;
            v99 = PKLogForCategory(5);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
            {
              NSStringFromSelector(sel_prepareHandlingURLForSpecifierID_resourceDictionary_animatePush_);
              v101 = v100 = v98;
              *buf = 136447746;
              v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
              v131 = 2160;
              v132 = 1752392040;
              v133 = 2112;
              v134 = v47;
              v135 = 1024;
              *v136 = v100;
              *&v136[4] = 2114;
              *&v136[6] = v101;
              *&v136[14] = 2160;
              *&v136[16] = 1752392040;
              *&v136[24] = 2112;
              *&v136[26] = v97;
              _os_log_impl(&dword_18B008000, v99, OS_LOG_TYPE_DEFAULT, "%{public}s: Target controller %{mask.hash}@ returned %{BOOL}d from %{public}@ for specifier identifier %{mask.hash}@", buf, 0x44u);

              v98 = v100;
            }

            v95 = v115;
            v96 = v97;
          }

          else
          {
            v98 = 0;
          }

          v116 = v98;
          v102 = v128 & v98;
          v76 = v127;
          v92 = v110;
        }

        else
        {
          v102 = 0;
          v116 = 0;
          v76 = v127;
        }

        if ((v102 & 1) == 0 && ((v121 ^ 1) & 1) == 0)
        {
          v102 = [v23 count] == 0;
        }

        v103 = PKLogForCategory(5);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          [(PSURLControllerHandler *)self delegate];
          v104 = v111 = v92;
          v109 = v128;
          v105 = [v23 count];
          *buf = 136448514;
          v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
          v131 = 2160;
          v132 = 1752392040;
          v133 = 2112;
          v134 = v104;
          v135 = 2160;
          *v136 = 1752392040;
          *&v136[8] = 2112;
          *&v136[10] = v47;
          *&v136[18] = 1024;
          *&v136[20] = v102 & 1;
          v76 = v127;
          *&v136[24] = 1024;
          *&v136[26] = v109;
          *&v136[30] = 1024;
          *&v136[32] = v116;
          *&v136[36] = 1024;
          v137 = v121;
          v138 = 1024;
          v139 = v105 == 0;
          _os_log_impl(&dword_18B008000, v103, OS_LOG_TYPE_DEFAULT, "%{public}s: Requesting delegate %{mask.hash}@ show target controller %{mask.hash}@ with animation resolved to %{BOOL}d ((controllerWantsAnimation: %{BOOL}d && deferHandleURL: %{BOOL}d) || (animate: %{BOOL}d && pathComponents.count == 0: %{BOOL}d))", buf, 0x52u);

          v92 = v111;
        }

        v106 = [(PSURLControllerHandler *)self delegate];
        [v106 showController:v47 animate:v102 & 1];

        if ((v116 & 1) == 0)
        {
          v107 = PKLogForCategory(5);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = NSStringFromSelector(sel_handleURL_withCompletion_);
            *buf = 136447490;
            v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
            v131 = 2114;
            v132 = v108;
            v133 = 2160;
            v134 = 1752392040;
            v135 = 2112;
            *v136 = v47;
            *&v136[8] = 2160;
            *&v136[10] = 1752392040;
            *&v136[18] = 2112;
            *&v136[20] = v119;
            _os_log_impl(&dword_18B008000, v107, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling %{public}@ on target controller %{mask.hash}@ with new resource dictionary %{mask.hash}@", buf, 0x3Eu);
          }

          [v47 handleURL:v119 withCompletion:v7];
        }

        v11 = v92;
        goto LABEL_114;
      }

      v81 = PKLogForCategory(5);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
        v131 = 2160;
        v132 = 1752392040;
        v133 = 2112;
        v134 = v47;
        _os_log_impl(&dword_18B008000, v81, OS_LOG_TYPE_DEFAULT, "%{public}s: Target controller %{mask.hash}@ cannot be shown from suspended state, calling completion if set and bailing.", buf, 0x20u);
      }
    }

    else
    {
      v81 = PKLogForCategory(5);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = [(PSURLControllerHandler *)self delegate];
        *buf = 136447746;
        v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
        v131 = 2160;
        v132 = 1752392040;
        v133 = 2112;
        v134 = v82;
        v135 = 2160;
        *v136 = 1752392040;
        *&v136[8] = 2112;
        *&v136[10] = v47;
        *&v136[18] = 2160;
        *&v136[20] = 1752392040;
        *&v136[28] = 2112;
        *&v136[30] = v34;
        _os_log_impl(&dword_18B008000, v81, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate '%{mask.hash}@' returned %{mask.hash}@ for specifier %{mask.hash}@ which is not a UIViewController class, calling completion if set and bailing.", buf, 0x48u);
      }
    }

    [(PSURLControllerHandler *)self _performCompletionAfterActiveTransitionCompletes:v7];
    v76 = v127;
LABEL_114:

LABEL_115:
    v69 = v124;
    v72 = v125;
    goto LABEL_116;
  }

  v10 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v10 = v6;
  }

  v11 = v10;
  v12 = [_applicationStateProvider shouldContinueActiveURLRoutingForURLResourceDictionary:v11];
  v13 = PKLogForCategory(5);
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136447234;
      v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
      v131 = 2160;
      v132 = 1752392040;
      v133 = 2112;
      v134 = _applicationStateProvider;
      v135 = 2160;
      *v136 = 1752392040;
      *&v136[8] = 2112;
      *&v136[10] = v6;
      _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_INFO, "%{public}s: State provider '%{mask.hash}@' has indicated URL routing should continue for URL resource dictionary %{mask.hash}@.", buf, 0x34u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v130 = "[PSURLControllerHandler handleURL:withCompletion:]";
    v131 = 2160;
    v132 = 1752392040;
    v133 = 2112;
    v134 = _applicationStateProvider;
    v135 = 2160;
    *v136 = 1752392040;
    *&v136[8] = 2112;
    *&v136[10] = v6;
    _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: State provider '%{mask.hash}@' has indicated URL routing should stop for URL resource dictionary %{mask.hash}@. Calling completion handler if set and bailing.", buf, 0x34u);
  }

  [(PSURLControllerHandler *)self _performCompletionAfterActiveTransitionCompletes:v7];
LABEL_118:
}

- (void)_performCompletionAfterActiveTransitionCompletes:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v5 = [(PSURLControllerHandler *)self delegate];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PSURLControllerHandler__performCompletionAfterActiveTransitionCompletes___block_invoke;
  aBlock[3] = &unk_1E71DC0D8;
  v8 = v4;
  v17 = v8;
  v9 = _Block_copy(aBlock);
  if (v7)
  {
    v10 = [v7 navigationController];
    v11 = [v10 transitionCoordinator];

    if (v11)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __75__PSURLControllerHandler__performCompletionAfterActiveTransitionCompletes___block_invoke_3;
      v14[3] = &unk_1E71DECA0;
      v15 = v9;
      [v11 animateAlongsideTransition:&__block_literal_global_33 completion:v14];
    }

    else
    {
      v13 = PKLogForCategory(5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v19 = "[PSURLControllerHandler _performCompletionAfterActiveTransitionCompletes:]";
        _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling Completion Handler (no active transition).", buf, 0xCu);
      }

      v9[2](v9);
    }
  }

  else
  {
    v12 = PKLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = "[PSURLControllerHandler _performCompletionAfterActiveTransitionCompletes:]";
      _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling Completion Handler (delegate not a View Controller).", buf, 0xCu);
    }

    v9[2](v9);
  }
}

uint64_t __75__PSURLControllerHandler__performCompletionAfterActiveTransitionCompletes___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __75__PSURLControllerHandler__performCompletionAfterActiveTransitionCompletes___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[PSURLControllerHandler _performCompletionAfterActiveTransitionCompletes:]_block_invoke_3";
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling Completion Handler (after transition complete).", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_performScrollingAndHighlightingOperationsOnController:(id)a3 withOffset:(id)a4 scrollTargetIdentifier:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = &unk_1EFE6EBF8;
  if ([v7 conformsToProtocol:v10])
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    if (v8)
    {
      v13 = PKLogForCategory(5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136446978;
        v21 = "[PSURLControllerHandler _performScrollingAndHighlightingOperationsOnController:withOffset:scrollTargetIdentifier:]";
        v22 = 2114;
        v23 = v8;
        v24 = 2160;
        v25 = 1752392040;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting scrollOffset to %{public}@ on Target controller %{mask.hash}@.", &v20, 0x2Au);
      }

      [v8 floatValue];
      [v12 setDesiredVerticalContentOffset:?];
    }

    else
    {
      v14 = [v9 length];
      v15 = PKLogForCategory(5);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v16)
        {
          v20 = 136447234;
          v21 = "[PSURLControllerHandler _performScrollingAndHighlightingOperationsOnController:withOffset:scrollTargetIdentifier:]";
          v22 = 2160;
          v23 = 1752392040;
          v24 = 2112;
          v25 = v9;
          v26 = 2160;
          v27 = 1752392040;
          v28 = 2112;
          v29 = v12;
          _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting scrollTarget to %{mask.hash}@ on Target controller %{mask.hash}@.", &v20, 0x34u);
        }

        [v12 setDesiredVerticalContentOffsetItemNamed:v9];
      }

      else
      {
        if (v16)
        {
          v20 = 136446722;
          v21 = "[PSURLControllerHandler _performScrollingAndHighlightingOperationsOnController:withOffset:scrollTargetIdentifier:]";
          v22 = 2160;
          v23 = 1752392040;
          v24 = 2112;
          v25 = v12;
          _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: No offset to set on Target controller %{mask.hash}@.", &v20, 0x20u);
        }
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v9 length];
    v18 = PKLogForCategory(5);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = 136447234;
        v21 = "[PSURLControllerHandler _performScrollingAndHighlightingOperationsOnController:withOffset:scrollTargetIdentifier:]";
        v22 = 2160;
        v23 = 1752392040;
        v24 = 2112;
        v25 = v9;
        v26 = 2160;
        v27 = 1752392040;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_18B008000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting highlight target to %{mask.hash}@ on Target controller %{mask.hash}@.", &v20, 0x34u);
      }

      [v7 highlightSpecifierWithID:v9];
    }

    else
    {
      if (v19)
      {
        v20 = 136446722;
        v21 = "[PSURLControllerHandler _performScrollingAndHighlightingOperationsOnController:withOffset:scrollTargetIdentifier:]";
        v22 = 2160;
        v23 = 1752392040;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_18B008000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: No highlight target to set on Target controller %{mask.hash}@.", &v20, 0x20u);
      }
    }
  }
}

- (PSURLControllerHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end