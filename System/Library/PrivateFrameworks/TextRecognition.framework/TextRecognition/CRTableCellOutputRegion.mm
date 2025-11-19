@interface CRTableCellOutputRegion
- (CRTableCellOutputRegion)initWithBlock:(id)a3 quad:(id)a4 rowRange:(_NSRange)a5 colRange:(_NSRange)a6;
- (CRTableCellOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5;
- (_NSRange)colRange;
- (_NSRange)rowRange;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
- (id)crCodableDataRepresentation;
@end

@implementation CRTableCellOutputRegion

- (CRTableCellOutputRegion)initWithBlock:(id)a3 quad:(id)a4 rowRange:(_NSRange)a5 colRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v8 = a5.length;
  v9 = a5.location;
  v17[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = [(CROutputRegion *)self init];
  if (v14)
  {
    [v13 baselineAngle];
    [(CROutputRegion *)v14 setBaselineAngle:?];
    -[CROutputRegion setConfidence:](v14, "setConfidence:", [v12 confidence]);
    [(CROutputRegion *)v14 setBoundingQuad:v13];
    [(CROutputRegion *)v14 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v14 setShouldComputeTranscriptFromChildren:1];
    v17[0] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(CROutputRegion *)v14 setChildren:v15];

    [(CRTableCellOutputRegion *)v14 setRowRange:v9, v8];
    [(CRTableCellOutputRegion *)v14 setColRange:location, length];
  }

  return v14;
}

- (CRTableCellOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = CRTableCellOutputRegion;
  v9 = [(CROutputRegion *)&v15 initWithCRCodableDataRepresentation:v8 version:a4 offset:a5];
  if (v9)
  {
    if (a4 >= 3)
    {
      [CRCodingUtilities integerFromEncodingData:v8 offset:a5];
    }

    v10 = [CRCodingUtilities rangeFromEncodingData:v8 offset:a5];
    [(CRTableCellOutputRegion *)v9 setRowRange:v10, v11];
    v12 = [CRCodingUtilities rangeFromEncodingData:v8 offset:a5];
    [(CRTableCellOutputRegion *)v9 setColRange:v12, v13];
  }

  return v9;
}

- (id)crCodableDataRepresentation
{
  v3 = MEMORY[0x1E695DF88];
  v11.receiver = self;
  v11.super_class = CRTableCellOutputRegion;
  v4 = [(CROutputRegion *)&v11 crCodableDataRepresentation];
  v5 = [v3 dataWithData:v4];

  [CRCodingUtilities appendInteger:1 toData:v5];
  v6 = [(CRTableCellOutputRegion *)self rowRange];
  [CRCodingUtilities appendRange:v6 toData:v7, v5];
  v8 = [(CRTableCellOutputRegion *)self colRange];
  [CRCodingUtilities appendRange:v8 toData:v9, v5];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v13.receiver = self;
  v13.super_class = CRTableCellOutputRegion;
  v7 = [(CROutputRegion *)&v13 copyWithZone:a3 copyChildren:a4 copyCandidates:a5 deepCopy:a6];
  v8 = [(CRTableCellOutputRegion *)self rowRange];
  [v7 setRowRange:{v8, v9}];
  v10 = [(CRTableCellOutputRegion *)self colRange];
  [v7 setColRange:{v10, v11}];
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