@interface TLSystemSound
- (BOOL)isValid;
- (TLSystemSound)initWithSoundFileURL:(id)a3 soundID:(unsigned int)a4 requiresLongFormPlayback:(BOOL)a5;
- (id)_description;
- (id)description;
- (unsigned)soundID;
- (void)_ensureUnderlyingSoundCreated;
- (void)_prepareForDealloc;
- (void)beginRequiringUnderlyingSoundLoaded;
- (void)dealloc;
@end

@implementation TLSystemSound

- (TLSystemSound)initWithSoundFileURL:(id)a3 soundID:(unsigned int)a4 requiresLongFormPlayback:(BOOL)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = TLSystemSound;
  v9 = [(TLSystemSound *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [v8 copy];
    soundFileURL = v10->_soundFileURL;
    v10->_soundFileURL = v11;

    v10->_soundID = a4;
    v10->_requiresLongFormPlayback = a5;
  }

  return v10;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(TLSystemSound *)self _prepareForDealloc];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = TLSystemSound;
  [(TLSystemSound *)&v3 dealloc];
}

- (void)_prepareForDealloc
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_shouldDisposeOfSoundID)
  {
    v3 = AudioServicesDisposeSystemSoundID(self->_soundID);
    v4 = TLLogPlayback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(TLSystemSound *)self _description];
      soundID = self->_soundID;
      v8 = 138543874;
      v9 = v5;
      v10 = 2048;
      v11 = soundID;
      v12 = 2048;
      v13 = v3;
      _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareForDealloc. AudioServicesDisposeSystemSoundID for soundID = %lu returned %ld.", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(TLSystemSound *)self _description];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_description
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  if (self->_soundFileURL)
  {
    [v6 appendFormat:@"; soundFileURL = %@", self->_soundFileURL];
  }

  soundID = self->_soundID;
  if (soundID == kSystemSoundID_InvalidTone)
  {
    v8 = @"; wasSoundCreated = NO";
LABEL_7:
    [v6 appendString:v8];
    goto LABEL_9;
  }

  if (soundID == kSystemSoundID_NoneTone)
  {
    v8 = @"; soundID = kSystemSoundID_NoneTone";
    goto LABEL_7;
  }

  [v6 appendFormat:@"; soundID = %lu", self->_soundID];
LABEL_9:
  if (self->_requiresLongFormPlayback)
  {
    [v6 appendString:@"; requiresLongFormPlayback = YES"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isValid
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = [(TLSystemSound *)self soundID];
  return v3 != kSystemSoundID_NoneTone && v3 != kSystemSoundID_InvalidTone;
}

- (unsigned)soundID
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(TLSystemSound *)self _ensureUnderlyingSoundCreated];
  soundID = self->_soundID;
  os_unfair_lock_unlock(&self->_lock);
  return soundID;
}

- (void)beginRequiringUnderlyingSoundLoaded
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 _description];
  v5 = 138543362;
  v6 = v3;
  _os_log_debug_impl(&dword_1D9356000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: -beginRequiringUnderlyingSoundLoaded.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_ensureUnderlyingSoundCreated
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_soundID == kSystemSoundID_InvalidTone)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = v3;
    soundFileURL = self->_soundFileURL;
    if (soundFileURL)
    {
      [v3 setObject:soundFileURL forKey:*MEMORY[0x1E695A898]];
    }

    if (self->_requiresLongFormPlayback)
    {
      [v4 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695A8A0]];
    }

    if (![v4 count])
    {
      goto LABEL_10;
    }

    SystemSoundIDWithOptions = AudioServicesCreateSystemSoundIDWithOptions();
    v7 = TLLogPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(TLSystemSound *)self _description];
      v9 = self->_soundFileURL;
      soundID = self->_soundID;
      v12 = 138544130;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      v17 = soundID;
      v18 = 2048;
      v19 = SystemSoundIDWithOptions;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_ensureUnderlyingSoundCreated. AudioServicesCreateSystemSoundIDWithOptions for URL %{public}@ produced soundID = %lu and returned %ld.", &v12, 0x2Au);
    }

    if (!SystemSoundIDWithOptions)
    {
      self->_shouldDisposeOfSoundID = 1;
    }

    else
    {
LABEL_10:
      self->_soundID = kSystemSoundID_NoneTone;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end