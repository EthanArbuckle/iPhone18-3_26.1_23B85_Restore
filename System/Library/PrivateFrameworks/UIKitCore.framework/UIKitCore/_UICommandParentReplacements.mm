@interface _UICommandParentReplacements
- (void)_setReplacementElements:(id)elements forElement:(id)element;
@end

@implementation _UICommandParentReplacements

- (void)_setReplacementElements:(id)elements forElement:(id)element
{
  elementCopy = element;
  childReplacements = self->_childReplacements;
  elementsCopy = elements;
  v9 = [(NSMutableDictionary *)childReplacements objectForKeyedSubscript:elementCopy];

  if (v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICommandInternalDiff.m" lineNumber:82 description:@"child replacements already set"];
  }

  v10 = objc_alloc_init(_UICommandChildReplacements);
  [(_UICommandChildReplacements *)v10 _setReplacementElements:elementsCopy];

  v11 = self->_childReplacements;
  if (v11)
  {
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:elementCopy];
  }

  else
  {
    v12 = [MEMORY[0x1E695DF90] dictionaryWithObject:v10 forKey:elementCopy];
    v13 = self->_childReplacements;
    self->_childReplacements = v12;
  }
}

@end