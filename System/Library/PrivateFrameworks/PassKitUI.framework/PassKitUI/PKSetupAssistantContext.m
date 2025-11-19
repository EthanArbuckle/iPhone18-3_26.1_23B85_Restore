@interface PKSetupAssistantContext
- (BOOL)allowsCachedCardRequirements;
- (NSString)description;
- (PKPaymentSetupViewControllerDelegate)delegate;
- (PKSetupAssistantContext)initWithSetupAssistant:(unint64_t)a3;
- (PKSetupAssistantContext)initWithSetupAssistantAsFollowupAction:(unint64_t)a3;
- (void)extendableDescription:(id)a3;
- (void)prepareForFollowupQueryWithHandler:(id)a3;
@end

@implementation PKSetupAssistantContext

- (PKSetupAssistantContext)initWithSetupAssistant:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PKSetupAssistantContext;
  result = [(PKSetupAssistantContext *)&v6 init];
  if (result)
  {
    if (a3 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    result->_setupAssistant = v5;
    result->_allowsCachedCardRequirements = 1;
  }

  return result;
}

- (PKSetupAssistantContext)initWithSetupAssistantAsFollowupAction:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKSetupAssistantContext;
  result = [(PKSetupAssistantContext *)&v5 init];
  if (result)
  {
    result->_setupAssistant = a3;
    result->_isFollowupAction = 1;
  }

  return result;
}

- (void)prepareForFollowupQueryWithHandler:(id)a3
{
  if (a3)
  {
    self->_allowsCachedCardRequirements = 0;
    (*(a3 + 2))(a3, a2);
    self->_allowsCachedCardRequirements = 1;
  }
}

- (BOOL)allowsCachedCardRequirements
{
  if (self->_allowsCachedCardRequirements)
  {
    return PKRunningInPassd() ^ 1;
  }

  else
  {
    return 0;
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [(PKSetupAssistantContext *)self extendableDescription:v3];
  [v3 appendFormat:@">"];

  return v3;
}

- (void)extendableDescription:(id)a3
{
  setupAssistant = self->_setupAssistant;
  v5 = a3;
  [v5 appendFormat:@"setupAssistant: '%lu'; ", setupAssistant];
  if (self->_isFollowupAction)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"isFollowupAction: '%@'; ", v6];
  if (self->_allowsCachedCardRequirements)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v5 appendFormat:@"allowsCachedCardRequirements: %@; ", v7];
  if (self->_externalizedContext)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 appendFormat:@"hasExternalizedContext: '%@'; ", v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v5 appendFormat:@"delegate: '%@'; ", WeakRetained];
}

- (PKPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end