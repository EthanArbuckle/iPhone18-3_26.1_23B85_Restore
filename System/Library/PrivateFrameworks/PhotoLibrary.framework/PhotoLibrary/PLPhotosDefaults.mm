@interface PLPhotosDefaults
+ (id)sharedInstance;
+ (int)randomTransition;
- (PLPhotosDefaults)init;
- (int)transitionForAnimationMovingForward:(BOOL)forward;
- (void)_reloadPhotoDefaultValuesAndNotify:(BOOL)notify;
- (void)dealloc;
- (void)setMusicCollection:(id)collection;
@end

@implementation PLPhotosDefaults

- (void)setMusicCollection:(id)collection
{
  musicCollection = self->_musicCollection;
  if (musicCollection != collection)
  {

    self->_musicCollection = collection;
  }
}

- (int)transitionForAnimationMovingForward:(BOOL)forward
{
  result = self->_transition;
  if (result == -1)
  {
    result = [objc_opt_class() randomTransition];
  }

  if (result == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = result;
  }

  if (result == 7)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (!forward)
  {
    return v6;
  }

  return result;
}

- (PLPhotosDefaults)init
{
  v5.receiver = self;
  v5.super_class = PLPhotosDefaults;
  v2 = [(PLPhotosDefaults *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLPhotosDefaults *)v2 _reloadPhotoDefaultValuesAndNotify:0];
    v3->_musicCollection = 0;
  }

  return v3;
}

- (void)_reloadPhotoDefaultValuesAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  v5 = CFPreferencesCopyAppValue(@"SummarizeSections", @"com.apple.mobileslideshow");
  if (!v5)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  }

  self->_summarizeMomentSections = [v5 BOOLValue];
  if (notifyCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"PLPhotosDefaultsDidChangeNotification" object:self];
  }
}

- (void)dealloc
{
  if (__Defaults == self)
  {
    __Defaults = 0;
  }

  v3.receiver = self;
  v3.super_class = PLPhotosDefaults;
  [(PLPhotosDefaults *)&v3 dealloc];
}

+ (int)randomTransition
{
  if (!randomTransition_transitionsArray)
  {
    v2 = randomTransition_settingsArray;
    if (!randomTransition_settingsArray)
    {
      v3 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v3];
      randomTransition_settingsArray = [v4 valueForKey:@"items"];

      v2 = randomTransition_settingsArray;
    }

    v5 = [v2 count];
    randomTransition_transitionsArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v5 < 1)
    {
LABEL_8:
      v8 = 0;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v7 = [randomTransition_settingsArray objectAtIndex:v6];
        if ([objc_msgSend(v7 objectForKey:{@"key", "isEqualToString:", @"Transition"}])
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_8;
        }
      }

      v8 = [v7 valueForKeyPath:@"validValues"];
    }

    v9 = [v8 count];
    if (v9 >= 1)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        v12 = [v8 objectAtIndex:i];
        if ([v12 intValue] >= 1)
        {
          [randomTransition_transitionsArray addObject:v12];
        }
      }
    }
  }

  v13 = [randomTransition_transitionsArray objectAtIndex:{random() % objc_msgSend(randomTransition_transitionsArray, "count")}];

  return [v13 intValue];
}

+ (id)sharedInstance
{
  result = __Defaults;
  if (!__Defaults)
  {
    result = objc_alloc_init(PLPhotosDefaults);
    __Defaults = result;
  }

  return result;
}

@end