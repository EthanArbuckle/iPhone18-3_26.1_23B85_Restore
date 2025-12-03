@interface VIACacheHitContextBuilder
- (id)build;
- (id)setApplicationIdentifer:(id)identifer;
@end

@implementation VIACacheHitContextBuilder

- (id)setApplicationIdentifer:(id)identifer
{
  v4 = [identifer copy];
  applicationIdentifier = self->_applicationIdentifier;
  self->_applicationIdentifier = v4;

  return self;
}

- (id)build
{
  v2 = [[VIACacheHitContext alloc] initWithQueryID:self->_queryID cachedResultQueryID:self->_cachedResultsQueryID applicationIdentifier:self->_applicationIdentifier engagementSuggestionType:self->_engagementSuggestionType];

  return v2;
}

@end