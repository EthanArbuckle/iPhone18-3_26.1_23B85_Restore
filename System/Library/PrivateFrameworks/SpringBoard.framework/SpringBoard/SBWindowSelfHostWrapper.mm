@interface SBWindowSelfHostWrapper
+ (id)wrapperForUseInWindow:(id)window hostRequester:(id)requester sceneIdentifier:(id)identifier;
+ (id)wrapperForWindow:(id)window orientation:(int64_t)orientation hostRequester:(id)requester sceneIdentifier:(id)identifier;
@end

@implementation SBWindowSelfHostWrapper

+ (id)wrapperForUseInWindow:(id)window hostRequester:(id)requester sceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requesterCopy = requester;
  v10 = [self wrapperForWindow:0 orientation:objc_msgSend(window hostRequester:"interfaceOrientation") sceneIdentifier:{requesterCopy, identifierCopy}];

  return v10;
}

+ (id)wrapperForWindow:(id)window orientation:(int64_t)orientation hostRequester:(id)requester sceneIdentifier:(id)identifier
{
  windowCopy = window;
  v10 = MEMORY[0x277D0AAD8];
  identifierCopy = identifier;
  requesterCopy = requester;
  sharedInstance = [v10 sharedInstance];
  v14 = [sharedInstance sceneWithIdentifier:identifierCopy];

  v15 = [MEMORY[0x277D75968] targetForUIWindow:windowCopy];
  uiPresentationManager = [v14 uiPresentationManager];
  v17 = [uiPresentationManager createPresenterForLayerTarget:v15 identifier:requesterCopy];

  [v17 activate];
  presentationView = [v17 presentationView];
  if (orientation != 1)
  {
    memset(&v36, 0, sizeof(v36));
    if (orientation == 3)
    {
      v19 = 1.57079633;
    }

    else if (orientation == 4)
    {
      v19 = -1.57079633;
    }

    else
    {
      v19 = 3.14159265;
      if (orientation != 2)
      {
        v19 = 0.0;
      }
    }

    CGAffineTransformMakeRotation(&v36, -v19);
    v35 = v36;
    [presentationView setTransform:&v35];
    [presentationView frame];
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    v24 = -CGRectGetMinX(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    MinY = CGRectGetMinY(v39);
    CGAffineTransformMakeTranslation(&t2, v24, -MinY);
    v33 = v36;
    CGAffineTransformConcat(&v35, &v33, &t2);
    v36 = v35;
    [presentationView setTransform:&v35];
  }

  v26 = objc_alloc_init(SBWindowSelfHostWrapper);
  presenter = v26->_presenter;
  v26->_presenter = v17;
  v28 = v17;

  window = v26->_window;
  v26->_window = windowCopy;
  v30 = windowCopy;

  hostView = v26->_hostView;
  v26->_hostView = presentationView;

  return v26;
}

@end