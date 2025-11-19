@interface UIMailActivity
+ (unint64_t)_xpcAttributes;
- ($7D24B5AD5894795FD85A0EE1D817D743)_checkCanSendMail;
- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)_isHTML:(id)a3;
- (BOOL)_managesOwnPresentation;
- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)_restoreDraft;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (BOOL)canShareURLThroughMail:(id)a3;
- (UIMailActivity)init;
- (id)_backgroundPreheatBlock;
- (id)_bundleIdentifierForActivityImageCreation;
- (id)_mailDraftRestorationURL;
- (id)_stateRestorationDraftIsAvailable;
- (id)activityTitle;
- (void)_cleanup;
- (void)_deleteMailDraftIdentifierRestorationArchive:(id)a3;
- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4;
- (void)_saveDraft:(id)a3;
- (void)autosaveWithHandler:(id)a3;
- (void)dealloc;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)prepareWithActivityItems:(id)a3;
- (void)setSubject:(id)a3;
@end

@implementation UIMailActivity

void __22__UIMailActivity_init__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DC668];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AEC0];
  v5 = [v2 activityType];
  v4 = [v3 stringWithFormat:@"_$_%@_Restoration_$_", v5];
  [v1 registerObjectForStateRestoration:v2 restorationIdentifier:v4];
}

- (UIMailActivity)init
{
  v7.receiver = self;
  v7.super_class = UIMailActivity;
  v2 = [(UIActivity *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_canSendMailLock._os_unfair_lock_opaque = 0;
    v2->_canSendMailChecked = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __22__UIMailActivity_init__block_invoke;
    v5[3] = &unk_1E71F9510;
    v6 = v2;
    sh_dispatch_on_main_queue(v5);
  }

  return v3;
}

- ($7D24B5AD5894795FD85A0EE1D817D743)_checkCanSendMail
{
  v3 = share_sheet_log();
  v4 = share_sheet_log();
  v5 = os_signpost_id_make_with_pointer(v4, self);

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CheckCanSendMail", " enableTelemetry=YES ", buf, 2u);
  }

  os_unfair_lock_lock(&self->_canSendMailLock);
  if (!self->_canSendMailChecked)
  {
    v6 = [(objc_class *)getMCProfileConnectionClass_0() sharedConnection];
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleIdentifier];

    if ([v6 canSendMail:v8 sourceAccountManagement:1])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *(&self->_managesOwnPresentationChecked + 1) = *(&self->_managesOwnPresentationChecked + 1) & 0xFD | v9;
    *(&self->_managesOwnPresentationChecked + 1) = *(&self->_managesOwnPresentationChecked + 1) & 0xFE | [v6 canSendMail:v8 sourceAccountManagement:2];
    self->_canSendMailChecked = 1;
  }

  v10 = *(&self->_managesOwnPresentationChecked + 1);
  os_unfair_lock_unlock(&self->_canSendMailLock);
  v11 = share_sheet_log();
  v12 = share_sheet_log();
  v13 = os_signpost_id_make_with_pointer(v12, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v11, OS_SIGNPOST_INTERVAL_END, v13, "CheckCanSendMail", " enableTelemetry=YES ", v15, 2u);
  }

  return v10;
}

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  [(NSString *)self->_autosaveIdentifier setMailComposeDelegate:0];
  v3.receiver = self;
  v3.super_class = UIMailActivity;
  [(UIMailActivity *)&v3 dealloc];
}

- (id)_bundleIdentifierForActivityImageCreation
{
  v2 = objc_opt_class();

  return [v2 applicationBundleID];
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Mail[Activity]" value:@"Mail" table:@"Localizable"];

  return v3;
}

- (id)_mailDraftRestorationURL
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 objectAtIndex:0];
  v6 = [(UIMailActivity *)self activityType];
  v7 = [v3 stringWithFormat:@"%@/%@.savedMailDraftIdentifier.data", v5, v6];

  v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v7 isDirectory:0];

  return v8;
}

