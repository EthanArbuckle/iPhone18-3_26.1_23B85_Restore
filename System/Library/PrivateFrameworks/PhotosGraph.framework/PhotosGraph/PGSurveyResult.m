@interface PGSurveyResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToSurveyResult:(id)a3;
- (unint64_t)hash;
@end

@implementation PGSurveyResult

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PGSurveyResult *)self isEquivalentToSurveyResult:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PGSurveyResult *)self entityIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEquivalentToSurveyResult:(id)a3
{
  v4 = a3;
  v5 = [v4 entityIdentifier];
  v6 = [(PGSurveyResult *)self entityIdentifier];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "entityType"), v7 == -[PGSurveyResult entityType](self, "entityType")) && (v8 = objc_msgSend(v4, "type"), v8 == -[PGSurveyResult type](self, "type")) && (v9 = objc_msgSend(v4, "state"), v9 == -[PGSurveyResult state](self, "state")))
  {
    v10 = [v4 additionalInfo];
    v11 = [(PGSurveyResult *)self additionalInfo];
    v12 = [v10 isEqualToDictionary:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PGSurveyResult *)self momentIdentifier];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [v4 momentIdentifier];
    v16 = [(PGSurveyResult *)self momentIdentifier];
    v12 &= [v15 isEqualToString:v16];
  }

  return v12;
}

@end