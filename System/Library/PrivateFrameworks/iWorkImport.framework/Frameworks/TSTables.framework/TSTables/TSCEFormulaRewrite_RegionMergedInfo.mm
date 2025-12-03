@interface TSCEFormulaRewrite_RegionMergedInfo
- (TSCEFormulaRewrite_RegionMergedInfo)initWithMergeRegion:(id)region mergeSource:(TSUCellCoord)source;
- (id)description;
@end

@implementation TSCEFormulaRewrite_RegionMergedInfo

- (TSCEFormulaRewrite_RegionMergedInfo)initWithMergeRegion:(id)region mergeSource:(TSUCellCoord)source
{
  regionCopy = region;
  v11.receiver = self;
  v11.super_class = TSCEFormulaRewrite_RegionMergedInfo;
  v8 = [(TSCEFormulaRewrite_RegionMergedInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mergeRegion, region);
    v9->_mergeSource = source;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromTSUCellCoord();
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"%@ mergeSource: %@ mergeRegion: %@", v7, v8, v4, v5, self->_mergeRegion);

  return v9;
}

@end