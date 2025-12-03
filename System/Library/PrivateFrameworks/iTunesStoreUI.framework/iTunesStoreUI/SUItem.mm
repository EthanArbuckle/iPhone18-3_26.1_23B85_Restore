@interface SUItem
- (BOOL)BOOLValueForProperty:(id)property;
- (BOOL)isDisplayable:(id *)displayable;
- (BOOL)isDownloadable;
- (BOOL)isInstalled;
- (NSString)itemMediaKind;
- (NSString)itemTypeString;
- (NSString)tellAFriendBody;
- (NSString)tellAFriendBodyMIMEType;
- (NSString)tellAFriendSubject;
- (NSString)tweetInitialText;
- (NSString)unmodifiedTitle;
- (NSURL)tellAFriendBodyURL;
- (NSURL)tweetURL;
- (SUItem)initWithDictionary:(id)dictionary;
- (SUItemLink)externalArtistPageLink;
- (id)_newItemLinkWithType:(int64_t)type URLKey:(id)key titleKey:(id)titleKey;
- (id)_newItemLinkWithType:(int64_t)type dictionary:(id)dictionary;
- (id)_newPrimaryItemLink;
- (id)_squishImageForSquishDictionary:(id)dictionary;
- (id)_valueForFirstAvailableKey:(id)key;
- (id)copyReleaseDateStringWithStyle:(int64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateValueForProperty:(id)property;
- (id)firstItemLinkForType:(int64_t)type;
- (id)itemLinksForType:(int64_t)type;
- (id)relatedItemsForRelationType:(id)type;
- (id)storeOfferForIdentifier:(id)identifier;
- (id)stringValueForProperty:(id)property;
- (id)valueForProperty:(id)property;
- (int64_t)_linkTargetForTargetString:(id)string typeString:(id)typeString;
- (int64_t)_linkTypeForString:(id)string;
- (int64_t)integerValueForProperty:(id)property;
- (void)_reloadDefaultStoreOffer;
- (void)_reloadImagesAndLinksFromSquishes:(id)squishes;
- (void)_reloadItemImages;
- (void)_reloadItemLinks;
- (void)_reloadProperties;
- (void)_reloadStoreOffers;
- (void)dealloc;
- (void)setStoreOffers:(id)offers;
@end

@implementation SUItem

- (SUItem)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = SUItem;
  v4 = [(SUItem *)&v7 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69D4990]) initWithDictionary:dictionary];
    v4->_dictionary = [objc_msgSend(v5 "dictionaryByEvaluatingConditions")];
    v4->_isInstalled = -1;

    [(SUItem *)v4 _reloadProperties];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUItem;
  [(SUItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  *(v5 + 8) = [(NSString *)self->_artistName copyWithZone:zone];
  *(v5 + 16) = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  *(v5 + 24) = [(NSString *)self->_bundleVersion copyWithZone:zone];
  *(v5 + 32) = [(NSString *)self->_collectionName copyWithZone:zone];
  *(v5 + 40) = self->_containerItem;
  *(v5 + 48) = [(NSString *)self->_containerName copyWithZone:zone];
  *(v5 + 56) = [(SUItemContentRating *)self->_contentRating copyWithZone:zone];
  *(v5 + 64) = [(NSString *)self->_copyrightString copyWithZone:zone];
  *(v5 + 72) = [(SSItemOffer *)self->_defaultStoreOffer copyWithZone:zone];
  *(v5 + 80) = [(NSDictionary *)self->_dictionary copyWithZone:zone];
  *(v5 + 88) = [(NSString *)self->_disclaimerString copyWithZone:zone];
  *(v5 + 96) = self->_gameCenterEnabled;
  *(v5 + 104) = [(NSString *)self->_genreName copyWithZone:zone];
  *(v5 + 112) = [(NSString *)self->_humanReadableDescription copyWithZone:zone];
  *(v5 + 120) = self->_isInstalled;
  *(v5 + 128) = *&self->_itemDisplayType;
  *(v5 + 144) = [(SSItemImageCollection *)self->_itemImageCollection copyWithZone:zone];
  *(v5 + 152) = [(NSArray *)self->_itemLinks copyWithZone:zone];
  *(v5 + 160) = [(NSString *)self->_itemMediaKind copyWithZone:zone];
  *(v5 + 168) = self->_itemType;
  *(v5 + 176) = self->_releaseDate;
  *(v5 + 184) = [(NSString *)self->_releaseDateString copyWithZone:zone];
  *(v5 + 192) = self->_representedItemCount;
  *(v5 + 200) = [(SUItemReviewStatistics *)self->_reviewStatistics copyWithZone:zone];
  *(v5 + 208) = [(NSString *)self->_secondaryTitle copyWithZone:zone];
  *(v5 + 216) = [(NSString *)self->_softwareType copyWithZone:zone];
  *(v5 + 224) = [(NSArray *)self->_storeOffers copyWithZone:zone];
  *(v5 + 232) = [(NSDictionary *)self->_tellAFriendDictionary copyWithZone:zone];
  *(v5 + 240) = [(NSString *)self->_title copyWithZone:zone];
  *(v5 + 248) = [(NSDictionary *)self->_tweetDictionary copyWithZone:zone];
  *(v5 + 256) = [(NSString *)self->_unmodifiedTitle copyWithZone:zone];
  *(v5 + 264) = [(NSNumber *)self->_versionIdentifier copyWithZone:zone];
  *(v5 + 272) = [(NSArray *)self->_versionOrdering copyWithZone:zone];
  return v5;
}

- (BOOL)BOOLValueForProperty:(id)property
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:property];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

