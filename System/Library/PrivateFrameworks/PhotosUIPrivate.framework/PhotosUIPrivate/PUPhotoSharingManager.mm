@interface PUPhotoSharingManager
+ (id)sharedInstance;
- (BOOL)prepareForDismissingForced:(BOOL)forced;
- (PLProgressView)publishingProgressView;
- (void)_addPublishingAgentIfNeeded:(id)needed;
- (void)_cleanUpPublishingProgressView;
- (void)_removePublishingAgent:(id)agent;
- (void)_schedulePublishingProgressViewUpdate;
- (void)_setDelaysAppSuspend:(BOOL)suspend;
- (void)_setFlag:(BOOL)flag forReferenceCounter:(int64_t *)counter performIfChanged:(id)changed;
- (void)_updatePublishingProgressView:(id)view;
- (void)cancelPublishing;
- (void)dealloc;
- (void)publishingAgentCancelButtonClicked:(id)clicked;
- (void)publishingAgentDidBeginPublishing:(id)publishing;
- (void)publishingAgentDidEndPublishing:(id)publishing error:(id)error;
- (void)publishingAgentDidEndRemaking:(id)remaking didSucceed:(BOOL)succeed;
- (void)publishingAgentDidStartRemaking:(id)remaking;
- (void)setRemaking:(BOOL)remaking;
@end

@implementation PUPhotoSharingManager

- (void)publishingAgentCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [(PUPhotoSharingManager *)self _removePublishingAgent:clickedCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69BE210] object:clickedCopy];

  _currentPublishingAgent = [(PUPhotoSharingManager *)self _currentPublishingAgent];

  if (!_currentPublishingAgent)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"PUPhotoSharingManagerDidEndPublishing" object:0];

    [(PUPhotoSharingManager *)self _cleanUpPublishingProgressView];
  }
}

- (void)publishingAgentDidEndPublishing:(id)publishing error:(id)error
{
  publishingCopy = publishing;
  [publishingCopy showAlertWithError:error];
  [(PUPhotoSharingManager *)self _removePublishingAgent:publishingCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69BE218] object:publishingCopy userInfo:0];

  _currentPublishingAgent = [(PUPhotoSharingManager *)self _currentPublishingAgent];

  if (!_currentPublishingAgent)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"PUPhotoSharingManagerDidEndPublishing" object:0];

    [(PUPhotoSharingManager *)self _cleanUpPublishingProgressView];
  }
}

- (void)publishingAgentDidBeginPublishing:(id)publishing
{
  publishingCopy = publishing;
  [(PUPhotoSharingManager *)self _addPublishingAgentIfNeeded:publishingCopy];
  [(PUPhotoSharingManager *)self _setNetworkPromptShowing:1];
  [(PUPhotoSharingManager *)self _setDelaysAppSuspend:1];
  [*MEMORY[0x1E69DDA98] setStatusBarShowsProgress:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69BE230] object:publishingCopy];

  v5 = publishingCopy;
  if (publishingCopy)
  {
    _currentPublishingAgent = [(PUPhotoSharingManager *)self _currentPublishingAgent];
    if (_currentPublishingAgent == publishingCopy)
    {
      isVideoMedia = [publishingCopy isVideoMedia];

      v5 = publishingCopy;
      if (isVideoMedia)
      {
        goto LABEL_6;
      }

      [(PUPhotoSharingManager *)self _schedulePublishingProgressViewUpdate];
      _currentPublishingAgent = [MEMORY[0x1E696AD88] defaultCenter];
      [_currentPublishingAgent postNotificationName:@"PUPhotoSharingManagerDidBeginPublishing" object:0];
    }

    v5 = publishingCopy;
  }

LABEL_6:
}

- (void)publishingAgentDidEndRemaking:(id)remaking didSucceed:(BOOL)succeed
{
  succeedCopy = succeed;
  v11[1] = *MEMORY[0x1E69E9840];
  remakingCopy = remaking;
  [(PUPhotoSharingManager *)self setRemaking:0];
  v10 = *MEMORY[0x1E69BE228];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:succeedCopy];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69BE220] object:remakingCopy userInfo:v8];

  if (!succeedCopy)
  {
    [(PUPhotoSharingManager *)self _removePublishingAgent:remakingCopy];
  }
}

