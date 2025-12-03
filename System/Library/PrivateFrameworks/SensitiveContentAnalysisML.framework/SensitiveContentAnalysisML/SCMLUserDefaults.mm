@interface SCMLUserDefaults
+ (id)globalBoolWithName:(id)name defaultValue:(BOOL)value error:(id *)error;
- (_TtC26SensitiveContentAnalysisML16SCMLUserDefaults)init;
@end

@implementation SCMLUserDefaults

+ (id)globalBoolWithName:(id)name defaultValue:(BOOL)value error:(id *)error
{
  v6 = sub_1B8AF0668();
  v8 = sub_1B8AEDA08(v6, v7);

  if (v8 == 2)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = v8;
  }

  initWithBool_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

  return initWithBool_;
}

- (_TtC26SensitiveContentAnalysisML16SCMLUserDefaults)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SCMLUserDefaults();
  return [(SCMLUserDefaults *)&v3 init];
}

@end