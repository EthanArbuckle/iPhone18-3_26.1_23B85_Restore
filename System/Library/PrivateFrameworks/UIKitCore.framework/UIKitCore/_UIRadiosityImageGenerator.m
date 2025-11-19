@interface _UIRadiosityImageGenerator
+ (id)sharedInstance;
- (void)imageWithImage:(CGImage *)a3 completionHandler:(id)a4;
@end

@implementation _UIRadiosityImageGenerator

+ (id)sharedInstance
{
  if (qword_1ED4A2AA0 != -1)
  {
    dispatch_once(&qword_1ED4A2AA0, &__block_literal_global_686);
  }

  v3 = qword_1ED4A2A98;

  return v3;
}

- (void)imageWithImage:(CGImage *)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (qword_1ED4A2AA8 == -1)
  {
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&qword_1ED4A2AA8, &__block_literal_global_2_20);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (a3)
  {
    if (_MergedGlobals_1379)
    {
      Width = CGImageGetWidth(a3);
      Height = CGImageGetHeight(a3);
      if (Width)
      {
        if (Height)
        {
          v9 = Width;
          v10 = MEMORY[0x1E6999410];
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __63___UIRadiosityImageGenerator_imageWithImage_completionHandler___block_invoke_2;
          v11[3] = &unk_1E7129CA0;
          v13 = v9;
          v14 = Height;
          v12 = v6;
          [v10 radiosityImageWithImage:a3 displayScale:1 completionHandler:v11];
        }
      }
    }
  }

LABEL_8:
}

@end