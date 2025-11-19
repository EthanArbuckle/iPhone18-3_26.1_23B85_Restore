@interface searchToolL2_MobileSMSInput
- (id)featureValueForName:(id)a3;
- (searchToolL2_MobileSMSInput)initWithSparseL1:(double)a3 denseL1:(double)a4 documentEmbeddingAvailable:(double)a5 has_query_text_embedding:(double)a6 kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)a7 kMDItemRecipients_QUPP_ARG_PERSON:(double)a8 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)a9 kMDItemTextContent_QUPP_ARG_PERSON:(double)a10 kMDItemAuthors_QUPP_ARG_PERSON:(double)a11 kMDItemTextContent_QUPP_ARG_LOCATION:(double)a12 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)a13 kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)a14 kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON:(double)a15 kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER:(double)a16;
@end

@implementation searchToolL2_MobileSMSInput

- (searchToolL2_MobileSMSInput)initWithSparseL1:(double)a3 denseL1:(double)a4 documentEmbeddingAvailable:(double)a5 has_query_text_embedding:(double)a6 kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)a7 kMDItemRecipients_QUPP_ARG_PERSON:(double)a8 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)a9 kMDItemTextContent_QUPP_ARG_PERSON:(double)a10 kMDItemAuthors_QUPP_ARG_PERSON:(double)a11 kMDItemTextContent_QUPP_ARG_LOCATION:(double)a12 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)a13 kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)a14 kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON:(double)a15 kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER:(double)a16
{
  v25.receiver = self;
  v25.super_class = searchToolL2_MobileSMSInput;
  result = [(searchToolL2_MobileSMSInput *)&v25 init];
  if (result)
  {
    result->_sparseL1 = a3;
    result->_denseL1 = a4;
    result->_documentEmbeddingAvailable = a5;
    result->_has_query_text_embedding = a6;
    result->_kMDItemTextContent_QUPP_ARG_SEARCH_TERM = a7;
    result->_kMDItemRecipients_QUPP_ARG_PERSON = a8;
    result->_kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM = a9;
    result->_kMDItemTextContent_QUPP_ARG_PERSON = a10;
    result->_kMDItemAuthors_QUPP_ARG_PERSON = a11;
    result->_kMDItemTextContent_QUPP_ARG_LOCATION = a12;
    result->_kMDItemAppEntityTitle_QUPP_ARG_LOCATION = a13;
    result->_kMDItemAuthors_QUPP_ARG_PERSON_SENDER = a14;
    result->_kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON = a15;
    result->_kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER = a16;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"sparseL1"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self sparseL1];
LABEL_29:
    v6 = [v5 featureValueWithDouble:?];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"denseL1"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self denseL1];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"documentEmbeddingAvailable"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self documentEmbeddingAvailable];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"has_query_text_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self has_query_text_embedding];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemTextContent_QUPP_ARG_SEARCH_TERM];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemRecipients QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemRecipients_QUPP_ARG_PERSON];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemAppEntityTitle QUPP_ARG_SEARCH_TERM"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemTextContent_QUPP_ARG_PERSON];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemAuthors QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAuthors_QUPP_ARG_PERSON];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemTextContent QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemTextContent_QUPP_ARG_LOCATION];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemAppEntityTitle QUPP_ARG_LOCATION"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAppEntityTitle_QUPP_ARG_LOCATION];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemAuthors QUPP_ARG_PERSON_SENDER"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAuthors_QUPP_ARG_PERSON_SENDER];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemAuthorEmailAddresses QUPP_ARG_PERSON"])
  {
    v5 = MEMORY[0x1E695FE60];
    [(searchToolL2_MobileSMSInput *)self kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON];
    goto LABEL_29;
  }

  if ([v4 isEqualToString:@"kMDItemAuthorAddresses QUPP_ARG_PERSON_SENDER"])
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