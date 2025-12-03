@interface TCSAvailability
+ (BOOL)isUserAvailable;
+ (BOOL)shouldShowWalkieTalkieStatusIndicator;
+ (id)sharedInstance;
+ (void)setUserAvailable:(BOOL)available;
- (BOOL)_calculateShouldShowStatusIndicator;
- (BOOL)_isUserUnavailable;
- (TCSAvailability)init;
- (id)_unavailabilityText:(BOOL)text;
- (void)_handleDeviceFirstUnlock;
- (void)_postNotificationName:(id)name;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setShouldObserveFriendListDefaultChanges:(BOOL)changes;
- (void)setShouldObserveUnavailabilityDefaultChanges:(BOOL)changes;
- (void)setShouldShowStatusIndicator:(BOOL)indicator;
@end

@implementation TCSAvailability

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TCSAvailability sharedInstance];
  }

  v3 = sharedInstance_sSharedAvailability;

  return v3;
}

uint64_t __33__TCSAvailability_sharedInstance__block_invoke()
{
  sharedInstance_sSharedAvailability = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (TCSAvailability)init
{
  v10.receiver = self;
  v10.super_class = TCSAvailability;
  v2 = [(TCSAvailability *)&v10 init];
  if (v2)
  {
    v3 = +[TCSTinCanUserDefaults defaults];
    tinCanDefaults = v2->_tinCanDefaults;
    v2->_tinCanDefaults = v3;

    v5 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v5;

    if (!+[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = +[TCSBehavior sharedBehavior];
      [defaultCenter addObserver:v2 selector:sel__handleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v8];
    }

    v2->_shouldShowStatusIndicator = [(TCSAvailability *)v2 _calculateShouldShowStatusIndicator];
    [(TCSAvailability *)v2 setShouldObserveUnavailabilityDefaultChanges:1];
    [(TCSAvailability *)v2 setShouldObserveFriendListDefaultChanges:1];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(TCSAvailability *)self setShouldObserveUnavailabilityDefaultChanges:0];
  [(TCSAvailability *)self setShouldObserveFriendListDefaultChanges:0];
  v4.receiver = self;
  v4.super_class = TCSAvailability;
  [(TCSAvailability *)&v4 dealloc];
}

- (void)setShouldObserveFriendListDefaultChanges:(BOOL)changes
{
  if (self->_shouldObserveFriendListDefaultChanges != changes)
  {
    changesCopy = changes;
    self->_shouldObserveFriendListDefaultChanges = changes;
    tinCanDefaults = self->_tinCanDefaults;
    v7 = +[TCSTinCanUserDefaults allowListKey];
    v8 = v7;
    if (changesCopy)
    {
      [(NSUserDefaults *)tinCanDefaults addObserver:self forKeyPath:v7 options:1 context:TCSFriendListObservationContext];
    }

    else
    {
      [(NSUserDefaults *)tinCanDefaults removeObserver:self forKeyPath:v7 context:TCSFriendListObservationContext];
    }
  }
}

- (void)setShouldObserveUnavailabilityDefaultChanges:(BOOL)changes
{
  if (self->_shouldObserveUnavailabilityDefaultChanges != changes)
  {
    self->_shouldObserveUnavailabilityDefaultChanges = changes;
    tinCanDefaults = self->_tinCanDefaults;
    if (changes)
    {
      [(NSUserDefaults *)tinCanDefaults addObserver:self forKeyPath:@"Unavailable" options:1 context:TCSAvailabilityObservationContext];
    }

    else
    {
      [(NSUserDefaults *)tinCanDefaults removeObserver:self forKeyPath:@"Unavailable" context:TCSAvailabilityObservationContext];
    }
  }
}

- (void)setShouldShowStatusIndicator:(BOOL)indicator
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_shouldShowStatusIndicator != indicator)
  {
    self->_shouldShowStatusIndicator = indicator;
    _TCSInitializeLogging();
    v4 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_shouldShowStatusIndicator)
      {
        v5 = &stru_287F22AC0;
      }

      else
      {
        v5 = @"not ";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_26F110000, v4, OS_LOG_TYPE_DEFAULT, "Walkie-Talkie status indicator should %@be shown.", &v7, 0xCu);
    }

    [(TCSAvailability *)self _postNotificationName:@"TCSStatusIndicatorStateDidChangeNotification"];
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isUserAvailable
{
  v2 = +[TCSAvailability sharedInstance];
  _isUserUnavailable = [v2 _isUserUnavailable];

  return _isUserUnavailable ^ 1;
}

+ (void)setUserAvailable:(BOOL)available
{
  availableCopy = available;
  v4 = +[TCSAvailability sharedInstance];
  [v4 _setUserUnavailable:!availableCopy];
}

+ (BOOL)shouldShowWalkieTalkieStatusIndicator
{
  v2 = +[TCSAvailability sharedInstance];
  shouldShowStatusIndicator = [v2 shouldShowStatusIndicator];

  return shouldShowStatusIndicator;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (TCSAvailabilityObservationContext == context || TCSFriendListObservationContext == context)
  {
    if (TCSAvailabilityObservationContext == context)
    {
      [(TCSAvailability *)self _postNotificationName:@"TCSAvailabilityDidChangeNotification"];
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__TCSAvailability_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v15[3] = &unk_279DC19E0;
    v15[4] = self;
    TCSGuaranteeMainThread(v15);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TCSAvailability;
    [(TCSAvailability *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

uint64_t __66__TCSAvailability_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _calculateShouldShowStatusIndicator];
  v3 = *(a1 + 32);

  return [v3 setShouldShowStatusIndicator:v2];
}

- (BOOL)_isUserUnavailable
{
  if (!+[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot])
  {
    return 1;
  }

  tinCanDefaults = self->_tinCanDefaults;

  return [(NSUserDefaults *)tinCanDefaults BOOLForKey:@"Unavailable"];
}

- (BOOL)_calculateShouldShowStatusIndicator
{
  if (!+[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot])
  {
    return 0;
  }

  _hasConnectivity = [(TCSAvailability *)self _hasConnectivity];
  tinCanDefaults = self->_tinCanDefaults;
  v5 = +[TCSTinCanUserDefaults allowListKey];
  v6 = [(NSUserDefaults *)tinCanDefaults dictionaryForKey:v5];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  v10 = dictionary;

  v11 = [TCSContacts validatedAllowlistFromDictionary:v10];

  v12 = [TCSContacts _destinationsFromAllowlistDictionary:v11 onlyAccepted:1];
  v13 = [v12 count];

  v14 = (v13 != 0) & ~[(TCSAvailability *)self _isUserUnavailable];
  if (_hasConnectivity)
  {
    v9 = v14;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleDeviceFirstUnlock
{
  _TCSInitializeLogging();
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSAvailability was notified of first device unlock.", v4, 2u);
  }

  [(TCSAvailability *)self setShouldShowStatusIndicator:[(TCSAvailability *)self _calculateShouldShowStatusIndicator]];
  if (![(TCSAvailability *)self _isUserUnavailable])
  {
    [(TCSAvailability *)self _postNotificationName:@"TCSAvailabilityDidChangeNotification"];
  }
}

- (void)_postNotificationName:(id)name
{
  nameCopy = name;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TCSAvailability__postNotificationName___block_invoke;
  block[3] = &unk_279DC19E0;
  v6 = nameCopy;
  v4 = nameCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__TCSAvailability__postNotificationName___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:0];
}

- (id)_unavailabilityText:(BOOL)text
{
  if (text)
  {
    return @"unavailable";
  }

  else
  {
    return @"available";
  }
}

@end