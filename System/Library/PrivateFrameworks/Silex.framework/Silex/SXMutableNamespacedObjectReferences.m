@interface SXMutableNamespacedObjectReferences
- (void)addNamespacedIdentifier:(id)a3 forIdentifier:(id)a4 component:(id)a5 map:(id)a6;
@end

@implementation SXMutableNamespacedObjectReferences

- (void)addNamespacedIdentifier:(id)a3 forIdentifier:(id)a4 component:(id)a5 map:(id)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(SXNamespacedObjectReferences *)self referencesForComponent:a5 map:a6];
  [v12 setObject:v11 forKey:v10];
}

@end