- (id)copyReleaseDateStringWithStyle:(int64_t)style
{
  result = [(SUItem *)self stringValueForProperty:@"release-date-string"];
  if (!result)
  {
    releaseDate = [(SUItem *)self releaseDate];

    return SUCopyDateStringForDate(releaseDate, style);
  }

  return result;
}

- (id)dateValueForProperty:(id)property
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    return v4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v6 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
      v7 = [v6 dateFromString:v3];

      return v7;
    }

    else
    {
      return 0;
    }
  }
}

- (SUItemLink)externalArtistPageLink
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(SUItem *)self itemLinksForType:2];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v10;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v10 != v5)
    {
      objc_enumerationMutation(v2);
    }

    v7 = *(*(&v9 + 1) + 8 * v6);
    if ([(SUItemLink *)v7 linkTarget]== 1)
    {
      return v7;
    }

    if (v4 == ++v6)
    {
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)firstItemLinkForType:(int64_t)type
{
  v3 = [(SUItem *)self itemLinksForType:type];
  result = [v3 count];
  if (result)
  {

    return [v3 objectAtIndex:0];
  }

  return result;
}

- (int64_t)integerValueForProperty:(id)property
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:property];
  if (objc_opt_respondsToSelector())
  {
    return [v3 intValue];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isDisplayable:(id *)displayable
{
  v10 = 0;
  v5 = [+[SUItemDataSource sharedDataSource](SUItemDataSource "sharedDataSource")];
  if ([v5 count])
  {
    v6 = objc_alloc_init(SUItemValidator);
    [(SUItemValidator *)v6 addItemValidationTests:v5];
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{self, 0}];
    v8 = [(SUItemValidator *)v6 validateItems:v7 error:&v10];
  }

  else
  {
    v8 = 1;
  }

  if (displayable)
  {
    *displayable = v10;
  }

  return v8;
}

- (BOOL)isDownloadable
{
  if ([MEMORY[0x1E69DC668] isRunningInStoreDemoMode])
  {
    return 0;
  }

  contentRating = self->_contentRating;
  if (contentRating)
  {
    if ([(SUItemContentRating *)contentRating isRestricted])
    {
      return 0;
    }
  }

  v5 = +[SUItemDataSource sharedDataSource];
  v6 = [v5 newPurchaseWithItem:self storeOffer:{-[SUItem defaultStoreOffer](self, "defaultStoreOffer")}];
  v7 = [v5 newExternalDownloadWithItem:self storeOffer:{-[SUItem defaultStoreOffer](self, "defaultStoreOffer")}];
  v4 = (v6 | v7) != 0;

  return v4;
}

- (BOOL)isInstalled
{
  isInstalled = self->_isInstalled;
  if (isInstalled == 255)
  {
    if (-[SUItem itemType](self, "itemType") == 2000 && (v4 = -[SUItem bundleIdentifier](self, "bundleIdentifier"), -[NSString length](v4, "length")) && (v5 = [MEMORY[0x1E69E47D0] applicationForBundleIdentifier:v4]) != 0)
    {
      v6 = v5;
      if (![(SUItem *)self versionOrdering])
      {
        [v6 versionOrdering];
      }

      [v6 versionIdentifier];
      [(SUItem *)self versionIdentifier];
      isInstalled = ISCompareSoftwareVersions() != -1;
    }

    else
    {
      isInstalled = 0;
    }

    self->_isInstalled = isInstalled;
  }

  return isInstalled != 0;
}

