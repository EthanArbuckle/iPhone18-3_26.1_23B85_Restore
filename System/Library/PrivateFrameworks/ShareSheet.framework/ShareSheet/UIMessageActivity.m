@interface UIMessageActivity
+ (unint64_t)_xpcAttributes;
+ (void)_preheatAsyncIfNeeded;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)_bundleIdentifierForActivityImageCreation;
- (id)activityTitle;
- (void)_cleanup;
- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation UIMessageActivity

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
  [(MFMessageComposeViewController *)self->_messageComposeViewController setMessageComposeDelegate:0];
  v3.receiver = self;
  v3.super_class = UIMessageActivity;
  [(UIMessageActivity *)&v3 dealloc];
}

- (id)_bundleIdentifierForActivityImageCreation
{
  v2 = objc_opt_class();

  return [v2 applicationBundleID];
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Message[Activity]" value:@"Messages" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIMessageActivity *)self sourceApplicationBundleID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v8 bundleIdentifier];
  }

  v9 = [objc_opt_class() applicationBundleID];
  CanDisplayActivityForApplicationWithBundleID = _UIActivityCanDisplayActivityForApplicationWithBundleID(v9);

  if ((CanDisplayActivityForApplicationWithBundleID & 1) == 0)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "UIMessageActivity: Can't display activity", buf, 2u);
    }

    v31 = 0;
    goto LABEL_44;
  }

  v11 = [(objc_class *)getIMSharedMessageSendingUtilitiesClass() sharedInstance];
  if (([v11 canSendText]& 1) == 0)
  {
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "UIMessageActivity: Can't send text", buf, 2u);
    }

    goto LABEL_42;
  }

  v12 = [(objc_class *)getMCProfileConnectionClass_1() sharedConnection];
  if (([v12 mayShareToMessagesForOriginatingAppBundleID:v7 originatingAccountIsManaged:[(UIMessageActivity *)self isContentManaged]]& 1) == 0)
  {
    v32 = share_sheet_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v33 = "UIMessageActivity: Can't share to Messages";
LABEL_40:
      _os_log_impl(&dword_18B359000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
    }

LABEL_41:

LABEL_42:
    v31 = 0;
    goto LABEL_43;
  }

  v13 = [v11 isMMSEnabled];
  v14 = [v11 isRichMessagingEnabled];
  v15 = [v11 isMessagingEnabled];
  if (v13)
  {
    v16 = 18511;
  }

  else
  {
    v16 = 18437;
  }

  if (v14)
  {
    v17 = 202;
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = 128;
  }

  v19 = 74;
  if (v15)
  {
    v19 = 0;
  }

  v59 = v19;
  v60 = v18;
  v20 = _UIActivityItemCountOfType(v4, 2);
  v21 = _UIActivityItemCountOfType(v4, 64);
  if (([v11 canSendPhotos:v20 videos:v21 audioClips:_UIActivityItemCountOfType(v4, 4096)]& 1) == 0)
  {
    v32 = share_sheet_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v33 = "UIMessageActivity: Can't send content";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v22 = v16 | v17;
  v57 = v12;
  v58 = v7;
  if ((_UIActivityItemTypes() & 8) != 0)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v23 = v4;
    v24 = [v23 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v24)
    {
      v25 = v24;
      v55 = v16 | v17;
      v26 = *v76;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v76 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v75 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v28 isFileURL])
            {
              v29 = _UIActivityUTIForURL(v28);
              v30 = [v11 isSupportedAttachmentUTI:v29];

              if (v30)
              {

                v12 = v57;
                v7 = v58;
                v22 = v55;
                goto LABEL_47;
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v75 objects:v84 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }

      v12 = v57;
      v22 = v55 & 0x48C7;
      v7 = v58;
    }

    else
    {

      v22 &= 0x48C7u;
    }
  }

