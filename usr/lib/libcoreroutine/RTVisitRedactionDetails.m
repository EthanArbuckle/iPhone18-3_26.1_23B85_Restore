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
  v3 = [(RTVisitRedactionDetails *)self visitsRedactedForAge];
  v4 = [v3 count];
  v5 = [(RTVisitRedactionDetails *)self visitsRedactedForCategory];
  v6 = [v5 count] + v4;
  v7 = [(RTVisitRedactionDetails *)self visitsRedactedForConfidence];
  v8 = [v7 count];
  v9 = [(RTVisitRedactionDetails *)self visitsRedactedForPlaceType];
  v10 = v6 + v8 + [v9 count];
  v11 = [(RTVisitRedactionDetails *)self visitsRedactedForRegion];
  v12 = [v11 count];

  return v10 + v12;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = [(RTVisitRedactionDetails *)self redactedVisitCount];
  v4 = [(RTVisitRedactionDetails *)self visitsRedactedForAge];
  v5 = [v4 count];
  v6 = [(RTVisitRedactionDetails *)self visitsRedactedForCategory];
  v7 = [v6 count];
  v8 = [(RTVisitRedactionDetails *)self visitsRedactedForConfidence];
  v9 = [v8 count];
  v10 = [(RTVisitRedactionDetails *)self visitsRedactedForPlaceType];
  v11 = [v10 count];
  v12 = [(RTVisitRedactionDetails *)self visitsRedactedForRegion];
  v13 = [v15 stringWithFormat:@"redactedVisitCount, %ld, badAge, %ld, badCategory, %ld, badConfidence, %ld, badPlaceType, %ld, badRegion, %ld", v3, v5, v7, v9, v11, objc_msgSend(v12, "count")];

  return v13;
}

@end