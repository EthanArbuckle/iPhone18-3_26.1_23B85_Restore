@interface STTextProcessing
+ (id)stripDanglingPunctuationFromRecognitionText:(id)text;
- (STTextProcessing)init;
@end

@implementation STTextProcessing

+ (id)stripDanglingPunctuationFromRecognitionText:(id)text
{
  v3 = sub_26B5E13FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_26B5E199C();
  v10 = v9;
  sub_26B5E13DC();
  v15 = v8;
  v16 = v10;
  v14 = v7;
  sub_26B5DF304();
  sub_26B5E1B6C();

  MEMORY[0x26D67B130](v17, v18, v19, v20);

  (*(v4 + 8))(v7, v3);
  v11 = sub_26B5E198C();

  return v11;
}

- (STTextProcessing)init
{
  v3.receiver = self;
  v3.super_class = STTextProcessing;
  return [(STTextProcessing *)&v3 init];
}

@end