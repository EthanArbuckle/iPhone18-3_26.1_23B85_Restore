@interface CRDataDetectorsOutputRegion
- (BOOL)isEqual:(id)a3;
- (CRDataDetectorsOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5;
- (CRDataDetectorsOutputRegion)initWithDataDetectorsResult:(id)a3 children:(id)a4 locale:(id)a5 originalString:(id)a6 ddFriendlyString:(id)a7 matchToOriginalIndexMapping:(id)a8;
- (CRDataDetectorsOutputRegion)initWithDataType:(unint64_t)a3 ddResult:(id)a4 children:(id)a5 locale:(id)a6;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
- (id)crCodableDataRepresentation;
@end

@implementation CRDataDetectorsOutputRegion

- (CRDataDetectorsOutputRegion)initWithDataType:(unint64_t)a3 ddResult:(id)a4 children:(id)a5 locale:(id)a6
{
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v9 = sub_1B429FDF8();
  if (a6)
  {
    a6 = sub_1B429FB98();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1B40EE13C(a3, a4, v9, a6, v11);
}

- (CRDataDetectorsOutputRegion)initWithDataDetectorsResult:(id)a3 children:(id)a4 locale:(id)a5 originalString:(id)a6 ddFriendlyString:(id)a7 matchToOriginalIndexMapping:(id)a8
{
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v10 = sub_1B429FDF8();
  if (a5)
  {
    a5 = sub_1B429FB98();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_1B429FB98();
  sub_1B429FB98();
  sub_1B40E27B4(0, &qword_1ED95EE90);
  sub_1B429FDF8();
  return sub_1B40EE40C(a3, v10, a5, v12);
}

- (NSString)debugDescription
{
  v2 = self;
  CRDataDetectorsOutputRegion.debugDescription.getter();

  v3 = sub_1B429FB88();

  return v3;
}

- (CRDataDetectorsOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = CRDataDetectorsOutputRegion;
  v9 = [(CROutputRegion *)&v13 initWithCRCodableDataRepresentation:v8 version:a4 offset:a5];
  if (v9)
  {
    v9->_dataType = [CRCodingUtilities unsignedIntegerFromEncodingData:v8 offset:a5];
    v10 = [CRCodingUtilities ddScannerResultFromEncodingData:v8 offset:a5];
    ddResult = v9->_ddResult;
    v9->_ddResult = v10;
  }

  return v9;
}

- (id)crCodableDataRepresentation
{
  v3 = MEMORY[0x1E695DF88];
  v8.receiver = self;
  v8.super_class = CRDataDetectorsOutputRegion;
  v4 = [(CROutputRegion *)&v8 crCodableDataRepresentation];
  v5 = [v3 dataWithData:v4];

  [CRCodingUtilities appendUInteger:[(CRDataDetectorsOutputRegion *)self dataType] toData:v5];
  v6 = [(CRDataDetectorsOutputRegion *)self ddResult];
  [CRCodingUtilities appendCodable:v6 toData:v5];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v11.receiver = self;
      v11.super_class = CRDataDetectorsOutputRegion;
      if ([(CROutputRegion *)&v11 isEqual:v5]&& (v6 = [(CRDataDetectorsOutputRegion *)self dataType], v6 == [(CRDataDetectorsOutputRegion *)v5 dataType]))
      {
        v7 = [(CRDataDetectorsOutputRegion *)self ddResult];
        v8 = [(CRDataDetectorsOutputRegion *)v5 ddResult];
        v9 = [v7 isEqual:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v10.receiver = self;
  v10.super_class = CRDataDetectorsOutputRegion;
  v7 = [(CROutputRegion *)&v10 copyWithZone:a3 copyChildren:a4 copyCandidates:a5 deepCopy:a6];
  [v7 setDataType:{-[CRDataDetectorsOutputRegion dataType](self, "dataType")}];
  v8 = [(CRDataDetectorsOutputRegion *)self ddResult];
  [v7 setDdResult:v8];

  return v7;
}

@end