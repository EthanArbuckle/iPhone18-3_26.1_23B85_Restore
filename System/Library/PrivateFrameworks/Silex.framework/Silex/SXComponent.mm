@interface SXComponent
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
+ (id)purgeClassBlockForPropertyWithName:(id)name;
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (NSString)description;
- (SXComponentClassification)classification;
- (id)animationWithValue:(id)value withType:(int)type;
- (int)role;
- (unint64_t)contentRelevanceWithValue:(id)value withType:(int)type;
@end

@implementation SXComponent

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"behaviors"] || objc_msgSend(nameCopy, "isEqualToString:", @"additions"))
  {
    v5 = [SXClassFactory valueClassBlockForBaseClass:objc_opt_class()];
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  if (([nameCopy isEqualToString:@"conditional"] & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___SXComponent;
    v5 = objc_msgSendSuper2(&v8, sel_valueClassBlockForPropertyWithName_, nameCopy);
    goto LABEL_4;
  }

  v6 = &__block_literal_global_42;
LABEL_5:

  return v6;
}

+ (id)purgeClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"additions"])
  {
    v5 = &__block_literal_global_13;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXComponent;
    v5 = objc_msgSendSuper2(&v7, sel_purgeClassBlockForPropertyWithName_, nameCopy);
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

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"anchor"])
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SXComponent;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v9 = v8;

  return v9;
}

- (id)animationWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  backingAnimation = [(SXComponent *)self backingAnimation];
  v8 = backingAnimation;
  if (type == 5 && !backingAnimation)
  {
    v9 = objc_opt_class();
    v10 = [valueCopy objectForKey:@"type"];
    v11 = [SXClassFactory classForBaseClass:v9 type:v10];

    v12 = [v11 alloc];
    specificationVersion = [(SXJSONObject *)self specificationVersion];
    v8 = [v12 initWithJSONObject:valueCopy andVersion:specificationVersion];

    [(SXComponent *)self setBackingAnimation:v8];
  }

  return v8;
}

- (unint64_t)contentRelevanceWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v7 = valueCopy;
  if (valueCopy)
  {
    if (type == 3)
    {
      if ([valueCopy isEqualToString:@"low"])
      {
        contentRelevance = 1;
      }

      else if ([v7 isEqualToString:@"medium"])
      {
        contentRelevance = 0;
      }

      else if ([v7 isEqualToString:@"high"])
      {
        contentRelevance = 2;
      }

      else
      {
        contentRelevance = 3;
      }
    }

    else
    {
      contentRelevance = 3;
    }
  }

  else
  {
    classification = [(SXComponent *)self classification];
    contentRelevance = [classification contentRelevance];
  }

  return contentRelevance;
}

- (SXComponentClassification)classification
{
  classification = self->_classification;
  if (!classification)
  {
    v4 = [(SXJSONObject *)self valueForLookupKey:@"role"];
    type = [(SXComponent *)self type];
    v6 = [SXComponentClassification classificationForComponentWithType:type role:v4];
    v7 = self->_classification;
    self->_classification = v6;

    classification = self->_classification;
  }

  return classification;
}

- (int)role
{
  classification = [(SXComponent *)self classification];
  role = [objc_opt_class() role];

  return role;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(SXComponent *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier: %@>", v4, self, identifier];;

  return v6;
}

@end