- (void)publishingAgentDidStartRemaking:(id)remaking
{
  remakingCopy = remaking;
  [(PUPhotoSharingManager *)self setRemaking:1];
  [(PUPhotoSharingManager *)self _addPublishingAgentIfNeeded:remakingCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69BE238] object:remakingCopy userInfo:0];

  v5 = remakingCopy;
  if (remakingCopy)
  {
    _currentPublishingAgent = [(PUPhotoSharingManager *)self _currentPublishingAgent];

    v5 = remakingCopy;
    if (_currentPublishingAgent == remakingCopy)
    {
      [(PUPhotoSharingManager *)self _schedulePublishingProgressViewUpdate];
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"PUPhotoSharingManagerDidBeginPublishing" object:0];

      v5 = remakingCopy;
    }
  }
}

- (void)_removePublishingAgent:(id)agent
{
  agentCopy = agent;
  v4 = [(NSMutableArray *)self->_publishingAgents containsObject:agentCopy];
  v5 = agentCopy;
  if (v4)
  {
    [agentCopy setDelegate:0];
    [(NSMutableArray *)self->_publishingAgents removeObject:agentCopy];
    if ([agentCopy deleteMediaFileAfterPublishing])
    {
      mediaPath = [agentCopy mediaPath];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v8 = [defaultManager fileExistsAtPath:mediaPath];

      if (v8)
      {
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager2 removeItemAtPath:mediaPath error:0];
      }
    }

    [(PUPhotoSharingManager *)self _setNetworkPromptShowing:0];
    v4 = [(PUPhotoSharingManager *)self _setDelaysAppSuspend:0];
    v5 = agentCopy;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_addPublishingAgentIfNeeded:(id)needed
{
  neededCopy = needed;
  publishingAgents = self->_publishingAgents;
  if (publishingAgents)
  {
    v5 = publishingAgents;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v6 = self->_publishingAgents;
  self->_publishingAgents = v5;

  if (([(NSMutableArray *)self->_publishingAgents containsObject:neededCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_publishingAgents addObject:neededCopy];
  }
}

- (void)_cleanUpPublishingProgressView
{
  [(NSTimer *)self->_publishingProgressTimer invalidate];
  publishingProgressTimer = self->_publishingProgressTimer;
  self->_publishingProgressTimer = 0;

  [(PLProgressView *)self->_publishingProgressView removeFromSuperview];
  publishingProgressView = self->_publishingProgressView;
  self->_publishingProgressView = 0;
}

- (void)_updatePublishingProgressView:(id)view
{
  _currentPublishingAgent = [(PUPhotoSharingManager *)self _currentPublishingAgent];
  v5 = _currentPublishingAgent;
  if (_currentPublishingAgent)
  {
    [(PLProgressView *)self->_publishingProgressView updateUIForPublishingAgent:_currentPublishingAgent];
    [(PUPhotoSharingManager *)self _schedulePublishingProgressViewUpdate];
  }

  else
  {
    [(PUPhotoSharingManager *)self _cleanUpPublishingProgressView];
  }
}

- (void)_schedulePublishingProgressViewUpdate
{
  _currentPublishingAgent = [(PUPhotoSharingManager *)self _currentPublishingAgent];

  if (_currentPublishingAgent)
  {
    [(NSTimer *)self->_publishingProgressTimer invalidate];
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__updatePublishingProgressView_ selector:0 userInfo:1 repeats:0.2];
    publishingProgressTimer = self->_publishingProgressTimer;
    self->_publishingProgressTimer = v4;

    MEMORY[0x1EEE66BB8](v4, publishingProgressTimer);
  }

  else
  {

    [(PUPhotoSharingManager *)self _cleanUpPublishingProgressView];
  }
}

- (void)_setDelaysAppSuspend:(BOOL)suspend
{
  suspendCopy = suspend;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PUPhotoSharingManager__setDelaysAppSuspend___block_invoke;
  v6[3] = &unk_1E7B7F020;
  v6[4] = self;
  selfCopy = self;
  [(PUPhotoSharingManager *)selfCopy _setFlag:suspendCopy forReferenceCounter:&self->_appSuspensionCount performIfChanged:v6];
}

uint64_t __46__PUPhotoSharingManager__setDelaysAppSuspend___block_invoke(uint64_t result, int a2)
{
  v2 = result;
  if (a2)
  {
    result = [*MEMORY[0x1E69DDA98] beginBackgroundTaskWithExpirationHandler:0];
    v3 = result;
    v4 = v2 + 32;
  }

  else
  {
    v4 = result + 32;
    v3 = *MEMORY[0x1E69DDBE8];
    if (*(*(result + 32) + 56) == *MEMORY[0x1E69DDBE8])
    {
      return result;
    }

    result = [*MEMORY[0x1E69DDA98] endBackgroundTask:?];
  }

  *(*v4 + 56) = v3;
  return result;
}

void __50__PUPhotoSharingManager__setNetworkPromptShowing___block_invoke()
{
  SBSSpringBoardServerPort();

  JUMPOUT(0x1B8C6D860);
}

- (void)_setFlag:(BOOL)flag forReferenceCounter:(int64_t *)counter performIfChanged:(id)changed
{
  changedCopy = changed;
  v8 = *counter;
  if (flag)
  {
    v9 = 1;
  }

  else
  {
    if (!v8)
    {
      v12 = 0;
      goto LABEL_8;
    }

    v9 = -1;
  }

  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  *counter = v11;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

LABEL_8:
  v13 = v8 > 0;
  if (changedCopy && v13 != v12)
  {
    v14 = changedCopy;
    changedCopy[2]();
    changedCopy = v14;
  }
}

- (BOOL)prepareForDismissingForced:(BOOL)forced
{
  forcedCopy = forced;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_publishingAgents copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([v11 isRemaking] & 1) == 0 && (objc_msgSend(v11, "isPublishing") & 1) == 0)
        {
          if (!forcedCopy)
          {
            v12 = 0;
            goto LABEL_14;
          }

          [(PUPhotoSharingManager *)self _removePublishingAgent:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_14:

  return v12 | forcedCopy;
}

- (void)cancelPublishing
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_publishingAgents copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(PUPhotoSharingManager *)self _removePublishingAgent:v9, v11];
        [v9 setShouldCancelPublish:1];
        [v9 cancelRemaking];
        [(PUPhotoSharingManager *)self publishingAgentDidEndRemaking:v9 didSucceed:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69BE240] object:0];
}

