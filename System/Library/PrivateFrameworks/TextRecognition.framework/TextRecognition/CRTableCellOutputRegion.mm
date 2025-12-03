@interface CRTableCellOutputRegion
- (CRTableCellOutputRegion)initWithBlock:(id)block quad:(id)quad rowRange:(_NSRange)range colRange:(_NSRange)colRange;
- (CRTableCellOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (_NSRange)colRange;
- (_NSRange)rowRange;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
@end

@implementation CRTableCellOutputRegion

- (CRTableCellOutputRegion)initWithBlock:(id)block quad:(id)quad rowRange:(_NSRange)range colRange:(_NSRange)colRange
{
  length = colRange.length;
  location = colRange.location;
  v8 = range.length;
  v9 = range.location;
  v17[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  quadCopy = quad;
  v14 = [(CROutputRegion *)self init];
  if (v14)
  {
    [quadCopy baselineAngle];
    [(CROutputRegion *)v14 setBaselineAngle:?];
    -[CROutputRegion setConfidence:](v14, "setConfidence:", [blockCopy confidence]);
    [(CROutputRegion *)v14 setBoundingQuad:quadCopy];
    [(CROutputRegion *)v14 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v14 setShouldComputeTranscriptFromChildren:1];
    v17[0] = blockCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(CROutputRegion *)v14 setChildren:v15];

    [(CRTableCellOutputRegion *)v14 setRowRange:v9, v8];
    [(CRTableCellOutputRegion *)v14 setColRange:location, length];
  }

  return v14;
}

- (CRTableCellOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = CRTableCellOutputRegion;
  v9 = [(CROutputRegion *)&v15 initWithCRCodableDataRepresentation:representationCopy version:version offset:offset];
  if (v9)
  {
    if (version >= 3)
    {
      [CRCodingUtilities integerFromEncodingData:representationCopy offset:offset];
    }

    v10 = [CRCodingUtilities rangeFromEncodingData:representationCopy offset:offset];
    [(CRTableCellOutputRegion *)v9 setRowRange:v10, v11];
    v12 = [CRCodingUtilities rangeFromEncodingData:representationCopy offset:offset];
    [(CRTableCellOutputRegion *)v9 setColRange:v12, v13];
  }

  return v9;
}

- (id)crCodableDataRepresentation
{
  v3 = MEMORY[0x1E695DF88];
  v11.receiver = self;
  v11.super_class = CRTableCellOutputRegion;
  crCodableDataRepresentation = [(CROutputRegion *)&v11 crCodableDataRepresentation];
  v5 = [v3 dataWithData:crCodableDataRepresentation];

  [CRCodingUtilities appendInteger:1 toData:v5];
  rowRange = [(CRTableCellOutputRegion *)self rowRange];
  [CRCodingUtilities appendRange:rowRange toData:v7, v5];
  colRange = [(CRTableCellOutputRegion *)self colRange];
  [CRCodingUtilities appendRange:colRange toData:v9, v5];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  v13.receiver = self;
  v13.super_class = CRTableCellOutputRegion;
  v7 = [(CROutputRegion *)&v13 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:copy];
  rowRange = [(CRTableCellOutputRegion *)self rowRange];
  [v7 setRowRange:{rowRange, v9}];
  colRange = [(CRTableCellOutputRegion *)self colRange];
  [v7 setColRange:{colRange, v11}];
  return v7;
}

- (_NSRange)rowRange
{
  objc_copyStruct(v4, &self->_rowRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)colRange
{
  objc_copyStruct(v4, &self->_colRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end