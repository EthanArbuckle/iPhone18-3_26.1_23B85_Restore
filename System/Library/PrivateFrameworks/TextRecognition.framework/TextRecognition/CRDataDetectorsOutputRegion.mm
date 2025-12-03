@interface CRDataDetectorsOutputRegion
- (BOOL)isEqual:(id)equal;
- (CRDataDetectorsOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (CRDataDetectorsOutputRegion)initWithDataDetectorsResult:(id)result children:(id)children locale:(id)locale originalString:(id)string ddFriendlyString:(id)friendlyString matchToOriginalIndexMapping:(id)mapping;
- (CRDataDetectorsOutputRegion)initWithDataType:(unint64_t)type ddResult:(id)result children:(id)children locale:(id)locale;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
@end

@implementation CRDataDetectorsOutputRegion

- (CRDataDetectorsOutputRegion)initWithDataType:(unint64_t)type ddResult:(id)result children:(id)children locale:(id)locale
{
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v9 = sub_1B429FDF8();
  if (locale)
  {
    locale = sub_1B429FB98();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1B40EE13C(type, result, v9, locale, v11);
}

- (CRDataDetectorsOutputRegion)initWithDataDetectorsResult:(id)result children:(id)children locale:(id)locale originalString:(id)string ddFriendlyString:(id)friendlyString matchToOriginalIndexMapping:(id)mapping
{
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v10 = sub_1B429FDF8();
  if (locale)
  {
    locale = sub_1B429FB98();
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
  return sub_1B40EE40C(result, v10, locale, v12);
}

- (NSString)debugDescription
{
  selfCopy = self;
  CRDataDetectorsOutputRegion.debugDescription.getter();

  v3 = sub_1B429FB88();

  return v3;
}

- (CRDataDetectorsOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = CRDataDetectorsOutputRegion;
  v9 = [(CROutputRegion *)&v13 initWithCRCodableDataRepresentation:representationCopy version:version offset:offset];
  if (v9)
  {
    v9->_dataType = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset];
    v10 = [CRCodingUtilities ddScannerResultFromEncodingData:representationCopy offset:offset];
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
  crCodableDataRepresentation = [(CROutputRegion *)&v8 crCodableDataRepresentation];
  v5 = [v3 dataWithData:crCodableDataRepresentation];

  [CRCodingUtilities appendUInteger:[(CRDataDetectorsOutputRegion *)self dataType] toData:v5];
  ddResult = [(CRDataDetectorsOutputRegion *)self ddResult];
  [CRCodingUtilities appendCodable:ddResult toData:v5];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v11.receiver = self;
      v11.super_class = CRDataDetectorsOutputRegion;
      if ([(CROutputRegion *)&v11 isEqual:v5]&& (v6 = [(CRDataDetectorsOutputRegion *)self dataType], v6 == [(CRDataDetectorsOutputRegion *)v5 dataType]))
      {
        ddResult = [(CRDataDetectorsOutputRegion *)self ddResult];
        ddResult2 = [(CRDataDetectorsOutputRegion *)v5 ddResult];
        v9 = [ddResult isEqual:ddResult2];
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

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  v10.receiver = self;
  v10.super_class = CRDataDetectorsOutputRegion;
  v7 = [(CROutputRegion *)&v10 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:copy];
  [v7 setDataType:{-[CRDataDetectorsOutputRegion dataType](self, "dataType")}];
  ddResult = [(CRDataDetectorsOutputRegion *)self ddResult];
  [v7 setDdResult:ddResult];

  return v7;
}

@end