@interface searchToolL2_MobileSMSInput
- (id)featureValueForName:(id)name;
- (searchToolL2_MobileSMSInput)initWithSparseL1:(double)l1 denseL1:(double)denseL1 documentEmbeddingAvailable:(double)available has_query_text_embedding:(double)has_query_text_embedding kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)m kMDItemRecipients_QUPP_ARG_PERSON:(double)n kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)rM kMDItemTextContent_QUPP_ARG_PERSON:(double)self0 kMDItemAuthors_QUPP_ARG_PERSON:(double)self1 kMDItemTextContent_QUPP_ARG_LOCATION:(double)self2 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)self3 kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)self4 kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON:(double)self5 kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER:(double)self6;
@end

@implementation searchToolL2_MobileSMSInput

- (searchToolL2_MobileSMSInput)initWithSparseL1:(double)l1 denseL1:(double)denseL1 documentEmbeddingAvailable:(double)available has_query_text_embedding:(double)has_query_text_embedding kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)m kMDItemRecipients_QUPP_ARG_PERSON:(double)n kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)rM kMDItemTextContent_QUPP_ARG_PERSON:(double)self0 kMDItemAuthors_QUPP_ARG_PERSON:(double)self1 kMDItemTextContent_QUPP_ARG_LOCATION:(double)self2 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)self3 kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)self4 kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON:(double)self5 kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER:(double)self6
{
  v25.receiver = self;
  v25.super_class = searchToolL2_MobileSMSInput;
  result = [(searchToolL2_MobileSMSInput *)&v25 init];
  if (result)
  {
    result->_sparseL1 = l1;
    result->_denseL1 = denseL1;
    result->_documentEmbeddingAvailable = available;
    result->_has_query_text_embedding = has_query_text_embedding;
    result->_kMDItemTextContent_QUPP_ARG_SEARCH_TERM = m;
    result->_kMDItemRecipients_QUPP_ARG_PERSON = n;
    result->_kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM = rM;
    result->_kMDItemTextContent_QUPP_ARG_PERSON = oN;
    result->_kMDItemAuthors_QUPP_ARG_PERSON = sON;
    result->_kMDItemTextContent_QUPP_ARG_LOCATION = iON;
    result->_kMDItemAppEntityTitle_QUPP_ARG_LOCATION = tION;
    result->_kMDItemAuthors_QUPP_ARG_PERSON_SENDER = r;
    result->_kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON = rSON;
    result->_kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER = eR;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"sparseL1"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self sparseL1];
LABEL_29:
    v6 = [v5 featureValueWithDouble:?];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"denseL1"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self denseL1];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"documentEmbeddingAvailable"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self documentEmbeddingAvailable];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"has_query_text_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self has_query_text_embedding];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemTextContent_QUPP_ARG_SEARCH_TERM];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemRecipients QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemRecipients_QUPP_ARG_PERSON];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemAppEntityTitle QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemTextContent_QUPP_ARG_PERSON];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemAuthors QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAuthors_QUPP_ARG_PERSON];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemTextContent QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemTextContent_QUPP_ARG_LOCATION];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemAppEntityTitle QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAppEntityTitle_QUPP_ARG_LOCATION];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemAuthors QUPP_ARG_PERSON_SENDER"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAuthors_QUPP_ARG_PERSON_SENDER];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemAuthorEmailAddresses QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"kMDItemAuthorAddresses QUPP_ARG_PERSON_SENDER"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER];
    goto LABEL_29;
  }

  v6 = 0;
LABEL_30:

  return v6;
}

@end