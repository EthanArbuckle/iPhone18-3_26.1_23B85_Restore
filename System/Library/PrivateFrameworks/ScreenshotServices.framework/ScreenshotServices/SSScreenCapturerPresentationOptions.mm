@interface SSScreenCapturerPresentationOptions
- (id)description;
- (unint64_t)effectivePresentationMode;
@end

@implementation SSScreenCapturerPresentationOptions

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v8.receiver = self;
  v8.super_class = SSScreenCapturerPresentationOptions;
  v4 = [(SSScreenCapturerPresentationOptions *)&v8 description];
  [string appendString:v4];

  [string appendString:@" presentationMode: "];
  presentationMode = self->_presentationMode;
  if (presentationMode > 3)
  {
    v6 = @"Fullscreen";
  }

  else
  {
    v6 = off_1E85900B0[presentationMode];
  }

  [string appendString:v6];

  return string;
}

- (unint64_t)effectivePresentationMode
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_presentationMode)
  {
    v3 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = self->_presentationMode - 1;
      if (v4 > 2)
      {
        v5 = @"Automatic";
      }

      else
      {
        v5 = off_1E85900D0[v4];
      }

      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "effectivePresentationMode: %@", &v12, 0xCu);
    }

    return self->_presentationMode;
  }

  else
  {
    v6 = _SSPIPExperienceEnabled();
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"Fullscreen";
      if (v6)
      {
        v9 = @"PictureInPicture";
      }

      v12 = 138412290;
      v13 = v9;
      v10 = v9;
      _os_log_impl(&dword_1D9E04000, v8, OS_LOG_TYPE_DEFAULT, "PresentationModeAutomatic resolved to effectivePresentationMode: %@", &v12, 0xCu);
    }
  }

  return v7;
}

@end