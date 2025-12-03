@interface TSPFeatureLocalization
+ (BOOL)validateFeatureIdentifier:(id)identifier;
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

+ (BOOL)validateFeatureIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 1;
  }

  identifierCopy = identifier;
  v7 = objc_msgSend_localizationForFeatureIdentifiers(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, identifierCopy);

  v10 = v9 != 0;
  return v10;
}

@end