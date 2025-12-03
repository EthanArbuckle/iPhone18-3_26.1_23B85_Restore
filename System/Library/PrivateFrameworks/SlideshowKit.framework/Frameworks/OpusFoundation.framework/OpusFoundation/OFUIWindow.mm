@interface OFUIWindow
- (OFUIWindow)initWithCoder:(id)coder;
- (OFUIWindow)initWithFrame:(CGRect)frame;
- (id)beginDraggingItems:(id)items position:(CGPoint)position source:(id)source;
- (void)cancelDragging;
- (void)commonInit;
- (void)dealloc;
- (void)handleDragging:(id)dragging;
- (void)sendEvent:(id)event;
@end

@implementation OFUIWindow

- (void)commonInit
{
  self->_draggingSession = 0;
  v3 = [[OFUIWindowDraggingGestureRecognizer alloc] initWithTarget:self action:sel_handleDragging_];
  self->_draggingGestureRecognizer = v3;
  [(OFUIWindowDraggingGestureRecognizer *)v3 setDelegate:self];
  [(OFUIWindow *)self addGestureRecognizer:self->_draggingGestureRecognizer];
  self->_draggingAutoscroll = objc_alloc_init(OFUIWindowDraggingAutoscroll);
  self->_eventsTracking = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_showTouches = 0;
}

- (OFUIWindow)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = OFUIWindow;
  v3 = [(OFUIWindow *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(OFUIWindow *)v3 commonInit];
  }

  return v4;
}

- (OFUIWindow)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OFUIWindow;
  v3 = [(OFUIWindow *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(OFUIWindow *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  [(OFUIWindow *)self cancelDragging];
  draggingSession = self->_draggingSession;
  if (draggingSession)
  {

    self->_draggingSession = 0;
  }

  draggingGestureRecognizer = self->_draggingGestureRecognizer;
  if (draggingGestureRecognizer)
  {

    self->_draggingGestureRecognizer = 0;
  }

  draggingAutoscroll = self->_draggingAutoscroll;
  if (draggingAutoscroll)
  {

    self->_draggingAutoscroll = 0;
  }

  eventsTracking = self->_eventsTracking;
  if (eventsTracking)
  {

    self->_eventsTracking = 0;
  }

  v7.receiver = self;
  v7.super_class = OFUIWindow;
  [(OFUIWindow *)&v7 dealloc];
}

- (id)beginDraggingItems:(id)items position:(CGPoint)position source:(id)source
{
  y = position.y;
  x = position.x;
  if ([(OFUIWindow *)self isDragging])
  {
    [(OFUIWindow *)self cancelDragging];
  }

  v10 = [items count];
  if (!source)
  {
    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = [[OFUIWindowDraggingSession alloc] initWithWindow:self items:items position:source source:x, y];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  [(OFUIWindow *)self setDraggingSession:v11];
  [(OFUIWindowDraggingGestureRecognizer *)self->_draggingGestureRecognizer beginDragging];
  if ([(OFUIWindowDraggingGestureRecognizer *)self->_draggingGestureRecognizer state]!= 1)
  {
    draggingSession = self->_draggingSession;
    if (draggingSession)
    {

      self->_draggingSession = 0;
    }

    return 0;
  }

  return v12;
}

- (void)cancelDragging
{
  if (self->_draggingSession)
  {
    [(OFUIWindowDraggingGestureRecognizer *)self->_draggingGestureRecognizer cancelDragging];
  }
}

- (void)sendEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = OFUIWindow;
  [(OFUIWindow *)&v21 sendEvent:?];
  if (self->_showTouches && ![event type])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [event touchesForWindow:{self, 0}];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          phase = [v10 phase];
          if ((phase - 3) < 2)
          {
            v14 = -[NSMutableDictionary objectForKey:](self->_eventsTracking, "objectForKey:", [v10 hashString]);
            if (v14)
            {
              [v14 removeFromSuperview];
              [(NSMutableDictionary *)self->_eventsTracking removeObjectForKey:v10];
            }
          }

          else if (phase == 1)
          {
            v15 = -[NSMutableDictionary objectForKey:](self->_eventsTracking, "objectForKey:", [v10 hashString]);
            if (v15)
            {
              v16 = v15;
              [v10 locationInView:self];
              [v16 setCenter:?];
            }
          }

          else if (!phase)
          {
            v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:{objc_msgSend(MEMORY[0x277D755B8], "imageWithContentsOfFile:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"touch", @"png"}];
            if (v12)
            {
              v13 = v12;
              [v12 setUserInteractionEnabled:0];
              [v13 setFrame:{0.0, 0.0, 54.0, 54.0}];
              [v10 locationInView:self];
              [v13 setCenter:?];
              [(OFUIWindow *)self addSubview:v13];
              -[NSMutableDictionary setObject:forKey:](self->_eventsTracking, "setObject:forKey:", v13, [v10 hashString]);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }
  }
}

- (void)handleDragging:(id)dragging
{
  state = [dragging state];
  if (state > 2)
  {
    if (state == 3)
    {
      [(OFUIWindowDraggingAutoscroll *)self->_draggingAutoscroll stopAutoscroll];
      draggingSession = self->_draggingSession;
      v10 = 0;
    }

    else
    {
      if (state != 4)
      {
        return;
      }

      [(OFUIWindowDraggingAutoscroll *)self->_draggingAutoscroll stopAutoscroll];
      draggingSession = self->_draggingSession;
      v10 = 1;
    }

    [(OFUIWindowDraggingSession *)draggingSession endDragging:v10];
    v12 = self->_draggingSession;
    if (v12)
    {

      self->_draggingSession = 0;
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];

    [currentDevice beginGeneratingDeviceOrientationNotifications];
  }

  else if (state == 1)
  {
    [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
    v11 = self->_draggingSession;

    [(OFUIWindowDraggingSession *)v11 beginDragging];
  }

  else if (state == 2)
  {
    v6 = self->_draggingSession;
    [dragging locationOfTouch:0 inView:self];
    [(OFUIWindowDraggingSession *)v6 moveToPosition:?];
    draggingAutoscroll = self->_draggingAutoscroll;
    v8 = self->_draggingSession;

    [(OFUIWindowDraggingAutoscroll *)draggingAutoscroll maybeStartAutoscrollForDraggingSession:v8];
  }
}

@end