@interface TSCHChartPieQuadrant
- (TSCHChartPieQuadrant)initWithWedgeLayoutInfos:(id)a3 horizontalHalfDisk:(unint64_t)a4 verticalHalfDisk:(unint64_t)a5;
@end

@implementation TSCHChartPieQuadrant

- (TSCHChartPieQuadrant)initWithWedgeLayoutInfos:(id)a3 horizontalHalfDisk:(unint64_t)a4 verticalHalfDisk:(unint64_t)a5
{
  v8 = a3;
  v17.receiver = self;
  v17.super_class = TSCHChartPieQuadrant;
  v10 = [(TSCHChartPieQuadrant *)&v17 init];
  if (v10)
  {
    v14 = objc_msgSend_copy(v8, v9, v11, v12, v13);
    wedgeLayoutInfos = v10->_wedgeLayoutInfos;
    v10->_wedgeLayoutInfos = v14;

    v10->_horizontalHalfDisk = a4;
    v10->_verticalHalfDisk = a5;
  }

  return v10;
}

@end