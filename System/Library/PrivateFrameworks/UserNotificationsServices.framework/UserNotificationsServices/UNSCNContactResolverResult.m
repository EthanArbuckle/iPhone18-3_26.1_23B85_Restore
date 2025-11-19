@interface UNSCNContactResolverResult
- (BOOL)isStrongerMatchThanOtherMatch:(id)a3;
- (BOOL)isStrongestMatch;
- (id)_initWithCNContactIdentifier:(id)a3 cnContactFullname:(id)a4 suggestedContact:(BOOL)a5 matchType:(unint64_t)a6 matchTypeSuggested:(BOOL)a7 identifierOfMatchLabel:(id)a8;
- (id)_stringForMatchType:(unint64_t)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation UNSCNContactResolverResult

- (id)succinctDescription
{
  v2 = [(UNSCNContactResolverResult *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(UNSCNContactResolverResult *)self cnContactIdentifier];
  v5 = [v3 appendObject:v4 withName:@"cnContactIdentifier"];

  v6 = [(UNSCNContactResolverResult *)self cnContactFullname];
  v7 = [v6 un_logDigest];
  v8 = [v3 appendObject:v7 withName:@"cnContactFullname"];

  v9 = [v3 appendBool:-[UNSCNContactResolverResult isSuggestedContact](self withName:{"isSuggestedContact"), @"isSuggestedContact"}];
  v10 = [(UNSCNContactResolverResult *)self _stringForMatchType:[(UNSCNContactResolverResult *)self matchType]];
  [v3 appendString:v10 withName:@"matchType"];

  v11 = [v3 appendBool:-[UNSCNContactResolverResult isMatchTypeSuggested](self withName:{"isMatchTypeSuggested"), @"matchTypeSuggested"}];
  v12 = [(UNSCNContactResolverResult *)self identifierOfMatchLabel];
  v13 = [v3 appendBool:v12 != 0 withName:@"identifierOfMatchLabelExists"];

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

- (id)_initWithCNContactIdentifier:(id)a3 cnContactFullname:(id)a4 suggestedContact:(BOOL)a5 matchType:(unint64_t)a6 matchTypeSuggested:(BOOL)a7 identifierOfMatchLabel:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = UNSCNContactResolverResult;
  v18 = [(UNSCNContactResolverResult *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cnContactIdentifier, a3);
    v19->_suggestedContact = a5;
    v19->_matchType = a6;
    v19->_matchTypeSuggested = a7;
    objc_storeStrong(&v19->_identifierOfMatchLabel, a8);
    objc_storeStrong(&v19->_cnContactFullname, a4);
  }

  return v19;
}

- (BOOL)isStrongerMatchThanOtherMatch:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (-[UNSCNContactResolverResult isSuggestedContact](self, "isSuggestedContact") || ([v4 isSuggestedContact] & 1) != 0)
    {
      if (![(UNSCNContactResolverResult *)self isSuggestedContact])
      {
        v5 = [v4 isSuggestedContact];
LABEL_10:
        v6 = v5;
        goto LABEL_11;
      }
    }

    else if (![(UNSCNContactResolverResult *)self isMatchTypeSuggested])
    {
      v5 = [v4 isMatchTypeSuggested];
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UNSCNContactResolverResult *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__UNSCNContactResolverResult_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E142D8;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

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

- (id)_stringForMatchType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_279E142F8[a3];
  }
}

@end