@interface SXFullscreenCaption
- (id)additionsForTextSource:(id)a3;
- (id)componentTextStyleForTextSource:(id)a3 inheritingFromDefaultStyles:(BOOL)a4;
- (id)contentSizeCategoryForTextSource:(id)a3;
- (id)defaultComponentTextStyleForTextSource:(id)a3;
- (id)defaultComponentTextStylesForTextSource:(id)a3;
- (id)initWithCaption:(void *)a3 dataSource:;
- (id)initWithText:(void *)a3 dataSource:;
- (id)inlineTextStylesForTextSource:(id)a3;
- (id)textResizerForTextSource:(id)a3;
- (id)textRulesForTextSource:(id)a3;
- (id)textStyleForIdentifier:(id)a3;
- (uint64_t)caption;
- (uint64_t)text;
@end

@implementation SXFullscreenCaption

- (id)componentTextStyleForTextSource:(id)a3 inheritingFromDefaultStyles:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(SXJSONObject *)[SXComponentTextStyle alloc] initWithJSONObject:&unk_1F538A848 andVersion:0];
  }

  else
  {
    v7 = 0;
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    caption = self->_caption;
  }

  else
  {
    WeakRetained = 0;
    caption = 0;
  }

  v10 = caption;
  v11 = [(SXFormattedText *)v10 textStyle];
  v12 = [WeakRetained componentTextStyleForIdentifier:v11 inheritingFromComponentTextStyle:v7];

  return v12;
}

- (id)defaultComponentTextStyleForTextSource:(id)a3
{
  v3 = [(SXJSONObject *)[SXComponentTextStyle alloc] initWithJSONObject:&unk_1F538A870 andVersion:0];

  return v3;
}

- (id)defaultComponentTextStylesForTextSource:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(SXJSONObject *)[SXComponentTextStyle alloc] initWithJSONObject:&unk_1F538A898 andVersion:0];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)initWithText:(void *)a3 dataSource:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = SXFullscreenCaption;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeWeak(a1 + 3, v7);
    }
  }

  return a1;
}

- (id)initWithCaption:(void *)a3 dataSource:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = SXFullscreenCaption;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 2, a2);
      v9 = [v6 text];
      v10 = a1[1];
      a1[1] = v9;

      objc_storeWeak(a1 + 3, v7);
    }
  }

  return a1;
}

- (id)textResizerForTextSource:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [OUTLINED_FUNCTION_0() textResizerForCaption:?];

  return v4;
}

- (id)textRulesForTextSource:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [OUTLINED_FUNCTION_0() textRulesForCaption:?];

  return v4;
}

- (id)additionsForTextSource:(id)a3
{
  if (self)
  {
    self = self->_caption;
  }

  v3 = [(SXFullscreenCaption *)self additions];
  v4 = [v3 NSArray];

  return v4;
}

- (uint64_t)caption
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (id)inlineTextStylesForTextSource:(id)a3
{
  if (self)
  {
    self = self->_caption;
  }

  v3 = [(SXFullscreenCaption *)self inlineTextStyles];
  v4 = [v3 NSArray];

  return v4;
}

- (id)textStyleForIdentifier:(id)a3
{
  v4 = a3;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
  }

  v5 = [OUTLINED_FUNCTION_0() textStyleForIdentifier:?];

  return v5;
}

- (id)contentSizeCategoryForTextSource:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [OUTLINED_FUNCTION_0() contentSizeCategoryForCaption:?];

  return v4;
}

- (uint64_t)text
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end