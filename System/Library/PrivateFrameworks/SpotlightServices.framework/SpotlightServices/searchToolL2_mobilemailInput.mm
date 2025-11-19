@interface searchToolL2_mobilemailInput
- (id)featureValueForName:(id)a3;
- (searchToolL2_mobilemailInput)initWithSparseL1:(double)a3 denseL1:(double)a4 isMailCategoryHighImpact:(double)a5 isMailCategoryPromotions:(double)a6 documentEmbeddingAvailable:(double)a7 has_query_text_embedding:(double)a8 kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)a9 kMDItemSubject_QUPP_ARG_SEARCH_TERM:(double)a10 kMDItemTextContent_QUPP_ARG_PERSON:(double)a11 kMDItemTextContent_QUPP_ARG_LOCATION:(double)a12 kMDItemAuthors_QUPP_ARG_SEARCH_TERM:(double)a13 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT:(double)a14 kMDItemTextContent_QUPP_ARG_TIME:(double)a15 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)a16 kMDItemSubject_QUPP_ARG_LOCATION:(double)a17 kMDItemSubject_QUPP_ARG_PERSON:(double)a18 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL:(double)a19 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)a20 kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT:(double)a21 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT:(double)a22 kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)a23 kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL:(double)a24 kMDItemAuthors_QUPP_ARG_PERSON:(double)a25 kMDItemSubject_QUPP_ARG_TIME:(double)a26 kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER:(double)a27 kMDItemAuthors_QUPP_ARG_LOCATION:(double)a28;
@end

@implementation searchToolL2_mobilemailInput

- (searchToolL2_mobilemailInput)initWithSparseL1:(double)a3 denseL1:(double)a4 isMailCategoryHighImpact:(double)a5 isMailCategoryPromotions:(double)a6 documentEmbeddingAvailable:(double)a7 has_query_text_embedding:(double)a8 kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)a9 kMDItemSubject_QUPP_ARG_SEARCH_TERM:(double)a10 kMDItemTextContent_QUPP_ARG_PERSON:(double)a11 kMDItemTextContent_QUPP_ARG_LOCATION:(double)a12 kMDItemAuthors_QUPP_ARG_SEARCH_TERM:(double)a13 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT:(double)a14 kMDItemTextContent_QUPP_ARG_TIME:(double)a15 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)a16 kMDItemSubject_QUPP_ARG_LOCATION:(double)a17 kMDItemSubject_QUPP_ARG_PERSON:(double)a18 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL:(double)a19 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)a20 kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT:(double)a21 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT:(double)a22 kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)a23 kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL:(double)a24 kMDItemAuthors_QUPP_ARG_PERSON:(double)a25 kMDItemSubject_QUPP_ARG_TIME:(double)a26 kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER:(double)a27 kMDItemAuthors_QUPP_ARG_LOCATION:(double)a28
{
  v37.receiver = self;
  v37.super_class = searchToolL2_mobilemailInput;
  result = [(searchToolL2_mobilemailInput *)&v37 init];
  if (result)
  {
    result->_sparseL1 = a3;
    result->_denseL1 = a4;
    result->_isMailCategoryHighImpact = a5;
    result->_isMailCategoryPromotions = a6;
    result->_documentEmbeddingAvailable = a7;
    result->_has_query_text_embedding = a8;
    result->_kMDItemTextContent_QUPP_ARG_SEARCH_TERM = a9;
    result->_kMDItemSubject_QUPP_ARG_SEARCH_TERM = a10;
    result->_kMDItemTextContent_QUPP_ARG_PERSON = a11;
    result->_kMDItemTextContent_QUPP_ARG_LOCATION = a12;
    result->_kMDItemAuthors_QUPP_ARG_SEARCH_TERM = a13;
    result->_kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT = a14;
    result->_kMDItemTextContent_QUPP_ARG_TIME = a15;
    result->_kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM = a16;
    result->_kMDItemSubject_QUPP_ARG_LOCATION = a17;
    result->_kMDItemSubject_QUPP_ARG_PERSON = a18;
    result->_kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL = a19;
    result->_kMDItemAppEntityTitle_QUPP_ARG_LOCATION = a20;
    result->_kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT = a21;
    result->_kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT = a22;
    result->_kMDItemAuthors_QUPP_ARG_PERSON_SENDER = a23;
    result->_kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL = a24;
    result->_kMDItemAuthors_QUPP_ARG_PERSON = a25;
    result->_kMDItemSubject_QUPP_ARG_TIME = a26;
    result->_kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER = a27;
    result->_kMDItemAuthors_QUPP_ARG_LOCATION = a28;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"sparseL1"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self sparseL1];
LABEL_53:
    v6 = [v5 featureValueWithDouble:?];
    goto LABEL_54;
  }

  if ([v4 isEqualToString:@"denseL1"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self denseL1];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"isMailCategoryHighImpact"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self isMailCategoryHighImpact];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"isMailCategoryPromotions"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self isMailCategoryPromotions];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"documentEmbeddingAvailable"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self documentEmbeddingAvailable];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"has_query_text_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self has_query_text_embedding];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_SEARCH_TERM];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemSubject QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemSubject_QUPP_ARG_SEARCH_TERM];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_PERSON];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_LOCATION];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemAuthors QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAuthors_QUPP_ARG_SEARCH_TERM];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_EVENT_TYPE_FLIGHT"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_TIME"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_TIME];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemAppEntityTitle QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemSubject QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemSubject_QUPP_ARG_LOCATION];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemSubject QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemSubject_QUPP_ARG_PERSON];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_EVENT_TYPE_HOTEL"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemAppEntityTitle QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAppEntityTitle_QUPP_ARG_LOCATION];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_APP_CONTAINS_TYPE_CONTACT"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_EVENT_TYPE_RESTAURANT"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemAuthors QUPP_ARG_PERSON_SENDER"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAuthors_QUPP_ARG_PERSON_SENDER];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_LOCATION_ARRIVAL"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemAuthors QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAuthors_QUPP_ARG_PERSON];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemSubject QUPP_ARG_TIME"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemSubject_QUPP_ARG_TIME];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemAuthorEmailAddresses QUPP_ARG_PERSON_SENDER"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER];
    goto LABEL_53;
  }

  if ([v4 isEqualToString:@"kMDItemAuthors QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAuthors_QUPP_ARG_LOCATION];
    goto LABEL_53;
  }

  v6 = 0;
LABEL_54:

  return v6;
}

@end