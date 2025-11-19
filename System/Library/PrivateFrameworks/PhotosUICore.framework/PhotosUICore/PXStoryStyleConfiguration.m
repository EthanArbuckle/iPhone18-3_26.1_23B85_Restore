@interface PXStoryStyleConfiguration
- (BOOL)isEqual:(id)a3;
- (PXStoryStyleConfiguration)initWithOriginalColorGradeCategory:(id)a3 customColorGradeKind:(int64_t)a4 songResource:(id)a5 autoEditDecisionList:(id)a6 isCustomized:(BOOL)a7;
- (id)copyWithAutoEditDecisionList:(id)a3;
- (id)copyWithCustomizedColorGradeKind:(int64_t)a3;
- (id)copyWithCustomizedSongResource:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryStyleConfiguration

- (unint64_t)hash
{
  v3 = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  v4 = [v3 hash];

  return v4 ^ (2 * [(PXStoryStyleConfiguration *)self customColorGradeKind]);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
      v7 = [(PXStoryStyleConfiguration *)v5 originalColorGradeCategory];
      if ((v6 == v7 || [v6 isEqualToString:v7]) && (v8 = -[PXStoryStyleConfiguration customColorGradeKind](self, "customColorGradeKind"), v8 == -[PXStoryStyleConfiguration customColorGradeKind](v5, "customColorGradeKind")))
      {
        v9 = [(PXStoryStyleConfiguration *)self songResource];
        v10 = [(PXStoryStyleConfiguration *)v5 songResource];
        if (v9 == v10 || [v9 isEqual:v10])
        {
          v11 = [(PXStoryStyleConfiguration *)self autoEditDecisionList];
          v12 = [(PXStoryStyleConfiguration *)v5 autoEditDecisionList];
          if (v11 == v12 || [v11 isEqual:v12])
          {
            v13 = [(PXStoryStyleConfiguration *)self isCustomized];
            v14 = v13 ^ [(PXStoryStyleConfiguration *)v5 isCustomized]^ 1;
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  [(PXStoryStyleConfiguration *)self customColorGradeKind];
  v7 = PFStoryColorGradeKindToString();
  v8 = [(PXStoryStyleConfiguration *)self songResource];
  v9 = [(PXStoryStyleConfiguration *)self autoEditDecisionList];
  v10 = [v3 initWithFormat:@"<%@ %p; colorGradeCategory: %@; colorGradeKind: %@; songResource: %@; EDL:%@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (id)copyWithAutoEditDecisionList:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  v7 = [(PXStoryStyleConfiguration *)self customColorGradeKind];
  v8 = [(PXStoryStyleConfiguration *)self songResource];
  v9 = [v5 initWithOriginalColorGradeCategory:v6 customColorGradeKind:v7 songResource:v8 autoEditDecisionList:v4 isCustomized:{-[PXStoryStyleConfiguration isCustomized](self, "isCustomized")}];

  return v9;
}

- (id)copyWithCustomizedSongResource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  v7 = [(PXStoryStyleConfiguration *)self customColorGradeKind];
  v8 = [(PXStoryStyleConfiguration *)self autoEditDecisionList];
  v9 = [v5 initWithOriginalColorGradeCategory:v6 customColorGradeKind:v7 songResource:v4 autoEditDecisionList:v8 isCustomized:1];

  return v9;
}

- (id)copyWithCustomizedColorGradeKind:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  v7 = [(PXStoryStyleConfiguration *)self songResource];
  v8 = [(PXStoryStyleConfiguration *)self autoEditDecisionList];
  v9 = [v5 initWithOriginalColorGradeCategory:v6 customColorGradeKind:a3 songResource:v7 autoEditDecisionList:v8 isCustomized:1];

  return v9;
}

- (PXStoryStyleConfiguration)initWithOriginalColorGradeCategory:(id)a3 customColorGradeKind:(int64_t)a4 songResource:(id)a5 autoEditDecisionList:(id)a6 isCustomized:(BOOL)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = PXStoryStyleConfiguration;
  v15 = [(PXStoryStyleConfiguration *)&v19 init];
  if (v15)
  {
    v16 = [v12 copy];
    originalColorGradeCategory = v15->_originalColorGradeCategory;
    v15->_originalColorGradeCategory = v16;

    v15->_customColorGradeKind = a4;
    objc_storeStrong(&v15->_songResource, a5);
    objc_storeStrong(&v15->_autoEditDecisionList, a6);
    v15->_isCustomized = a7;
  }

  return v15;
}

@end