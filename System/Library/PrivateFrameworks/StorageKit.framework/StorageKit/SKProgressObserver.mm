@interface SKProgressObserver
- (SKProgressObserver)initWithProgress:(id)progress;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SKProgressObserver

- (SKProgressObserver)initWithProgress:(id)progress
{
  progressCopy = progress;
  v12.receiver = self;
  v12.super_class = SKProgressObserver;
  v6 = [(SKProgressObserver *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progress, progress);
    v8 = objc_opt_new();
    messages = v7->_messages;
    v7->_messages = v8;

    v10 = NSStringFromSelector(sel_localizedAdditionalDescription);
    [progressCopy addObserver:v7 forKeyPath:v10 options:1 context:0];
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  pathCopy = path;
  v9 = NSStringFromSelector(sel_localizedAdditionalDescription);
  v10 = [pathCopy isEqualToString:v9];

  v11 = objectCopy;
  if (v10)
  {
    v12 = objectCopy;
    if (!v12)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    localizedAdditionalDescription = [v12 localizedAdditionalDescription];

    if (!localizedAdditionalDescription)
    {
      goto LABEL_10;
    }

    messages = [(SKProgressObserver *)self messages];
    lastObject = [messages lastObject];
    if (lastObject)
    {
      v16 = lastObject;
      messages2 = [(SKProgressObserver *)self messages];
      lastObject2 = [messages2 lastObject];
      localizedAdditionalDescription2 = [v12 localizedAdditionalDescription];
      v20 = [lastObject2 isEqualToString:localizedAdditionalDescription2];

      if (v20)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    messages3 = [(SKProgressObserver *)self messages];
    localizedAdditionalDescription3 = [v12 localizedAdditionalDescription];
    [messages3 addObject:localizedAdditionalDescription3];

LABEL_10:
    v11 = objectCopy;
  }
}

- (void)dealloc
{
  progress = [(SKProgressObserver *)self progress];
  v4 = NSStringFromSelector(sel_localizedAdditionalDescription);
  [progress removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = SKProgressObserver;
  [(SKProgressObserver *)&v5 dealloc];
}

@end