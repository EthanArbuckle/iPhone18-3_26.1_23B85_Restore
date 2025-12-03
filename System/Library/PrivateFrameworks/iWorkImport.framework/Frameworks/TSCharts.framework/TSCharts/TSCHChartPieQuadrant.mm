@interface TSCHChartPieQuadrant
- (TSCHChartPieQuadrant)initWithWedgeLayoutInfos:(id)infos horizontalHalfDisk:(unint64_t)disk verticalHalfDisk:(unint64_t)halfDisk;
@end

@implementation TSCHChartPieQuadrant

- (TSCHChartPieQuadrant)initWithWedgeLayoutInfos:(id)infos horizontalHalfDisk:(unint64_t)disk verticalHalfDisk:(unint64_t)halfDisk
{
  infosCopy = infos;
  v17.receiver = self;
  v17.super_class = TSCHChartPieQuadrant;
  v10 = [(TSCHChartPieQuadrant *)&v17 init];
  if (v10)
  {
    v14 = objc_msgSend_copy(infosCopy, v9, v11, v12, v13);
    wedgeLayoutInfos = v10->_wedgeLayoutInfos;
    v10->_wedgeLayoutInfos = v14;

    v10->_horizontalHalfDisk = disk;
    v10->_verticalHalfDisk = halfDisk;
  }

  return v10;
}

@end