- (void)_saveDraft:(id)a3
{
  v10[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIMailActivity *)self _mailDraftRestorationURL];
  v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v6 encodeObject:v4 forKey:@"kSavedMailDraftIdentifierKey"];
  v7 = [v6 encodedData];
  v10[0] = 0;
  [v7 writeToURL:v5 options:805306369 error:v10];
  v8 = v10[0];

  if (v8)
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(UIMailActivity *)v4 _saveDraft:v8, v9];
    }
  }

  [v6 finishEncoding];
}

- (void)_deleteMailDraftIdentifierRestorationArchive:(id)a3
{
  v5[8] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5[0] = 0;
  [v4 removeItemAtURL:v3 error:v5];
}

- (id)_stateRestorationDraftIsAvailable
{
  v15[8] = *MEMORY[0x1E69E9840];
  v3 = [(UIMailActivity *)self _mailDraftRestorationURL];
  if (v3 && [(UIMailActivity *)self canShareURLThroughMail:v3])
  {
    v15[0] = 0;
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:0 error:v15];
    v5 = v15[0];
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (v4 && !v5)
    {
      v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:0];
      [v8 setRequiresSecureCoding:1];
      v9 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"kSavedMailDraftIdentifierKey"];
      if (v9)
      {
        v7 = [(objc_class *)getMFMailComposeViewControllerClass() hasAutosavedMessageWithIdentifier:v9];
      }

      else
      {
        v7 = 0;
      }
    }

    v12 = v4;
    v10 = v9;
    [v8 finishDecoding];
    v11 = v9;
    if ((v7 & 1) == 0)
    {
      [(UIMailActivity *)self _deleteMailDraftIdentifierRestorationArchive:v3];
      v11 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v13 = v11;

  return v11;
}

- (BOOL)_restoreDraft
{
  v3 = [(UIMailActivity *)self _stateRestorationDraftIsAvailable];
  if (v3)
  {
    v4 = [(UIMailActivity *)self mailComposeViewController];
    [v4 recoverAutosavedMessageWithIdentifier:v3];
  }

  return v3 != 0;
}

- (void)autosaveWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(UIMailActivity *)self mailComposeViewController];
  [v5 autosaveWithHandler:v4];
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v5 = [objc_opt_class() applicationBundleID];
  CanDisplayActivityForApplicationWithBundleID = _UIActivityCanDisplayActivityForApplicationWithBundleID(v5);

  if ((CanDisplayActivityForApplicationWithBundleID & 1) == 0)
  {
    v11 = share_sheet_log();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      return 0;
    }

    *buf = 0;
    v12 = "UIMailActivity: Can't display activity";
    v13 = buf;
LABEL_8:
    _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    goto LABEL_9;
  }

  v7 = [(UIMailActivity *)self _checkCanSendMail];
  v8 = [(objc_class *)getMCProfileConnectionClass_0() sharedConnection];
  v9 = [v8 hasAnyMailAccountIgnoringFiltering];

  [(UIMailActivity *)self setHasAnyAccount:v9];
  [(UIMailActivity *)self setHasValidAccountForSending:(v7 >> ![(UIMailActivity *)self isContentManaged]) & 1];
  if ([(UIMailActivity *)self hasAnyAccount]&& ![(UIMailActivity *)self hasValidAccountForSending])
  {
    v11 = share_sheet_log();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v16 = 0;
    v12 = "UIMailActivity: No valid account for sending";
    v13 = &v16;
    goto LABEL_8;
  }

  if (a3)
  {
    return (_UIActivityItemTypes() & 0x98F) != 0;
  }

  v15 = [(UIMailActivity *)self _stateRestorationDraftIsAvailable];
  v10 = v15 != 0;

  return v10;
}

- (BOOL)canShareURLThroughMail:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 scheme];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 host];

      if (v7)
      {
        goto LABEL_6;
      }
    }
  }

  if (![v4 isFileURL])
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [UIMailActivity canShareURLThroughMail:v4];
    }

    goto LABEL_11;
  }

  [v4 fileSystemRepresentation];
  if (!sandbox_extension_issue_file())
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [UIMailActivity canShareURLThroughMail:v4];
    }

LABEL_11:

    v8 = 0;
    goto LABEL_12;
  }

LABEL_6:
  v8 = 1;
