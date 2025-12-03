@interface UNSCNContactResolverResult
- (BOOL)isStrongerMatchThanOtherMatch:(id)match;
- (BOOL)isStrongestMatch;
- (id)_initWithCNContactIdentifier:(id)identifier cnContactFullname:(id)fullname suggestedContact:(BOOL)contact matchType:(unint64_t)type matchTypeSuggested:(BOOL)suggested identifierOfMatchLabel:(id)label;
- (id)_stringForMatchType:(unint64_t)type;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation UNSCNContactResolverResult

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UNSCNContactResolverResult *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  cnContactIdentifier = [(UNSCNContactResolverResult *)self cnContactIdentifier];
  v5 = [v3 appendObject:cnContactIdentifier withName:@"cnContactIdentifier"];

  cnContactFullname = [(UNSCNContactResolverResult *)self cnContactFullname];
  un_logDigest = [cnContactFullname un_logDigest];
  v8 = [v3 appendObject:un_logDigest withName:@"cnContactFullname"];

  v9 = [v3 appendBool:-[UNSCNContactResolverResult isSuggestedContact](self withName:{"isSuggestedContact"), @"isSuggestedContact"}];
  v10 = [(UNSCNContactResolverResult *)self _stringForMatchType:[(UNSCNContactResolverResult *)self matchType]];
  [v3 appendString:v10 withName:@"matchType"];

  v11 = [v3 appendBool:-[UNSCNContactResolverResult isMatchTypeSuggested](self withName:{"isMatchTypeSuggested"), @"matchTypeSuggested"}];
  identifierOfMatchLabel = [(UNSCNContactResolverResult *)self identifierOfMatchLabel];
  v13 = [v3 appendBool:identifierOfMatchLabel != 0 withName:@"identifierOfMatchLabelExists"];

  return v3;
}

- (BOOL)isStrongestMatch
{
  if ([(UNSCNContactResolverResult *)self isSuggestedContact])
  {
    return 0;
  }

  else
  {
    return ![(UNSCNContactResolverResult *)self isMatchTypeSuggested];
  }
}

- (id)_initWithCNContactIdentifier:(id)identifier cnContactFullname:(id)fullname suggestedContact:(BOOL)contact matchType:(unint64_t)type matchTypeSuggested:(BOOL)suggested identifierOfMatchLabel:(id)label
{
  identifierCopy = identifier;
  fullnameCopy = fullname;
  labelCopy = label;
  v21.receiver = self;
  v21.super_class = UNSCNContactResolverResult;
  v18 = [(UNSCNContactResolverResult *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cnContactIdentifier, identifier);
    v19->_suggestedContact = contact;
    v19->_matchType = type;
    v19->_matchTypeSuggested = suggested;
    objc_storeStrong(&v19->_identifierOfMatchLabel, label);
    objc_storeStrong(&v19->_cnContactFullname, fullname);
  }

  return v19;
}

- (BOOL)isStrongerMatchThanOtherMatch:(id)match
{
  matchCopy = match;
  if (matchCopy)
  {
    if (-[UNSCNContactResolverResult isSuggestedContact](self, "isSuggestedContact") || ([matchCopy isSuggestedContact] & 1) != 0)
    {
      if (![(UNSCNContactResolverResult *)self isSuggestedContact])
      {
        isSuggestedContact = [matchCopy isSuggestedContact];
LABEL_10:
        v6 = isSuggestedContact;
        goto LABEL_11;
      }
    }

    else if (![(UNSCNContactResolverResult *)self isMatchTypeSuggested])
    {
      isSuggestedContact = [matchCopy isMatchTypeSuggested];
      goto LABEL_10;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

LABEL_11:

  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UNSCNContactResolverResult *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__UNSCNContactResolverResult_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E142D8;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __68__UNSCNContactResolverResult_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cnContactIdentifier];
  v4 = [v2 appendObject:v3 withName:@"cnContactIdentifier"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) cnContactFullname];
  v7 = [v6 un_logDigest];
  v8 = [v5 appendObject:v7 withName:@"cnContactFullname"];

  v9 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isSuggestedContact"), @"isSuggestedContact"}];
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) _stringForMatchType:{objc_msgSend(*(a1 + 40), "matchType")}];
  [v10 appendString:v11 withName:@"matchType"];

  v12 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isMatchTypeSuggested"), @"matchTypeSuggested"}];
  v13 = *(a1 + 32);
  v15 = [*(a1 + 40) identifierOfMatchLabel];
  v14 = [v13 appendBool:v15 != 0 withName:@"identifierOfMatchLabelExists"];
}

- (id)_stringForMatchType:(unint64_t)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return off_279E142F8[type];
  }
}

@end