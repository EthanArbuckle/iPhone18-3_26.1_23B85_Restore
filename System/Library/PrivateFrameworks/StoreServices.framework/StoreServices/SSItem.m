@interface SSItem
- (BOOL)isCompilation;
- (BOOL)isGameCenterEnabled;
- (BOOL)isHighDefinition;
- (BOOL)isRestricted;
- (NSArray)allItemOffers;
- (NSArray)thumbnailImages;
- (NSNumber)ITunesStoreIdentifier;
- (NSString)artistName;
- (NSString)description;
- (NSString)itemKind;
- (NSString)itemTitle;
- (NSURL)viewItemURL;
- (SSItem)initWithItemDictionary:(id)a3;
- (SSItemImageCollection)imageCollection;
- (SSItemOffer)defaultItemOffer;
- (float)averageUserRating;
- (id)_offers;
- (id)_tellAFriendDictionary;
- (id)buyParameters;
- (id)contentRating;
- (id)itemOfferForIdentifier:(id)a3;
- (id)mediaKind;
- (id)playableMedia;
- (id)podcastFeedURL;
- (id)priceDisplay;
- (id)rawItemDictionary;
- (id)relatedItemsForRelationType:(id)a3;
- (id)releaseDate;
- (id)sendGiftURL;
- (id)tellAFriendBody;
- (id)tellAFriendBodyMIMEType;
- (id)tellAFriendBodyURL;
- (id)tellAFriendSubject;
- (id)tweetInitialText;
- (id)tweetURL;
- (id)valueForProperty:(id)a3;
- (id)viewReviewsURL;
- (int64_t)numberOfPrintedPages;
- (int64_t)numberOfUserRatings;
- (void)_finishTellAFriendLoadWithError:(id)a3;
- (void)_setExpirationDate:(id)a3;
- (void)dealloc;
- (void)loadTellAFriendMessageWithCompletionHandler:(id)a3;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)requestDidFinish:(id)a3;
- (void)urlConnectionRequest:(id)a3 didReceiveResponse:(id)a4;
@end

@implementation SSItem

- (void)dealloc
{
  [(NSArray *)self->_offers makeObjectsPerformSelector:sel__setOfferItem_ withObject:0];

  [(SSRequest *)self->_tellAFriendRequest setDelegate:0];
  [(SSRequest *)self->_tellAFriendRequest cancel];

  v3.receiver = self;
  v3.super_class = SSItem;
  [(SSItem *)&v3 dealloc];
}

- (NSArray)allItemOffers
{
  v2 = [(SSItem *)self _offers];

  return v2;
}

