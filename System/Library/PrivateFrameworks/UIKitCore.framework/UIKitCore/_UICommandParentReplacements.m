@interface _UICommandParentReplacements
- (void)_setReplacementElements:(id)a3 forElement:(id)a4;
@end

@implementation _UICommandParentReplacements

- (void)_setReplacementElements:(id)a3 forElement:(id)a4
{
  v15 = a4;
  childReplacements = self->_childReplacements;
  v8 = a3;
  v9 = [(NSMutableDictionary *)childReplacements objectForKeyedSubscript:v15];

  if (v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UICommandInternalDiff.m" lineNumber:82 description:@"child replacements already set"];
  }

  v10 = objc_alloc_init(_UICommandChildReplacements);
  [(_UICommandChildReplacements *)v10 _setReplacementElements:v8];

  v11 = self->_childReplacements;
  if (v11)
  {
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v15];
  }

  else
  {
    v12 = [MEMORY[0x1E695DF90] dictionaryWithObject:v10 forKey:v15];
    v13 = self->_childReplacements;
    self->_childReplacements = v12;
  }
}

@end