LABEL_47:
  if ((_UIActivityItemTypes() & 0x800) == 0)
  {
    goto LABEL_77;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v35 = v4;
  v36 = [v35 countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (!v36)
  {

    v22 &= ~0x800uLL;
    goto LABEL_77;
  }

  v37 = v36;
  v56 = v22;
  v38 = 0;
  v39 = *v72;
  v62 = v4;
  while (2)
  {
    for (j = 0; j != v37; ++j)
    {
      if (*v72 != v39)
      {
        objc_enumerationMutation(v35);
      }

      v41 = *(*(&v71 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = [(UIActivity *)self _dataTypeIdentifierForActivityItem:v41];
        if ([v11 isSupportedAttachmentUTI:v42])
        {

          goto LABEL_75;
        }

        v43 = share_sheet_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v42;
          _os_log_impl(&dword_18B359000, v43, OS_LOG_TYPE_DEFAULT, "UIMessageActivity: Unsupported attachment type %@", buf, 0xCu);
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v42 = [v41 registeredTypeIdentifiers];
        v44 = [v42 countByEnumeratingWithState:&v67 objects:v80 count:16];
        if (v44)
        {
          v45 = v44;
          v61 = v38;
          v46 = v35;
          v47 = *v68;
          while (2)
          {
            for (k = 0; k != v45; ++k)
            {
              if (*v68 != v47)
              {
                objc_enumerationMutation(v42);
              }

              if (([v11 isSupportedAttachmentUTI:*(*(&v67 + 1) + 8 * k)]& 1) != 0)
              {
                v38 = 1;
                v35 = v46;
                v4 = v62;
                goto LABEL_69;
              }
            }

            v45 = [v42 countByEnumeratingWithState:&v67 objects:v80 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }

          v35 = v46;
          v4 = v62;
          v38 = v61;
        }
      }

LABEL_69:
    }

    v37 = [v35 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

  if ((v38 & 1) == 0)
  {
    v12 = v57;
    v22 = v56 & 0xFFFFFFFFFFFFF7FFLL;
    v7 = v58;
    goto LABEL_77;
  }

LABEL_75:
  v12 = v57;
  v7 = v58;
  v22 = v56;
LABEL_77:
  if ((_UIActivityItemTypes() & 0x4000) != 0)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v49 = v4;
    v50 = [v49 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v64;
      while (2)
      {
        for (m = 0; m != v51; ++m)
        {
          if (*v64 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v63 + 1) + 8 * m);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [MEMORY[0x1E69CDE78] isSWYActivityItemProvider:v54])
          {

            goto LABEL_89;
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v63 objects:v79 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }

      v22 &= ~0x4000uLL;
LABEL_89:
      v12 = v57;
      v7 = v58;
    }

    else
    {

      v22 &= ~0x4000uLL;
    }
  }

  if ((_UIActivityItemTypes() & v22) == 0)
  {
    goto LABEL_42;
  }

  v31 = (_UIActivityItemTypes() & (v59 | v60)) == 0;
LABEL_43:

LABEL_44:
  return v31;
}

void __44__UIMessageActivity__backgroundPreheatBlock__block_invoke()
{
  v0 = [(objc_class *)getIMSharedMessageSendingUtilitiesClass() sharedInstance];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UIMessageActivity__backgroundPreheatBlock__block_invoke_2;
  block[3] = &unk_1E71F9510;
  v3 = v0;
  v1 = v0;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __44__UIMessageActivity__backgroundPreheatBlock__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) canSendText];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 isMMSEnabled];
  }

  return result;
}

+ (void)_preheatAsyncIfNeeded
{
  v2 = atomic_load(__shouldPreheatMessageActivity);
  if (v2)
  {
    v4 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__UIMessageActivity__preheatAsyncIfNeeded__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(v4, block);
  }
}

void __42__UIMessageActivity__preheatAsyncIfNeeded__block_invoke(uint64_t a1)
{
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "Starting Message activity preheating", buf, 2u);
  }

  v3 = atomic_load(__shouldPreheatMessageActivity);
  if (v3)
  {
    v4 = share_sheet_log();
    v5 = share_sheet_log();
    v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));

    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PreheatMessageActivity", "framework=MessageUI", v23, 2u);
    }

    MFMessageComposeViewControllerClass = getMFMessageComposeViewControllerClass();
    v8 = share_sheet_log();
    v9 = share_sheet_log();
    v10 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));

    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v8, OS_SIGNPOST_INTERVAL_END, v10, "PreheatMessageActivity", &unk_18B437ED2, v22, 2u);
    }
  }

  else
  {
    MFMessageComposeViewControllerClass = 0;
  }

  v11 = atomic_load(__shouldPreheatMessageActivity);
  if (v11)
  {
    v12 = share_sheet_log();
    v13 = share_sheet_log();
    v14 = os_signpost_id_make_with_pointer(v13, *(a1 + 32));

    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PreheatMessageActivity", "framework=ChatKit", v21, 2u);
    }

    [(objc_class *)MFMessageComposeViewControllerClass _preloadDependencies];
    v15 = share_sheet_log();
    v16 = share_sheet_log();
    v17 = os_signpost_id_make_with_pointer(v16, *(a1 + 32));

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v15, OS_SIGNPOST_INTERVAL_END, v17, "PreheatMessageActivity", &unk_18B437ED2, v20, 2u);
    }
  }

  atomic_store(0, __shouldPreheatMessageActivity);
  v18 = share_sheet_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_18B359000, v18, OS_LOG_TYPE_DEFAULT, "Finished Message activity preheating", v19, 2u);
  }
}

