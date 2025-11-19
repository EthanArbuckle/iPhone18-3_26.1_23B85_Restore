@interface _PALoggingOptions
+ (unint64_t)defaultLoggingOptions;
- (_TtC17PrivacyAccounting17_PALoggingOptions)init;
@end

@implementation _PALoggingOptions

+ (unint64_t)defaultLoggingOptions
{
  if (qword_1ED5EC7D8 != -1)
  {
    swift_once();
  }

  return qword_1ED5EC898;
}

- (_TtC17PrivacyAccounting17_PALoggingOptions)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _PALoggingOptions();
  return [(_PALoggingOptions *)&v3 init];
}

@end