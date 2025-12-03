@interface SXMutableNamespacedObjectReferences
- (void)addNamespacedIdentifier:(id)identifier forIdentifier:(id)forIdentifier component:(id)component map:(id)map;
@end

@implementation SXMutableNamespacedObjectReferences

- (void)addNamespacedIdentifier:(id)identifier forIdentifier:(id)forIdentifier component:(id)component map:(id)map
{
  forIdentifierCopy = forIdentifier;
  identifierCopy = identifier;
  v12 = [(SXNamespacedObjectReferences *)self referencesForComponent:component map:map];
  [v12 setObject:identifierCopy forKey:forIdentifierCopy];
}

@end