- (id)itemLinksForType:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  itemLinks = self->_itemLinks;
  v7 = [(NSArray *)itemLinks countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(itemLinks);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 linkType] == type)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSArray *)itemLinks countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (NSString)itemMediaKind
{
  itemMediaKind = self->_itemMediaKind;
  if (itemMediaKind)
  {
    v3 = itemMediaKind;

    return v3;
  }

  else
  {
    defaultStoreOffer = [(SUItem *)self defaultStoreOffer];
    [(SUItem *)self itemTypeString];
    [(SSItemOffer *)defaultStoreOffer offerIdentifier];
    v7 = SSItemMediaKindForItemKind();
    v8 = *MEMORY[0x1E69D4CF8];
    if ([v7 isEqualToString:*MEMORY[0x1E69D4CF8]])
    {
      v7 = [-[SSItemOffer offerMedia](defaultStoreOffer "offerMedia")];
    }

    if (v7)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }
}

- (id)relatedItemsForRelationType:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [(NSDictionary *)self->_dictionary objectForKey:@"related-items"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [v4 objectForKey:type];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = +[SUItemDataSource sharedDataSource];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v6 newItemWithItemDictionary:v12];
          if (v13)
          {
            v14 = v13;
            [array addObject:v13];
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return array;
}

- (void)setStoreOffers:(id)offers
{
  storeOffers = self->_storeOffers;
  if (storeOffers != offers)
  {

    self->_storeOffers = [offers copy];

    [(SUItem *)self _reloadDefaultStoreOffer];
  }
}

- (id)storeOfferForIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  storeOffers = self->_storeOffers;
  result = [(NSArray *)storeOffers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(storeOffers);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([objc_msgSend(v9 "offerIdentifier")])
        {
          return v9;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)storeOffers countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)stringValueForProperty:(id)property
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:property];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = v3;

  return v4;
}