- (NSString)artistName
{
  v3 = [(SSItem *)self valueForProperty:@"artist-name"];
  if (!v3)
  {
    v3 = [-[SSItem valueForProperty:](self valueForProperty:{@"company", "objectForKey:", @"title"}];
  }

  v4 = v3;

  return v4;
}

- (float)averageUserRating
{
  v2 = [(SSItem *)self valueForProperty:@"average-user-rating"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  [v2 floatValue];
  return result;
}

- (SSItemOffer)defaultItemOffer
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = +[SSItemOffer _preferredOfferIdentifiers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      result = [(SSItem *)self itemOfferForIdentifier:*(*(&v10 + 1) + 8 * v7)];
      if (result)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = [(SSItem *)self _offers];
    result = [v9 count];
    if (result)
    {
      return [v9 objectAtIndex:0];
    }
  }

  return result;
}

- (SSItemImageCollection)imageCollection
{
  v2 = [(SSItem *)self valueForProperty:@"artwork-urls"];
  v3 = [v2 count];
  if (v3)
  {
    v3 = [[SSItemImageCollection alloc] initWithImageCollection:v2];
  }

  return v3;
}

- (BOOL)isGameCenterEnabled
{
  v2 = [(SSItem *)self valueForProperty:@"game-center-enabled"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isRestricted
{
  v3 = 1000;
  v4 = [(SSItem *)self valueForProperty:@"rating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"rank"];
    if (objc_opt_respondsToSelector())
    {
      v3 = [v5 intValue];
    }
  }

  v6 = [(SSItem *)self itemKind];
  if ([(NSString *)v6 isEqualToString:@"software"]|| [(NSString *)v6 isEqualToString:@"newsstand"])
  {
    v7 = 0;
    v8 = @"com.apple.AppStore";
    goto LABEL_7;
  }

  if ([(NSString *)v6 isEqualToString:@"movie"])
  {
    v8 = @"com.apple.MobileStore";
    v7 = 1;
    goto LABEL_7;
  }

  if ([(NSString *)v6 isEqualToString:@"tv-episode"]|| [(NSString *)v6 isEqualToString:@"tv-season"])
  {
    v8 = @"com.apple.MobileStore";
    v7 = 2;
LABEL_7:
    v9 = SBSCopyDisplayIdentifiers();
    v10 = [v9 containsObject:v8];

    v11 = SSRestrictionsCopyRankForMediaType(v7);
    if (v11)
    {
      v12 = v11;
      if (v10)
      {
        v13 = [v11 integerValue] < v3;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = v10 ^ 1;
    }

    return v13 & 1;
  }

  if (![(NSString *)v6 isEqualToString:@"album"]&& ![(NSString *)v6 isEqualToString:@"mix"]&& ![(NSString *)v6 isEqualToString:@"podcast"]&& ![(NSString *)v6 isEqualToString:@"podcast-episode"]&& ![(NSString *)v6 isEqualToString:@"music-video"]&& ![(NSString *)v6 isEqualToString:@"song"])
  {
    if ([(NSString *)v6 isEqualToString:@"artist"]|| [(NSString *)v6 isEqualToString:@"audiobook"]|| [(NSString *)v6 isEqualToString:@"booklet"])
    {
      v13 = SSApplicationWithIdentifierIsAvailable(@"com.apple.MobileStore") ^ 1;
    }

    else
    {
      v13 = 0;
    }

    return v13 & 1;
  }

  v15 = SBSCopyDisplayIdentifiers();
  v16 = [v15 containsObject:@"com.apple.MobileStore"];

  v13 = (v3 == 200) | v16 ^ 1;
  if (v3 != 200 || (v16 & 1) == 0)
  {
    return v13 & 1;
  }

  return MGGetBoolAnswer();
}

- (BOOL)isHighDefinition
{
  v2 = [(SSItem *)self valueForProperty:@"high-definition"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (NSString)itemKind
{
  v3 = [(SSItem *)self valueForProperty:@"type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([v3 isEqualToString:@"link"])
  {
    v4 = [(SSItem *)self valueForProperty:@"link-type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v4;
    }
  }

  return v3;
}

- (id)itemOfferForIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid offer identifier"];
  }

  v5 = [(SSItem *)self _offers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ([objc_msgSend(v10 "offerIdentifier")])
        {
          return v10;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (NSString)itemTitle
{
  result = [(SSItem *)self valueForProperty:@"unmodified-title"];
  if (!result)
  {

    return [(SSItem *)self valueForProperty:@"title"];
  }

  return result;
}

- (NSNumber)ITunesStoreIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  v3 = SSGetItemIdentifierFromValue([(SSItem *)self valueForProperty:@"item-id"]);

  return [v2 numberWithUnsignedLongLong:v3];
}

- (void)loadTellAFriendMessageWithCompletionHandler:(id)a3
{
  if ([(SSItem *)self tellAFriendBody])
  {
    if (!a3)
    {
      return;
    }

    v5 = self;
    v6 = *(a3 + 2);
    v7 = a3;
    v8 = 0;
LABEL_17:

    v6(v7, v8);
    return;
  }

  v9 = [-[SSItem _tellAFriendDictionary](self "_tellAFriendDictionary")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9]) == 0)
  {
    if (!a3)
    {
      return;
    }

    v15 = self;
    v8 = SSError(@"SSErrorDomain", 106, 0, 0);
    v6 = *(a3 + 2);
    v7 = a3;
    goto LABEL_17;
  }

  v16 = v10;
  if (!self->_tellAFriendHandlers)
  {
    self->_tellAFriendHandlers = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v11 = [a3 copy];
  if (v11)
  {
    v12 = v11;
    [(NSMutableArray *)self->_tellAFriendHandlers addObject:v11];
  }

  if (!self->_tellAFriendRequest)
  {
    v13 = objc_alloc_init(SSMutableURLRequestProperties);
    [(SSMutableURLRequestProperties *)v13 setITunesStoreRequest:1];
    [(SSMutableURLRequestProperties *)v13 setURL:v16];
    v14 = [[SSURLConnectionRequest alloc] initWithRequestProperties:v13];
    self->_tellAFriendRequest = v14;
    [(SSRequest *)v14 setDelegate:self];
    [(SSRequest *)self->_tellAFriendRequest setShouldCancelAfterTaskExpiration:1];
    [(SSURLConnectionRequest *)self->_tellAFriendRequest start];
  }
}

- (int64_t)numberOfPrintedPages
{
  v2 = [(SSItem *)self valueForProperty:@"number-of-pages"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 integerValue];
}

- (int64_t)numberOfUserRatings
{
  v2 = [(SSItem *)self valueForProperty:@"user-rating-count"];
  if (objc_opt_respondsToSelector())
  {
    return [v2 intValue];
  }

  else
  {
    return 0;
  }
}

- (id)relatedItemsForRelationType:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(NSDictionary *)self->_properties objectForKey:@"related-items"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [v4 objectForKey:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [[SSItem alloc] initWithItemDictionary:v11];
          if (v12)
          {
            v13 = v12;
            [v6 addObject:v12];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)tellAFriendBody
{
  tellAFriendBody = self->_tellAFriendBody;
  if (!tellAFriendBody)
  {
    v4 = [-[SSItem _tellAFriendDictionary](self "_tellAFriendDictionary")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tellAFriendBody = v4;
      self->_tellAFriendBody = tellAFriendBody;
    }

    else
    {
      tellAFriendBody = self->_tellAFriendBody;
    }
  }

  v5 = tellAFriendBody;

  return v5;
}

- (id)tellAFriendBodyMIMEType
{
  tellAFriendBodyMIMEType = self->_tellAFriendBodyMIMEType;
  if (!tellAFriendBodyMIMEType)
  {
    v4 = [-[SSItem _tellAFriendDictionary](self "_tellAFriendDictionary")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tellAFriendBodyMIMEType = v4;
    }

    else
    {
      tellAFriendBodyMIMEType = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:@"text/plain"];
    }

    self->_tellAFriendBodyMIMEType = tellAFriendBodyMIMEType;
  }

  v5 = tellAFriendBodyMIMEType;

  return v5;
}

- (id)tellAFriendBodyURL
{
  v2 = [-[SSItem _tellAFriendDictionary](self "_tellAFriendDictionary")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (id)tellAFriendSubject
{
  tellAFriendSubject = self->_tellAFriendSubject;
  if (!tellAFriendSubject)
  {
    v4 = [-[SSItem _tellAFriendDictionary](self "_tellAFriendDictionary")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tellAFriendSubject = v4;
      self->_tellAFriendSubject = tellAFriendSubject;
    }

    else
    {
      tellAFriendSubject = self->_tellAFriendSubject;
    }
  }

  v5 = tellAFriendSubject;

  return v5;
}

- (NSArray)thumbnailImages
{
  v2 = [(SSItem *)self imageCollection];

  return [(SSItemImageCollection *)v2 itemImages];
}

- (id)tweetInitialText
{
  v2 = [(SSItem *)self valueForProperty:@"tweet-info"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"text"];
  }

  else
  {
    v3 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = v3;

  return v4;
}

- (id)tweetURL
{
  v2 = [(SSItem *)self valueForProperty:@"tweet-info"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"url"];
  }

  else
  {
    v3 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DFF8];

  return [v4 URLWithString:v3];
}

- (id)valueForProperty:(id)a3
{
  v3 = [(NSDictionary *)self->_properties objectForKey:a3];

  return v3;
}

- (NSURL)viewItemURL
{
  result = [(SSItem *)self valueForProperty:@"url"];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E695DFF8];

    return [v4 URLWithString:v3];
  }

  return result;
}

- (id)buyParameters
{
  v2 = [(SSItem *)self defaultItemOffer];

  return [(SSItemOffer *)v2 buyParameters];
}

- (id)playableMedia
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(SSItem *)self _offers];
  if (![v2 count])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) playableMedia];
        if (v8)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)priceDisplay
{
  v2 = [(SSItem *)self defaultItemOffer];

  return [(SSItemOffer *)v2 priceDisplay];
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = SSItem;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", -[SSItem description](&v3, sel_description), -[NSDictionary description](self->_properties, "description")];
}

- (SSItem)initWithItemDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSItem;
  v4 = [(SSItem *)&v6 init];
  if (v4)
  {
    v4->_properties = [a3 copy];
  }

  return v4;
}