- (PLProgressView)publishingProgressView
{
  _currentPublishingAgent = [(PUPhotoSharingManager *)self _currentPublishingAgent];

  if (_currentPublishingAgent)
  {
    publishingProgressView = self->_publishingProgressView;
    if (!publishingProgressView)
    {
      v5 = [objc_alloc(MEMORY[0x1E69BE1C0]) initWithFrame:{0.0, 0.0, 0.0, 45.0}];
      v6 = self->_publishingProgressView;
      self->_publishingProgressView = v5;

      publishingProgressView = self->_publishingProgressView;
    }

    v7 = publishingProgressView;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setRemaking:(BOOL)remaking
{
  remakingCopy = remaking;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__PUPhotoSharingManager_setRemaking___block_invoke;
  v6[3] = &unk_1E7B7F020;
  v6[4] = self;
  selfCopy = self;
  [(PUPhotoSharingManager *)selfCopy _setFlag:remakingCopy forReferenceCounter:&self->_videoRemakingCount performIfChanged:v6];
}

- (void)dealloc
{
  [*MEMORY[0x1E69DDA98] endBackgroundTask:self->_backgroundTaskIdentifier];
  v3.receiver = self;
  v3.super_class = PUPhotoSharingManager;
  [(PUPhotoSharingManager *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_62780 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_62780, &__block_literal_global_62781);
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __39__PUPhotoSharingManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PUPhotoSharingManager);
  v1 = sharedInstance_manager;
  sharedInstance_manager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end