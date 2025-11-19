@interface REMReminderExtractionOutput
- (BOOL)isEqual:(id)a3;
- (REMReminderExtractionOutput)initWithCoder:(id)a3;
- (REMReminderExtractionOutput)initWithSuggestedTitles:(id)a3 isClassifiedAsRecipe:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReminderExtractionOutput

- (REMReminderExtractionOutput)initWithSuggestedTitles:(id)a3 isClassifiedAsRecipe:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMReminderExtractionOutput;
  v8 = [(REMReminderExtractionOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestedTitles, a3);
    v9->_isClassifiedAsRecipe = a4;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMReminderExtractionOutput *)self suggestedTitles];
  v6 = [v3 stringWithFormat:@"<%@: %p suggestedTitles: %@, isClassifiedAsRecipe: %i>", v4, self, v5, -[REMReminderExtractionOutput isClassifiedAsRecipe](self, "isClassifiedAsRecipe")];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, v4);

    v7 = [(REMReminderExtractionOutput *)self suggestedTitles];
    v8 = [v6 suggestedTitles];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(REMReminderExtractionOutput *)self suggestedTitles];
      v11 = [v6 suggestedTitles];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        LOBYTE(v13) = 0;
LABEL_8:

        return v13;
      }
    }

    v14 = [(REMReminderExtractionOutput *)self isClassifiedAsRecipe];
    v13 = v14 ^ [v6 isClassifiedAsRecipe] ^ 1;
    goto LABEL_8;
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(REMReminderExtractionOutput *)self suggestedTitles];
  v7 = [v6 copyWithZone:a3];
  v8 = [v5 initWithSuggestedTitles:v7 isClassifiedAsRecipe:{-[REMReminderExtractionOutput isClassifiedAsRecipe](self, "isClassifiedAsRecipe")}];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(REMReminderExtractionOutput *)self suggestedTitles];
  [v5 encodeObject:v4 forKey:@"suggestedTitles"];

  [v5 encodeBool:-[REMReminderExtractionOutput isClassifiedAsRecipe](self forKey:{"isClassifiedAsRecipe"), @"isClassifiedAsRecipe"}];
}

- (REMReminderExtractionOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"suggestedTitles"];
  v6 = [v4 decodeBoolForKey:@"isClassifiedAsRecipe"];

  v7 = [objc_alloc(objc_opt_class()) initWithSuggestedTitles:v5 isClassifiedAsRecipe:v6];
  return v7;
}

@end