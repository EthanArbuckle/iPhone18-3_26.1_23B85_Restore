@interface ISUIKitDialogOperation
- (void)_cleanupAlert;
- (void)_showAlertWithCompletion:(id)completion;
- (void)handleButtonSelected:(int64_t)selected withResponseDictionary:(id)dictionary;
- (void)run;
@end

@implementation ISUIKitDialogOperation

- (void)run
{
  selfCopy = self;
  v71 = *MEMORY[0x277D85DE8];
  dialog = [(ISDialogOperation *)self dialog];
  v4 = dialog;
  if (dialog && ([dialog isDisplayable] & 1) != 0)
  {
    v48 = dispatch_semaphore_create(0);
    UIAlertControllerClass = getUIAlertControllerClass();
    title = [v4 title];
    message = [v4 message];
    v8 = [(objc_class *)UIAlertControllerClass alertControllerWithTitle:title message:message preferredStyle:1];
    alert = selfCopy->_alert;
    selfCopy->_alert = v8;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v47 = v4;
    textFields = [v4 textFields];
    v11 = [textFields countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v64;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v64 != v13)
          {
            objc_enumerationMutation(textFields);
          }

          v15 = *(*(&v63 + 1) + 8 * i);
          v16 = selfCopy->_alert;
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __29__ISUIKitDialogOperation_run__block_invoke;
          v62[3] = &unk_27A670E50;
          v62[4] = v15;
          [(UIAlertController *)v16 addTextFieldWithConfigurationHandler:v62];
        }

        v12 = [textFields countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v12);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v4 = v47;
    buttons = [v47 buttons];
    v18 = [buttons countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = 0;
      v22 = *v59;
      obj = buttons;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          v24 = selfCopy;
          if (*v59 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v58 + 1) + 8 * j);
          title2 = [v25 title];
          lowercaseString = [title2 lowercaseString];
          v28 = [lowercaseString isEqualToString:@"cancel"];

          if (v28)
          {
            v29 = v25;

            v21 = v29;
            selfCopy = v24;
          }

          else
          {
            UIAlertActionClass = getUIAlertActionClass();
            title3 = [v25 title];
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __29__ISUIKitDialogOperation_run__block_invoke_2;
            v55[3] = &unk_27A670E78;
            selfCopy = v24;
            v55[4] = v24;
            v57 = v20;
            v56 = v48;
            v32 = [(objc_class *)UIAlertActionClass actionWithTitle:title3 style:0 handler:v55];

            [(UIAlertController *)v24->_alert addAction:v32];
            ++v20;
          }
        }

        v19 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v19);

      if (v21)
      {
        v33 = getUIAlertActionClass();
        title4 = [v21 title];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __29__ISUIKitDialogOperation_run__block_invoke_3;
        v52[3] = &unk_27A670E78;
        v52[4] = selfCopy;
        v54 = v20;
        v35 = v48;
        v53 = v48;
        v36 = [(objc_class *)v33 actionWithTitle:title4 style:1 handler:v52];

        [(UIAlertController *)selfCopy->_alert addAction:v36];
        v4 = v47;
LABEL_38:
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __29__ISUIKitDialogOperation_run__block_invoke_4;
        v50[3] = &unk_27A670EA0;
        v51 = v35;
        v44 = v35;
        [(ISUIKitDialogOperation *)selfCopy _showAlertWithCompletion:v50];
        dispatch_semaphore_wait(v44, 0xFFFFFFFFFFFFFFFFLL);

        goto LABEL_39;
      }

      v4 = v47;
    }

    else
    {

      v21 = 0;
    }

    v35 = v48;
    goto LABEL_38;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v39 = shouldLog | 2;
  }

  else
  {
    v39 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v41 = v39;
  }

  else
  {
    v41 = v39 & 2;
  }

  if (!v41)
  {
    goto LABEL_33;
  }

  v69 = 138412290;
  v70 = objc_opt_class();
  v42 = v70;
  LODWORD(v46) = 12;
  v43 = _os_log_send_and_compose_impl();

  if (v43)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:{4, &v69, v46}];
    free(v43);
    SSFileLog();
LABEL_33:
  }

  [(ISOperation *)selfCopy setSuccess:1];
LABEL_39:

  v45 = *MEMORY[0x277D85DE8];
}

void __29__ISUIKitDialogOperation_run__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 keyboardType];
  if (v5 == 7 || v5 == 4)
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 == 0;
  }

  [v4 setKeyboardType:v7];
  [v4 setSecureTextEntry:{objc_msgSend(*(a1 + 32), "isSecure")}];
  v8 = [*(a1 + 32) title];
  [v4 setPlaceholder:v8];

  v9 = [*(a1 + 32) value];
  [v4 setText:v9];
}

intptr_t __29__ISUIKitDialogOperation_run__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) handleButtonSelected:*(a1 + 48) withResponseDictionary:0];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

intptr_t __29__ISUIKitDialogOperation_run__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) handleButtonSelected:*(a1 + 48) withResponseDictionary:0];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

intptr_t __29__ISUIKitDialogOperation_run__block_invoke_4(intptr_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return dispatch_semaphore_signal(*(result + 32));
  }

  return result;
}

