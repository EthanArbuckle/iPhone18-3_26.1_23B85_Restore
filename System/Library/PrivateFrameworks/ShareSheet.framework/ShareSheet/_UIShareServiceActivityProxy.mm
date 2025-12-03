@interface _UIShareServiceActivityProxy
+ (id)activityProxyForServiceActivityDataRequest:(id)request;
+ (void)forwardInvocation:(id)invocation;
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)isKindOfClass:(Class)class;
- (CGSize)_thumbnailSize;
- (_UIShareServiceActivityProxy)initWithUnderlyingActivityItemDataRequest:(id)request;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_loadItemProvidersFromActivityItems:(id)items completion:(id)completion;
- (void)_prepareWithActivityItems:(id)items completion:(id)completion;
- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _UIShareServiceActivityProxy

+ (id)activityProxyForServiceActivityDataRequest:(id)request
{
  requestCopy = request;
  activityCategory = [requestCopy activityCategory];
  if (!activityCategory)
  {
    v5 = off_1E71F8708;
    goto LABEL_5;
  }

  if (activityCategory == 1)
  {
    v5 = off_1E71F8710;
LABEL_5:
    v6 = [objc_alloc(*v5) initWithUnderlyingActivityItemDataRequest:requestCopy];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (_UIShareServiceActivityProxy)initWithUnderlyingActivityItemDataRequest:(id)request
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = _UIShareServiceActivityProxy;
  v6 = [(_UIShareServiceActivityProxy *)&v14 init];
  if (v6)
  {
    activityUUID = [requestCopy activityUUID];
    activityUUID = v6->_activityUUID;
    v6->_activityUUID = activityUUID;

    activityType = [requestCopy activityType];
    activityType = v6->_activityType;
    v6->_activityType = activityType;

    objc_storeStrong(&v6->_underlyingActivityItemDataRequest, request);
    [requestCopy isAirDropActivity];
    v6->_remoteClass = objc_opt_class();
    [requestCopy thumbnailSize];
    v6->_thumbnailSize.width = v11;
    v6->_thumbnailSize.height = v12;
  }

  return v6;
}

- (BOOL)isKindOfClass:(Class)class
{
  v6.receiver = self;
  v6.super_class = _UIShareServiceActivityProxy;
  if ([(_UIShareServiceActivityProxy *)&v6 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)self->_remoteClass isSubclassOfClass:class];
  }
}

+ (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v4 = objc_opt_class();
  selector = [invocationCopy selector];

  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D920];
  v8 = NSStringFromSelector(selector);
  [v6 raise:v7 format:{@"Attempt to invoke +%@ on %@, which is not supported for proxies to out-of-process activities.", v8, v4}];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = _UIShareServiceActivityProxy;
  v5 = [(_UIShareServiceActivityProxy *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    _UIShareServiceProxyRaiseInvocationUnsupportedForInstance(self, selector);
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  selector = [invocation selector];

  _UIShareServiceProxyRaiseInvocationUnsupportedForInstance(self, selector);
}

- (void)_prepareWithActivityItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  [(_UIShareServiceActivityProxy *)self prepareWithActivityItems:items];
  completionCopy[2]();
}

- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error
{
  finishCopy = finish;
  itemsCopy = items;
  errorCopy = error;
  if (self->_representationCacheURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:self->_representationCacheURL error:0];
  }

  v10 = MEMORY[0x18CFF58E0](self->_didFinishPerformingActivityHandler);
  didFinishPerformingActivityHandler = self->_didFinishPerformingActivityHandler;
  self->_didFinishPerformingActivityHandler = 0;

  if (v10)
  {
    (v10)[2](v10, finishCopy, itemsCopy, errorCopy);
  }
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  didFinishPreparingForExecution = self->_didFinishPreparingForExecution;
  if (didFinishPreparingForExecution)
  {
    didFinishPreparingForExecution[2](didFinishPreparingForExecution, a2, controller, animated, completion);
  }

  return 1;
}

- (CGSize)_thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_loadItemProvidersFromActivityItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  representationCacheURL = self->_representationCacheURL;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79___UIShareServiceActivityProxy__loadItemProvidersFromActivityItems_completion___block_invoke;
  v9[3] = &unk_1E71FAC68;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [UIActivity _loadItemProvidersFromActivityItems:items withCacheURL:representationCacheURL completion:v9];
}

@end