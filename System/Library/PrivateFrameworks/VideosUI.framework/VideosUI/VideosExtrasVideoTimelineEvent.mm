@interface VideosExtrasVideoTimelineEvent
- (NSString)subHeader;
- (NSString)title;
- (VideosExtrasVideoTimelineEvent)initWithElement:(id)element prev:(id)prev;
- (VideosExtrasVideoTimelineEvent)next;
- (VideosExtrasVideoTimelineEvent)previous;
- (id)description;
- (void)loadImage:(id)image;
@end

@implementation VideosExtrasVideoTimelineEvent

- (VideosExtrasVideoTimelineEvent)initWithElement:(id)element prev:(id)prev
{
  elementCopy = element;
  prevCopy = prev;
  v16.receiver = self;
  v16.super_class = VideosExtrasVideoTimelineEvent;
  v8 = [(VideosExtrasVideoTimelineEvent *)&v16 init];
  if (v8)
  {
    relatedContent = [elementCopy relatedContent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      relatedContent2 = [elementCopy relatedContent];
      lockup = v8->_lockup;
      v8->_lockup = relatedContent2;
    }

    [elementCopy offset];
    v8->_offset = v13;
    [elementCopy duration];
    v8->_duration = v14;
    objc_storeWeak(&v8->_previous, prevCopy);
  }

  return v8;
}

- (NSString)title
{
  title = [(IKLockupElement *)self->_lockup title];
  text = [title text];
  string = [text string];

  return string;
}

- (NSString)subHeader
{
  subtitle = [(IKLockupElement *)self->_lockup subtitle];
  text = [subtitle text];
  string = [text string];

  return string;
}

- (void)loadImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    lockup = self->_lockup;
    if (lockup && ([(IKLockupElement *)lockup image], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      image = [(IKLockupElement *)self->_lockup image];
      artworkCatalog = [image artworkCatalog];

      v9 = 100.0;
      v10 = 75.0;
      v16.origin.x = 0.0;
      v16.origin.y = 0.0;
      v16.size.width = 100.0;
      v16.size.height = 75.0;
      if (CGRectIsEmpty(v16))
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen bounds];
        v9 = v12;
        v10 = v13;
      }

      [artworkCatalog setFittingSize:{v9, v10}];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__VideosExtrasVideoTimelineEvent_loadImage___block_invoke;
      v14[3] = &unk_1E8735D80;
      v15 = imageCopy;
      [artworkCatalog setDestination:self configurationBlock:v14];
    }

    else
    {
      (*(imageCopy + 2))(imageCopy, 0);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  title = [(IKLockupElement *)self->_lockup title];
  text = [title text];
  v6 = [v3 stringWithFormat:@"<Event title: %@, offset: %f, duration: %f>", text, *&self->_offset, *&self->_duration];

  return v6;
}

- (VideosExtrasVideoTimelineEvent)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_previous);

  return WeakRetained;
}

- (VideosExtrasVideoTimelineEvent)next
{
  WeakRetained = objc_loadWeakRetained(&self->_next);

  return WeakRetained;
}

@end