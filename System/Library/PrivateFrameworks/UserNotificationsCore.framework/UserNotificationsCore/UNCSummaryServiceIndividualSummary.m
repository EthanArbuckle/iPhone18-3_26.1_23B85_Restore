@interface UNCSummaryServiceIndividualSummary
- (UNCSummaryServiceIndividualSummary)initWithSpotlightIdentifier:(id)a3 individualSummary:(id)a4 isHighlight:(BOOL)a5 contentCreationDate:(id)a6;
@end

@implementation UNCSummaryServiceIndividualSummary

- (UNCSummaryServiceIndividualSummary)initWithSpotlightIdentifier:(id)a3 individualSummary:(id)a4 isHighlight:(BOOL)a5 contentCreationDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = UNCSummaryServiceIndividualSummary;
  v13 = [(UNCSummaryServiceIndividualSummary *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    spotlightIdentifier = v13->_spotlightIdentifier;
    v13->_spotlightIdentifier = v14;

    v16 = [v11 copy];
    individualSummary = v13->_individualSummary;
    v13->_individualSummary = v16;

    v13->_isHighlight = a5;
    v18 = [v12 copy];
    contentCreationDate = v13->_contentCreationDate;
    v13->_contentCreationDate = v18;
  }

  return v13;
}

@end