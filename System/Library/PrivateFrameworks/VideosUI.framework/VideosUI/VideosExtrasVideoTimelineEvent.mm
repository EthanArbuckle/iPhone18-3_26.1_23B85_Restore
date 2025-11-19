@interface VideosExtrasVideoTimelineEvent
- (NSString)subHeader;
- (NSString)title;
- (VideosExtrasVideoTimelineEvent)initWithElement:(id)a3 prev:(id)a4;
- (VideosExtrasVideoTimelineEvent)next;
- (VideosExtrasVideoTimelineEvent)previous;
- (id)description;
- (void)loadImage:(id)a3;
@end

@implementation VideosExtrasVideoTimelineEvent

- (VideosExtrasVideoTimelineEvent)initWithElement:(id)a3 prev:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = VideosExtrasVideoTimelineEvent;
  v8 = [(VideosExtrasVideoTimelineEvent *)&v16 init];
  if (v8)
  {
    v9 = [v6 relatedContent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [v6 relatedContent];
      lockup = v8->_lockup;
      v8->_lockup = v11;
    }

    [v6 offset];
    v8->_offset = v13;
    [v6 duration];
    v8->_duration = v14;
    objc_storeWeak(&v8->_previous, v7);
  }

  return v8;
}

- (NSString)title
{
  v2 = [(IKLockupElement *)self->_lockup title];
  v3 = [v2 text];
  v4 = [v3 string];

  return v4;
}

- (NSString)subHeader
{
  v2 = [(IKLockupElement *)self->_lockup subtitle];
  v3 = [v2 text];
  v4 = [v3 string];

  return v4;
}

- (void)loadImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    lockup = self->_lockup;
    if (lockup && ([(IKLockupElement *)lockup image], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = [(IKLockupElement *)self->_lockup image];
      v8 = [v7 artworkCatalog];

      v9 = 100.0;
      v10 = 75.0;
      v16.origin.x = 0.0;
      v16.origin.y = 0.0;
      v16.size.width = 100.0;
      v16.size.height = 75.0;
      if (CGRectIsEmpty(v16))
      {
        v11 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v11 bounds];
        v9 = v12;
        v10 = v13;
      }

      [v8 setFittingSize:{v9, v10}];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__VideosExtrasVideoTimelineEvent_loadImage___block_invoke;
      v14[3] = &unk_1E8735D80;
      v15 = v4;
      [v8 setDestination:self configurationBlock:v14];
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IKLockupElement *)self->_lockup title];
  v5 = [v4 text];
  v6 = [v3 stringWithFormat:@"<Event title: %@, offset: %f, duration: %f>", v5, *&self->_offset, *&self->_duration];

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