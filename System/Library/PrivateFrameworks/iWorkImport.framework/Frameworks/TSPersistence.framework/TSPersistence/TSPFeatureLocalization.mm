@interface TSPFeatureLocalization
+ (BOOL)validateFeatureIdentifier:(id)a3;
+ (id)localizationForFeatureIdentifiers;
@end

@implementation TSPFeatureLocalization

+ (id)localizationForFeatureIdentifiers
{
  if (qword_280A52A58[0] != -1)
  {
    sub_276BD61B0();
  }

  v3 = qword_280A52A50;

  return v3;
}

+ (BOOL)validateFeatureIdentifier:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v7 = objc_msgSend_localizationForFeatureIdentifiers(a1, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);

  v10 = v9 != 0;
  return v10;
}

@end