- (id)contentRating
{
  v2 = [(SSItem *)self valueForProperty:@"rating"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [[SSItemContentRating alloc] initWithDictionary:v2];

  return v3;
}

- (BOOL)isCompilation
{
  v2 = [(SSItem *)self valueForProperty:@"is-compilation"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (id)mediaKind
{
  v3 = [(SSItem *)self itemKind];
  v4 = [(SSItemOffer *)[(SSItem *)self defaultItemOffer] offerIdentifier];

  return SSItemMediaKindForItemKind(v3, v4);
}

- (id)podcastFeedURL
{
  result = [(SSItem *)self valueForProperty:@"podcast-feed-url"];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E695DFF8];

    return [v4 URLWithString:v3];
  }

  return result;
}

- (id)rawItemDictionary
{
  v2 = self->_properties;

  return v2;
}

- (id)releaseDate
{
  v2 = [(SSItem *)self valueForProperty:@"release-date"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
    v4 = [v3 dateFromString:v2];

    return v4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }
}

- (id)sendGiftURL
{
  result = [-[SSItem valueForProperty:](self valueForProperty:{@"gifting-button", "objectForKey:", @"url"}];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E695DFF8];

    return [v4 URLWithString:v3];
  }

  return result;
}

- (void)_setExpirationDate:(id)a3
{
  expirationDate = self->_expirationDate;
  if (expirationDate != a3)
  {

    self->_expirationDate = a3;
  }
}

