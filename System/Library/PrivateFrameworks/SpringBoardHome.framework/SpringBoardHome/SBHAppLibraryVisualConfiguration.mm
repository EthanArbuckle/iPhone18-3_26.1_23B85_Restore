@interface SBHAppLibraryVisualConfiguration
- (BOOL)isEqual:(id)equal;
- (CGSize)expandedCategoryPodIconSpacing;
- (CGSize)landscapeCategoryPodIconSpacing;
- (CGSize)portraitCategoryPodIconSpacing;
- (SBHAppLibraryVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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

- (id)copyWithZone:(_NSZone *)zone
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
    v7 = [(SBHSearchVisualConfiguration *)self->_extendedSearchVisualConfiguration copyWithZone:zone];
    v8 = v6[3];
    v6[3] = v7;

    v9 = [(SBHSearchVisualConfiguration *)self->_standardSearchVisualConfiguration copyWithZone:zone];
    v10 = v6[4];
    v6[4] = v9;

    v11 = [(SBHSearchVisualConfiguration *)self->_compactSearchVisualConfiguration copyWithZone:zone];
    v12 = v6[5];
    v6[5] = v11;

    v13 = [(SBHSearchVisualConfiguration *)self->_activeSearchVisualConfiguration copyWithZone:zone];
    v14 = v6[6];
    v6[6] = v13;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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
  succinctDescriptionBuilder = [(SBHAppLibraryVisualConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHAppLibraryVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHAppLibraryVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHAppLibraryVisualConfiguration *)self portraitCategoryPodIconSpacing];
  v5 = [succinctDescriptionBuilder appendSize:@"portraitCategoryPodIconSpacing" withName:?];
  [(SBHAppLibraryVisualConfiguration *)self landscapeCategoryPodIconSpacing];
  v6 = [succinctDescriptionBuilder appendSize:@"landscapeCategoryPodIconSpacing" withName:?];
  [(SBHAppLibraryVisualConfiguration *)self expandedCategoryPodIconSpacing];
  v7 = [succinctDescriptionBuilder appendSize:@"expandedCategoryPodIconSpacing" withName:?];
  v8 = [succinctDescriptionBuilder appendBool:-[SBHAppLibraryVisualConfiguration usesInsetPlatterSearchAppearance](self withName:{"usesInsetPlatterSearchAppearance"), @"usesInsetPlatterSearchAppearance"}];
  [(SBHAppLibraryVisualConfiguration *)self searchContinuousCornerRadius];
  v9 = [succinctDescriptionBuilder appendFloat:@"searchContinuousCornerRadius" withName:?];
  extendedSearchVisualConfiguration = [(SBHAppLibraryVisualConfiguration *)self extendedSearchVisualConfiguration];
  v11 = [succinctDescriptionBuilder appendObject:extendedSearchVisualConfiguration withName:@"extendedSearchVisualConfiguration"];

  standardSearchVisualConfiguration = [(SBHAppLibraryVisualConfiguration *)self standardSearchVisualConfiguration];
  v13 = [succinctDescriptionBuilder appendObject:standardSearchVisualConfiguration withName:@"standardSearchVisualConfiguration"];

  compactSearchVisualConfiguration = [(SBHAppLibraryVisualConfiguration *)self compactSearchVisualConfiguration];
  v15 = [succinctDescriptionBuilder appendObject:compactSearchVisualConfiguration withName:@"compactSearchVisualConfiguration"];

  activeSearchVisualConfiguration = [(SBHAppLibraryVisualConfiguration *)self activeSearchVisualConfiguration];
  v17 = [succinctDescriptionBuilder appendObject:activeSearchVisualConfiguration withName:@"activeSearchVisualConfiguration"];

  return succinctDescriptionBuilder;
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