- (void)prepareWithActivityItems:(id)a3
{
  v133 = *MEMORY[0x1E69E9840];
  v95 = a3;
  atomic_store(0, __shouldPreheatMessageActivity);
  v4 = objc_alloc_init(getMFMessageComposeViewControllerClass());
  messageComposeViewController = self->_messageComposeViewController;
  self->_messageComposeViewController = v4;

  [(MFMessageComposeViewController *)self->_messageComposeViewController setMessageComposeDelegate:self];
  v6 = [(UIActivity *)self sessionIdentifier];

  if (v6)
  {
    v7 = [(UIActivity *)self sessionIdentifier];
    [(MFMessageComposeViewController *)self->_messageComposeViewController setShareSheetSessionID:v7];
  }

  v8 = [(UIMessageActivity *)self collaborationItem];
  v105 = v8;
  if (-[UIMessageActivity isCollaborative](self, "isCollaborative") || ![v8 type])
  {
    v11 = 0;
  }

  else
  {
    v9 = [v8 itemProvider];
    if ([v9 supportsMessagesSendCopyRepresentation])
    {
      v10 = [v95 count] > 1;
    }

    else
    {
      v10 = 0;
    }

    v12 = [v8 itemProvider];
    v13 = [v12 supportsMessagesSendCopyRepresentation] ^ 1;

    v11 = v13 | v10;
    v8 = v105;
  }

  v104 = self;
  v106 = (v8 == 0) | v11;
  if (!((v8 == 0) | v11 & 1))
  {
    v14 = self;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_messageComposeViewController;
      v16 = share_sheet_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v105 itemProvider];
        v18 = [v105 shareOptions];
        v19 = [v105 metadata];
        [(UIMessageActivity *)v104 isCollaborative];
        v20 = NSStringFromBOOL();
        *buf = 138413058;
        v126 = v17;
        v127 = 2112;
        v128 = v18;
        v129 = 2112;
        v130 = v19;
        v131 = 2112;
        v132 = v20;
        _os_log_impl(&dword_18B359000, v16, OS_LOG_TYPE_DEFAULT, "insertCollaborationItemProvider:%@ collaborationShareOptions:%@ collaborationMetadata:%@ isCollaboration:%@", buf, 0x2Au);
      }

      v21 = [v105 itemProvider];
      v22 = [v105 shareOptions];
      v23 = [v105 metadata];
      [(MFMessageComposeViewController *)v15 insertCollaborationItemProvider:v21 collaborationShareOptions:v22 collaborationMetadata:v23 isCollaboration:[(UIMessageActivity *)v104 isCollaborative]];
    }

    else
    {
      v24 = share_sheet_log();
      v25 = v105;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v105 itemProvider];
        v27 = [v105 options];
        v28 = [v105 metadata];
        [(UIMessageActivity *)v104 isCollaborative];
        v29 = NSStringFromBOOL();
        *buf = 138413058;
        v126 = v26;
        v127 = 2112;
        v128 = v27;
        v129 = 2112;
        v130 = v28;
        v131 = 2112;
        v132 = v29;
        _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_DEFAULT, "insertCollaborationItemProvider:%@ collaborationOptions:%@ collaborationMetadata:%@ isCollaboration:%@", buf, 0x2Au);

        v14 = v104;
        v25 = v105;
      }

      v30 = v14->_messageComposeViewController;
      [v25 itemProvider];
      v15 = v31 = v25;
      v21 = [v31 options];
      v22 = [v31 metadata];
      [(MFMessageComposeViewController *)v30 insertCollaborationItemProvider:v15 collaborationOptions:v21 collaborationMetadata:v22 isCollaboration:[(UIMessageActivity *)v14 isCollaborative]];
    }
  }

  v32 = _UIActivityItemsGetStringsAndURLs(v95, 0);
  v33 = objc_opt_new();
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v32;
  v34 = [obj countByEnumeratingWithState:&v118 objects:v124 count:16];
  v35 = 0x1E695D000uLL;
  v99 = v33;
  if (v34)
  {
    v36 = v34;
    v37 = *v119;
    do
    {
      v38 = 0;
      do
      {
        if (*v119 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v118 + 1) + 8 * v38);
        v40 = [*(v35 + 4088) URLWithString:v39];
        v41 = v40;
        if (!v40)
        {
          goto LABEL_29;
        }

        v42 = [v40 scheme];
        if (!v42)
        {
          goto LABEL_29;
        }

        v43 = v42;
        v44 = [v41 host];
        if (!v44 || ([v41 isFileURL] & 1) != 0)
        {

LABEL_29:
          [v33 addObject:v39];
          goto LABEL_30;
        }

        v45 = [(LPLinkMetadata *)v104->_linkMetadata originalURL];
        if ([v41 isEqual:v45])
        {

          v33 = v99;
        }

        else
        {
          v46 = [(LPLinkMetadata *)v104->_linkMetadata URL];
          v107 = [v41 isEqual:v46];

          v33 = v99;
          v35 = 0x1E695D000;
          if (!v107)
          {
            goto LABEL_29;
          }
        }

        v47 = objc_alloc_init(getLPSharingMetadataWrapperClass());
        [v47 setHasFetchedSubresources:1];
        [v47 setMetadata:v104->_linkMetadata];
        v48 = v104->_messageComposeViewController;
        v49 = v41;
        v50 = [v47 dataRepresentation];
        v51 = v48;
        v35 = 0x1E695D000;
        [(MFMessageComposeViewController *)v51 addRichLinkData:v50 withWebpageURL:v49];

LABEL_30:
        ++v38;
      }

      while (v36 != v38);
      v52 = [obj countByEnumeratingWithState:&v118 objects:v124 count:16];
      v36 = v52;
    }

    while (v52);
  }

  [v33 componentsJoinedByString:@" "];
  v94 = p_isa = &v104->super.super.isa;
  [(MFMessageComposeViewController *)v104->_messageComposeViewController setBody:?];
  v54 = [MEMORY[0x1E695DF70] array];
  v100 = [MEMORY[0x1E695DF70] array];
  _UIActivityItemsGetAttachments(v95);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v108 = v117 = 0u;
  v55 = [v108 countByEnumeratingWithState:&v114 objects:v123 count:16];
  if (!v55)
  {
    goto LABEL_88;
  }

  v56 = v55;
  v57 = *v115;
  v97 = *MEMORY[0x1E6963808];
  v96 = *MEMORY[0x1E6963860];
  inTagClass = *MEMORY[0x1E6963710];
  v58 = *MEMORY[0x1E6963870];
  v103 = 1;
  v101 = *MEMORY[0x1E6963870];
  v102 = v54;
  do
  {
    for (i = 0; i != v56; ++i)
    {
      if (*v115 != v57)
      {
        objc_enumerationMutation(v108);
      }

      v60 = *(*(&v114 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ((v106 & 1) == 0)
        {
          if (![v105 type] || (objc_msgSend(v105, "itemProvider"), v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "supportsMessagesSendCopyRepresentation"), v61, v62))
          {
            v63 = share_sheet_log();
            if (os_log_type_enabled(&v63->super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18B359000, &v63->super, OS_LOG_TYPE_DEFAULT, "not providing file URL as attachment because we already provided a collaboration item with a file.", buf, 2u);
            }

            goto LABEL_85;
          }
        }

        v63 = [p_isa _attachmentNameForActivityItem:v60];
        [p_isa[21] addAttachmentURL:v60 withAlternateFilename:v63];
        v65 = _UIActivityUTIForURL(v60);
        if ([(UIImage *)v65 isEqualToString:v58])
        {
          v66 = MEMORY[0x1E696AEC0];
          v67 = [v60 path];
          v68 = [v66 stringWithContentsOfFile:v67 encoding:4 error:0];

          if (v68)
          {
            [v100 addObject:v68];
          }

          v54 = v102;
          goto LABEL_84;
        }

        v77 = v54;
        v78 = v65;
LABEL_83:
        [v77 addObject:v78];
LABEL_84:

        goto LABEL_85;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v64 = [p_isa _dataTypeIdentifierForActivityItem:v60];
        if (v64)
        {
          v63 = v64;
LABEL_51:
          v65 = [p_isa _attachmentNameForActivityItem:v60];
          if (![(UIImage *)v65 length])
          {
            v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attachment-%ld", v103];

            v82 = UTTypeCopyPreferredTagWithClass(v63, inTagClass);
            if (v82)
            {
              v83 = v82;
              v65 = [(UIImage *)v81 stringByAppendingPathExtension:v82];

              CFRelease(v83);
              ++v103;
            }

            else
            {
              ++v103;
              v65 = v81;
            }

            v58 = v101;
            v54 = v102;
          }

          [p_isa[21] addAttachmentData:v60 typeIdentifier:v63 filename:v65];
          if ([(UIImage *)v63 isEqualToString:v58])
          {
            v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v60 encoding:4];
            if (v84)
            {
              [v100 addObject:v84];
            }

            goto LABEL_84;
          }

          v77 = v54;
          v78 = v63;
          goto LABEL_83;
        }

        v79 = CGImageSourceCreateWithData(v60, 0);
        if (v79)
        {
          v80 = v79;
          v63 = CGImageSourceGetType(v79);
          CFRelease(v80);
          if (!v63)
          {
            goto LABEL_85;
          }

          goto LABEL_51;
        }

        v63 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v63 = v60;
        [(UIImage *)v63 size];
        v71 = v70 < 512.0 && v69 <= 512.0;
        v72 = [p_isa _attachmentNameForActivityItem:v63];
        if (![v72 length])
        {
          v73 = @"jpg";
          if (v71)
          {
            v73 = @"png";
          }

          v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image-%ld.%@", v103, v73];

          ++v103;
          p_isa = &v104->super.super.isa;
          v72 = v74;
        }

        if (v71)
        {
          v75 = UIImagePNGRepresentation(v63);
          [p_isa[21] addAttachmentData:v75 typeIdentifier:v96 filename:v72];
          v76 = v96;
        }

        else
        {
          v75 = UIImageJPEGRepresentation(v63, 0.8);
          [p_isa[21] addAttachmentData:v75 typeIdentifier:v97 filename:v72];
          v76 = v97;
        }

        [v54 addObject:v76];

        v58 = v101;
      }

LABEL_85:
    }

    v56 = [v108 countByEnumeratingWithState:&v114 objects:v123 count:16];
  }

  while (v56);
