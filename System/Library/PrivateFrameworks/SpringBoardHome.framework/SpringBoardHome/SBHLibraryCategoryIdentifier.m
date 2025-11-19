@interface SBHLibraryCategoryIdentifier
+ (id)categoryWithLocalizedDisplayName:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCategoryIdentifier:(id)a3;
- (NSString)localizedDisplayName;
- (SBHLibraryCategoryIdentifier)initWithCoder:(id)a3;
- (SBHLibraryCategoryIdentifier)initWithPredictionCategoryID:(unint64_t)a3 categoryIndex:(unint64_t)a4 localizedDisplayName:(id)a5 localizedDisplayNameKey:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBHLibraryCategoryIdentifier

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [MEMORY[0x1E698E6B8] builder];
    v5 = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
    v6 = [v4 appendObject:v5];
    v7 = [(SBHLibraryCategoryIdentifier *)self localizedDisplayNameKey];
    v8 = [v6 appendObject:v7];
    v9 = [v8 appendUnsignedInteger:{-[SBHLibraryCategoryIdentifier predictionCategoryID](self, "predictionCategoryID")}];
    self->_hash = [v9 hash];

    return self->_hash;
  }

  return result;
}

- (NSString)localizedDisplayName
{
  if (self->_localizedDisplayNameKey)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 localizedStringForKey:self->_localizedDisplayNameKey value:self->_localizedDisplayNameKey table:@"SpringBoard"];
  }

  else
  {
    v4 = self->_localizedDisplayName;
  }

  return v4;
}

- (SBHLibraryCategoryIdentifier)initWithPredictionCategoryID:(unint64_t)a3 categoryIndex:(unint64_t)a4 localizedDisplayName:(id)a5 localizedDisplayNameKey:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = SBHLibraryCategoryIdentifier;
  v12 = [(SBHLibraryCategoryIdentifier *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_predictionCategoryID = a3;
    v12->_predictionCategoryIndex = a4;
    v14 = [v10 copy];
    localizedDisplayName = v13->_localizedDisplayName;
    v13->_localizedDisplayName = v14;

    v16 = [v11 copy];
    localizedDisplayNameKey = v13->_localizedDisplayNameKey;
    v13->_localizedDisplayNameKey = v16;
  }

  return v13;
}

+ (id)categoryWithLocalizedDisplayName:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(int64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithPredictionCategoryID:a4 categoryIndex:a5 localizedDisplayName:v8 localizedDisplayNameKey:0];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SBHLibraryCategoryIdentifier *)self isEqualToCategoryIdentifier:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToCategoryIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (v6 = [(SBHLibraryCategoryIdentifier *)self predictionCategoryID], v6 == [(SBHLibraryCategoryIdentifier *)v5 predictionCategoryID]))
  {
    v7 = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
    v8 = [(SBHLibraryCategoryIdentifier *)v5 localizedDisplayName];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithPredictionCategoryID:self->_predictionCategoryID localizedDisplayNameKey:self->_localizedDisplayNameKey];
  v4[5] = self->_predictionCategoryIndex;
  v5 = [(NSString *)self->_localizedDisplayName copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSString *)self->_localizedDisplayNameKey copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v8 = a3;
  v5 = [v4 numberWithUnsignedInteger:{-[SBHLibraryCategoryIdentifier predictionCategoryIndex](self, "predictionCategoryIndex")}];
  [v8 encodeObject:v5 forKey:@"predictionCategoryIndexNumber"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SBHLibraryCategoryIdentifier predictionCategoryID](self, "predictionCategoryID")}];
  [v8 encodeObject:v6 forKey:@"predictionCategoryIDNumber"];

  v7 = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
  [v8 encodeObject:v7 forKey:@"localizedDisplayName"];

  [v8 encodeObject:self->_localizedDisplayNameKey forKey:@"localizedDisplayNameKey"];
}

- (SBHLibraryCategoryIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionCategoryIDNumber"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionCategoryIndexNumber"];
  v8 = [v7 unsignedIntegerValue];

  v9 = objc_opt_self();
  v10 = [v4 decodeObjectOfClass:v9 forKey:@"localizedDisplayName"];

  v11 = objc_opt_self();
  v12 = [v4 decodeObjectOfClass:v11 forKey:@"localizedDisplayNameKey"];

  v13 = [(SBHLibraryCategoryIdentifier *)self initWithPredictionCategoryID:v6 categoryIndex:v8 localizedDisplayName:v10 localizedDisplayNameKey:v12];
  return v13;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHLibraryCategoryIdentifier *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
  [v4 appendString:v5 withName:@"localizedDisplayName"];

  v6 = [v4 appendUnsignedInteger:self->_predictionCategoryID withName:@"predictionCategoryID"];
  predictionCategoryIndex = self->_predictionCategoryIndex;
  if (predictionCategoryIndex != -1)
  {
    v8 = [v4 appendUnsignedInteger:predictionCategoryIndex withName:@"predictionCategoryIndex"];
  }

  return v4;
}

- (id)succinctDescription
{
  v3 = [(SBHLibraryCategoryIdentifier *)self succinctDescriptionBuilder];
  v4 = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
  [v3 appendString:v4 withName:@"localizedDisplayName"];

  v5 = [v3 build];

  return v5;
}

@end