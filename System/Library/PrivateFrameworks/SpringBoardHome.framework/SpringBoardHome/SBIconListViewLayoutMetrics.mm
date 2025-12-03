@interface SBIconListViewLayoutMetrics
- (CGSize)alignmentIconSize;
- (CGSize)iconImageSize;
- (CGSize)iconSize;
- (CGSize)iconSpacing;
- (UIEdgeInsets)iconInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBIconListViewLayoutMetrics

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)iconSpacing
{
  width = self->_iconSpacing.width;
  height = self->_iconSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)iconInsets
{
  top = self->_iconInsets.top;
  left = self->_iconInsets.left;
  bottom = self->_iconInsets.bottom;
  right = self->_iconInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)alignmentIconSize
{
  width = self->_alignmentIconSize.width;
  height = self->_alignmentIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = self->_columns;
    *(v4 + 24) = self->_rows;
    *(v4 + 32) = self->_rowsUsedForLayout;
    *(v4 + 40) = self->_columnsUsedForLayout;
    *(v4 + 48) = self->_columnOffset;
    *(v4 + 80) = self->_iconSpacing;
    *(v4 + 96) = self->_iconSize;
    *(v4 + 112) = self->_alignmentIconSize;
    *(v4 + 128) = self->_iconImageSize;
    *(v4 + 56) = self->_iconContentScale;
    v6 = *&self->_iconInsets.bottom;
    *(v4 + 144) = *&self->_iconInsets.top;
    *(v4 + 160) = v6;
    objc_storeStrong((v4 + 64), self->_listModel);
    v7 = [(SBIconListGridCellInfo *)self->_gridCellInfo copy];
    v8 = *(v5 + 72);
    *(v5 + 72) = v7;

    *(v5 + 8) = self->_adjustedInsetsToFit;
    *(v5 + 9) = self->_adjustedIconContentScaleToFit;
    *(v5 + 10) = self->_needsHorizontalColumnBumps;
    v9 = v5;
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListViewLayoutMetrics *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListViewLayoutMetrics *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListViewLayoutMetrics *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendUnsignedInteger:self->_columns withName:@"columns"];
  v6 = [succinctDescriptionBuilder appendUnsignedInteger:self->_rows withName:@"rows"];
  v7 = [succinctDescriptionBuilder appendUnsignedInteger:self->_rowsUsedForLayout withName:@"rowsUsedForLayout"];
  v8 = [succinctDescriptionBuilder appendUnsignedInteger:self->_columnsUsedForLayout withName:@"columnsUsedForLayout"];
  v9 = [succinctDescriptionBuilder appendInteger:self->_columnOffset withName:@"columnOffset"];
  v10 = [succinctDescriptionBuilder appendSize:@"iconSpacing" withName:{self->_iconSpacing.width, self->_iconSpacing.height}];
  v11 = [succinctDescriptionBuilder appendSize:@"iconSize" withName:{self->_iconSize.width, self->_iconSize.height}];
  v12 = [succinctDescriptionBuilder appendSize:@"alignmentIconSize" withName:{self->_alignmentIconSize.width, self->_alignmentIconSize.height}];
  v13 = [succinctDescriptionBuilder appendSize:@"iconImageSize" withName:{self->_iconImageSize.width, self->_iconImageSize.height}];
  v14 = [succinctDescriptionBuilder appendFloat:@"iconContentScale" withName:self->_iconContentScale];
  v15 = NSStringFromUIEdgeInsets(self->_iconInsets);
  [succinctDescriptionBuilder appendString:v15 withName:@"iconInsets"];

  v16 = [succinctDescriptionBuilder appendObject:self->_gridCellInfo withName:@"gridCellInfo"];
  v17 = [succinctDescriptionBuilder appendBool:self->_adjustedInsetsToFit withName:@"adjustedInsetsToFit"];
  v18 = [succinctDescriptionBuilder appendBool:self->_adjustedIconContentScaleToFit withName:@"adjustedIconContentScaleToFit"];
  v19 = [succinctDescriptionBuilder appendBool:self->_needsHorizontalColumnBumps withName:@"needsHorizontalColumnBumps"];

  return succinctDescriptionBuilder;
}

- (CGSize)iconImageSize
{
  width = self->_iconImageSize.width;
  height = self->_iconImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end