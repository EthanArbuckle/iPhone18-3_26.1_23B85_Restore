@interface UIColor(WorkflowEditor_CrossPlatform)
+ (id)wf_slotTemplateSlotBackgroundColorWithTintColor:()WorkflowEditor_CrossPlatform;
+ (id)wf_slotTemplateSlotDisabledBackgroundColor;
+ (id)wf_slotTemplateSlotErrorBackgroundColor;
+ (id)wf_slotTemplateSlotErrorHighlightedBackgroundColor;
+ (id)wf_slotTemplateSlotHighlightedBackgroundColorWithTintColor:()WorkflowEditor_CrossPlatform;
+ (id)wf_slotTemplateSlotRunningBackgroundColor;
+ (id)wf_slotTemplateSlotRunningTitleColor;
+ (id)wf_slotTemplateSlotTypingBackgroundColorForUseCase:()WorkflowEditor_CrossPlatform;
@end

@implementation UIColor(WorkflowEditor_CrossPlatform)

+ (id)wf_slotTemplateSlotErrorHighlightedBackgroundColor
{
  v1 = [a1 wf_slotTemplateSlotErrorTitleColor];
  v2 = [v1 colorWithAlphaComponent:0.25];

  return v2;
}

+ (id)wf_slotTemplateSlotErrorBackgroundColor
{
  v1 = [a1 wf_slotTemplateSlotErrorTitleColor];
  v2 = [v1 colorWithAlphaComponent:0.0599999987];

  return v2;
}

+ (id)wf_slotTemplateSlotRunningBackgroundColor
{
  v0 = [MEMORY[0x1E69E09E0] colorWithP3RGBAValue:1289315583];
  v1 = [v0 platformColor];
  v2 = [v1 colorWithAlphaComponent:0.100000001];

  return v2;
}

+ (id)wf_slotTemplateSlotTypingBackgroundColorForUseCase:()WorkflowEditor_CrossPlatform
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = 0.075000003;
  }

  else
  {
    v4 = 0.100000001;
  }

  v5 = [MEMORY[0x1E69E09E0] colorWithSystemColor:14];
  v6 = [v5 colorWithAlphaComponent:v4];
  v3 = [v6 platformColor];

LABEL_6:

  return v3;
}

+ (id)wf_slotTemplateSlotDisabledBackgroundColor
{
  v0 = [MEMORY[0x1E69E09E0] colorWithSystemColor:14];
  v1 = [v0 colorWithAlphaComponent:0.100000001];
  v2 = [v1 platformColor];

  return v2;
}

+ (id)wf_slotTemplateSlotHighlightedBackgroundColorWithTintColor:()WorkflowEditor_CrossPlatform
{
  v1 = [a1 wf_slotTemplateSlotTitleColorWithTintColor:?];
  v2 = [v1 colorWithAlphaComponent:0.25];

  return v2;
}

+ (id)wf_slotTemplateSlotBackgroundColorWithTintColor:()WorkflowEditor_CrossPlatform
{
  v1 = [a1 wf_slotTemplateSlotTitleColorWithTintColor:?];
  v2 = [v1 colorWithAlphaComponent:0.0700000003];

  return v2;
}

+ (id)wf_slotTemplateSlotRunningTitleColor
{
  v0 = [MEMORY[0x1E69E09E0] colorWithP3RGBAValue:1034703103];
  v1 = [v0 platformColor];

  return v1;
}

@end