LABEL_88:
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v85 = v95;
  v86 = [v85 countByEnumeratingWithState:&v110 objects:v122 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v111;
    while (2)
    {
      for (j = 0; j != v87; ++j)
      {
        if (*v111 != v88)
        {
          objc_enumerationMutation(v85);
        }

        v90 = [(UIActivity *)v104 _subjectForActivityItem:*(*(&v110 + 1) + 8 * j)];
        if (v90)
        {
          v91 = v90;
          p_isa = &v104->super.super.isa;
          [(MFMessageComposeViewController *)v104->_messageComposeViewController setSubject:v90];

          goto LABEL_98;
        }
      }

      v87 = [v85 countByEnumeratingWithState:&v110 objects:v122 count:16];
      p_isa = &v104->super.super.isa;
      if (v87)
      {
        continue;
      }

      break;
    }
  }

LABEL_98:

  v92 = _UIActivityItemsGetStrings(v85, 0);
  if (v92)
  {
    [v100 addObjectsFromArray:v92];
  }

  if ([v54 count])
  {
    [p_isa[21] setUTITypes:v54];
  }

  v93 = _UIActivityItemsGetWebURLs(v85, 1);
  if ([v93 count])
  {
    [p_isa[21] setContentURLs:v93];
  }

  if ([v100 count])
  {
    [p_isa[21] setContentText:v100];
  }
}

- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__UIMessageActivity__prepareWithActivityItems_completion___block_invoke;
  v8[3] = &unk_1E71F9718;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(UIActivity *)self _loadItemProvidersFromActivityItems:a3 completion:v8];
}

uint64_t __58__UIMessageActivity__prepareWithActivityItems_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) prepareWithActivityItems:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_cleanup
{
  [(MFMessageComposeViewController *)self->_messageComposeViewController setMessageComposeDelegate:0];

  [(UIMessageActivity *)self setMessageComposeViewController:0];
}

@end