- (void)_cleanupAlert
{
  [(UIWindow *)self->_window setHidden:1];
  window = self->_window;
  self->_window = 0;
}

- (void)_showAlertWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (!self->_alert)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v16 = 138412290;
      v17 = objc_opt_class();
      v10 = v17;
      LODWORD(v13) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:

        v5[2](v5, 0);
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v16, v13}];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ISUIKitDialogOperation__showAlertWithCompletion___block_invoke;
  block[3] = &unk_27A670EC8;
  block[4] = self;
  v15 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
}

void __51__ISUIKitDialogOperation__showAlertWithCompletion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getUIWindowClass());
  v3 = [(objc_class *)getUIScreenClass() mainScreen];
  [v3 bounds];
  v4 = [v2 initWithFrame:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 384);
  *(v5 + 384) = v4;

  v7 = *(*(a1 + 32) + 384);
  v8 = objc_alloc_init(getUIViewControllerClass());
  [v7 setRootViewController:v8];

  v9 = [(objc_class *)getUIApplicationClass() sharedApplication];
  v10 = [v9 delegate];

  if (objc_opt_respondsToSelector())
  {
    v11 = *(*(a1 + 32) + 384);
    v12 = [v10 window];
    v13 = [v12 tintColor];
    [v11 setTintColor:v13];
  }

  v14 = [(objc_class *)getUIApplicationClass() sharedApplication];
  v15 = [v14 windows];
  v16 = [v15 lastObject];

  if (v16)
  {
    v17 = *(*(a1 + 32) + 384);
    [v16 windowLevel];
    [v17 setWindowLevel:v18 + 1.0];
    [*(*(a1 + 32) + 384) makeKeyAndVisible];
    v19 = [*(*(a1 + 32) + 384) rootViewController];
    if (v19)
    {
      v20 = *(*(a1 + 32) + 376);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __51__ISUIKitDialogOperation__showAlertWithCompletion___block_invoke_8;
      v37[3] = &unk_27A670840;
      v38 = *(a1 + 40);
      [v19 presentViewController:v20 animated:1 completion:v37];

LABEL_30:
      goto LABEL_31;
    }

    v28 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v28)
    {
      v28 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v29 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v30 = v29 | 2;
    }

    else
    {
      v30 = v29;
    }

    v31 = [v28 OSLogObject];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v32 = *(a1 + 32);
      v39 = 138412290;
      v40 = objc_opt_class();
      v33 = v40;
      LODWORD(v36) = 12;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
LABEL_29:

        (*(*(a1 + 40) + 16))();
        goto LABEL_30;
      }

      v31 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:{4, &v39, v36}];
      free(v34);
      SSFileLog();
    }

    goto LABEL_29;
  }

  v21 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v21)
  {
    v21 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v21 OSLogObject];
  if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v23 &= 2u;
  }

  if (!v23)
  {
    goto LABEL_16;
  }

  v25 = *(a1 + 32);
  v39 = 138412290;
  v40 = objc_opt_class();
  v26 = v40;
  LODWORD(v36) = 12;
  v27 = _os_log_send_and_compose_impl();

  if (v27)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:{4, &v39, v36}];
    free(v27);
    SSFileLog();
LABEL_16:
  }

  (*(*(a1 + 40) + 16))();
LABEL_31:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)handleButtonSelected:(int64_t)selected withResponseDictionary:(id)dictionary
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = [(ISDialogOperation *)self dialog:selected];
  buttons = [v6 buttons];

  if (selected < 0 || [buttons count] <= selected || (objc_msgSend(buttons, "objectAtIndexedSubscript:", selected), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v35 = 138412546;
      v36 = objc_opt_class();
      v37 = 2048;
      selectedCopy = selected;
      v14 = v36;
      LODWORD(v28) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (v15)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v35, v28}];
        free(v15);
        SSFileLog();
      }
    }

    else
    {
    }
  }

  else
  {
    mEMORY[0x277D69B38] = v8;
    delegate = [(ISOperation *)self delegate];
    v29 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [delegate operation:self selectedButton:mEMORY[0x277D69B38]];
    }

    else if ([(ISDialogOperation *)self performDefaultActions])
    {
      dialog = [(ISDialogOperation *)self dialog];
      [mEMORY[0x277D69B38] performDefaultActionForDialog:dialog];
    }

    [(ISDialogOperation *)self setSelectedButton:mEMORY[0x277D69B38]];
    [(ISOperation *)self lock];
    textFieldValues = self->super._textFieldValues;
    self->super._textFieldValues = 0;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    textFields = [(UIAlertController *)self->_alert textFields];
    v21 = [textFields countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(textFields);
          }

          text = [*(*(&v30 + 1) + 8 * i) text];
          [(NSArray *)v19 addObject:text];
        }

        v22 = [textFields countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v22);
    }

    v26 = self->super._textFieldValues;
    self->super._textFieldValues = v19;

    [(ISOperation *)self unlock];
    [(ISOperation *)self setSuccess:1];
    [(ISUIKitDialogOperation *)self _cleanupAlert];
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end