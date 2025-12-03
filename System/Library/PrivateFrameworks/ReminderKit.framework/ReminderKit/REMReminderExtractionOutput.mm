@interface REMReminderExtractionOutput
- (BOOL)isEqual:(id)equal;
- (REMReminderExtractionOutput)initWithCoder:(id)coder;
- (REMReminderExtractionOutput)initWithSuggestedTitles:(id)titles isClassifiedAsRecipe:(BOOL)recipe;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReminderExtractionOutput

- (REMReminderExtractionOutput)initWithSuggestedTitles:(id)titles isClassifiedAsRecipe:(BOOL)recipe
{
  titlesCopy = titles;
  v11.receiver = self;
  v11.super_class = REMReminderExtractionOutput;
  v8 = [(REMReminderExtractionOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestedTitles, titles);
    v9->_isClassifiedAsRecipe = recipe;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  suggestedTitles = [(REMReminderExtractionOutput *)self suggestedTitles];
  v6 = [v3 stringWithFormat:@"<%@: %p suggestedTitles: %@, isClassifiedAsRecipe: %i>", v4, self, suggestedTitles, -[REMReminderExtractionOutput isClassifiedAsRecipe](self, "isClassifiedAsRecipe")];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, equalCopy);

    suggestedTitles = [(REMReminderExtractionOutput *)self suggestedTitles];
    suggestedTitles2 = [v6 suggestedTitles];
    v9 = suggestedTitles2;
    if (suggestedTitles == suggestedTitles2)
    {
    }

    else
    {
      suggestedTitles3 = [(REMReminderExtractionOutput *)self suggestedTitles];
      suggestedTitles4 = [v6 suggestedTitles];
      v12 = [suggestedTitles3 isEqual:suggestedTitles4];

      if (!v12)
      {
        LOBYTE(v13) = 0;
LABEL_8:

        return v13;
      }
    }

    isClassifiedAsRecipe = [(REMReminderExtractionOutput *)self isClassifiedAsRecipe];
    v13 = isClassifiedAsRecipe ^ [v6 isClassifiedAsRecipe] ^ 1;
    goto LABEL_8;
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  suggestedTitles = [(REMReminderExtractionOutput *)self suggestedTitles];
  v7 = [suggestedTitles copyWithZone:zone];
  v8 = [v5 initWithSuggestedTitles:v7 isClassifiedAsRecipe:{-[REMReminderExtractionOutput isClassifiedAsRecipe](self, "isClassifiedAsRecipe")}];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  suggestedTitles = [(REMReminderExtractionOutput *)self suggestedTitles];
  [coderCopy encodeObject:suggestedTitles forKey:@"suggestedTitles"];

  [coderCopy encodeBool:-[REMReminderExtractionOutput isClassifiedAsRecipe](self forKey:{"isClassifiedAsRecipe"), @"isClassifiedAsRecipe"}];
}

- (REMReminderExtractionOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"suggestedTitles"];
  v6 = [coderCopy decodeBoolForKey:@"isClassifiedAsRecipe"];

  v7 = [objc_alloc(objc_opt_class()) initWithSuggestedTitles:v5 isClassifiedAsRecipe:v6];
  return v7;
}

@end