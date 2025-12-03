@interface SXFullscreenCaption
- (id)additionsForTextSource:(id)source;
- (id)componentTextStyleForTextSource:(id)source inheritingFromDefaultStyles:(BOOL)styles;
- (id)contentSizeCategoryForTextSource:(id)source;
- (id)defaultComponentTextStyleForTextSource:(id)source;
- (id)defaultComponentTextStylesForTextSource:(id)source;
- (id)initWithCaption:(void *)caption dataSource:;
- (id)initWithText:(void *)text dataSource:;
- (id)inlineTextStylesForTextSource:(id)source;
- (id)textResizerForTextSource:(id)source;
- (id)textRulesForTextSource:(id)source;
- (id)textStyleForIdentifier:(id)identifier;
- (uint64_t)caption;
- (uint64_t)text;
@end

@implementation SXFullscreenCaption

- (id)componentTextStyleForTextSource:(id)source inheritingFromDefaultStyles:(BOOL)styles
{
  stylesCopy = styles;
  sourceCopy = source;
  if (stylesCopy)
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
  textStyle = [(SXFormattedText *)v10 textStyle];
  v12 = [WeakRetained componentTextStyleForIdentifier:textStyle inheritingFromComponentTextStyle:v7];

  return v12;
}

- (id)defaultComponentTextStyleForTextSource:(id)source
{
  v3 = [(SXJSONObject *)[SXComponentTextStyle alloc] initWithJSONObject:&unk_1F538A870 andVersion:0];

  return v3;
}

- (id)defaultComponentTextStylesForTextSource:(id)source
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(SXJSONObject *)[SXComponentTextStyle alloc] initWithJSONObject:&unk_1F538A898 andVersion:0];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)initWithText:(void *)text dataSource:
{
  v6 = a2;
  textCopy = text;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = SXFullscreenCaption;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeWeak(self + 3, textCopy);
    }
  }

  return self;
}

- (id)initWithCaption:(void *)caption dataSource:
{
  v6 = a2;
  captionCopy = caption;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = SXFullscreenCaption;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 2, a2);
      text = [v6 text];
      v10 = self[1];
      self[1] = text;

      objc_storeWeak(self + 3, captionCopy);
    }
  }

  return self;
}

- (id)textResizerForTextSource:(id)source
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

- (id)textRulesForTextSource:(id)source
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

- (id)additionsForTextSource:(id)source
{
  if (self)
  {
    self = self->_caption;
  }

  additions = [(SXFullscreenCaption *)self additions];
  nSArray = [additions NSArray];

  return nSArray;
}

- (uint64_t)caption
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (id)inlineTextStylesForTextSource:(id)source
{
  if (self)
  {
    self = self->_caption;
  }

  inlineTextStyles = [(SXFullscreenCaption *)self inlineTextStyles];
  nSArray = [inlineTextStyles NSArray];

  return nSArray;
}

- (id)textStyleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
  }

  v5 = [OUTLINED_FUNCTION_0() textStyleForIdentifier:?];

  return v5;
}

- (id)contentSizeCategoryForTextSource:(id)source
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