- (NSString)tellAFriendBody
{
  v2 = [(NSDictionary *)self->_tellAFriendDictionary objectForKey:@"body"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSString)tellAFriendBodyMIMEType
{
  v2 = [(NSDictionary *)self->_tellAFriendDictionary objectForKey:@"body-mime-type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSURL)tellAFriendBodyURL
{
  v2 = [(NSDictionary *)self->_tellAFriendDictionary objectForKey:@"body-url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (NSString)tellAFriendSubject
{
  v2 = [(NSDictionary *)self->_tellAFriendDictionary objectForKey:@"subject"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSString)tweetInitialText
{
  v2 = [(NSDictionary *)self->_tweetDictionary objectForKey:@"text"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSURL)tweetURL
{
  v2 = [(NSDictionary *)self->_tweetDictionary objectForKey:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (NSString)unmodifiedTitle
{
  unmodifiedTitle = self->_unmodifiedTitle;
  if (unmodifiedTitle)
  {
    v4 = unmodifiedTitle;

    return v4;
  }

  else
  {

    return [(SUItem *)self title];
  }
}

- (id)valueForProperty:(id)property
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:property];

  return v3;
}

- (NSString)itemTypeString
{
  v3 = [(SUItem *)self _valueForFirstAvailableKey:@"type", 0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (isKindOfClass)
  {
    v6 = [v3 isEqualToString:*MEMORY[0x1E69D4CE0]];
    v5 = v3;
    if (v6)
    {
      v7 = [(SUItem *)self _valueForFirstAvailableKey:@"link-type", 0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v7;
      }

      else
      {
        v5 = v3;
      }
    }
  }

  v8 = v5;

  return v8;
}

- (int64_t)_linkTargetForTargetString:(id)string typeString:(id)typeString
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = &kLinkTargets + 2 * v6;
    if ([(__CFString *)*v9 isEqualToString:string])
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  result = v9[1];
  if (!result)
  {
LABEL_7:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [typeString isEqualToString:@"safari"];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)_linkTypeForString:(id)string
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([string hasPrefix:@"account"])
  {
    return 1;
  }

  v5 = &qword_1E8166A00;
  v6 = 3;
  while (![*(v5 - 1) isEqualToString:string])
  {
    v5 += 2;
    if (!--v6)
    {
      return 0;
    }
  }

  return *v5;
}

- (id)_newItemLinkWithType:(int64_t)type dictionary:(id)dictionary
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = [dictionary objectForKey:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v7];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = objc_alloc_init(SUItemLink);
  -[SUItemLink setLinkTarget:](v10, "setLinkTarget:", -[SUItem _linkTargetForTargetString:typeString:](self, "_linkTargetForTargetString:typeString:", 0, [dictionary objectForKey:@"url-page-type"]));
  [(SUItemLink *)v10 setLinkType:type];
  [(SUItemLink *)v10 setURL:v9];
  v11 = [dictionary objectForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUItemLink *)v10 setTitle:v11];
  }

  return v10;
}

- (id)_newItemLinkWithType:(int64_t)type URLKey:(id)key titleKey:(id)titleKey
{
  v8 = [(SUItem *)self _valueForFirstAvailableKey:key, 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = objc_alloc_init(SUItemLink);
  [(SUItemLink *)v11 setLinkType:type];
  [(SUItemLink *)v11 setURL:v10];
  v12 = [(SUItem *)self _valueForFirstAvailableKey:titleKey, 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUItemLink *)v11 setTitle:v12];
  }

  return v11;
}

- (id)_newPrimaryItemLink
{
  v3 = [(SUItem *)self _valueForFirstAvailableKey:@"url", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(SUItem *)self _valueForFirstAvailableKey:@"url-target", 0];
  v7 = [(SUItem *)self _valueForFirstAvailableKey:@"url-page-type", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(SUItem *)self _valueForFirstAvailableKey:@"page-type", 0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v8 objectForKey:@"template-name"];
    }
  }

  v9 = objc_alloc_init(SUItemLink);
  [(SUItemLink *)v9 setLinkTarget:[(SUItem *)self _linkTargetForTargetString:v6 typeString:v7]];
  [(SUItemLink *)v9 setLinkType:[(SUItem *)self _linkTypeForString:v7]];
  [(SUItemLink *)v9 setURL:v5];

  return v9;
}

- (void)_reloadDefaultStoreOffer
{
  if ([(NSArray *)self->_storeOffers count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [(SUItem *)self storeOfferForIdentifier:_reloadDefaultStoreOffer_sOfferNames[v3]];
      if (v4)
      {
        break;
      }

      if (++v3 == 6)
      {
        v4 = [(NSArray *)self->_storeOffers objectAtIndex:0];
        break;
      }
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  self->_defaultStoreOffer = v5;
}

- (void)_reloadImagesAndLinksFromSquishes:(id)squishes
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [squishes countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = @"url";
    v9 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(squishes);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [(SUItem *)self _squishImageForSquishDictionary:v11];
          v12 = [v11 objectForKey:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v6;
            v14 = v7;
            v15 = v9;
            squishesCopy = squishes;
            v17 = v8;
            v18 = [v11 objectForKey:@"url-page-type"];
            v19 = objc_alloc_init(SUItemLink);
            [(SUItemLink *)v19 setLinkTarget:[(SUItem *)self _linkTargetForTargetString:0 typeString:v18]];
            v20 = v18;
            v8 = v17;
            squishes = squishesCopy;
            v9 = v15;
            v7 = v14;
            v6 = v13;
            [(SUItemLink *)v19 setLinkType:[(SUItem *)self _linkTypeForString:v20]];
            -[SUItemLink setURL:](v19, "setURL:", [MEMORY[0x1E695DFF8] URLWithString:v12]);
          }

          else
          {
            v19 = 0;
          }

          if ([v26 URL] && -[SUItemLink URL](v19, "URL"))
          {
            [v25 addObject:v26];
            [v24 addObject:v19];
          }
        }
      }

      v6 = [squishes countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v21 = [objc_alloc(MEMORY[0x1E69D4920]) initWithItemImages:v25];
  if ([v25 count])
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  [(SUItem *)self setItemImageCollection:v22];
  if ([v24 count])
  {
    v23 = v24;
  }

  else
  {
    v23 = 0;
  }

  [(SUItem *)self setItemLinks:v23];
}

- (void)_reloadItemImages
{
  v4 = [objc_alloc(MEMORY[0x1E69D4920]) initWithImageCollection:{-[SUItem _valueForFirstAvailableKey:](self, "_valueForFirstAvailableKey:", @"artwork-urls", 0)}];
  if ([objc_msgSend(v4 "itemImages")])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  [(SUItem *)self setItemImageCollection:v3];
}

- (void)_reloadItemLinks
{
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _newPrimaryItemLink = [(SUItem *)self _newPrimaryItemLink];
  if (_newPrimaryItemLink)
  {
    v4 = _newPrimaryItemLink;
    [v22 addObject:_newPrimaryItemLink];
  }

  v5 = [(SUItem *)self _newItemLinkWithType:2 dictionary:[(SUItem *)self _valueForFirstAvailableKey:@"company", 0]];
  if (v5)
  {
    v6 = v5;
    [v5 setLinkTarget:1];
    [v22 addObject:v6];
  }

  v7 = [(SUItem *)self _newItemLinkWithType:3 URLKey:@"submit-user-review-url" titleKey:@"submit-user-review-title"];
  if (v7)
  {
    v8 = v7;
    [v22 addObject:v7];
  }

  v9 = [(SUItem *)self _newItemLinkWithType:4 URLKey:@"deletion-url" titleKey:@"deletion-action-name"];
  if (v9)
  {
    v10 = v9;
    [v22 addObject:v9];
  }

  v11 = [(SUItem *)self _newItemLinkWithType:5 dictionary:[(SUItem *)self _valueForFirstAvailableKey:@"gifting-button", 0]];
  if (v11)
  {
    v12 = v11;
    [v22 addObject:v11];
  }

  v13 = [(SUItem *)self _newItemLinkWithType:6 dictionary:[(SUItem *)self _valueForFirstAvailableKey:@"apple-eula", 0]];
  if (v13)
  {
    v14 = v13;
    [v22 addObject:v13];
  }

  v15 = [(SUItem *)self _newItemLinkWithType:6 dictionary:[(SUItem *)self _valueForFirstAvailableKey:@"developers-eula", 0]];
  if (v15)
  {
    v16 = v15;
    [v22 addObject:v15];
  }

  v17 = [(SUItem *)self _newItemLinkWithType:8 dictionary:[(SUItem *)self _valueForFirstAvailableKey:@"view-more-info-button", 0]];
  if (v17)
  {
    v18 = v17;
    [v22 addObject:v17];
  }

  v19 = [(SUItem *)self _newItemLinkWithType:9 URLKey:@"view-user-reviews-url" titleKey:0];
  v20 = v22;
  if (v19)
  {
    [v22 addObject:v19];

    v20 = v22;
  }

  if ([v20 count])
  {
    v21 = v22;
  }

  else
  {
    v21 = 0;
  }

  [(SUItem *)self setItemLinks:v21];
}

- (void)_reloadProperties
{
  v3 = [(SUItem *)self _valueForFirstAvailableKey:@"artist-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_artistName = v3;
  }

  v4 = [(SUItem *)self _valueForFirstAvailableKey:@"bundle-id", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_bundleIdentifier = v4;
  }

  v5 = [(SUItem *)self _valueForFirstAvailableKey:@"version", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_bundleVersion = v5;
  }

  v6 = [(SUItem *)self _valueForFirstAvailableKey:@"collection-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_collectionName = v6;
  }

  v7 = [(SUItem *)self _valueForFirstAvailableKey:@"container-name", @"mix-type-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_containerName = v7;
  }

  v8 = [(SUItem *)self _valueForFirstAvailableKey:@"copyright", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_copyrightString = v8;
  }

  v9 = [(SUItem *)self _valueForFirstAvailableKey:@"disclaimer", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_disclaimerString = v9;
  }

  v10 = [(SUItem *)self _valueForFirstAvailableKey:@"game-center-enabled", 0];
  if (objc_opt_respondsToSelector())
  {
    self->_gameCenterEnabled = [v10 BOOLValue];
  }

  v11 = [(SUItem *)self _valueForFirstAvailableKey:@"genre-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_genreName = v11;
  }

  v12 = [(SUItem *)self _valueForFirstAvailableKey:@"rating", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_contentRating = [[SUItemContentRating alloc] initWithDictionary:v12];
  }

  v13 = [(SUItem *)self _valueForFirstAvailableKey:@"release-date", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_releaseDate = v13;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v14 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];

      self->_releaseDate = [v14 dateFromString:v13];
    }
  }

  v15 = [(SUItem *)self _valueForFirstAvailableKey:@"release-date-string", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_releaseDateString = v15;
  }

  v16 = [(SUItem *)self _valueForFirstAvailableKey:@"tell-a-friend", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_tellAFriendDictionary = v16;
  }

  v17 = [(SUItem *)self _valueForFirstAvailableKey:@"tweet-info", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_tweetDictionary = v17;
  }

  v18 = [(SUItem *)self _valueForFirstAvailableKey:@"title2", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_secondaryTitle = v18;
  }

  v19 = [(SUItem *)self _valueForFirstAvailableKey:@"software-type", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_softwareType = v19;
  }

  v20 = [(SUItem *)self _valueForFirstAvailableKey:@"title", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_title = v20;
  }

  v21 = [(SUItem *)self _valueForFirstAvailableKey:@"unmodified-title", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_unmodifiedTitle = v21;
  }

  v22 = [(SUItem *)self _valueForFirstAvailableKey:@"version-external-identifier", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_versionIdentifier = v22;
  }

  v23 = [(SUItem *)self _valueForFirstAvailableKey:@"version-external-identifiers", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_versionOrdering = v23;
  }

  [(SUItem *)self _valueForFirstAvailableKey:*MEMORY[0x1E69E46D8], 0];
  [(SUItem *)self setItemIdentifier:SSGetUnsignedLongLongFromValue()];
  v24 = [(SUItem *)self _valueForFirstAvailableKey:@"media-type", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_itemMediaKind = v24;
  }

  v25 = [(SUItem *)self _valueForFirstAvailableKey:@"total-items", 0];
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_46;
  }

  v27 = [(SUItem *)self _valueForFirstAvailableKey:@"content-count", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v27 objectForKey:@"songs"];
    if (objc_opt_respondsToSelector())
    {
LABEL_46:
      intValue = [v25 intValue];
      goto LABEL_51;
    }

    intValue = 0;
  }

  else
  {
    intValue = -1;
  }

