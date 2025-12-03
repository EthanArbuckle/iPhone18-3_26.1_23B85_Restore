@interface SBHLibraryCategoryIdentifier
+ (id)categoryWithLocalizedDisplayName:(id)name categoryID:(unint64_t)d categoryIndex:(int64_t)index;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCategoryIdentifier:(id)identifier;
- (NSString)localizedDisplayName;
- (SBHLibraryCategoryIdentifier)initWithCoder:(id)coder;
- (SBHLibraryCategoryIdentifier)initWithPredictionCategoryID:(unint64_t)d categoryIndex:(unint64_t)index localizedDisplayName:(id)name localizedDisplayNameKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBHLibraryCategoryIdentifier

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    builder = [MEMORY[0x1E698E6B8] builder];
    localizedDisplayName = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
    v6 = [builder appendObject:localizedDisplayName];
    localizedDisplayNameKey = [(SBHLibraryCategoryIdentifier *)self localizedDisplayNameKey];
    v8 = [v6 appendObject:localizedDisplayNameKey];
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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [mainBundle localizedStringForKey:self->_localizedDisplayNameKey value:self->_localizedDisplayNameKey table:@"SpringBoard"];
  }

  else
  {
    v4 = self->_localizedDisplayName;
  }

  return v4;
}

- (SBHLibraryCategoryIdentifier)initWithPredictionCategoryID:(unint64_t)d categoryIndex:(unint64_t)index localizedDisplayName:(id)name localizedDisplayNameKey:(id)key
{
  nameCopy = name;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = SBHLibraryCategoryIdentifier;
  v12 = [(SBHLibraryCategoryIdentifier *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_predictionCategoryID = d;
    v12->_predictionCategoryIndex = index;
    v14 = [nameCopy copy];
    localizedDisplayName = v13->_localizedDisplayName;
    v13->_localizedDisplayName = v14;

    v16 = [keyCopy copy];
    localizedDisplayNameKey = v13->_localizedDisplayNameKey;
    v13->_localizedDisplayNameKey = v16;
  }

  return v13;
}

+ (id)categoryWithLocalizedDisplayName:(id)name categoryID:(unint64_t)d categoryIndex:(int64_t)index
{
  nameCopy = name;
  v9 = [[self alloc] initWithPredictionCategoryID:d categoryIndex:index localizedDisplayName:nameCopy localizedDisplayNameKey:0];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
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

- (BOOL)isEqualToCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self == identifierCopy)
  {
    v9 = 1;
  }

  else if (identifierCopy && (v6 = [(SBHLibraryCategoryIdentifier *)self predictionCategoryID], v6 == [(SBHLibraryCategoryIdentifier *)v5 predictionCategoryID]))
  {
    localizedDisplayName = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
    localizedDisplayName2 = [(SBHLibraryCategoryIdentifier *)v5 localizedDisplayName];
    v9 = [localizedDisplayName isEqualToString:localizedDisplayName2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v5 = [v4 numberWithUnsignedInteger:{-[SBHLibraryCategoryIdentifier predictionCategoryIndex](self, "predictionCategoryIndex")}];
  [coderCopy encodeObject:v5 forKey:@"predictionCategoryIndexNumber"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SBHLibraryCategoryIdentifier predictionCategoryID](self, "predictionCategoryID")}];
  [coderCopy encodeObject:v6 forKey:@"predictionCategoryIDNumber"];

  localizedDisplayName = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
  [coderCopy encodeObject:localizedDisplayName forKey:@"localizedDisplayName"];

  [coderCopy encodeObject:self->_localizedDisplayNameKey forKey:@"localizedDisplayNameKey"];
}

- (SBHLibraryCategoryIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionCategoryIDNumber"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionCategoryIndexNumber"];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"localizedDisplayName"];

  v11 = objc_opt_self();
  v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"localizedDisplayNameKey"];

  v13 = [(SBHLibraryCategoryIdentifier *)self initWithPredictionCategoryID:unsignedIntegerValue categoryIndex:unsignedIntegerValue2 localizedDisplayName:v10 localizedDisplayNameKey:v12];
  return v13;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHLibraryCategoryIdentifier *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  localizedDisplayName = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
  [v4 appendString:localizedDisplayName withName:@"localizedDisplayName"];

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
  succinctDescriptionBuilder = [(SBHLibraryCategoryIdentifier *)self succinctDescriptionBuilder];
  localizedDisplayName = [(SBHLibraryCategoryIdentifier *)self localizedDisplayName];
  [succinctDescriptionBuilder appendString:localizedDisplayName withName:@"localizedDisplayName"];

  build = [succinctDescriptionBuilder build];

  return build;
}

@end