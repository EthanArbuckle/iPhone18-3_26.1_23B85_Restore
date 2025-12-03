@interface PGSurveyResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToSurveyResult:(id)result;
- (unint64_t)hash;
@end

@implementation PGSurveyResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PGSurveyResult *)self isEquivalentToSurveyResult:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  entityIdentifier = [(PGSurveyResult *)self entityIdentifier];
  v3 = [entityIdentifier hash];

  return v3;
}

- (BOOL)isEquivalentToSurveyResult:(id)result
{
  resultCopy = result;
  entityIdentifier = [resultCopy entityIdentifier];
  entityIdentifier2 = [(PGSurveyResult *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2] && (v7 = objc_msgSend(resultCopy, "entityType"), v7 == -[PGSurveyResult entityType](self, "entityType")) && (v8 = objc_msgSend(resultCopy, "type"), v8 == -[PGSurveyResult type](self, "type")) && (v9 = objc_msgSend(resultCopy, "state"), v9 == -[PGSurveyResult state](self, "state")))
  {
    additionalInfo = [resultCopy additionalInfo];
    additionalInfo2 = [(PGSurveyResult *)self additionalInfo];
    v12 = [additionalInfo isEqualToDictionary:additionalInfo2];
  }

  else
  {
    v12 = 0;
  }

  momentIdentifier = [(PGSurveyResult *)self momentIdentifier];
  v14 = [momentIdentifier length];

  if (v14)
  {
    momentIdentifier2 = [resultCopy momentIdentifier];
    momentIdentifier3 = [(PGSurveyResult *)self momentIdentifier];
    v12 &= [momentIdentifier2 isEqualToString:momentIdentifier3];
  }

  return v12;
}

@end