LABEL_12:

  return v8;
}

- (id)_backgroundPreheatBlock
{
  v3 = [objc_opt_class() applicationBundleID];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__UIMailActivity__backgroundPreheatBlock__block_invoke;
  v7[3] = &unk_1E71F96C8;
  v8 = v3;
  v4 = v3;
  objc_copyWeak(&v9, &location);
  v5 = MEMORY[0x18CFF58E0](v7);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v5;
}

void __41__UIMailActivity__backgroundPreheatBlock__block_invoke(uint64_t a1)
{
  _UIActivityCanDisplayActivityForApplicationWithBundleID(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _checkCanSendMail];
}

- (void)prepareWithActivityItems:(id)a3
{
  v175 = *MEMORY[0x1E69E9840];
  v120 = a3;
  v137 = self;
  if ([(UIMailActivity *)self hasValidAccountForSending])
  {
    v4 = objc_alloc(getMFMailComposeViewControllerClass());
    if ([(UIMailActivity *)self isContentManaged])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = [v4 initWithURL:0 sourceAccountManagement:v5];
    autosaveIdentifier = self->_autosaveIdentifier;
    self->_autosaveIdentifier = v6;

    [(NSString *)self->_autosaveIdentifier setMailComposeDelegate:self];
    [(NSString *)self->_autosaveIdentifier setKeyboardVisible:[(UIMailActivity *)self keyboardVisible]];
    v8 = [(UIActivity *)self sessionIdentifier];

    if (v8)
    {
      v9 = self->_autosaveIdentifier;
      v10 = [(UIActivity *)self sessionIdentifier];
      [(NSString *)v9 setShareSheetSessionID:v10];
    }

    v11 = [(UIMailActivity *)v137 collaborationItem];
    v129 = [v11 cloudSharingResult];

    if (!v129 || (-[UIMailActivity collaborationItem](v137, "collaborationItem"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 type], v12, v13 == 2))
    {
LABEL_47:
      v43 = [(UIMailActivity *)v137 autosaveIdentifier];
      if (v43)
      {
        MFMailComposeViewControllerClass = getMFMailComposeViewControllerClass();
        v45 = [(UIMailActivity *)v137 autosaveIdentifier];
        LODWORD(MFMailComposeViewControllerClass) = [(objc_class *)MFMailComposeViewControllerClass hasAutosavedMessageWithIdentifier:v45];

        if (MFMailComposeViewControllerClass)
        {
          v46 = v137->_autosaveIdentifier;
          v47 = [(UIMailActivity *)v137 autosaveIdentifier];
          [(NSString *)v46 recoverAutosavedMessageWithIdentifier:v47];
        }
      }

      if ([v120 count] || !-[UIMailActivity _restoreDraft](v137, "_restoreDraft"))
      {
        v135 = [MEMORY[0x1E695DF70] array];
        v131 = [MEMORY[0x1E695DF70] array];
        _UIActivityItemsGetStringsAndURLs(v120, 1);
        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v122 = v164 = 0u;
        v48 = [v122 countByEnumeratingWithState:&v163 objects:v174 count:16];
        if (!v48)
        {

          v132 = 0;
          v49 = 0;
          obj = 0;
LABEL_72:
          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          v57 = v122;
          v50 = 0;
          v58 = [v57 countByEnumeratingWithState:&v159 objects:v173 count:16];
          if (!v58)
          {
            goto LABEL_95;
          }

          v59 = *v160;
          while (1)
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v160 != v59)
              {
                objc_enumerationMutation(v57);
              }

              v61 = *(*(&v159 + 1) + 8 * i);
              if (!v50)
              {
                if (v49)
                {
                  v62 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1EFE999E0];
                }

                else
                {
                  v62 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
                }

                v50 = v62;
              }

              if (!obj)
              {
                obj = [(UIActivity *)v137 _subjectForActivityItem:v61];
              }

              if ([v50 length])
              {
                if ((v49 & 1) == 0)
                {
                  [v50 appendString:@"\n"];
LABEL_91:
                  [v50 appendString:v61];
                  continue;
                }

                v63 = [v50 mutableString];
                [v63 appendString:@"\n"];
              }

              else if ((v49 & 1) == 0)
              {
                goto LABEL_91;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v50 appendAttributedString:v61];
              }

              else
              {
                v64 = objc_alloc(MEMORY[0x1E696AAB0]);
                v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v61];
                v66 = [v64 initWithString:v65];
                [v50 appendAttributedString:v66];
              }
            }

            v58 = [v57 countByEnumeratingWithState:&v159 objects:v173 count:16];
            if (!v58)
            {
LABEL_95:

              goto LABEL_96;
            }
          }
        }

        obj = 0;
        v49 = 0;
        v50 = 0;
        v51 = *v164;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v164 != v51)
            {
              objc_enumerationMutation(v122);
            }

            v53 = *(*(&v163 + 1) + 8 * j);
            if (!obj)
            {
              obj = [(UIActivity *)v137 _subjectForActivityItem:v53];
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = [v53 string];
              v132 = [(UIMailActivity *)v137 _isHTML:v54];
              if (v132)
              {
                v55 = v54;

                v50 = v55;
              }

              v49 = v132 ^ 1;
            }

            else
            {
              if ([(UIMailActivity *)v137 _isHTML:v53])
              {
                v56 = v53;

                v49 = 0;
                v132 = 1;
                v50 = v56;
                goto LABEL_69;
              }

              v132 = 0;
            }
          }

          v48 = [v122 countByEnumeratingWithState:&v163 objects:v174 count:16];
        }

        while (v48);
