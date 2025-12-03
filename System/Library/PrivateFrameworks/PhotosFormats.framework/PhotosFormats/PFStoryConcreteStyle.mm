@interface PFStoryConcreteStyle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStyle:(id)style;
- (NSString)diagnosticDescription;
- (PFStoryConcreteStyle)initWithIdentifier:(id)identifier originalColorGradeCategory:(id)category customColorGradeKind:(int64_t)kind songAssetIdentifier:(id)assetIdentifier isCustomized:(BOOL)customized;
@end

@implementation PFStoryConcreteStyle

- (BOOL)isEqualToStyle:(id)style
{
  styleCopy = style;
  if (self == styleCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    originalColorGradeCategory = [(PFStoryConcreteStyle *)self originalColorGradeCategory];
    originalColorGradeCategory2 = [(PFStoryConcreteStyle *)styleCopy originalColorGradeCategory];
    if ((originalColorGradeCategory == originalColorGradeCategory2 || [originalColorGradeCategory isEqual:originalColorGradeCategory2]) && (v7 = -[PFStoryConcreteStyle customColorGradeKind](self, "customColorGradeKind"), v7 == -[PFStoryConcreteStyle customColorGradeKind](styleCopy, "customColorGradeKind")))
    {
      songAssetIdentifier = [(PFStoryConcreteStyle *)self songAssetIdentifier];
      songAssetIdentifier2 = [(PFStoryConcreteStyle *)styleCopy songAssetIdentifier];
      if (songAssetIdentifier == songAssetIdentifier2 || [songAssetIdentifier isEqual:songAssetIdentifier2])
      {
        isCustomized = [(PFStoryConcreteStyle *)self isCustomized];
        v11 = isCustomized ^ [(PFStoryConcreteStyle *)styleCopy isCustomized]^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqualToStyle:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(PFStoryRecipeArchiver);
  v4 = [(PFStoryRecipeArchiver *)v3 archivedJSONObjectWithStyle:self];
  v5 = [v4 description];

  return v5;
}

- (PFStoryConcreteStyle)initWithIdentifier:(id)identifier originalColorGradeCategory:(id)category customColorGradeKind:(int64_t)kind songAssetIdentifier:(id)assetIdentifier isCustomized:(BOOL)customized
{
  identifierCopy = identifier;
  categoryCopy = category;
  assetIdentifierCopy = assetIdentifier;
  v25.receiver = self;
  v25.super_class = PFStoryConcreteStyle;
  v15 = [(PFStoryConcreteStyle *)&v25 init];
  if (v15)
  {
    if (identifierCopy)
    {
      v16 = identifierCopy;
      identifier = v15->_identifier;
      v15->_identifier = v16;
    }

    else
    {
      identifier = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [identifier UUIDString];
      v19 = v15->_identifier;
      v15->_identifier = uUIDString;
    }

    v20 = [categoryCopy copy];
    originalColorGradeCategory = v15->_originalColorGradeCategory;
    v15->_originalColorGradeCategory = v20;

    v15->_customColorGradeKind = kind;
    v22 = [assetIdentifierCopy copy];
    songAssetIdentifier = v15->_songAssetIdentifier;
    v15->_songAssetIdentifier = v22;

    v15->_isCustomized = customized;
  }

  return v15;
}

@end