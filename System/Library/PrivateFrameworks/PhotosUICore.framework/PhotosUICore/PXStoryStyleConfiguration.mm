@interface PXStoryStyleConfiguration
- (BOOL)isEqual:(id)equal;
- (PXStoryStyleConfiguration)initWithOriginalColorGradeCategory:(id)category customColorGradeKind:(int64_t)kind songResource:(id)resource autoEditDecisionList:(id)list isCustomized:(BOOL)customized;
- (id)copyWithAutoEditDecisionList:(id)list;
- (id)copyWithCustomizedColorGradeKind:(int64_t)kind;
- (id)copyWithCustomizedSongResource:(id)resource;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryStyleConfiguration

- (unint64_t)hash
{
  originalColorGradeCategory = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  v4 = [originalColorGradeCategory hash];

  return v4 ^ (2 * [(PXStoryStyleConfiguration *)self customColorGradeKind]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      originalColorGradeCategory = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
      originalColorGradeCategory2 = [(PXStoryStyleConfiguration *)v5 originalColorGradeCategory];
      if ((originalColorGradeCategory == originalColorGradeCategory2 || [originalColorGradeCategory isEqualToString:originalColorGradeCategory2]) && (v8 = -[PXStoryStyleConfiguration customColorGradeKind](self, "customColorGradeKind"), v8 == -[PXStoryStyleConfiguration customColorGradeKind](v5, "customColorGradeKind")))
      {
        songResource = [(PXStoryStyleConfiguration *)self songResource];
        songResource2 = [(PXStoryStyleConfiguration *)v5 songResource];
        if (songResource == songResource2 || [songResource isEqual:songResource2])
        {
          autoEditDecisionList = [(PXStoryStyleConfiguration *)self autoEditDecisionList];
          autoEditDecisionList2 = [(PXStoryStyleConfiguration *)v5 autoEditDecisionList];
          if (autoEditDecisionList == autoEditDecisionList2 || [autoEditDecisionList isEqual:autoEditDecisionList2])
          {
            isCustomized = [(PXStoryStyleConfiguration *)self isCustomized];
            v14 = isCustomized ^ [(PXStoryStyleConfiguration *)v5 isCustomized]^ 1;
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
  originalColorGradeCategory = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  [(PXStoryStyleConfiguration *)self customColorGradeKind];
  v7 = PFStoryColorGradeKindToString();
  songResource = [(PXStoryStyleConfiguration *)self songResource];
  autoEditDecisionList = [(PXStoryStyleConfiguration *)self autoEditDecisionList];
  v10 = [v3 initWithFormat:@"<%@ %p; colorGradeCategory: %@; colorGradeKind: %@; songResource: %@; EDL:%@>", v5, self, originalColorGradeCategory, v7, songResource, autoEditDecisionList];

  return v10;
}

- (id)copyWithAutoEditDecisionList:(id)list
{
  listCopy = list;
  v5 = objc_alloc(objc_opt_class());
  originalColorGradeCategory = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  customColorGradeKind = [(PXStoryStyleConfiguration *)self customColorGradeKind];
  songResource = [(PXStoryStyleConfiguration *)self songResource];
  v9 = [v5 initWithOriginalColorGradeCategory:originalColorGradeCategory customColorGradeKind:customColorGradeKind songResource:songResource autoEditDecisionList:listCopy isCustomized:{-[PXStoryStyleConfiguration isCustomized](self, "isCustomized")}];

  return v9;
}

- (id)copyWithCustomizedSongResource:(id)resource
{
  resourceCopy = resource;
  v5 = objc_alloc(objc_opt_class());
  originalColorGradeCategory = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  customColorGradeKind = [(PXStoryStyleConfiguration *)self customColorGradeKind];
  autoEditDecisionList = [(PXStoryStyleConfiguration *)self autoEditDecisionList];
  v9 = [v5 initWithOriginalColorGradeCategory:originalColorGradeCategory customColorGradeKind:customColorGradeKind songResource:resourceCopy autoEditDecisionList:autoEditDecisionList isCustomized:1];

  return v9;
}

- (id)copyWithCustomizedColorGradeKind:(int64_t)kind
{
  v5 = objc_alloc(objc_opt_class());
  originalColorGradeCategory = [(PXStoryStyleConfiguration *)self originalColorGradeCategory];
  songResource = [(PXStoryStyleConfiguration *)self songResource];
  autoEditDecisionList = [(PXStoryStyleConfiguration *)self autoEditDecisionList];
  v9 = [v5 initWithOriginalColorGradeCategory:originalColorGradeCategory customColorGradeKind:kind songResource:songResource autoEditDecisionList:autoEditDecisionList isCustomized:1];

  return v9;
}

- (PXStoryStyleConfiguration)initWithOriginalColorGradeCategory:(id)category customColorGradeKind:(int64_t)kind songResource:(id)resource autoEditDecisionList:(id)list isCustomized:(BOOL)customized
{
  categoryCopy = category;
  resourceCopy = resource;
  listCopy = list;
  v19.receiver = self;
  v19.super_class = PXStoryStyleConfiguration;
  v15 = [(PXStoryStyleConfiguration *)&v19 init];
  if (v15)
  {
    v16 = [categoryCopy copy];
    originalColorGradeCategory = v15->_originalColorGradeCategory;
    v15->_originalColorGradeCategory = v16;

    v15->_customColorGradeKind = kind;
    objc_storeStrong(&v15->_songResource, resource);
    objc_storeStrong(&v15->_autoEditDecisionList, list);
    v15->_isCustomized = customized;
  }

  return v15;
}

@end