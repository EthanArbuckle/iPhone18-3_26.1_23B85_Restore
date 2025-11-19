@interface _UIShareServiceActivityProxy
+ (id)activityProxyForServiceActivityDataRequest:(id)a3;
+ (void)forwardInvocation:(id)a3;
- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)isKindOfClass:(Class)a3;
- (CGSize)_thumbnailSize;
- (_UIShareServiceActivityProxy)initWithUnderlyingActivityItemDataRequest:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_loadItemProvidersFromActivityItems:(id)a3 completion:(id)a4;
- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4;
- (void)activityDidFinish:(BOOL)a3 items:(id)a4 error:(id)a5;
- (void)forwardInvocation:(id)a3;
@end

@implementation _UIShareServiceActivityProxy

+ (id)activityProxyForServiceActivityDataRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 activityCategory];
  if (!v4)
  {
    v5 = off_1E71F8708;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = off_1E71F8710;
LABEL_5:
    v6 = [objc_alloc(*v5) initWithUnderlyingActivityItemDataRequest:v3];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (_UIShareServiceActivityProxy)initWithUnderlyingActivityItemDataRequest:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _UIShareServiceActivityProxy;
  v6 = [(_UIShareServiceActivityProxy *)&v14 init];
  if (v6)
  {
    v7 = [v5 activityUUID];
    activityUUID = v6->_activityUUID;
    v6->_activityUUID = v7;

    v9 = [v5 activityType];
    activityType = v6->_activityType;
    v6->_activityType = v9;

    objc_storeStrong(&v6->_underlyingActivityItemDataRequest, a3);
    [v5 isAirDropActivity];
    v6->_remoteClass = objc_opt_class();
    [v5 thumbnailSize];
    v6->_thumbnailSize.width = v11;
    v6->_thumbnailSize.height = v12;
  }

  return v6;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v6.receiver = self;
  v6.super_class = _UIShareServiceActivityProxy;
  if ([(_UIShareServiceActivityProxy *)&v6 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)self->_remoteClass isSubclassOfClass:a3];
  }
}

+ (void)forwardInvocation:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 selector];

  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D920];
  v8 = NSStringFromSelector(v5);
  [v6 raise:v7 format:{@"Attempt to invoke +%@ on %@, which is not supported for proxies to out-of-process activities.", v8, v4}];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = _UIShareServiceActivityProxy;
  v5 = [(_UIShareServiceActivityProxy *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    _UIShareServiceProxyRaiseInvocationUnsupportedForInstance(self, a3);
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v4 = [a3 selector];

  _UIShareServiceProxyRaiseInvocationUnsupportedForInstance(self, v4);
}

- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(_UIShareServiceActivityProxy *)self prepareWithActivityItems:a3];
  v6[2]();
}

- (void)activityDidFinish:(BOOL)a3 items:(id)a4 error:(id)a5
{
  v6 = a3;
  v12 = a4;
  v8 = a5;
  if (self->_representationCacheURL)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 removeItemAtURL:self->_representationCacheURL error:0];
  }

  v10 = MEMORY[0x18CFF58E0](self->_didFinishPerformingActivityHandler);
  didFinishPerformingActivityHandler = self->_didFinishPerformingActivityHandler;
  self->_didFinishPerformingActivityHandler = 0;

  if (v10)
  {
    (v10)[2](v10, v6, v12, v8);
  }
}

- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  didFinishPreparingForExecution = self->_didFinishPreparingForExecution;
  if (didFinishPreparingForExecution)
  {
    didFinishPreparingForExecution[2](didFinishPreparingForExecution, a2, a3, a4, a5);
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

- (void)_loadItemProvidersFromActivityItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  representationCacheURL = self->_representationCacheURL;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79___UIShareServiceActivityProxy__loadItemProvidersFromActivityItems_completion___block_invoke;
  v9[3] = &unk_1E71FAC68;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [UIActivity _loadItemProvidersFromActivityItems:a3 withCacheURL:representationCacheURL completion:v9];
}

@end