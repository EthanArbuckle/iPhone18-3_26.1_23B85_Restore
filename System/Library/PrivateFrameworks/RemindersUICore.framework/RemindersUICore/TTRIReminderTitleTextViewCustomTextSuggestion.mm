@interface TTRIReminderTitleTextViewCustomTextSuggestion
- (TTRIReminderTitleTextViewCustomTextSuggestion)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TTRIReminderTitleTextViewCustomTextSuggestion

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v8.receiver;
  [(UITextSuggestion *)&v8 encodeWithCoder:v4];
  v6 = sub_21DBF566C();
  v7 = sub_21DBFA12C();
  [v4 encodeObject:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (TTRIReminderTitleTextViewCustomTextSuggestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end