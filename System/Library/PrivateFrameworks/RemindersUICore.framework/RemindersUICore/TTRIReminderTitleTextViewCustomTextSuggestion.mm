@interface TTRIReminderTitleTextViewCustomTextSuggestion
- (TTRIReminderTitleTextViewCustomTextSuggestion)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TTRIReminderTitleTextViewCustomTextSuggestion

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = v8.receiver;
  [(UITextSuggestion *)&v8 encodeWithCoder:coderCopy];
  v6 = sub_21DBF566C();
  v7 = sub_21DBFA12C();
  [coderCopy encodeObject:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (TTRIReminderTitleTextViewCustomTextSuggestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end