LABEL_69:

        if (!v50)
        {
          goto LABEL_72;
        }

LABEL_96:
        if (v50 && (v49 & 1) != 0)
        {
          v67 = [objc_alloc(MEMORY[0x1E69DB7B8]) initWithAttributedString:v50];
          v68 = objc_alloc(MEMORY[0x1E696AEC0]);
          v69 = [v67 HTMLData];
          v70 = [v68 initWithData:v69 encoding:4];

          v71 = [v70 length];
          v132 = v71 != 0;
          if (v71)
          {
            v72 = v70;
          }

          else
          {
            v72 = [v50 string];

            v50 = v72;
          }

          v50 = v72;
        }

        v128 = v50;
        if (v50)
        {
          [(NSString *)v137->_autosaveIdentifier setMessageBody:v50 isHTML:v132];
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v133 = _UIActivityItemsGetImages(v120, 0, 0);
        v73 = [v133 countByEnumeratingWithState:&v155 objects:v172 count:16];
        if (v73)
        {
          v74 = *v156;
          v130 = *MEMORY[0x1E6963808];
          v75 = *MEMORY[0x1E6963860];
          v76 = 1;
          do
          {
            for (k = 0; k != v73; ++k)
            {
              if (*v156 != v74)
              {
                objc_enumerationMutation(v133);
              }

              v78 = *(*(&v155 + 1) + 8 * k);
              [(UIImage *)v78 size];
              v81 = v80 < 512.0 && v79 <= 512.0;
              v82 = [(UIActivity *)v137 _attachmentNameForActivityItem:v78];
              if ([v82 length])
              {
                if (v81)
                {
                  goto LABEL_114;
                }
              }

              else
              {
                v84 = @"jpg";
                if (v81)
                {
                  v84 = @"png";
                }

                v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image-%ld.%@", v76, v84];

                ++v76;
                v82 = v85;
                if (v81)
                {
LABEL_114:
                  v83 = UIImagePNGRepresentation(v78);
                  [v135 addObject:v75];
                  [(NSString *)v137->_autosaveIdentifier addAttachmentData:v83 mimeType:@"image/png" fileName:v82];
                  goto LABEL_119;
                }
              }

              v83 = UIImageJPEGRepresentation(v78, 0.8);
              [v135 addObject:v130];
              [(NSString *)v137->_autosaveIdentifier addAttachmentData:v83 mimeType:@"image/jpeg" fileName:v82];
LABEL_119:
            }

            v73 = [v133 countByEnumeratingWithState:&v155 objects:v172 count:16];
          }

          while (v73);
        }

        v151 = 0;
        v152 = &v151;
        v153 = 0x2020000000;
        v154 = 1;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v86 = v120;
        v87 = [v86 countByEnumeratingWithState:&v147 objects:v171 count:16];
        p_isa = &v137->super.super.isa;
        if (!v87)
        {
          goto LABEL_175;
        }

        v134 = *v148;
        inTagClass = *MEMORY[0x1E6963718];
        v125 = *MEMORY[0x1E6963710];
        v126 = *MEMORY[0x1E6963870];
        v124 = *MEMORY[0x1E69636E0];
        v121 = *MEMORY[0x1E69636D8];
        inConformsToUTI = *MEMORY[0x1E6963868];
LABEL_123:
        v89 = 0;
        while (1)
        {
          if (*v148 != v134)
          {
            objc_enumerationMutation(v86);
          }

          v90 = *(*(&v147 + 1) + 8 * v89);
          if (!obj)
          {
            obj = [p_isa _subjectForActivityItem:v90];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v142[0] = MEMORY[0x1E69E9820];
            v142[1] = 3221225472;
            v142[2] = __43__UIMailActivity_prepareWithActivityItems___block_invoke;
            v142[3] = &unk_1E71F96F0;
            v146 = &v151;
            v143 = v131;
            v144 = v135;
            v145 = p_isa;
            [v90 enumerateKeysAndObjectsUsingBlock:v142];

            v91 = v143;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v91 = v90;
              if (-[__CFString isFileURL](v91, "isFileURL") && [p_isa canShareURLThroughMail:v91])
              {
                v92 = _UIActivityUTIForURL(v91);
                if ([(__CFString *)v92 isEqualToString:v124])
                {
                  v93 = v121;

                  v92 = v93;
                  p_isa = &v137->super.super.isa;
                }

                if (v92)
                {
                  if (UTTypeConformsTo(v92, inConformsToUTI) && (v94 = softLinkQLTypeCopyUTIForURLAndMimeType(v91, @"application/octet-stream")) != 0)
                  {
                    v95 = v94;

                    v96 = @"application/octet-stream";
                    p_isa = &v137->super.super.isa;
                  }

                  else
                  {
                    v96 = UTTypeCopyPreferredTagWithClass(v92, inTagClass);
                    if (!v96)
                    {
                      v109 = softLinkQLTypeCopyBestMimeTypeForURLAndMimeType(v91, 0);
                      if (v109)
                      {
                        v96 = v109;
                      }

                      else
                      {
                        v96 = @"application/octet-stream";
                      }
                    }

                    v95 = v92;
                  }

                  if ([(__CFString *)v95 isEqualToString:v126])
                  {
                    v110 = MEMORY[0x1E696AEC0];
                    v111 = [(__CFString *)v91 path];
                    v112 = [v110 stringWithContentsOfFile:v111 encoding:4 error:0];

                    if (v112)
                    {
                      [v131 addObject:v112];
                    }

                    p_isa = &v137->super.super.isa;
                  }

                  else
                  {
                    [v135 addObject:v95];
                  }

                  v113 = [p_isa[23] _addAttachmentWithFileURL:v91 mimeType:v96];
                }
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_131;
              }

              v91 = [p_isa _dataTypeIdentifierForActivityItem:v90];
              if (v91)
              {
LABEL_144:
                v97 = UTTypeCopyPreferredTagWithClass(v91, inTagClass);
                if (v97 || (v102 = UTTypeCopyPreferredTagWithClass(v91, v125)) != 0 && ([@"aep" stringByAppendingPathExtension:v102], v103 = objc_claimAutoreleasedReturnValue(), v97 = softLinkQLTypeCopyBestMimeTypeForFileNameAndMimeType(v103, 0), v97, CFRelease(v102), v103, p_isa = &v137->super.super.isa, v97))
                {
                  v98 = [p_isa _attachmentNameForActivityItem:v90];
                  if ([v98 length])
                  {
                    v99 = v98;
                  }

                  else
                  {
                    v104 = MEMORY[0x1E696AEC0];
                    v105 = v152[3];
                    v152[3] = v105 + 1;
                    v99 = [v104 stringWithFormat:@"Attachment-%ld", v105];

                    v106 = UTTypeCopyPreferredTagWithClass(v91, v125);
                    if (v106)
                    {
                      v107 = [v99 stringByAppendingPathExtension:v106];

                      v99 = v107;
                    }

                    p_isa = &v137->super.super.isa;
                  }

                  if ([(__CFString *)v91 isEqualToString:v126])
                  {
                    v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v90 encoding:4];
                    if (v108)
                    {
                      [v131 addObject:v108];
                    }

                    p_isa = &v137->super.super.isa;
                  }

                  else
                  {
                    [v135 addObject:v91];
                  }

                  [p_isa[23] addAttachmentData:v90 mimeType:v97 fileName:v99];
                  CFRelease(v97);
                }

                goto LABEL_130;
              }

              v100 = CGImageSourceCreateWithData(v90, 0);
              v101 = v100;
              if (v100)
              {
                v91 = CGImageSourceGetType(v100);
                CFRelease(v101);
                if (v91)
                {
                  goto LABEL_144;
                }
              }

              else
              {
                v91 = 0;
              }
            }
          }