LABEL_51:
  self->_representedItemCount = intValue;
  self->_itemDisplayType = 0;
  v28 = [(SUItem *)self _valueForFirstAvailableKey:@"display-type", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_57;
  }

  if ([v28 isEqualToString:@"left-justified-text"])
  {
    v29 = 1;
  }

  else
  {
    if (![v28 isEqualToString:@"now-playing"])
    {
      goto LABEL_57;
    }

    v29 = 2;
  }

  self->_itemDisplayType = v29;
LABEL_57:
  v30 = [(SUItem *)self _valueForFirstAvailableKey:@"update-info", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v31 = [v30 objectForKey:@"text"], objc_opt_class(), (objc_opt_isKindOfClass()) && v31 || (v31 = -[SUItem _valueForFirstAvailableKey:](self, "_valueForFirstAvailableKey:", @"description", @"markup", @"text", 0), objc_opt_class(), (objc_opt_isKindOfClass()) && v31)
  {

    self->_humanReadableDescription = v31;
  }

  self->_reviewStatistics = [[SUItemReviewStatistics alloc] initWithDictionary:self->_dictionary];
  [(SUItem *)self _reloadStoreOffers];
  v32 = [(SUItem *)self _valueForFirstAvailableKey:@"squishes", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(SUItem *)self _reloadImagesAndLinksFromSquishes:v32];
  }

  else
  {
    [(SUItem *)self _reloadItemImages];

    [(SUItem *)self _reloadItemLinks];
  }
}

