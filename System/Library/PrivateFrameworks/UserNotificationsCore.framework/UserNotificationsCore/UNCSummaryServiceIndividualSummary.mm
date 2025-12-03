@interface UNCSummaryServiceIndividualSummary
- (UNCSummaryServiceIndividualSummary)initWithSpotlightIdentifier:(id)identifier individualSummary:(id)summary isHighlight:(BOOL)highlight contentCreationDate:(id)date;
@end

@implementation UNCSummaryServiceIndividualSummary

- (UNCSummaryServiceIndividualSummary)initWithSpotlightIdentifier:(id)identifier individualSummary:(id)summary isHighlight:(BOOL)highlight contentCreationDate:(id)date
{
  identifierCopy = identifier;
  summaryCopy = summary;
  dateCopy = date;
  v21.receiver = self;
  v21.super_class = UNCSummaryServiceIndividualSummary;
  v13 = [(UNCSummaryServiceIndividualSummary *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    spotlightIdentifier = v13->_spotlightIdentifier;
    v13->_spotlightIdentifier = v14;

    v16 = [summaryCopy copy];
    individualSummary = v13->_individualSummary;
    v13->_individualSummary = v16;

    v13->_isHighlight = highlight;
    v18 = [dateCopy copy];
    contentCreationDate = v13->_contentCreationDate;
    v13->_contentCreationDate = v18;
  }

  return v13;
}

@end