LABEL_130:

          p_isa = &v137->super.super.isa;
LABEL_131:
          if (v87 == ++v89)
          {
            v114 = [v86 countByEnumeratingWithState:&v147 objects:v171 count:16];
            v87 = v114;
            if (!v114)
            {
LABEL_175:

              if (obj)
              {
                [(UIMailActivity *)v137 setSubject:obj];
              }

              if ([v135 count])
              {
                [(NSString *)v137->_autosaveIdentifier setUTITypes:v135];
              }

              v115 = _UIActivityItemsGetWebURLs(v86, 1);
              if ([v115 count])
              {
                [(NSString *)v137->_autosaveIdentifier setContentURLs:v115];
              }

              v116 = _UIActivityItemsGetStrings(v86, 0);
              if (v116)
              {
                [v131 addObjectsFromArray:v116];
              }

              if ([v131 count])
              {
                [(NSString *)v137->_autosaveIdentifier setContentText:v131];
              }

              _Block_object_dispose(&v151, 8);
              goto LABEL_186;
            }

            goto LABEL_123;
          }
        }
      }

      goto LABEL_188;
    }

    v14 = [v129 error];

    if (v14)
    {
      v15 = share_sheet_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [UIMailActivity prepareWithActivityItems:v129];
      }

      goto LABEL_46;
    }

    v20 = MEMORY[0x1E69CDE78];
    v21 = [(UIMailActivity *)v137 collaborationItem];
    v22 = [v21 options];
    v169 = 0;
    v168 = 0;
    v167 = 0;
    [v20 getCKSharingOptionsFromOptions:v22 accessType:&v169 permissionType:&v168 allowOthersToInvite:&v167];
    v15 = v169;
    v23 = v168;
    v24 = v167;

    v25 = [(UIMailActivity *)v137 collaborationItem];
    v26 = [v25 type] == 1;

    if (v26)
    {
      v27 = [(UIMailActivity *)v137 collaborationItem];
      v28 = [v27 containerSetupInfo];
    }

    else
    {
      v28 = 0;
    }

    v38 = [(UIMailActivity *)v137 collaborationItem];
    v39 = [v38 type] == 0;

    if (v39)
    {
      v117 = [(UIMailActivity *)v137 collaborationItem];
      v40 = [v117 fileURL];

      if (v40 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v42 = [UISUISecurityScopedResource sandboxingURLWrapperWithFileURL:v40 allowedAccess:2];
        if (v42)
        {
          v118 = v137->_autosaveIdentifier;
          v119 = [v129 share];
          -[NSString _setCKShareURLWrapper:share:permissionType:allowOthersToInvite:](v118, "_setCKShareURLWrapper:share:permissionType:allowOthersToInvite:", v42, v119, [v23 intValue], objc_msgSend(v24, "BOOLValue"));
        }

        else
        {
          v119 = share_sheet_log();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            [(UIMailActivity *)v40 prepareWithActivityItems:v119];
          }
        }

        goto LABEL_45;
      }
    }

    else
    {
      v40 = 0;
    }

    v41 = v137->_autosaveIdentifier;
    v42 = [v129 share];
    -[NSString _setCKShare:setupContainerInfo:permissionType:allowOthersToInvite:](v41, "_setCKShare:setupContainerInfo:permissionType:allowOthersToInvite:", v42, v28, [v23 intValue], objc_msgSend(v24, "BOOLValue"));
