@interface UITraitOverrides
@end

@implementation UITraitOverrides

id __62___UITraitOverrides__traitOverridesWillChange_withApplicator___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = v4[11];
  if (a1[4] == v5)
  {
    v6 = (*(a1[6] + 16))();
    goto LABEL_5;
  }

  if (v5)
  {
    v6 = [(_UITraitOverrides *)v5 _traitCollectionByApplyingOverridesToTraitCollection:v3];
LABEL_5:
    v7 = v6;

    v4 = a1[5];
    goto LABEL_7;
  }

  v7 = v3;
LABEL_7:
  v8 = [(UITraitCollection *)v7 _traitCollectionByApplyingOverrides:v4[2] defaultValueOverrides:?];

  v9 = *(a1[5] + 96);
  if (a1[4] == v9)
  {
    v10 = (*(a1[6] + 16))();
  }

  else
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = [(_UITraitOverrides *)v9 _traitCollectionByApplyingOverridesToTraitCollection:v8];
  }

  v11 = v10;

  v8 = v11;
LABEL_12:

  return v8;
}

id __116___UITraitOverrides__setOverrideTraitCollection_defaultValueOverrides_overridesAppliedBefore_overridesAppliedAfter___block_invoke(void **a1, void *a2)
{
  v2 = [(_UITraitOverrides *)a1[4] _traitCollectionByApplyingAllOverridesToTraitCollection:a2 withOverrides:a1[5] defaultValueOverrides:a1[6]];

  return v2;
}

uint64_t __54___UITraitOverrides__rawOverridesDescriptionMatching___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lowercaseString];
  v4 = [v3 containsString:*(a1 + 32)];

  return v4;
}

@end