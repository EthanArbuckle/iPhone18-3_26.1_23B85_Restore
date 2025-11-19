@interface UIReturnToDocumentAction
@end

@implementation UIReturnToDocumentAction

uint64_t __54___UIReturnToDocumentAction__hasReturnToSenderFeature__block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_1299 = result;
  return result;
}

void __47___UIReturnToDocumentAction_actionWithFileURL___block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32) && ([*(a1 + 40) _hasReturnToSenderFeature] & 1) != 0)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v4 = getSYDocumentAttributesClass_softClass;
    v25 = getSYDocumentAttributesClass_softClass;
    if (!getSYDocumentAttributesClass_softClass)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __getSYDocumentAttributesClass_block_invoke;
      v21[3] = &unk_1E70F2F20;
      v21[4] = &v22;
      __getSYDocumentAttributesClass_block_invoke(v21);
      v4 = v23[3];
    }

    v5 = v4;
    _Block_object_dispose(&v22, 8);
    v6 = [v4 documentAttributesForFileAtURL:*(a1 + 32)];
    if (v6)
    {
      v7 = _UILocalizedString(@"ACTION_TITLE_RETURNTOSENDER", @"Title of the return to sender button in the document menu", @"Shared with You");
      v8 = [UIImage systemImageNamed:@"envelope"];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __47___UIReturnToDocumentAction_actionWithFileURL___block_invoke_2;
      v19[3] = &unk_1E70F4708;
      v9 = v6;
      v20 = v9;
      v10 = [UIAction actionWithTitle:v7 image:v8 identifier:@"com.apple.returntodocument" handler:v19];

      v11 = [v9 sender];
      v12 = [v11 name];
      v13 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v14 = [v12 stringByTrimmingCharactersInSet:v13];

      if (v14 && [v14 length])
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = _UILocalizedString(@"ACTION_SUBTITLE_RETURNTOSENDER_FORMAT", @"Subtitle for the return to sender button in the document menu. Must have one placeholder that will be replaced with the originator's name.", @"From %@");
        v17 = [v15 stringWithFormat:v16, v14];
        [v10 setSubtitle:v17];
      }

      v26[0] = v10;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v3[2](v3, v18);
    }

    else
    {
      v3[2](v3, MEMORY[0x1E695E0F0]);
    }
  }

  else
  {
    v3[2](v3, MEMORY[0x1E695E0F0]);
  }
}

void __47___UIReturnToDocumentAction_actionWithFileURL___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v4 = qword_1ED4A0F60;
  v22 = qword_1ED4A0F60;
  if (!qword_1ED4A0F60)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v24 = __getSYDocumentWorkflowsClientClass_block_invoke;
    v25 = &unk_1E70F2F20;
    v26 = &v19;
    __getSYDocumentWorkflowsClientClass_block_invoke(&buf);
    v4 = v20[3];
  }

  v5 = v4;
  _Block_object_dispose(&v19, 8);
  v6 = objc_alloc_init(v4);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v7 = qword_1ED4A0F68;
  v22 = qword_1ED4A0F68;
  if (!qword_1ED4A0F68)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v24 = __getSYReturnToDocumentRequestClass_block_invoke;
    v25 = &unk_1E70F2F20;
    v26 = &v19;
    __getSYReturnToDocumentRequestClass_block_invoke(&buf);
    v7 = v20[3];
  }

  v8 = v7;
  _Block_object_dispose(&v19, 8);
  v9 = objc_alloc_init(v7);
  [v9 setDocumentAttributes:*(a1 + 32)];
  v10 = [v3 sender];
  if (_IsKindOfUIView(v10))
  {
    v11 = [v3 sender];

    if (v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (os_variant_has_internal_diagnostics())
  {
    v15 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = 0;
      _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Invoked return to document action from an unknown sender: %@", &buf, 0xCu);
    }
  }

  else
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0F58) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Invoked return to document action from an unknown sender: %@", &buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_13:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47___UIReturnToDocumentAction_actionWithFileURL___block_invoke_19;
  v16[3] = &unk_1E711DB48;
  v17 = v6;
  v18 = v11;
  v13 = v11;
  v14 = v6;
  [v14 performRequest:v9 completion:v16];
}

void __47___UIReturnToDocumentAction_actionWithFileURL___block_invoke_19(uint64_t a1, char a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  if (v12 && (a2 & 1) == 0)
  {
    v6 = [*(a1 + 40) _viewControllerForAncestor];
    if (v6)
    {
      v7 = [v12 localizedDescription];
      v8 = [v12 localizedFailureReason];
      v9 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];

      v10 = _UILocalizedString(@"RETURNTOSENDER_ERROR_DISMISS_BUTTON", @"Button of an error showing when the return to document action failed", @"Dismiss");
      v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:0];
      [v9 addAction:v11];

      [v6 presentViewController:v9 animated:1 completion:0];
    }
  }
}

@end