@interface PUFilmstripAsset
- (BOOL)isEqual:(id)equal;
- (PUFilmstripAsset)initWithNormalizedTime:(double)time asset:(id)asset;
- (double)sourceTime;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (void)loadSourceTimeWithCompletionHandler:(id)handler;
@end

@implementation PUFilmstripAsset

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v9 = v6 == self->__normalizedTime && ([v5 _asset], v7 = [v5 _normalizedTime];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)compare:(id)compare
{
  [compare sourceTime];
  sourceTime = self->_sourceTime;
  if (v4 <= sourceTime)
  {
    return v4 < sourceTime;
  }

  else
  {
    return -1;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  [(PUFilmstripAsset *)self _normalizedTime];
  v6 = v5;
  _asset = [(PUFilmstripAsset *)self _asset];
  v8 = [v4 initWithNormalizedTime:_asset asset:v6];

  return v8;
}

- (void)loadSourceTimeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PUFilmstripAsset *)self _isSourceTimeAccurate])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1, 0, self->_sourceTime);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    asset = self->__asset;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PUFilmstripAsset_loadSourceTimeWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7B77110;
    objc_copyWeak(&v8, &location);
    v7 = handlerCopy;
    [(AVAsset *)asset pu_loadDurationWithCompletionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __56__PUFilmstripAsset_loadSourceTimeWithCompletionHandler___block_invoke(uint64_t a1, CMTime *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (a3)
  {
    if (!WeakRetained)
    {
      goto LABEL_11;
    }

    if (([WeakRetained _isSourceTimeAccurate] & 1) == 0)
    {
      [v9 _normalizedTime];
      v13 = *a2;
      [v9 setSourceTime:v10 * CMTimeGetSeconds(&v13)];
      [v9 _setSourceTimeAccurate:1];
    }
  }

  else
  {
    v11 = PLOneUpGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v13.value) = 138412290;
      *(&v13.value + 4) = v7;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Failed to load video duration. Error: %@", &v13, 0xCu);
    }
  }

  v12 = *(a1 + 32);
  if (v12 && v9)
  {
    [v9 sourceTime];
    (*(v12 + 16))(v12, a3, v7);
  }

LABEL_11:
}

- (double)sourceTime
{
  if (![(PUFilmstripAsset *)self _isSourceTimeAccurate])
  {
    _asset = [(PUFilmstripAsset *)self _asset];
    v4 = _asset;
    if (_asset)
    {
      [_asset pu_duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    [(PUFilmstripAsset *)self _normalizedTime];
    self->_sourceTime = Seconds * v6;
    [(PUFilmstripAsset *)self _setSourceTimeAccurate:1];
  }

  return self->_sourceTime;
}

- (PUFilmstripAsset)initWithNormalizedTime:(double)time asset:(id)asset
{
  v7.receiver = self;
  v7.super_class = PUFilmstripAsset;
  result = [(PUFilmstripAsset *)&v7 init];
  if (result)
  {
    *&result->_pixelWidth = vdupq_n_s64(1uLL);
    result->__normalizedTime = time;
    result->__isSourceTimeAccurate = 0;
    result->__asset = asset;
  }

  return result;
}

@end