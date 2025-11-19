@interface SiriUILabelComponentView
+ (id)labelForComponentModel:(id)a3;
+ (id)viewForComponent:(id)a3;
@end

@implementation SiriUILabelComponentView

+ (id)viewForComponent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [SiriUIDetailLabelComponentView viewForComponent:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [a1 labelForComponentModel:v4];
    goto LABEL_5;
  }

  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SiriUILabelComponentView viewForComponent:v7];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

+ (id)labelForComponentModel:(id)a3
{
  v3 = a3;
  v4 = [v3 style];
  v5 = 0;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v6 = [MEMORY[0x277D756B8] siriui_configuredCaptionLabel];
        break;
      case 4:
        v6 = [MEMORY[0x277D756B8] siriui_configuredFootnoteLabel];
        break;
      case 5:
        v6 = [MEMORY[0x277D756B8] siriui_configuredTitleLabel];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v6 = [MEMORY[0x277D756B8] siriui_configuredBodyLabel];
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_15;
      }

      v6 = [MEMORY[0x277D756B8] siriui_configuredSubheadLabel];
    }
  }

  else
  {
    v6 = [MEMORY[0x277D756B8] siriui_configuredHeadlineLabel];
  }

  v5 = v6;
LABEL_15:
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v3 text];

  [v5 setText:v7];
  LODWORD(v8) = 1144750080;
  [v5 setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [v5 setContentCompressionResistancePriority:1 forAxis:v9];
  [v5 sizeToFit];

  return v5;
}

+ (void)viewForComponent:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v3 = 136315394;
  v4 = "+[SiriUILabelComponentView viewForComponent:]";
  v5 = 2114;
  v6 = objc_opt_class();
  v2 = v6;
  _os_log_error_impl(&dword_26948D000, v1, OS_LOG_TYPE_ERROR, "%s Unsupported Object for SiriUILabelComponentView %{public}@", &v3, 0x16u);
}

@end