LABEL_45:

LABEL_46:
    goto LABEL_47;
  }

  if (![(UIMailActivity *)self hasAnyAccount]&& ![(UIMailActivity *)self isContentManaged])
  {
    obj = _UIActivityItemsGetStringsAndURLs(v120, 0);
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v16 = [obj countByEnumeratingWithState:&v138 objects:v170 count:16];
    if (v16)
    {
      v128 = 0;
      v129 = 0;
      v17 = *v139;
      do
      {
        for (m = 0; m != v16; ++m)
        {
          if (*v139 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v138 + 1) + 8 * m);
          if (v129)
          {
            [v129 appendFormat:@"\n%@", *(*(&v138 + 1) + 8 * m)];
          }

          else
          {
            v129 = [v19 mutableCopy];
          }

          if (!v128)
          {
            v128 = [(UIActivity *)self _subjectForActivityItem:v19];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v138 objects:v170 count:16];
      }

      while (v16);
    }

    else
    {
      v128 = 0;
      v129 = 0;
    }

    if (MessageLibrary_sOnce != -1)
    {
      [UIMailActivity prepareWithActivityItems:];
    }

    if ([v129 length] || (-[objc_class sharedConnection](getMCProfileConnectionClass_0(), "sharedConnection"), v29 = objc_claimAutoreleasedReturnValue(), getMCFeatureAccountModificationAllowed(), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "effectiveBoolValueForSetting:", v30) == 2, v30, v29, v31) || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", @"prefs:root=ACCOUNTS_AND_PASSWORDS&path=ADD_ACCOUNT"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E6963608], "defaultWorkspace"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "openSensitiveURL:withOptions:", v32, 0), v33, v32, (v34 & 1) == 0))
    {
      v135 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v135 setScheme:@"mailto"];
      v131 = [MEMORY[0x1E695DF70] array];
      if (v128)
      {
        v35 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"subject" value:v128];
        [v131 addObject:v35];
      }

      if (v129)
      {
        v36 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"body" value:v129];
        [v131 addObject:v36];
      }

      [v135 setQueryItems:v131];
      v122 = [v135 URL];
      if (v122)
      {
        v37 = [MEMORY[0x1E69DC668] sharedApplication];
        [v37 openURL:v122 options:MEMORY[0x1E695E0F8] completionHandler:0];
      }

