@interface CRRRecommendation
- (BOOL)isFoundInAppsSuggestion;
- (CRRRecommendation)initWithFullyResolvedPerson:(id)person;
- (CRRRecommendation)initWithPerson:(id)person;
- (CRRRecommendation)initWithRecommendationType:(int64_t)type persons:(id)persons;
- (CRRRecommendation)initWithSiriInferencePerson:(id)person;
- (id)recommendedResult;
@end

@implementation CRRRecommendation

- (CRRRecommendation)initWithPerson:(id)person
{
  personCopy = person;
  personHandle = [personCopy personHandle];
  value = [personHandle value];
  v7 = [value length];

  if (v7)
  {
    v8 = [(CRRRecommendation *)self initWithFullyResolvedPerson:personCopy];
  }

  else
  {
    v8 = [(CRRRecommendation *)self initWithSiriInferencePerson:personCopy];
  }

  v9 = v8;

  return v9;
}

- (CRRRecommendation)initWithSiriInferencePerson:(id)person
{
  personCopy = person;
  scoredAlternatives = [personCopy scoredAlternatives];
  firstObject = [scoredAlternatives firstObject];

  recommendation = [firstObject recommendation];
  alternatives = [personCopy alternatives];

  v9 = &__NSArray0__struct;
  if (alternatives)
  {
    v9 = alternatives;
  }

  v10 = v9;

  if (![firstObject recommendation])
  {
    person = [firstObject person];
    personHandle = [person personHandle];
    isSuggested = [personHandle isSuggested];

    if (isSuggested)
    {
      recommendation = 1;
    }
  }

  v14 = [(CRRRecommendation *)self initWithRecommendationType:recommendation persons:v10];

  return v14;
}

- (CRRRecommendation)initWithFullyResolvedPerson:(id)person
{
  personCopy = person;
  personCopy2 = person;
  v5 = [NSArray arrayWithObjects:&personCopy count:1];

  personCopy = [(CRRRecommendation *)self initWithRecommendationType:0 persons:v5, personCopy];
  return personCopy;
}

- (CRRRecommendation)initWithRecommendationType:(int64_t)type persons:(id)persons
{
  personsCopy = persons;
  v11.receiver = self;
  v11.super_class = CRRRecommendation;
  v8 = [(CRRRecommendation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_recommendationType = type;
    objc_storeStrong(&v8->_persons, persons);
  }

  return v9;
}

- (BOOL)isFoundInAppsSuggestion
{
  persons = [(CRRRecommendation *)self persons];
  firstObject = [persons firstObject];
  personHandle = [firstObject personHandle];
  isSuggested = [personHandle isSuggested];

  return isSuggested;
}

- (id)recommendedResult
{
  persons = [(CRRRecommendation *)self persons];
  v4 = [persons count];

  if (v4)
  {
    persons2 = [(CRRRecommendation *)self persons];
    v6 = [persons2 count];

    if (v6 == 1)
    {
      persons3 = [(CRRRecommendation *)self persons];
      v8 = [persons3 objectAtIndexedSubscript:0];

      recommendationType = [(CRRRecommendation *)self recommendationType];
      if ((recommendationType - 1) >= 2)
      {
        if (recommendationType)
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
      persons4 = [(CRRRecommendation *)self persons];
      v11 = [INPersonResolutionResult disambiguationWithPeopleToDisambiguate:persons4];
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