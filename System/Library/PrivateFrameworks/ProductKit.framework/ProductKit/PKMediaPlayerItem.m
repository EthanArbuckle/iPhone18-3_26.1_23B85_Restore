@interface PKMediaPlayerItem
- (BOOL)isEqual:(id)a3;
- (PKMediaPlayerItem)initWithURL:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)invalidate;
- (void)setPlaybackNotificationTimeRanges:(id)a3 withTimeRangeHandler:(id)a4;
- (void)setPlayerItem:(id)a3;
@end

@implementation PKMediaPlayerItem

- (PKMediaPlayerItem)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKMediaPlayerItem;
  v6 = [(PKMediaPlayerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (void)setPlaybackNotificationTimeRanges:(id)a3 withTimeRangeHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  playbackNotificationTimeRanges = self->_playbackNotificationTimeRanges;
  self->_playbackNotificationTimeRanges = v7;

  v9 = [v6 copy];
  timeRangeHandler = self->_timeRangeHandler;
  self->_timeRangeHandler = v9;
}

- (void)setPlayerItem:(id)a3
{
  v12 = a3;
  v4 = [(PKMediaPlayerItem *)self playerItems];
  [v4 removeAllObjects];

  v5 = [(PKMediaPlayerItem *)self playerItems];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(PKMediaPlayerItem *)self setPlayerItems:v6];
  }

  v7 = [(PKMediaPlayerItem *)self playerItems];
  [v7 addObject:v12];

  if ([(PKMediaPlayerItem *)self shouldLoop])
  {
    v8 = [(PKMediaPlayerItem *)self playerItems];
    v9 = [v12 copy];
    [v8 addObject:v9];

    v10 = [(PKMediaPlayerItem *)self playerItems];
    v11 = [v12 copy];
    [v10 addObject:v11];
  }
}

- (void)invalidate
{
  timeRangeHandler = self->_timeRangeHandler;
  self->_timeRangeHandler = 0;

  startedHandler = self->_startedHandler;
  self->_startedHandler = 0;

  completedHandler = self->_completedHandler;
  self->_completedHandler = 0;
}

- (id)description
{
  v11 = objc_opt_class();
  NSAppendPrintF();
  v14 = 0;
  v12 = [(NSURL *)self->_url path:v11];
  NSAppendPrintF();
  v3 = v14;

  if ([(NSMutableArray *)self->_playerItems count])
  {
    v13 = [(NSMutableArray *)self->_playerItems firstObject];
    NSAppendPrintF();
    v4 = v3;

    v3 = v4;
  }

  if (self->_shouldLoop)
  {
    NSAppendPrintF();
    v5 = v3;

    v3 = v5;
  }

  if ([(NSArray *)self->_playbackNotificationTimeRanges count])
  {
    [(NSArray *)self->_playbackNotificationTimeRanges count];
    self->_timeRangeHandler;
    NSAppendPrintF();
    v6 = v3;

    v3 = v6;
  }

  if (self->_startedHandler)
  {
    NSAppendPrintF();
    v7 = v3;

    v3 = v7;
  }

  if (self->_completedHandler)
  {
    NSAppendPrintF();
    v8 = v3;

    v3 = v8;
  }

  NSAppendPrintF();
  v9 = v3;

  return v3;
}

- (unint64_t)hash
{
  v2 = [(PKMediaPlayerItem *)self url];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PKMediaPlayerItem *)self url];
      v7 = [(PKMediaPlayerItem *)v5 url];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 != v9 && (v8 != 0) != (v9 == 0))
      {
        [v8 isEqual:v9];
      }

      [(PKMediaPlayerItem *)self shouldLoop];
      [(PKMediaPlayerItem *)v5 shouldLoop];
    }
  }

  return 0;
}

@end