LABEL_186:
    }

LABEL_188:
  }
}

void __43__UIMailActivity_prepareWithActivityItems___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  inUTI = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !UTTypeConformsTo(inUTI, *MEMORY[0x1E6963850]) && !UTTypeConformsTo(inUTI, *MEMORY[0x1E69637F8]))
  {
    v8 = UTTypeCopyDescription(inUTI);
    v9 = MEMORY[0x1E696AEC0];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 24);
    *(v10 + 24) = v11 + 1;
    v12 = [v9 stringWithFormat:@"%@-%ld", v8, v11];
    v13 = UTTypeCopyPreferredTagWithClass(inUTI, *MEMORY[0x1E6963710]);
    if (v13)
    {
      v14 = [v12 stringByAppendingPathExtension:v13];

      v12 = v14;
    }

    if ([(__CFString *)inUTI isEqualToString:*MEMORY[0x1E6963870]])
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
      if (v15)
      {
        [*(a1 + 32) addObject:v15];
      }
    }

    else
    {
      [*(a1 + 40) addObject:inUTI];
    }

    [*(*(a1 + 48) + 184) addAttachmentData:v7 mimeType:inUTI fileName:v12];
    *a4 = 1;
  }
}

- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__UIMailActivity__prepareWithActivityItems_completion___block_invoke;
  v8[3] = &unk_1E71F9718;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(UIActivity *)self _loadItemProvidersFromActivityItems:a3 completion:v8];
}

