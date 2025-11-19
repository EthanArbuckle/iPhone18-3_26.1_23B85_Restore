@interface SXComponent
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
+ (id)purgeClassBlockForPropertyWithName:(id)a3;
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (NSString)description;
- (SXComponentClassification)classification;
- (id)animationWithValue:(id)a3 withType:(int)a4;
- (int)role;
- (unint64_t)contentRelevanceWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXComponent

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"behaviors"] || objc_msgSend(v4, "isEqualToString:", @"additions"))
  {
    v5 = [SXClassFactory valueClassBlockForBaseClass:objc_opt_class()];
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  if (([v4 isEqualToString:@"conditional"] & 1) == 0)
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SXComponent;
    v5 = objc_msgSendSuper2(&v8, sel_valueClassBlockForPropertyWithName_, v4);
    goto LABEL_4;
  }

  v6 = &__block_literal_global_42;
LABEL_5:

  return v6;
}

+ (id)purgeClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"additions"])
  {
    v5 = &__block_literal_global_13;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXComponent;
    v5 = objc_msgSendSuper2(&v7, sel_purgeClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

BOOL __50__SXComponent_purgeClassBlockForPropertyWithName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"type"];
    [SXClassFactory classForBaseClass:objc_opt_class() type:v3];
    v4 = objc_opt_class();
    v5 = v4 == objc_opt_class();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"anchor"])
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___SXComponent;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  v9 = v8;

  return v9;
}

- (id)animationWithValue:(id)a3 withType:(int)a4
{
  v6 = a3;
  v7 = [(SXComponent *)self backingAnimation];
  v8 = v7;
  if (a4 == 5 && !v7)
  {
    v9 = objc_opt_class();
    v10 = [v6 objectForKey:@"type"];
    v11 = [SXClassFactory classForBaseClass:v9 type:v10];

    v12 = [v11 alloc];
    v13 = [(SXJSONObject *)self specificationVersion];
    v8 = [v12 initWithJSONObject:v6 andVersion:v13];

    [(SXComponent *)self setBackingAnimation:v8];
  }

  return v8;
}

- (unint64_t)contentRelevanceWithValue:(id)a3 withType:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (a4 == 3)
    {
      if ([v6 isEqualToString:@"low"])
      {
        v8 = 1;
      }

      else if ([v7 isEqualToString:@"medium"])
      {
        v8 = 0;
      }

      else if ([v7 isEqualToString:@"high"])
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v9 = [(SXComponent *)self classification];
    v8 = [v9 contentRelevance];
  }

  return v8;
}

- (SXComponentClassification)classification
{
  classification = self->_classification;
  if (!classification)
  {
    v4 = [(SXJSONObject *)self valueForLookupKey:@"role"];
    v5 = [(SXComponent *)self type];
    v6 = [SXComponentClassification classificationForComponentWithType:v5 role:v4];
    v7 = self->_classification;
    self->_classification = v6;

    classification = self->_classification;
  }

  return classification;
}

- (int)role
{
  v2 = [(SXComponent *)self classification];
  v3 = [objc_opt_class() role];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SXComponent *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier: %@>", v4, self, v5];;

  return v6;
}

@end