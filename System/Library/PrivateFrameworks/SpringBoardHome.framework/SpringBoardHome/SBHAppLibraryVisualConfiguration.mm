@interface SBHAppLibraryVisualConfiguration
- (BOOL)isEqual:(id)a3;
- (CGSize)expandedCategoryPodIconSpacing;
- (CGSize)landscapeCategoryPodIconSpacing;
- (CGSize)portraitCategoryPodIconSpacing;
- (SBHAppLibraryVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation SBHAppLibraryVisualConfiguration

- (SBHAppLibraryVisualConfiguration)init
{
  v14.receiver = self;
  v14.super_class = SBHAppLibraryVisualConfiguration;
  v2 = [(SBHAppLibraryVisualConfiguration *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E695F060];
    *(v2 + 56) = *MEMORY[0x1E695F060];
    *(v2 + 72) = v4;
    *(v2 + 88) = v4;
    v2[8] = 0;
    *(v2 + 2) = 0x4038000000000000;
    v5 = objc_alloc_init(SBHSearchVisualConfiguration);
    extendedSearchVisualConfiguration = v3->_extendedSearchVisualConfiguration;
    v3->_extendedSearchVisualConfiguration = v5;

    v7 = objc_alloc_init(SBHSearchVisualConfiguration);
    standardSearchVisualConfiguration = v3->_standardSearchVisualConfiguration;
    v3->_standardSearchVisualConfiguration = v7;

    v9 = objc_alloc_init(SBHSearchVisualConfiguration);
    compactSearchVisualConfiguration = v3->_compactSearchVisualConfiguration;
    v3->_compactSearchVisualConfiguration = v9;

    v11 = objc_alloc_init(SBHSearchVisualConfiguration);
    activeSearchVisualConfiguration = v3->_activeSearchVisualConfiguration;
    v3->_activeSearchVisualConfiguration = v11;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = v5;
  if (v5)
  {
    *(v5 + 56) = self->_portraitCategoryPodIconSpacing;
    *(v5 + 72) = self->_landscapeCategoryPodIconSpacing;
    *(v5 + 88) = self->_expandedCategoryPodIconSpacing;
    v5[8] = self->_usesInsetPlatterSearchAppearance;
    *(v5 + 2) = *&self->_searchContinuousCornerRadius;
    v7 = [(SBHSearchVisualConfiguration *)self->_extendedSearchVisualConfiguration copyWithZone:a3];
    v8 = v6[3];
    v6[3] = v7;

    v9 = [(SBHSearchVisualConfiguration *)self->_standardSearchVisualConfiguration copyWithZone:a3];
    v10 = v6[4];
    v6[4] = v9;

    v11 = [(SBHSearchVisualConfiguration *)self->_compactSearchVisualConfiguration copyWithZone:a3];
    v12 = v6[5];
    v6[5] = v11;

    v13 = [(SBHSearchVisualConfiguration *)self->_activeSearchVisualConfiguration copyWithZone:a3];
    v14 = v6[6];
    v6[6] = v13;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = v7;
      v9 = self->_portraitCategoryPodIconSpacing.width == v7->_portraitCategoryPodIconSpacing.width && self->_portraitCategoryPodIconSpacing.height == v7->_portraitCategoryPodIconSpacing.height;
      if (v9 && (self->_landscapeCategoryPodIconSpacing.width == v7->_landscapeCategoryPodIconSpacing.width ? (v10 = self->_landscapeCategoryPodIconSpacing.height == v7->_landscapeCategoryPodIconSpacing.height) : (v10 = 0), v10 && (self->_expandedCategoryPodIconSpacing.width == v7->_expandedCategoryPodIconSpacing.width ? (v11 = self->_expandedCategoryPodIconSpacing.height == v7->_expandedCategoryPodIconSpacing.height) : (v11 = 0), v11 && self->_usesInsetPlatterSearchAppearance == v7->_usesInsetPlatterSearchAppearance && self->_searchContinuousCornerRadius == v7->_searchContinuousCornerRadius && BSEqualObjects() && BSEqualObjects() && BSEqualObjects())))
      {
        v12 = BSEqualObjects();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  width = self->_expandedCategoryPodIconSpacing.width;
  v4 = self->_portraitCategoryPodIconSpacing.width + self->_portraitCategoryPodIconSpacing.height + self->_landscapeCategoryPodIconSpacing.width + self->_landscapeCategoryPodIconSpacing.height + width + self->_expandedCategoryPodIconSpacing.height;
  LOBYTE(width) = self->_usesInsetPlatterSearchAppearance;
  v5 = self->_searchContinuousCornerRadius + v4 + *&width;
  v6 = v5 + [(SBHSearchVisualConfiguration *)self->_extendedSearchVisualConfiguration hash];
  v7 = v6 + [(SBHSearchVisualConfiguration *)self->_standardSearchVisualConfiguration hash];
  v8 = v7 + [(SBHSearchVisualConfiguration *)self->_compactSearchVisualConfiguration hash];
  return (v8 + [(SBHSearchVisualConfiguration *)self->_activeSearchVisualConfiguration hash]);
}

- (id)succinctDescription
{
  v2 = [(SBHAppLibraryVisualConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHAppLibraryVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHAppLibraryVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHAppLibraryVisualConfiguration *)self portraitCategoryPodIconSpacing];
  v5 = [v4 appendSize:@"portraitCategoryPodIconSpacing" withName:?];
  [(SBHAppLibraryVisualConfiguration *)self landscapeCategoryPodIconSpacing];
  v6 = [v4 appendSize:@"landscapeCategoryPodIconSpacing" withName:?];
  [(SBHAppLibraryVisualConfiguration *)self expandedCategoryPodIconSpacing];
  v7 = [v4 appendSize:@"expandedCategoryPodIconSpacing" withName:?];
  v8 = [v4 appendBool:-[SBHAppLibraryVisualConfiguration usesInsetPlatterSearchAppearance](self withName:{"usesInsetPlatterSearchAppearance"), @"usesInsetPlatterSearchAppearance"}];
  [(SBHAppLibraryVisualConfiguration *)self searchContinuousCornerRadius];
  v9 = [v4 appendFloat:@"searchContinuousCornerRadius" withName:?];
  v10 = [(SBHAppLibraryVisualConfiguration *)self extendedSearchVisualConfiguration];
  v11 = [v4 appendObject:v10 withName:@"extendedSearchVisualConfiguration"];

  v12 = [(SBHAppLibraryVisualConfiguration *)self standardSearchVisualConfiguration];
  v13 = [v4 appendObject:v12 withName:@"standardSearchVisualConfiguration"];

  v14 = [(SBHAppLibraryVisualConfiguration *)self compactSearchVisualConfiguration];
  v15 = [v4 appendObject:v14 withName:@"compactSearchVisualConfiguration"];

  v16 = [(SBHAppLibraryVisualConfiguration *)self activeSearchVisualConfiguration];
  v17 = [v4 appendObject:v16 withName:@"activeSearchVisualConfiguration"];

  return v4;
}

- (CGSize)portraitCategoryPodIconSpacing
{
  width = self->_portraitCategoryPodIconSpacing.width;
  height = self->_portraitCategoryPodIconSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)landscapeCategoryPodIconSpacing
{
  width = self->_landscapeCategoryPodIconSpacing.width;
  height = self->_landscapeCategoryPodIconSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)expandedCategoryPodIconSpacing
{
  width = self->_expandedCategoryPodIconSpacing.width;
  height = self->_expandedCategoryPodIconSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

@end