- (void)_reloadStoreOffers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v4 = [(SUItem *)self _valueForFirstAvailableKey:*MEMORY[0x1E69D4D18], 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v4 objectForKey:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [objc_alloc(MEMORY[0x1E69D4928]) initWithOfferIdentifier:v9 dictionary:v10];
              if (v11)
              {
                v12 = v11;
                [v3 addObject:v11];
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  if ([v3 count])
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  [(SUItem *)selfCopy setStoreOffers:v13];
}

- (id)_squishImageForSquishDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [dictionary objectForKey:@"artwork-urls"];
  if (!v4)
  {
    v4 = [dictionary objectForKey:@"artwork-url"];
  }

  v5 = [objc_alloc(MEMORY[0x1E69D4920]) initWithImageCollection:v4];
  itemImages = [v5 itemImages];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v8 = v7;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [itemImages countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(itemImages);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      [v13 imageScale];
      if (v14 == v8)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [itemImages countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    v15 = v13;
    if (v15)
    {
      goto LABEL_16;
    }
  }

LABEL_13:
  if ([itemImages count])
  {
    v15 = [itemImages objectAtIndex:0];
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (id)_valueForFirstAvailableKey:(id)key
{
  v7 = &v8;
  if (!key)
  {
    return 0;
  }

  do
  {
    result = [(NSDictionary *)self->_dictionary objectForKey:?];
    v5 = v7++;
    if (*v5)
    {
      v6 = result == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6);
  return result;
}

@end