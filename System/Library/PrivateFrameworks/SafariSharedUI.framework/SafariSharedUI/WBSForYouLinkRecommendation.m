@interface WBSForYouLinkRecommendation
- (NSSet)originalQueries;
- (NSString)badgeBundleIdentifier;
- (NSString)originalQueriesString;
- (NSString)simplifiedURLString;
- (UIImage)appIcon;
- (UIImage)sourceIcon;
- (WBSForYouLinkRecommendation)initWithTitle:(id)a3 url:(id)a4 lastSeenDate:(id)a5 source:(unint64_t)a6 topicSource:(unint64_t)a7;
@end

@implementation WBSForYouLinkRecommendation

- (WBSForYouLinkRecommendation)initWithTitle:(id)a3 url:(id)a4 lastSeenDate:(id)a5 source:(unint64_t)a6 topicSource:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v24.receiver = self;
  v24.super_class = WBSForYouLinkRecommendation;
  v15 = [(WBSForYouLinkRecommendation *)&v24 init];
  if (v15)
  {
    v16 = [v12 copy];
    title = v15->_title;
    v15->_title = v16;

    objc_storeStrong(&v15->_pageURL, a4);
    v18 = [MEMORY[0x1E696AFB0] UUID];
    uniqueIdentifier = v15->_uniqueIdentifier;
    v15->_uniqueIdentifier = v18;

    objc_storeStrong(&v15->_lastSeenDate, a5);
    v15->_source = a6;
    v15->_topicSource = a7;
    v20 = [MEMORY[0x1E695DFA8] set];
    originalQueries = v15->_originalQueries;
    v15->_originalQueries = v20;

    v22 = v15;
  }

  return v15;
}

- (NSString)simplifiedURLString
{
  simplifiedURLString = self->_simplifiedURLString;
  if (!simplifiedURLString)
  {
    v4 = [(NSURL *)self->_pageURL safari_simplifiedURLStringForDeduping];
    v5 = self->_simplifiedURLString;
    self->_simplifiedURLString = v4;

    simplifiedURLString = self->_simplifiedURLString;
  }

  return simplifiedURLString;
}

- (UIImage)appIcon
{
  appIcon = self->_appIcon;
  if (!appIcon)
  {
    v4 = [(WBSForYouLinkRecommendation *)self badgeBundleIdentifier];
    if ([v4 length])
    {
      v5 = MEMORY[0x1E69DCAB8];
      v6 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v6 scale];
      v7 = [v5 _applicationIconImageForBundleIdentifier:v4 format:5 scale:?];
    }

    else
    {
      v7 = 0;
    }

    v8 = self->_appIcon;
    self->_appIcon = v7;

    appIcon = self->_appIcon;
  }

  v9 = appIcon;

  return v9;
}

- (UIImage)sourceIcon
{
  contactImage = self->_contactImage;
  if (contactImage)
  {
    self = contactImage;
    goto LABEL_16;
  }

  source = self->_source;
  if (source > 2)
  {
    if ((source - 5) >= 3)
    {
      if (source == 3)
      {
        self = [WBSImageUtilities handoffIconForDeviceType:self->_secondarySourceIdentifier];
        goto LABEL_16;
      }

      if (source != 4)
      {
        goto LABEL_16;
      }

      v4 = MEMORY[0x1E69DCAB8];
      v5 = @"icloud";
LABEL_15:
      self = [v4 systemImageNamed:v5];
      goto LABEL_16;
    }

LABEL_9:
    v4 = MEMORY[0x1E69DCAB8];
    v5 = @"clock";
    goto LABEL_15;
  }

  switch(source)
  {
    case 0:
      v4 = MEMORY[0x1E69DCAB8];
      v5 = @"book";
      goto LABEL_15;
    case 1:
      v4 = MEMORY[0x1E69DCAB8];
      v5 = @"eyeglasses";
      goto LABEL_15;
    case 2:
      goto LABEL_9;
  }

LABEL_16:

  return self;
}

- (NSString)badgeBundleIdentifier
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__WBSForYouLinkRecommendation_badgeBundleIdentifier__block_invoke;
  aBlock[3] = &unk_1E8285130;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  if ((v2[2])(v2, @"apple.news"))
  {
    v3 = @"com.apple.news";
  }

  else if (v2[2](v2, @"maps.apple.com"))
  {
    v3 = @"com.apple.Maps";
  }

  else
  {
    v3 = 0;
  }

  return &v3->isa;
}

uint64_t __52__WBSForYouLinkRecommendation_badgeBundleIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = a2;
  v4 = [v2 host];
  v5 = [v4 safari_stringByRemovingWwwDotPrefix];
  v6 = [v5 lowercaseString];
  v7 = [v6 isEqualToString:v3];

  return v7;
}

- (NSSet)originalQueries
{
  v2 = [(NSMutableSet *)self->_originalQueries copy];

  return v2;
}

- (NSString)originalQueriesString
{
  v2 = [(NSMutableSet *)self->_originalQueries allObjects];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

@end