@interface PLCommentsFontCache
- (PLCommentsFontCache)init;
- (UIFont)commentAttributionDateFont;
- (UIFont)commentAttributionNameFont;
- (UIFont)commentEntryFont;
- (UIFont)commentSendButtonFont;
- (UIFont)commentTextFont;
- (UIFont)likeFont;
- (UIFont)youLikeFont;
- (id)_bodyFontDescriptor;
- (id)_emphasizedBodyFontDescriptor;
- (id)_emphasizedShortCaptionFontDescriptor;
- (id)_shortBodyFontDescriptor;
- (id)_shortCaptionFontDescriptor;
- (id)_shortSubheadlineFontDescriptor;
- (void)_contentSizesDidChange:(id)a3;
- (void)_invalidateCache;
- (void)dealloc;
@end

@implementation PLCommentsFontCache

- (UIFont)commentSendButtonFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(PLCommentsFontCache *)self _emphasizedBodyFontDescriptor];

  return [v2 fontWithDescriptor:v3 size:0.0];
}

- (UIFont)commentEntryFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(PLCommentsFontCache *)self _shortBodyFontDescriptor];

  return [v2 fontWithDescriptor:v3 size:0.0];
}

- (UIFont)commentAttributionNameFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(PLCommentsFontCache *)self _emphasizedShortCaptionFontDescriptor];

  return [v2 fontWithDescriptor:v3 size:0.0];
}

- (UIFont)commentAttributionDateFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(PLCommentsFontCache *)self _shortCaptionFontDescriptor];

  return [v2 fontWithDescriptor:v3 size:0.0];
}

- (UIFont)commentTextFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(PLCommentsFontCache *)self _shortSubheadlineFontDescriptor];

  return [v2 fontWithDescriptor:v3 size:0.0];
}

- (UIFont)likeFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(PLCommentsFontCache *)self _shortCaptionFontDescriptor];

  return [v2 fontWithDescriptor:v3 size:0.0];
}

- (UIFont)youLikeFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(PLCommentsFontCache *)self _emphasizedShortCaptionFontDescriptor];

  return [v2 fontWithDescriptor:v3 size:0.0];
}

- (id)_shortBodyFontDescriptor
{
  result = self->__shortBodyFontDescriptor;
  if (!result)
  {
    result = [-[PLCommentsFontCache _bodyFontDescriptor](self "_bodyFontDescriptor")];
    self->__shortBodyFontDescriptor = result;
  }

  return result;
}

- (id)_emphasizedBodyFontDescriptor
{
  result = self->__emphasizedBodyFontDescriptor;
  if (!result)
  {
    result = [-[PLCommentsFontCache _bodyFontDescriptor](self "_bodyFontDescriptor")];
    self->__emphasizedBodyFontDescriptor = result;
  }

  return result;
}

- (id)_bodyFontDescriptor
{
  result = self->__bodyFontDescriptor;
  if (!result)
  {
    result = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:0 options:0];
    self->__bodyFontDescriptor = result;
  }

  return result;
}

- (id)_shortSubheadlineFontDescriptor
{
  result = self->__shortSubheadlineFontDescriptor;
  if (!result)
  {
    result = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] addingSymbolicTraits:0x8000 options:0];
    self->__shortSubheadlineFontDescriptor = result;
  }

  return result;
}

- (id)_emphasizedShortCaptionFontDescriptor
{
  result = self->__emphasizedShortCaptionFontDescriptor;
  if (!result)
  {
    result = [-[PLCommentsFontCache _shortCaptionFontDescriptor](self "_shortCaptionFontDescriptor")];
    self->__emphasizedShortCaptionFontDescriptor = result;
  }

  return result;
}

- (id)_shortCaptionFontDescriptor
{
  result = self->__shortCaptionFontDescriptor;
  if (!result)
  {
    result = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] addingSymbolicTraits:0 options:0];
    self->__shortCaptionFontDescriptor = result;
  }

  return result;
}

- (void)_invalidateCache
{
  self->__shortCaptionFontDescriptor = 0;

  self->__emphasizedShortCaptionFontDescriptor = 0;
  self->__shortSubheadlineFontDescriptor = 0;

  self->__bodyFontDescriptor = 0;
  self->__emphasizedBodyFontDescriptor = 0;

  self->__shortBodyFontDescriptor = 0;
}

- (void)_contentSizesDidChange:(id)a3
{
  [(PLCommentsFontCache *)self _invalidateCache];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];

  [v4 postNotificationName:@"PLCommentsFontCacheDidChangeNotification" object:self];
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = PLCommentsFontCache;
  [(PLCommentsFontCache *)&v3 dealloc];
}

- (PLCommentsFontCache)init
{
  v5.receiver = self;
  v5.super_class = PLCommentsFontCache;
  v2 = [(PLCommentsFontCache *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__contentSizesDidChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return v2;
}

PLCommentsFontCache *__34__PLCommentsFontCache_sharedCache__block_invoke()
{
  result = objc_alloc_init(PLCommentsFontCache);
  sharedCache_sharedCache = result;
  return result;
}

@end