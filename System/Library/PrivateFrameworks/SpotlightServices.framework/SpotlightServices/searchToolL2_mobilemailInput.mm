@interface searchToolL2_mobilemailInput
- (id)featureValueForName:(id)name;
- (searchToolL2_mobilemailInput)initWithSparseL1:(double)l1 denseL1:(double)denseL1 isMailCategoryHighImpact:(double)impact isMailCategoryPromotions:(double)promotions documentEmbeddingAvailable:(double)available has_query_text_embedding:(double)has_query_text_embedding kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)m kMDItemSubject_QUPP_ARG_SEARCH_TERM:(double)self0 kMDItemTextContent_QUPP_ARG_PERSON:(double)self1 kMDItemTextContent_QUPP_ARG_LOCATION:(double)self2 kMDItemAuthors_QUPP_ARG_SEARCH_TERM:(double)self3 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT:(double)self4 kMDItemTextContent_QUPP_ARG_TIME:(double)self5 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)self6 kMDItemSubject_QUPP_ARG_LOCATION:(double)self7 kMDItemSubject_QUPP_ARG_PERSON:(double)self8 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL:(double)self9 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)tION kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT:(double)cT kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT:(double)nT kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)r kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL:(double)aL kMDItemAuthors_QUPP_ARG_PERSON:(double)rSON kMDItemSubject_QUPP_ARG_TIME:(double)mE kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER:(double)eR kMDItemAuthors_QUPP_ARG_LOCATION:(double)aTION;
@end

@implementation searchToolL2_mobilemailInput

- (searchToolL2_mobilemailInput)initWithSparseL1:(double)l1 denseL1:(double)denseL1 isMailCategoryHighImpact:(double)impact isMailCategoryPromotions:(double)promotions documentEmbeddingAvailable:(double)available has_query_text_embedding:(double)has_query_text_embedding kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)m kMDItemSubject_QUPP_ARG_SEARCH_TERM:(double)self0 kMDItemTextContent_QUPP_ARG_PERSON:(double)self1 kMDItemTextContent_QUPP_ARG_LOCATION:(double)self2 kMDItemAuthors_QUPP_ARG_SEARCH_TERM:(double)self3 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT:(double)self4 kMDItemTextContent_QUPP_ARG_TIME:(double)self5 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)self6 kMDItemSubject_QUPP_ARG_LOCATION:(double)self7 kMDItemSubject_QUPP_ARG_PERSON:(double)self8 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL:(double)self9 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)tION kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT:(double)cT kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT:(double)nT kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)r kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL:(double)aL kMDItemAuthors_QUPP_ARG_PERSON:(double)rSON kMDItemSubject_QUPP_ARG_TIME:(double)mE kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER:(double)eR kMDItemAuthors_QUPP_ARG_LOCATION:(double)aTION
{
  v37.receiver = self;
  v37.super_class = searchToolL2_mobilemailInput;
  result = [(searchToolL2_mobilemailInput *)&v37 init];
  if (result)
  {
    result->_sparseL1 = l1;
    result->_denseL1 = denseL1;
    result->_isMailCategoryHighImpact = impact;
    result->_isMailCategoryPromotions = promotions;
    result->_documentEmbeddingAvailable = available;
    result->_has_query_text_embedding = has_query_text_embedding;
    result->_kMDItemTextContent_QUPP_ARG_SEARCH_TERM = m;
    result->_kMDItemSubject_QUPP_ARG_SEARCH_TERM = rM;
    result->_kMDItemTextContent_QUPP_ARG_PERSON = n;
    result->_kMDItemTextContent_QUPP_ARG_LOCATION = oN;
    result->_kMDItemAuthors_QUPP_ARG_SEARCH_TERM = eRM;
    result->_kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT = t;
    result->_kMDItemTextContent_QUPP_ARG_TIME = e;
    result->_kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM = tERM;
    result->_kMDItemSubject_QUPP_ARG_LOCATION = iON;
    result->_kMDItemSubject_QUPP_ARG_PERSON = sON;
    result->_kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL = l;
    result->_kMDItemAppEntityTitle_QUPP_ARG_LOCATION = tION;
    result->_kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT = cT;
    result->_kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT = nT;
    result->_kMDItemAuthors_QUPP_ARG_PERSON_SENDER = r;
    result->_kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL = aL;
    result->_kMDItemAuthors_QUPP_ARG_PERSON = rSON;
    result->_kMDItemSubject_QUPP_ARG_TIME = mE;
    result->_kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER = eR;
    result->_kMDItemAuthors_QUPP_ARG_LOCATION = aTION;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"sparseL1"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self sparseL1];
LABEL_53:
    v6 = [v5 featureValueWithDouble:?];
    goto LABEL_54;
  }

  if ([nameCopy isEqualToString:@"denseL1"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self denseL1];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"isMailCategoryHighImpact"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self isMailCategoryHighImpact];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"isMailCategoryPromotions"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self isMailCategoryPromotions];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"documentEmbeddingAvailable"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self documentEmbeddingAvailable];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"has_query_text_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self has_query_text_embedding];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_SEARCH_TERM];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemSubject QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemSubject_QUPP_ARG_SEARCH_TERM];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_PERSON];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_LOCATION];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemAuthors QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAuthors_QUPP_ARG_SEARCH_TERM];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_EVENT_TYPE_FLIGHT"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_TIME"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_TIME];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemAppEntityTitle QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemSubject QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemSubject_QUPP_ARG_LOCATION];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemSubject QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemSubject_QUPP_ARG_PERSON];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_EVENT_TYPE_HOTEL"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemAppEntityTitle QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAppEntityTitle_QUPP_ARG_LOCATION];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_APP_CONTAINS_TYPE_CONTACT"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_EVENT_TYPE_RESTAURANT"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemAuthors QUPP_ARG_PERSON_SENDER"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAuthors_QUPP_ARG_PERSON_SENDER];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_LOCATION_ARRIVAL"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemAuthors QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAuthors_QUPP_ARG_PERSON];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemSubject QUPP_ARG_TIME"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemSubject_QUPP_ARG_TIME];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemAuthorEmailAddresses QUPP_ARG_PERSON_SENDER"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_mobilemailInput *)self kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"kMDItemAuthors QUPP_ARG_LOCATION"])
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