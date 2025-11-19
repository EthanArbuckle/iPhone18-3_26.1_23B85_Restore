@interface SCMLUserDefaults
+ (id)globalBoolWithName:(id)a3 defaultValue:(BOOL)a4 error:(id *)a5;
- (_TtC26SensitiveContentAnalysisML16SCMLUserDefaults)init;
@end

@implementation SCMLUserDefaults

+ (id)globalBoolWithName:(id)a3 defaultValue:(BOOL)a4 error:(id *)a5
{
  v6 = sub_1B8AF0668();
  v8 = sub_1B8AEDA08(v6, v7);

  if (v8 == 2)
  {
    v9 = a4;
  }

  else
  {
    v9 = v8;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

  return v10;
}

- (_TtC26SensitiveContentAnalysisML16SCMLUserDefaults)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SCMLUserDefaults();
  return [(SCMLUserDefaults *)&v3 init];
}

@end