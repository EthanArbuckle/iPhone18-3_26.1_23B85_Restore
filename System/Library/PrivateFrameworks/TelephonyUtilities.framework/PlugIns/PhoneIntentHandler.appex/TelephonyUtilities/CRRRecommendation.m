@interface CRRRecommendation
- (BOOL)isFoundInAppsSuggestion;
- (CRRRecommendation)initWithFullyResolvedPerson:(id)a3;
- (CRRRecommendation)initWithPerson:(id)a3;
- (CRRRecommendation)initWithRecommendationType:(int64_t)a3 persons:(id)a4;
- (CRRRecommendation)initWithSiriInferencePerson:(id)a3;
- (id)recommendedResult;
@end

@implementation CRRRecommendation

- (CRRRecommendation)initWithPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 personHandle];
  v6 = [v5 value];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(CRRRecommendation *)self initWithFullyResolvedPerson:v4];
  }

  else
  {
    v8 = [(CRRRecommendation *)self initWithSiriInferencePerson:v4];
  }

  v9 = v8;

  return v9;
}

- (CRRRecommendation)initWithSiriInferencePerson:(id)a3
{
  v4 = a3;
  v5 = [v4 scoredAlternatives];
  v6 = [v5 firstObject];

  v7 = [v6 recommendation];
  v8 = [v4 alternatives];

  v9 = &__NSArray0__struct;
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  if (![v6 recommendation])
  {
    v11 = [v6 person];
    v12 = [v11 personHandle];
    v13 = [v12 isSuggested];

    if (v13)
    {
      v7 = 1;
    }
  }

  v14 = [(CRRRecommendation *)self initWithRecommendationType:v7 persons:v10];

  return v14;
}

- (CRRRecommendation)initWithFullyResolvedPerson:(id)a3
{
  v8 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];

  v6 = [(CRRRecommendation *)self initWithRecommendationType:0 persons:v5, v8];
  return v6;
}

- (CRRRecommendation)initWithRecommendationType:(int64_t)a3 persons:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRRRecommendation;
  v8 = [(CRRRecommendation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_recommendationType = a3;
    objc_storeStrong(&v8->_persons, a4);
  }

  return v9;
}

- (BOOL)isFoundInAppsSuggestion
{
  v2 = [(CRRRecommendation *)self persons];
  v3 = [v2 firstObject];
  v4 = [v3 personHandle];
  v5 = [v4 isSuggested];

  return v5;
}

- (id)recommendedResult
{
  v3 = [(CRRRecommendation *)self persons];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CRRRecommendation *)self persons];
    v6 = [v5 count];

    if (v6 == 1)
    {
      v7 = [(CRRRecommendation *)self persons];
      v8 = [v7 objectAtIndexedSubscript:0];

      v9 = [(CRRRecommendation *)self recommendationType];
      if ((v9 - 1) >= 2)
      {
        if (v9)
        {
          v13 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_100030CAC(v13);
          }

          v10 = +[INPersonResolutionResult unsupported];
        }

        else
        {
          v10 = [INPersonResolutionResult successWithResolvedPerson:v8];
        }
      }

      else
      {
        v10 = [INPersonResolutionResult confirmationRequiredWithPersonToConfirm:v8];
      }

      v11 = v10;
    }

    else
    {
      v12 = [(CRRRecommendation *)self persons];
      v11 = [INPersonResolutionResult disambiguationWithPeopleToDisambiguate:v12];
    }
  }

  else
  {
    v11 = +[INPersonResolutionResult unsupported];
  }

  v14 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100030CF0(v11, v14);
  }

  return v11;
}

@end