uint64_t __55__UIMailActivity__prepareWithActivityItems_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) prepareWithActivityItems:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (BOOL)_isHTML:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 >= 0x400)
  {
    v5 = 1024;
  }

  else
  {
    v5 = v4;
  }

  [v3 rangeOfString:@"<html" options:1 range:{0, v5}];
  v7 = v6;

  return v7 != 0;
}

- (BOOL)_managesOwnPresentation
{
  if (self->_managesOwnPresentationChecked)
  {
    v2 = _managesOwnPresentation_managesOwnPresentation;
  }

  else
  {
    v2 = [(objc_class *)getMFMailComposeViewControllerClass() _canSendMailInNewScene];
    _managesOwnPresentation_managesOwnPresentation = v2;
    self->_managesOwnPresentationChecked = 1;
  }

  return v2 & 1;
}

- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(UIMailActivity *)self _managesOwnPresentation];
  if (v10)
  {
    v11 = [(UIMailActivity *)self mailComposeViewController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__UIMailActivity__presentActivityOnViewController_animated_completion___block_invoke;
    v13[3] = &unk_1E71F9740;
    v14 = v8;
    v15 = self;
    v17 = a4;
    v16 = v9;
    [v11 _presentComposeInNewWindowWithCompletion:v13];
  }

  return v10;
}

void __71__UIMailActivity__presentActivityOnViewController_animated_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__UIMailActivity__presentActivityOnViewController_animated_completion___block_invoke_cold_1(v4);
    }

    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) mailComposeViewController];
    [v5 presentViewController:v6 animated:*(a1 + 56) completion:*(a1 + 48)];

    *(*(a1 + 40) + 143) = 1;
  }
}

- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(UIMailActivity *)self _managesOwnPresentation];
  if (v10)
  {
    if (!v8)
    {
      if (!*(&self->_managesOwnPresentationChecked + 2))
      {
        v9[2](v9);
        v8 = 0;
        goto LABEL_6;
      }

      v8 = [(UIMailActivity *)self mailComposeViewController];
    }

    [v8 dismissViewControllerAnimated:*(&self->_managesOwnPresentationChecked + 2) && a4 completion:v9];
  }

LABEL_6:

  return v10;
}

- (void)setSubject:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  sourceApplicationBundleID = self->_sourceApplicationBundleID;
  self->_sourceApplicationBundleID = v4;

  [(NSString *)self->_autosaveIdentifier setSubject:v6];
}

- (void)_cleanup
{
  [(NSString *)self->_autosaveIdentifier setMailComposeDelegate:0];
  [(UIMailActivity *)self setMailComposeViewController:0];
  *(&self->_managesOwnPresentationChecked + 2) = 0;
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v4 = [(UIMailActivity *)self mailComposeViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__UIMailActivity_encodeRestorableStateWithCoder___block_invoke;
  v5[3] = &unk_1E71F9768;
  v5[4] = self;
  [v4 autosaveWithHandler:v5];
}

void __49__UIMailActivity_encodeRestorableStateWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_opt_class();
  Class = object_getClass(v5);
  if (Class == v3 || [(objc_class *)Class isSubclassOfClass:v3])
  {
    [*(a1 + 32) _saveDraft:v5];
  }
}

- (void)_saveDraft:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136446722;
  v4 = "[UIMailActivity _saveDraft:]";
  v5 = 2114;
  v6 = a1;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_18B359000, log, OS_LOG_TYPE_ERROR, "%{public}s: Error trying to archive mail draft identifier %{public}@: %{public}@.", &v3, 0x20u);
}

- (void)canShareURLThroughMail:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 absoluteString];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)canShareURLThroughMail:(void *)a1 .cold.2(void *a1)
{
  [a1 fileSystemRepresentation];
  __error();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)prepareWithActivityItems:(void *)a1 .cold.2(void *a1)
{
  v6 = [a1 error];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)prepareWithActivityItems:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Mail Activity: couldn't get FPSandboxingURLWrapper for file URL: %{public}@", &v2, 0xCu);
}

@end