- (id)viewReviewsURL
{
  result = [(SSItem *)self valueForProperty:@"view-user-reviews-url"];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E695DFF8];

    return [v4 URLWithString:v3];
  }

  return result;
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  if (self->_tellAFriendRequest == a3)
  {
    if (!a4)
    {
      a4 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    [(SSItem *)self _finishTellAFriendLoadWithError:a4];
  }
}

- (void)requestDidFinish:(id)a3
{
  if (self->_tellAFriendRequest == a3)
  {
    [(SSItem *)self _finishTellAFriendLoadWithError:0];
  }
}

- (void)urlConnectionRequest:(id)a3 didReceiveResponse:(id)a4
{
  if (self->_tellAFriendRequest == a3)
  {

    self->_tellAFriendBodyMIMEType = [a4 MIMEType];
    v6 = [a4 textEncodingName];
    if (v6)
    {
      v7 = CFStringConvertIANACharSetNameToEncoding(v6);
    }

    else
    {
      v7 = 134217984;
    }

    self->_tellAFriendBody = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:objc_msgSend(a4 encoding:{"bodyData"), CFStringConvertEncodingToNSStringEncoding(v7)}];
  }
}

- (void)_finishTellAFriendLoadWithError:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableArray *)self->_tellAFriendHandlers copy];
  [(SSRequest *)self->_tellAFriendRequest setDelegate:0];

  self->_tellAFriendRequest = 0;
  self->_tellAFriendHandlers = 0;
  v5 = self;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_offers
{
  v19 = *MEMORY[0x1E69E9840];
  result = self->_offers;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(SSItem *)self valueForProperty:@"store-offers"];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v5 objectForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [[SSItemOffer alloc] initWithOfferIdentifier:v10 dictionary:v11];
            if (v12)
            {
              v13 = v12;
              [(SSItemOffer *)v12 _setOfferItem:self];
              [v4 addObject:v13];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    self->_offers = [v4 copy];

    return self->_offers;
  }

  return result;
}

- (id)_tellAFriendDictionary
{
  v2 = [(NSDictionary *)self->_properties objectForKey:@"tell-a-friend"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

@end