@interface SRCompactViewControllerContentTester
- (BOOL)hasContentForState:(id)a3;
@end

@implementation SRCompactViewControllerContentTester

- (BOOL)hasContentForState:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 keyboardHasContent])
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SRCompactViewControllerContentTester hasContentForState:]";
      v5 = "%s #compact:Returning YES because the keyboard has content";
LABEL_29:
      _os_log_impl(&dword_26950D000, v4, OS_LOG_TYPE_DEFAULT, v5, &v13, 0xCu);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if ([v3 navigationStackIsPopping] && ((objc_msgSend(v3, "deviceIsPad") & 1) != 0 || objc_msgSend(v3, "navigationBarHasContent")))
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SRCompactViewControllerContentTester hasContentForState:]";
      v5 = "%s #compact:Returning YES because snippet is being popped from the view stack";
      goto LABEL_29;
    }

LABEL_30:
    v8 = 1;
    goto LABEL_31;
  }

  if ([v3 navigationStackSize] < 2)
  {
    if ([v3 editableUtteranceViewHasContent])
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because point is in tap2edit view";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if ([v3 compactViewHasContent])
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because point is in Compact View";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if ([v3 siriViewControllerIsEditing])
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because a siri view controller is editing";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v9 = [v3 contextMenuIsPresented];
    v4 = *MEMORY[0x277CEF098];
    v10 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v10)
      {
        v13 = 136315138;
        v14 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because a UIContextMenu is currently present";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (v10)
    {
      v13 = 136315138;
      v14 = "[SRCompactViewControllerContentTester hasContentForState:]";
      _os_log_impl(&dword_26950D000, v4, OS_LOG_TYPE_DEFAULT, "%s #compact:Returning NO because point is outside Siri content", &v13, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (([v3 deviceIsPad] & 1) == 0 && objc_msgSend(v3, "navigationBarHasContent"))
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because point is in the navigation bar for multilevel content in phone";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v13 = 136315394;
      v14 = "[SRCompactViewControllerContentTester hasContentForState:]";
      v15 = 1024;
      v16 = [v3 multiLevelViewHasContent];
      _os_log_impl(&dword_26950D000, v7, OS_LOG_TYPE_DEFAULT, "%s #compact:Returning %d because pointis in multi level card", &v13, 0x12u);
    }

    v8 = [v3 multiLevelViewHasContent];
  }

LABEL_31:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

@end