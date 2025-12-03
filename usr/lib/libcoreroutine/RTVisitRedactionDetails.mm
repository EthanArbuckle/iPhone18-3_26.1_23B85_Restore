@interface RTVisitRedactionDetails
- (RTVisitRedactionDetails)init;
- (id)description;
- (int64_t)redactedVisitCount;
@end

@implementation RTVisitRedactionDetails

- (RTVisitRedactionDetails)init
{
  v10.receiver = self;
  v10.super_class = RTVisitRedactionDetails;
  v2 = [(RTVisitRedactionDetails *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(RTVisitRedactionDetails *)v2 setVisitsRedactedForAge:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(RTVisitRedactionDetails *)v2 setVisitsRedactedForAuthorizedLocation:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(RTVisitRedactionDetails *)v2 setVisitsRedactedForConfidence:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(RTVisitRedactionDetails *)v2 setVisitsRedactedForCategory:v6];

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(RTVisitRedactionDetails *)v2 setVisitsRedactedForPlaceType:v7];

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(RTVisitRedactionDetails *)v2 setVisitsRedactedForRegion:v8];
  }

  return v2;
}

- (int64_t)redactedVisitCount
{
  visitsRedactedForAge = [(RTVisitRedactionDetails *)self visitsRedactedForAge];
  v4 = [visitsRedactedForAge count];
  visitsRedactedForCategory = [(RTVisitRedactionDetails *)self visitsRedactedForCategory];
  v6 = [visitsRedactedForCategory count] + v4;
  visitsRedactedForConfidence = [(RTVisitRedactionDetails *)self visitsRedactedForConfidence];
  v8 = [visitsRedactedForConfidence count];
  visitsRedactedForPlaceType = [(RTVisitRedactionDetails *)self visitsRedactedForPlaceType];
  v10 = v6 + v8 + [visitsRedactedForPlaceType count];
  visitsRedactedForRegion = [(RTVisitRedactionDetails *)self visitsRedactedForRegion];
  v12 = [visitsRedactedForRegion count];

  return v10 + v12;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  redactedVisitCount = [(RTVisitRedactionDetails *)self redactedVisitCount];
  visitsRedactedForAge = [(RTVisitRedactionDetails *)self visitsRedactedForAge];
  v5 = [visitsRedactedForAge count];
  visitsRedactedForCategory = [(RTVisitRedactionDetails *)self visitsRedactedForCategory];
  v7 = [visitsRedactedForCategory count];
  visitsRedactedForConfidence = [(RTVisitRedactionDetails *)self visitsRedactedForConfidence];
  v9 = [visitsRedactedForConfidence count];
  visitsRedactedForPlaceType = [(RTVisitRedactionDetails *)self visitsRedactedForPlaceType];
  v11 = [visitsRedactedForPlaceType count];
  visitsRedactedForRegion = [(RTVisitRedactionDetails *)self visitsRedactedForRegion];
  v13 = [v15 stringWithFormat:@"redactedVisitCount, %ld, badAge, %ld, badCategory, %ld, badConfidence, %ld, badPlaceType, %ld, badRegion, %ld", redactedVisitCount, v5, v7, v9, v11, objc_msgSend(visitsRedactedForRegion, "count")];

  return v13;
}

@end