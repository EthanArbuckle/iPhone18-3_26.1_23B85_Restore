@interface PFStoryConcreteStyle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStyle:(id)a3;
- (NSString)diagnosticDescription;
- (PFStoryConcreteStyle)initWithIdentifier:(id)a3 originalColorGradeCategory:(id)a4 customColorGradeKind:(int64_t)a5 songAssetIdentifier:(id)a6 isCustomized:(BOOL)a7;
@end

@implementation PFStoryConcreteStyle

- (BOOL)isEqualToStyle:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = [(PFStoryConcreteStyle *)self originalColorGradeCategory];
    v6 = [(PFStoryConcreteStyle *)v4 originalColorGradeCategory];
    if ((v5 == v6 || [v5 isEqual:v6]) && (v7 = -[PFStoryConcreteStyle customColorGradeKind](self, "customColorGradeKind"), v7 == -[PFStoryConcreteStyle customColorGradeKind](v4, "customColorGradeKind")))
    {
      v8 = [(PFStoryConcreteStyle *)self songAssetIdentifier];
      v9 = [(PFStoryConcreteStyle *)v4 songAssetIdentifier];
      if (v8 == v9 || [v8 isEqual:v9])
      {
        v10 = [(PFStoryConcreteStyle *)self isCustomized];
        v11 = v10 ^ [(PFStoryConcreteStyle *)v4 isCustomized]^ 1;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqualToStyle:self];
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

- (PFStoryConcreteStyle)initWithIdentifier:(id)a3 originalColorGradeCategory:(id)a4 customColorGradeKind:(int64_t)a5 songAssetIdentifier:(id)a6 isCustomized:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = PFStoryConcreteStyle;
  v15 = [(PFStoryConcreteStyle *)&v25 init];
  if (v15)
  {
    if (v12)
    {
      v16 = v12;
      identifier = v15->_identifier;
      v15->_identifier = v16;
    }

    else
    {
      identifier = [MEMORY[0x1E696AFB0] UUID];
      v18 = [identifier UUIDString];
      v19 = v15->_identifier;
      v15->_identifier = v18;
    }

    v20 = [v13 copy];
    originalColorGradeCategory = v15->_originalColorGradeCategory;
    v15->_originalColorGradeCategory = v20;

    v15->_customColorGradeKind = a5;
    v22 = [v14 copy];
    songAssetIdentifier = v15->_songAssetIdentifier;
    v15->_songAssetIdentifier = v22;

    v15->_isCustomized = a7;
  }

  return v15;
}

@end