@interface TypistMathSupport
- (TypistMathSupport)init;
- (id)getBoundingBoxWithLatex:(id)a3 error:(id *)a4;
@end

@implementation TypistMathSupport

- (id)getBoundingBoxWithLatex:(id)a3 error:(id *)a4
{
  v5 = sub_2701A00E8();
  v7 = v6;
  v8 = self;
  sub_27019F314(v5, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F18, &qword_2701A4680);
  v9 = sub_2701A0138();

  return v9;
}

- (TypistMathSupport)init
{
  v3.receiver = self;
  v3.super_class = TypistMathSupport;
  return [(TypistMathSupport *)&v3 init];
}

@end