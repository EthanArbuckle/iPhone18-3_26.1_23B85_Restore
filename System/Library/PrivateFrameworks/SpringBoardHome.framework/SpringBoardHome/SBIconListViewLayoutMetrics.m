@interface SBIconListViewLayoutMetrics
- (CGSize)alignmentIconSize;
- (CGSize)iconImageSize;
- (CGSize)iconSize;
- (CGSize)iconSpacing;
- (UIEdgeInsets)iconInsets;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v2 = [(SBIconListViewLayoutMetrics *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListViewLayoutMetrics *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListViewLayoutMetrics *)self succinctDescriptionBuilder];
  v5 = [v4 appendUnsignedInteger:self->_columns withName:@"columns"];
  v6 = [v4 appendUnsignedInteger:self->_rows withName:@"rows"];
  v7 = [v4 appendUnsignedInteger:self->_rowsUsedForLayout withName:@"rowsUsedForLayout"];
  v8 = [v4 appendUnsignedInteger:self->_columnsUsedForLayout withName:@"columnsUsedForLayout"];
  v9 = [v4 appendInteger:self->_columnOffset withName:@"columnOffset"];
  v10 = [v4 appendSize:@"iconSpacing" withName:{self->_iconSpacing.width, self->_iconSpacing.height}];
  v11 = [v4 appendSize:@"iconSize" withName:{self->_iconSize.width, self->_iconSize.height}];
  v12 = [v4 appendSize:@"alignmentIconSize" withName:{self->_alignmentIconSize.width, self->_alignmentIconSize.height}];
  v13 = [v4 appendSize:@"iconImageSize" withName:{self->_iconImageSize.width, self->_iconImageSize.height}];
  v14 = [v4 appendFloat:@"iconContentScale" withName:self->_iconContentScale];
  v15 = NSStringFromUIEdgeInsets(self->_iconInsets);
  [v4 appendString:v15 withName:@"iconInsets"];

  v16 = [v4 appendObject:self->_gridCellInfo withName:@"gridCellInfo"];
  v17 = [v4 appendBool:self->_adjustedInsetsToFit withName:@"adjustedInsetsToFit"];
  v18 = [v4 appendBool:self->_adjustedIconContentScaleToFit withName:@"adjustedIconContentScaleToFit"];
  v19 = [v4 appendBool:self->_needsHorizontalColumnBumps withName:@"needsHorizontalColumnBumps"];

  return v4;
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