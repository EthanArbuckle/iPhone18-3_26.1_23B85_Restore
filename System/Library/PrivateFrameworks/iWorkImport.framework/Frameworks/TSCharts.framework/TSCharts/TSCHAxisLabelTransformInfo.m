@interface TSCHAxisLabelTransformInfo
- (CGAffineTransform)unitCircleToEllipseTransform;
- (CGPoint)center;
- (CGSize)labelLayoutSize;
- (CGSize)labelSizeInPoints;
- (CGSize)maxLabelSizeInPoints;
- (TSCHChartAxis)axis;
- (TSCHChartAxisID)axisID;
- (TSCHChartAxisLayoutItem)axisLayoutItem;
- (TSCHChartInfo)chartInfo;
- (TSCHChartModel)chartModel;
- (void)setUnitCircleToEllipseTransform:(CGAffineTransform *)a3;
@end

@implementation TSCHAxisLabelTransformInfo

- (TSCHChartAxisLayoutItem)axisLayoutItem
{
  WeakRetained = objc_loadWeakRetained(&self->_axisLayoutItem);

  return WeakRetained;
}

- (TSCHChartModel)chartModel
{
  WeakRetained = objc_loadWeakRetained(&self->_chartModel);

  return WeakRetained;
}

- (TSCHChartInfo)chartInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_chartInfo);

  return WeakRetained;
}

- (TSCHChartAxisID)axisID
{
  WeakRetained = objc_loadWeakRetained(&self->_axisID);

  return WeakRetained;
}

- (TSCHChartAxis)axis
{
  WeakRetained = objc_loadWeakRetained(&self->_axis);

  return WeakRetained;
}

- (CGSize)maxLabelSizeInPoints
{
  width = self->_maxLabelSizeInPoints.width;
  height = self->_maxLabelSizeInPoints.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)labelLayoutSize
{
  width = self->_labelLayoutSize.width;
  height = self->_labelLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)unitCircleToEllipseTransform
{
  v3 = *&self[4].b;
  *&retstr->a = *&self[3].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].d;
  return self;
}

- (void)setUnitCircleToEllipseTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_unitCircleToEllipseTransform.tx = *&a3->tx;
  *&self->_unitCircleToEllipseTransform.c = v4;
  *&self->_unitCircleToEllipseTransform.a = v3;
}

- (CGSize)labelSizeInPoints
{
  width = self->_labelSizeInPoints.width;
  height = self->_labelSizeInPoints.height;
  result.height = height;
  result.width = width;
  return result;
}

@end