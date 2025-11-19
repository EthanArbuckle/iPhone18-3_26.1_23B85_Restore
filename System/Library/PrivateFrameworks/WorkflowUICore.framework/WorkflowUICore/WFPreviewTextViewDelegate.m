@interface WFPreviewTextViewDelegate
- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
@end

@implementation WFPreviewTextViewDelegate

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v5 = OUTLINED_FUNCTION_3_13();

  return v5;
}

- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_274BD9E94(v8, v9, v10);

  return v12;
}

@end