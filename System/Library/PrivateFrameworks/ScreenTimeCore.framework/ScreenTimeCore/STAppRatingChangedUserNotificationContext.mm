@interface STAppRatingChangedUserNotificationContext
- (STAppRatingChangedUserNotificationContext)initWithCoder:(id)coder;
- (STAppRatingChangedUserNotificationContext)initWithRatingLimit:(id)limit bundleIdentifiers:(id)identifiers;
- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAppRatingChangedUserNotificationContext

- (STAppRatingChangedUserNotificationContext)initWithRatingLimit:(id)limit bundleIdentifiers:(id)identifiers
{
  limitCopy = limit;
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = STAppRatingChangedUserNotificationContext;
  v9 = [(STUserNotificationContext *)&v12 initWithIdentifier:@"app-rating-changed"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_regionRatingLimit, limit);
    objc_storeStrong(&v10->_bundleIdentifiers, identifiers);
  }

  return v10;
}

- (STAppRatingChangedUserNotificationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = STAppRatingChangedUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regionRatingLimit"];
    regionRatingLimit = v5->_regionRatingLimit;
    v5->_regionRatingLimit = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"bundleIdentifiers"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STAppRatingChangedUserNotificationContext;
  coderCopy = coder;
  [(STUserNotificationContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_regionRatingLimit forKey:{@"regionRatingLimit", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_bundleIdentifiers forKey:@"bundleIdentifiers"];
}

- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block
{
  contentCopy = content;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__STAppRatingChangedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = contentCopy;
  selfCopy = self;
  v14 = blockCopy;
  v10.receiver = self;
  v10.super_class = STAppRatingChangedUserNotificationContext;
  v8 = blockCopy;
  v9 = contentCopy;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

void __94__STAppRatingChangedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 40) regionRatingLimit];
  v15[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v5 = [v2 localizedUserNotificationStringForKey:@"AppRatingChangedNotificationTitleFormat" arguments:v4];
  [*(a1 + 32) setTitle:v5];

  v14 = 0;
  sysctlbyname("hw.machine", 0, &v14, 0, 0);
  if (v14)
  {
    v6 = [MEMORY[0x1E695DF88] dataWithLength:?];
    sysctlbyname("hw.machine", [v6 mutableBytes], &v14, 0, 0);
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v6, "bytes")}];
  }

  else
  {
    v7 = &stru_1F3040980;
  }

  if ([(__CFString *)v7 containsString:@"iPad"])
  {
    v8 = @"AppRatingChangedNotificationBodyIpad";
  }

  else
  {
    v8 = @"AppRatingChangedNotificationBodyIphone";
  }

  v9 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:v8 arguments:0];
  [*(a1 + 32) setBody:v9];

  v10 = objc_opt_new();
  [v10 setScheme:@"prefs"];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@&path=CONTENT_PRIVACY/CONTENT_RESTRICTIONS/APP_RATING", @"root=SCREEN_TIME"];
  [v10 setPath:v11];

  v12 = [v10 URL];

  [*(a1 + 32) setDefaultActionURL:v12];
  [*(a1 + 32) setShouldIgnoreDoNotDisturb:1];
  [*(a1 + 32) setShouldSuppressScreenLightUp:1];
  [*(a1 + 32) setCategoryIdentifier:@"com.apple.screentime.enabled"];
  (*(*(a1 + 48) + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

@end