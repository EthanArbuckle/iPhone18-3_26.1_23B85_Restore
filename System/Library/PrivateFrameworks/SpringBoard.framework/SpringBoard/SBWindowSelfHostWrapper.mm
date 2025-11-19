@interface SBWindowSelfHostWrapper
+ (id)wrapperForUseInWindow:(id)a3 hostRequester:(id)a4 sceneIdentifier:(id)a5;
+ (id)wrapperForWindow:(id)a3 orientation:(int64_t)a4 hostRequester:(id)a5 sceneIdentifier:(id)a6;
@end

@implementation SBWindowSelfHostWrapper

+ (id)wrapperForUseInWindow:(id)a3 hostRequester:(id)a4 sceneIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 wrapperForWindow:0 orientation:objc_msgSend(a3 hostRequester:"interfaceOrientation") sceneIdentifier:{v9, v8}];

  return v10;
}

+ (id)wrapperForWindow:(id)a3 orientation:(int64_t)a4 hostRequester:(id)a5 sceneIdentifier:(id)a6
{
  v9 = a3;
  v10 = MEMORY[0x277D0AAD8];
  v11 = a6;
  v12 = a5;
  v13 = [v10 sharedInstance];
  v14 = [v13 sceneWithIdentifier:v11];

  v15 = [MEMORY[0x277D75968] targetForUIWindow:v9];
  v16 = [v14 uiPresentationManager];
  v17 = [v16 createPresenterForLayerTarget:v15 identifier:v12];

  [v17 activate];
  v18 = [v17 presentationView];
  if (a4 != 1)
  {
    memset(&v36, 0, sizeof(v36));
    if (a4 == 3)
    {
      v19 = 1.57079633;
    }

    else if (a4 == 4)
    {
      v19 = -1.57079633;
    }

    else
    {
      v19 = 3.14159265;
      if (a4 != 2)
      {
        v19 = 0.0;
      }
    }

    CGAffineTransformMakeRotation(&v36, -v19);
    v35 = v36;
    [v18 setTransform:&v35];
    [v18 frame];
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
    [v18 setTransform:&v35];
  }

  v26 = objc_alloc_init(SBWindowSelfHostWrapper);
  presenter = v26->_presenter;
  v26->_presenter = v17;
  v28 = v17;

  window = v26->_window;
  v26->_window = v9;
  v30 = v9;

  hostView = v26->_hostView;
  v26->_hostView = v18;

  return v26;
}

@end