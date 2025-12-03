@interface ABTKoreanBackTranslator
+ (id)backTranslate:(id)translate;
- (_TtC22AppleBrailleTranslator23ABTKoreanBackTranslator)init;
@end

@implementation ABTKoreanBackTranslator

+ (id)backTranslate:(id)translate
{
  v3 = sub_21880();
  v5 = v4;
  sub_78C0(&qword_3A288, qword_25D50);
  v6 = sub_8054();
  v7 = (*(*v6 + 112))(v3, v5);
  v9 = v8;
  v11 = v10;

  type metadata accessor for ABTResult();
  v12 = sub_91E0(v7, v9, v11);

  return v12;
}

- (_TtC22AppleBrailleTranslator23ABTKoreanBackTranslator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ABTKoreanBackTranslator();
  return [(ABTKoreanBackTranslator *)&v3 init];
}

@end