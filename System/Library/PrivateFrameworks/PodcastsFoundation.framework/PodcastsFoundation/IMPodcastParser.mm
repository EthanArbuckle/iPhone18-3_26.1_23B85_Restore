@interface IMPodcastParser
+ (BOOL)isITunesNamespace:(id)namespace;
- (IMPodcastParser)init;
- (id)dateFromAtomDateString:(id)string;
- (id)dateFromRSSDateString:(id)string;
- (id)elementCharBufferTrimmed;
- (id)parseWithData:(id)data;
- (id)removeLastColonOfString:(id)string;
- (void)_parseEnclosureElement:(id)element forFeedItem:(id)item;
- (void)atomParser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)atomParser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parseStreamFromURL:(id)l withCompletionBlock:(id)block;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)postProcessItemElement:(id)element;
- (void)rssParser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)rssParser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)startBufferingElementChars;
@end

@implementation IMPodcastParser

- (IMPodcastParser)init
{
  v7.receiver = self;
  v7.super_class = IMPodcastParser;
  v2 = [(IMPodcastParser *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en"];
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    rssDateFormatter = v2->_rssDateFormatter;
    v2->_rssDateFormatter = v4;

    [(NSDateFormatter *)v2->_rssDateFormatter setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
    [(NSDateFormatter *)v2->_rssDateFormatter setLocale:v3];
  }

  return v2;
}

- (id)parseWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    [(IMPodcastParser *)self setFeedType:-1];
    v5 = objc_alloc_init(IMPodcastFeed);
    [(IMPodcastParser *)self setParsedFeed:v5];

    v6 = [objc_alloc(MEMORY[0x1E696B0A8]) initWithData:dataCopy];
    [v6 setShouldResolveExternalEntities:0];
    [v6 setDelegate:self];
    [v6 setShouldProcessNamespaces:1];
    [v6 parse];
  }

  v7 = NSPersistentStringForMTDisplayType(0);
  parsedFeed = [(IMPodcastParser *)self parsedFeed];
  [parsedFeed setDisplayType:v7];

  return [(IMPodcastParser *)self parsedFeed];
}

- (void)parseStreamFromURL:(id)l withCompletionBlock:(id)block
{
  blockCopy = block;
  lCopy = l;
  [(IMPodcastParser *)self setFeedType:-1];
  v8 = objc_alloc_init(IMPodcastFeed);
  [(IMPodcastParser *)self setParsedFeed:v8];

  v9 = [IMXMLStreamOperation operationWithURL:lCopy parseDelegate:self];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __58__IMPodcastParser_parseStreamFromURL_withCompletionBlock___block_invoke;
  v15 = &unk_1E8569228;
  selfCopy = self;
  v17 = blockCopy;
  v10 = blockCopy;
  [v9 setCompletionBlock:&v12];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  [mainQueue addOperation:v9];
}

void __58__IMPodcastParser_parseStreamFromURL_withCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) parsedFeed];
  (*(v1 + 16))(v1, v2);
}

- (id)dateFromRSSDateString:(id)string
{
  stringCopy = string;
  v11[0] = 0;
  v11[1] = [stringCopy length];
  rssDateFormatter = [(IMPodcastParser *)self rssDateFormatter];
  v9 = 0;
  v10 = 0;
  [rssDateFormatter getObjectValue:&v10 forString:stringCopy range:v11 error:&v9];

  v6 = v10;
  v7 = v9;

  return v6;
}

- (id)removeLastColonOfString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy rangeOfString:@":" options:4];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && v5 == 1)
  {
    v8 = v4;
    v9 = MEMORY[0x1E696AEC0];
    v10 = [stringCopy substringToIndex:v4];
    v11 = [stringCopy substringFromIndex:v8 + 1];
    v7 = [v9 stringWithFormat:@"%@%@", v10, v11];
  }

  else
  {
    v7 = stringCopy;
  }

  return v7;
}

- (id)dateFromAtomDateString:(id)string
{
  v3 = [(IMPodcastParser *)self removeLastColonOfString:string];
  v4 = [v3 cStringUsingEncoding:4];

  if (v4)
  {
    memset(&v7, 0, sizeof(v7));
    v5 = strptime_l(v4, "%Y-%m-%dT%T%z", &v7, 0);
    if (v5)
    {
      v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:mktime(&v7)];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  parserCopy = parser;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  attributesCopy = attributes;
  if (![(IMPodcastParser *)self feedType])
  {
    [(IMPodcastParser *)self rssParser:parserCopy didStartElement:elementCopy namespaceURI:iCopy qualifiedName:nameCopy attributes:attributesCopy];
    goto LABEL_11;
  }

  if ([(IMPodcastParser *)self feedType]== 1)
  {
    [(IMPodcastParser *)self atomParser:parserCopy didStartElement:elementCopy namespaceURI:iCopy qualifiedName:nameCopy attributes:attributesCopy];
    goto LABEL_11;
  }

  if ([(IMPodcastParser *)self feedType]== -1)
  {
    if ([elementCopy isEqualToString:@"rss"])
    {
      selfCopy2 = self;
      v17 = 0;
    }

    else
    {
      if (![elementCopy isEqualToString:@"feed"])
      {
        goto LABEL_11;
      }

      selfCopy2 = self;
      v17 = 1;
    }

    [(IMPodcastParser *)selfCopy2 setFeedType:v17];
  }

LABEL_11:
}

- (void)rssParser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  elementCopy = element;
  iCopy = i;
  attributesCopy = attributes;
  v12 = [IMPodcastParser isITunesNamespace:iCopy];
  v13 = [IMPodcastParser isContentNamespace:iCopy];
  if (iCopy)
  {
    isWhitespace = [iCopy isWhitespace];
  }

  else
  {
    isWhitespace = 1;
  }

  if (self->_inGlobalImageElement && [elementCopy isEqualToString:@"url"])
  {
    [(IMPodcastParser *)self startBufferingElementChars];
  }

  if ([(IMPodcastParser *)self itemElementNestCount])
  {
    if ([(IMPodcastParser *)self itemElementNestCount]!= 1)
    {
LABEL_34:
      [(IMPodcastParser *)self setItemElementNestCount:[(IMPodcastParser *)self itemElementNestCount]+ 1];
      goto LABEL_51;
    }

    parsedFeed = [(IMPodcastParser *)self parsedFeed];
    items = [parsedFeed items];
    lastObject = [items lastObject];

    if (rssParser_didStartElement_namespaceURI_qualifiedName_attributes__onceToken_globalElementsToCapture != -1)
    {
      [IMPodcastParser rssParser:didStartElement:namespaceURI:qualifiedName:attributes:];
    }

    v18 = elementCopy;
    if (rssParser_didStartElement_namespaceURI_qualifiedName_attributes__onceToken_itunesElementsToCapture != -1)
    {
      [IMPodcastParser rssParser:didStartElement:namespaceURI:qualifiedName:attributes:];
      v18 = elementCopy;
    }

    if (rssParser_didStartElement_namespaceURI_qualifiedName_attributes__onceToken_contentElementsToCapture == -1)
    {
      if (isWhitespace)
      {
        goto LABEL_15;
      }
    }

    else
    {
      [IMPodcastParser rssParser:didStartElement:namespaceURI:qualifiedName:attributes:];
      v18 = elementCopy;
      if (isWhitespace)
      {
LABEL_15:
        v19 = [rssParser_didStartElement_namespaceURI_qualifiedName_attributes__globalElementsToCapture containsObject:v18];
        v18 = elementCopy;
        if (v19)
        {
          goto LABEL_20;
        }
      }
    }

    if (!v12 || (v20 = [rssParser_didStartElement_namespaceURI_qualifiedName_attributes__itunesElementsToCapture containsObject:v18], v18 = elementCopy, (v20 & 1) == 0))
    {
      if (!v13 || (v21 = [rssParser_didStartElement_namespaceURI_qualifiedName_attributes__contentElementsToCapture containsObject:v18], v18 = elementCopy, !v21))
      {
        if (v12 && (v25 = [v18 isEqualToString:@"category"], v18 = elementCopy, v25))
        {
          if (![(IMPodcastParser *)self preferredItemCategoryFound])
          {
            v26 = [attributesCopy valueForKey:@"text"];
            whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
            v28 = [v26 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
            [lastObject setCategory:v28];
          }
        }

        else if ([v18 isEqualToString:@"enclosure"])
        {
          [(IMPodcastParser *)self _parseEnclosureElement:attributesCopy forFeedItem:lastObject];
        }

        goto LABEL_33;
      }
    }

LABEL_20:
    [(IMPodcastParser *)self startBufferingElementChars];
LABEL_33:

    goto LABEL_34;
  }

  if (rssParser_didStartElement_namespaceURI_qualifiedName_attributes__onceToken_subelement_globalElementsToCapture != -1)
  {
    [IMPodcastParser rssParser:didStartElement:namespaceURI:qualifiedName:attributes:];
  }

  if (rssParser_didStartElement_namespaceURI_qualifiedName_attributes__onceToken_subelement_itunesElementsToCapture == -1)
  {
    if (!isWhitespace)
    {
      goto LABEL_36;
    }
  }

  else
  {
    [IMPodcastParser rssParser:didStartElement:namespaceURI:qualifiedName:attributes:];
    if (!isWhitespace)
    {
      goto LABEL_36;
    }
  }

  if ([elementCopy isEqualToString:@"item"])
  {
    [(IMPodcastParser *)self setItemElementNestCount:1];
    [(IMPodcastParser *)self setPreferredItemCategoryFound:0];
    v22 = objc_alloc_init(IMPodcastFeedItem);
    parsedFeed2 = [(IMPodcastParser *)self parsedFeed];
    items2 = [parsedFeed2 items];
    [items2 addObject:v22];

LABEL_43:
    goto LABEL_51;
  }

LABEL_36:
  if (v12)
  {
    if ([elementCopy isEqualToString:@"category"])
    {
      if ([(IMPodcastParser *)self preferredFeedCategoryFound])
      {
        goto LABEL_51;
      }

      v22 = [attributesCopy valueForKey:@"text"];
      whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v30 = [(IMPodcastFeedItem *)v22 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
      parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
      [parsedFeed3 setCategory:v30];
      goto LABEL_42;
    }

    if ([elementCopy isEqualToString:@"image"])
    {
      v22 = [attributesCopy valueForKey:@"href"];
      whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v30 = [(IMPodcastFeedItem *)v22 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
      parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
      [parsedFeed3 setImageURL:v30];
LABEL_42:

      goto LABEL_43;
    }
  }

  if (isWhitespace)
  {
    if ([elementCopy isEqualToString:@"image"])
    {
      self->_inGlobalImageElement = 1;
      goto LABEL_51;
    }

    if ([rssParser_didStartElement_namespaceURI_qualifiedName_attributes__subelement_globalElementsToCapture containsObject:elementCopy])
    {
      goto LABEL_50;
    }
  }

  if (v12 && [rssParser_didStartElement_namespaceURI_qualifiedName_attributes__subelement_itunesElementsToCapture containsObject:elementCopy])
  {
LABEL_50:
    [(IMPodcastParser *)self startBufferingElementChars];
  }

LABEL_51:
}

void __83__IMPodcastParser_rssParser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"title";
  v3[1] = @"pubDate";
  v3[2] = @"link";
  v3[3] = @"description";
  v3[4] = @"guid";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v1 = rssParser_didStartElement_namespaceURI_qualifiedName_attributes__globalElementsToCapture;
  rssParser_didStartElement_namespaceURI_qualifiedName_attributes__globalElementsToCapture = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __83__IMPodcastParser_rssParser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke_2()
{
  v3[10] = *MEMORY[0x1E69E9840];
  v3[0] = @"duration";
  v3[1] = @"author";
  v3[2] = @"order";
  v3[3] = @"explicit";
  v3[4] = @"summary";
  v3[5] = @"title";
  v3[6] = @"subtitle";
  v3[7] = @"season";
  v3[8] = @"episode";
  v3[9] = @"episodeType";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:10];
  v1 = rssParser_didStartElement_namespaceURI_qualifiedName_attributes__itunesElementsToCapture;
  rssParser_didStartElement_namespaceURI_qualifiedName_attributes__itunesElementsToCapture = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __83__IMPodcastParser_rssParser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke_3()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"encoded";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = rssParser_didStartElement_namespaceURI_qualifiedName_attributes__contentElementsToCapture;
  rssParser_didStartElement_namespaceURI_qualifiedName_attributes__contentElementsToCapture = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __83__IMPodcastParser_rssParser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke_4()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"description";
  v3[1] = @"title";
  v3[2] = @"link";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = rssParser_didStartElement_namespaceURI_qualifiedName_attributes__subelement_globalElementsToCapture;
  rssParser_didStartElement_namespaceURI_qualifiedName_attributes__subelement_globalElementsToCapture = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __83__IMPodcastParser_rssParser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke_5()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"summary";
  v3[1] = @"new-feed-url";
  v3[2] = @"author";
  v3[3] = @"provider";
  v3[4] = @"explicit";
  v3[5] = @"type";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = rssParser_didStartElement_namespaceURI_qualifiedName_attributes__subelement_itunesElementsToCapture;
  rssParser_didStartElement_namespaceURI_qualifiedName_attributes__subelement_itunesElementsToCapture = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_parseEnclosureElement:(id)element forFeedItem:(id)item
{
  elementCopy = element;
  itemCopy = item;
  v6 = [elementCopy valueForKey:@"type"];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v9 = [elementCopy valueForKey:@"url"];
  whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

  if (v11)
  {
    v12 = [v11 rangeOfString:@"?"];
    v14 = v13;
    v15 = v11;
    v16 = v15;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v17 = [v15 substringFromIndex:v12 + v14];
      v18 = [v16 substringToIndex:v12];

      v16 = v18;
    }

    uRLAllowedCharacterSet = [MEMORY[0x1E696AD48] URLAllowedCharacterSet];
    v20 = [uRLAllowedCharacterSet mutableCopy];

    [v20 addCharactersInString:@"%"];
    v21 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v20];
    v22 = v21;
    if (v21)
    {
      v23 = v21;

      v16 = v23;
    }

    v24 = [MEMORY[0x1E695DFF8] URLWithString:v16];
    v25 = v24;
    if (v24)
    {
      scheme = [v24 scheme];
      if (scheme)
      {
        v27 = scheme;
        host = [v25 host];

        if (host)
        {
          v34 = [elementCopy valueForKey:@"length"];
          longLongValue = [v34 longLongValue];
          v33 = longLongValue & ~(longLongValue >> 63);
          pathExtension = [v16 pathExtension];
          v31 = [IMUTITypes UTIByExtension:pathExtension];
          if (v31)
          {
            [itemCopy setUti:v31];
          }

          else
          {
            v32 = [IMUTITypes UTIFromMIMEType:v8];
            [itemCopy setUti:v32];
          }

          [itemCopy setEnclosureURL:v16];
          [itemCopy setEnclosureParameterString:v17];
          [itemCopy setByteSize:v33];
        }
      }
    }
  }
}

- (void)atomParser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  elementCopy = element;
  iCopy = i;
  attributesCopy = attributes;
  v12 = [IMPodcastParser isITunesNamespace:iCopy];
  if (!iCopy)
  {
    if (![(IMPodcastParser *)self itemElementNestCount])
    {
      goto LABEL_18;
    }

    isWhitespace = 1;
LABEL_8:
    if ([(IMPodcastParser *)self itemElementNestCount]== 1)
    {
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"title", @"published", @"id", @"summary", 0}];
      v16 = v15;
      if (isWhitespace && ([v15 containsObject:elementCopy] & 1) != 0 || v12 && objc_msgSend(elementCopy, "isEqualToString:", @"author"))
      {
        [(IMPodcastParser *)self startBufferingElementChars];
      }

      else if (isWhitespace)
      {
        if ([elementCopy isEqualToString:@"author"])
        {
          [(IMPodcastParser *)self setInAuthorElement:1];
        }

        else if ([elementCopy isEqualToString:@"link"])
        {
          v20 = [attributesCopy valueForKey:@"href"];
          whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v22 = [v20 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

          v23 = [attributesCopy valueForKey:@"rel"];
          whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v25 = [v23 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

          v26 = [attributesCopy valueForKey:@"length"];
          longLongValue = [v26 longLongValue];
          if ([v25 isEqualToString:@"enclosure"] && v22 && (objc_msgSend(v22, "isWhitespace") & 1) == 0)
          {
            v36 = longLongValue;
            parsedFeed = [(IMPodcastParser *)self parsedFeed];
            items = [parsedFeed items];
            lastObject = [items lastObject];

            v31 = lastObject;
            enclosureURL = [lastObject enclosureURL];

            if (!enclosureURL)
            {
              enclosureURL2 = [lastObject enclosureURL];

              if (enclosureURL2)
              {
                [lastObject setByteSize:0];
                [lastObject setUti:0];
              }

              [lastObject setEnclosureURL:v22];
              [lastObject setByteSize:v36 & ~(v36 >> 63)];
              pathExtension = [v22 pathExtension];
              v35 = [IMUTITypes UTIByExtension:pathExtension];
              [v31 setUti:v35];
            }
          }
        }
      }
    }

    else if (-[IMPodcastParser itemElementNestCount](self, "itemElementNestCount") == 2 && (-[IMPodcastParser inAuthorElement](self, "inAuthorElement") & isWhitespace) == 1 && [elementCopy isEqualToString:@"name"])
    {
      [(IMPodcastParser *)self startBufferingElementChars];
    }

    [(IMPodcastParser *)self setItemElementNestCount:[(IMPodcastParser *)self itemElementNestCount]+ 1];
    goto LABEL_41;
  }

  isWhitespace = [iCopy isWhitespace];
  if ([(IMPodcastParser *)self itemElementNestCount])
  {
    goto LABEL_8;
  }

  if (!isWhitespace)
  {
    v14 = 0;
    if (!v12)
    {
      goto LABEL_26;
    }

LABEL_25:
    if ([elementCopy isEqualToString:@"summary"])
    {
LABEL_28:
      [(IMPodcastParser *)self startBufferingElementChars];
      goto LABEL_41;
    }

    goto LABEL_26;
  }

LABEL_18:
  if ([elementCopy isEqualToString:@"entry"])
  {
    [(IMPodcastParser *)self setItemElementNestCount:1];
    [(IMPodcastParser *)self setPreferredItemCategoryFound:0];
    v17 = objc_alloc_init(IMPodcastFeedItem);
    parsedFeed2 = [(IMPodcastParser *)self parsedFeed];
    items2 = [parsedFeed2 items];
    [items2 addObject:v17];

    goto LABEL_41;
  }

  if ([elementCopy isEqualToString:@"title"])
  {
    goto LABEL_28;
  }

  v14 = 1;
  if (v12)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (v14 && [elementCopy isEqualToString:@"logo"])
  {
    goto LABEL_28;
  }

LABEL_41:
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  parserCopy = parser;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  if ([(IMPodcastParser *)self feedType])
  {
    if ([(IMPodcastParser *)self feedType]== 1)
    {
      [(IMPodcastParser *)self atomParser:parserCopy didEndElement:elementCopy namespaceURI:iCopy qualifiedName:nameCopy];
    }
  }

  else
  {
    [(IMPodcastParser *)self rssParser:parserCopy didEndElement:elementCopy namespaceURI:iCopy qualifiedName:nameCopy];
  }
}

- (void)rssParser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  iCopy = i;
  v9 = [IMPodcastParser isITunesNamespace:iCopy];
  v10 = [IMPodcastParser isContentNamespace:iCopy];
  if (iCopy)
  {
    isWhitespace = [iCopy isWhitespace];
  }

  else
  {
    isWhitespace = 1;
  }

  if (self->_inGlobalImageElement && [elementCopy isEqualToString:@"url"])
  {
    elementCharBufferTrimmed = [(IMPodcastParser *)self elementCharBufferTrimmed];
    parsedFeed = [(IMPodcastParser *)self parsedFeed];
    [parsedFeed setGlobalImageURL:elementCharBufferTrimmed];

    [(IMPodcastParser *)self endBufferingElementChars];
  }

  if ([(IMPodcastParser *)self itemElementNestCount])
  {
    parsedFeed2 = [(IMPodcastParser *)self parsedFeed];
    items = [parsedFeed2 items];
    lastObject = [items lastObject];

    if ([(IMPodcastParser *)self itemElementNestCount]!= 2)
    {
      if (isWhitespace)
      {
        v20 = [elementCopy isEqualToString:@"item"];
        if ([(IMPodcastParser *)self itemElementNestCount]== v20)
        {
          [(IMPodcastParser *)self setItemElementNestCount:0];
          [(IMPodcastParser *)self postProcessItemElement:lastObject];
        }
      }

      goto LABEL_75;
    }

    v17 = elementCopy;
    if (isWhitespace)
    {
      if ([elementCopy isEqualToString:@"title"])
      {
        elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [lastObject setTitle:elementCharBufferTrimmed2];
        goto LABEL_74;
      }

      v26 = [elementCopy isEqualToString:@"guid"];
      v17 = elementCopy;
      if (v26)
      {
        elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [lastObject setGuid:elementCharBufferTrimmed2];
        goto LABEL_74;
      }
    }

    if (v9)
    {
      if ([v17 isEqualToString:@"duration"])
      {
        elementCharBuffer = [(IMPodcastParser *)self elementCharBuffer];
        elementCharBufferTrimmed2 = [elementCharBuffer componentsSeparatedByString:@":"];

        if ([elementCharBufferTrimmed2 count] && objc_msgSend(elementCharBufferTrimmed2, "count") <= 3)
        {
          v28 = MEMORY[0x1E696AEC0];
          elementCharBuffer2 = [(IMPodcastParser *)self elementCharBuffer];
          [v28 durationWithHMSString:elementCharBuffer2];
          [lastObject setDuration:?];
        }

        goto LABEL_74;
      }

      v30 = [elementCopy isEqualToString:@"author"];
      v17 = elementCopy;
      if (v30)
      {
        elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [lastObject setAuthor:elementCharBufferTrimmed2];
        goto LABEL_74;
      }
    }

    if (isWhitespace)
    {
      if ([v17 isEqualToString:@"pubDate"])
      {
        elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBuffer];
        v31 = [(IMPodcastParser *)self dateFromRSSDateString:elementCharBufferTrimmed2];
        [lastObject setPubDate:v31];

        goto LABEL_74;
      }

      v41 = [elementCopy isEqualToString:@"link"];
      v17 = elementCopy;
      if (v41)
      {
        elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [lastObject setWebpageURL:elementCharBufferTrimmed2];
        goto LABEL_74;
      }
    }

    if (v9)
    {
      if ([v17 isEqualToString:@"category"])
      {
        category = [lastObject category];

        if (category)
        {
          [(IMPodcastParser *)self setPreferredItemCategoryFound:1];
        }

        goto LABEL_75;
      }

      if ([elementCopy isEqualToString:@"summary"])
      {
        elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        if (![elementCharBufferTrimmed2 length])
        {
          goto LABEL_74;
        }

        [lastObject setItemSummary:elementCharBufferTrimmed2];
        v45 = @"summary";
LABEL_69:
        [lastObject setItemSummarySourceElement:v45];
        goto LABEL_74;
      }

      v46 = [elementCopy isEqualToString:@"subtitle"];
      v17 = elementCopy;
      if (v46)
      {
        itemSummary = [lastObject itemSummary];
        if (!itemSummary || (v48 = itemSummary, [lastObject itemSummarySourceElement], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "isEqualToString:", @"description"), v49, v48, v17 = elementCopy, v50))
        {
          elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBufferTrimmed];
          if (![elementCharBufferTrimmed2 length])
          {
            goto LABEL_74;
          }

          [lastObject setItemSummary:elementCharBufferTrimmed2];
          v45 = @"subtitle";
          goto LABEL_69;
        }
      }
    }

    if (v10 && [v17 isEqualToString:@"encoded"])
    {
      elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      if ([elementCharBufferTrimmed2 length])
      {
        [lastObject setItemDescription:elementCharBufferTrimmed2];
        [lastObject setItemDescriptionSourceElement:@"encoded"];
      }
    }

    else
    {
      if (isWhitespace && [elementCopy isEqualToString:@"description"])
      {
        itemDescription = [lastObject itemDescription];

        if (!itemDescription)
        {
          elementCharBufferTrimmed3 = [(IMPodcastParser *)self elementCharBufferTrimmed];
          [lastObject setItemDescription:elementCharBufferTrimmed3];

          [lastObject setItemDescriptionSourceElement:@"description"];
        }

        itemSummary2 = [lastObject itemSummary];

        if (!itemSummary2)
        {
          elementCharBufferTrimmed4 = [(IMPodcastParser *)self elementCharBufferTrimmed];
          [lastObject setItemSummary:elementCharBufferTrimmed4];

          [lastObject setItemSummarySourceElement:@"description"];
        }

        goto LABEL_75;
      }

      if (!v9)
      {
LABEL_75:
        if ([(IMPodcastParser *)self itemElementNestCount])
        {
          [(IMPodcastParser *)self setItemElementNestCount:[(IMPodcastParser *)self itemElementNestCount]- 1];
        }

        goto LABEL_97;
      }

      if ([elementCopy isEqualToString:@"order"])
      {
        elementCharBuffer3 = [(IMPodcastParser *)self elementCharBuffer];
        intValue = [elementCharBuffer3 intValue];

        if ((intValue - 1) <= 0x7FFE)
        {
          [lastObject setTrackNum:intValue];
        }

        goto LABEL_75;
      }

      if ([elementCopy isEqualToString:@"explicit"])
      {
        elementCharBufferTrimmed5 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        elementCharBufferTrimmed2 = [elementCharBufferTrimmed5 lowercaseString];

        if ([elementCharBufferTrimmed2 isEqualToString:@"yes"])
        {
          [lastObject setIsExplicit:1];
        }
      }

      else if ([elementCopy isEqualToString:@"title"])
      {
        elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [lastObject setItunesTitle:elementCharBufferTrimmed2];
      }

      else
      {
        if (![elementCopy isEqualToString:@"episodeType"])
        {
          if ([elementCopy isEqualToString:@"season"])
          {
            elementCharBuffer4 = [(IMPodcastParser *)self elementCharBuffer];
            longLongValue = [elementCharBuffer4 longLongValue];

            if ((longLongValue - 1) <= 0x7FFFFFFFFFFFFFFDLL)
            {
              [lastObject setSeasonNumber:longLongValue];
            }
          }

          else if ([elementCopy isEqualToString:@"episode"])
          {
            elementCharBuffer5 = [(IMPodcastParser *)self elementCharBuffer];
            longLongValue2 = [elementCharBuffer5 longLongValue];

            if ((longLongValue2 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
            {
              [lastObject setEpisodeNumber:longLongValue2];
            }
          }

          goto LABEL_75;
        }

        elementCharBufferTrimmed2 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [lastObject setEpisodeType:elementCharBufferTrimmed2];
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  if (v9)
  {
    if ([elementCopy isEqualToString:@"author"])
    {
      lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
      parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
      [parsedFeed3 setAuthor:lastObject];
      goto LABEL_96;
    }

    if ([elementCopy isEqualToString:@"provider"])
    {
      lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
      parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
      [parsedFeed3 setProvider:lastObject];
      goto LABEL_96;
    }

    if ([elementCopy isEqualToString:@"summary"])
    {
      elementCharBuffer6 = [(IMPodcastParser *)self elementCharBuffer];
      isWhitespace2 = [elementCharBuffer6 isWhitespace];

      if (isWhitespace2)
      {
        goto LABEL_98;
      }

      parsedFeed4 = [(IMPodcastParser *)self parsedFeed];
      feedDescription = [parsedFeed4 feedDescription];
      if (feedDescription)
      {
        v38 = feedDescription;
        feedDescriptionSourceElement = [(IMPodcastParser *)self feedDescriptionSourceElement];
        v40 = [feedDescriptionSourceElement isEqualToString:@"description"];

        if (!v40)
        {
          goto LABEL_98;
        }
      }

      else
      {
      }

      v25 = @"summary";
LABEL_95:
      [(IMPodcastParser *)self setFeedDescriptionSourceElement:v25];
      lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
      parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
      [parsedFeed3 setFeedDescription:lastObject];
      goto LABEL_96;
    }

    if ([elementCopy isEqualToString:@"category"])
    {
      parsedFeed5 = [(IMPodcastParser *)self parsedFeed];
      category2 = [parsedFeed5 category];

      if (category2)
      {
        [(IMPodcastParser *)self setPreferredFeedCategoryFound:1];
      }

      goto LABEL_98;
    }

    if ([elementCopy isEqualToString:@"new-feed-url"])
    {
      lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
      parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
      [parsedFeed3 setUpdatedFeedURL:lastObject];
      goto LABEL_96;
    }

    if ([elementCopy isEqualToString:@"title"])
    {
      parsedFeed6 = [(IMPodcastParser *)self parsedFeed];
      title = [parsedFeed6 title];

      if (title)
      {
        goto LABEL_98;
      }

      lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
LABEL_40:
      parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
      [parsedFeed3 setTitle:lastObject];
      goto LABEL_96;
    }

    if ([elementCopy isEqualToString:@"explicit"])
    {
      elementCharBufferTrimmed6 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      lastObject = [elementCharBufferTrimmed6 lowercaseString];

      if (![lastObject isEqualToString:@"yes"])
      {
        goto LABEL_97;
      }

      parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
      [parsedFeed3 setIsExplicit:1];
LABEL_96:

LABEL_97:
      goto LABEL_98;
    }

    if ([elementCopy isEqualToString:@"type"])
    {
      lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
      parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
      [parsedFeed3 setShowType:lastObject];
      goto LABEL_96;
    }
  }

  else
  {
    if (!isWhitespace)
    {
      goto LABEL_98;
    }

    if ([elementCopy isEqualToString:@"description"])
    {
      elementCharBuffer7 = [(IMPodcastParser *)self elementCharBuffer];
      isWhitespace3 = [elementCharBuffer7 isWhitespace];

      if ((isWhitespace3 & 1) == 0)
      {
        parsedFeed7 = [(IMPodcastParser *)self parsedFeed];
        feedDescription2 = [parsedFeed7 feedDescription];

        if (!feedDescription2)
        {
          v25 = @"description";
          goto LABEL_95;
        }
      }
    }

    else
    {
      if ([elementCopy isEqualToString:@"title"])
      {
        lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
        if (![lastObject length])
        {
          goto LABEL_97;
        }

        parsedFeed8 = [(IMPodcastParser *)self parsedFeed];
        title2 = [parsedFeed8 title];

        if (title2)
        {
          goto LABEL_97;
        }

        goto LABEL_40;
      }

      if ([elementCopy isEqualToString:@"link"])
      {
        lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
        parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
        [parsedFeed3 setWebpageURL:lastObject];
        goto LABEL_96;
      }

      if ([elementCopy isEqualToString:@"image"])
      {
        self->_inGlobalImageElement = 0;
      }
    }
  }

LABEL_98:
  [(IMPodcastParser *)self endBufferingElementChars];
}

- (void)atomParser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  iCopy = i;
  v9 = [IMPodcastParser isITunesNamespace:iCopy];
  if (iCopy)
  {
    isWhitespace = [iCopy isWhitespace];
    if (![(IMPodcastParser *)self itemElementNestCount])
    {
      if (!isWhitespace)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

LABEL_7:
    parsedFeed = [(IMPodcastParser *)self parsedFeed];
    items = [parsedFeed items];
    lastObject = [items lastObject];

    if ([(IMPodcastParser *)self itemElementNestCount]== 2)
    {
      if (isWhitespace)
      {
        if ([elementCopy isEqualToString:@"title"])
        {
          elementCharBufferTrimmed = [(IMPodcastParser *)self elementCharBufferTrimmed];
          [lastObject setTitle:elementCharBufferTrimmed];
LABEL_37:

          goto LABEL_38;
        }

        if ([elementCopy isEqualToString:@"id"])
        {
          elementCharBufferTrimmed = [(IMPodcastParser *)self elementCharBufferTrimmed];
          [lastObject setGuid:elementCharBufferTrimmed];
          goto LABEL_37;
        }
      }

      if (v9 && [elementCopy isEqualToString:@"author"])
      {
        author = [lastObject author];
        isNotWhitespace = [author isNotWhitespace];

        if (isNotWhitespace)
        {
          goto LABEL_38;
        }

        goto LABEL_33;
      }

      if (!isWhitespace)
      {
        goto LABEL_38;
      }

      if ([elementCopy isEqualToString:@"published"])
      {
        elementCharBufferTrimmed = [(IMPodcastParser *)self elementCharBuffer];
        v30 = [(IMPodcastParser *)self dateFromAtomDateString:elementCharBufferTrimmed];
        [lastObject setPubDate:v30];

        goto LABEL_37;
      }

      if (![elementCopy isEqualToString:@"summary"])
      {
        if ([elementCopy isEqualToString:@"entry"])
        {
          [(IMPodcastParser *)self setItemElementNestCount:0];
          [(IMPodcastParser *)self postProcessItemElement:lastObject];
        }

        goto LABEL_38;
      }

      itemDescription = [lastObject itemDescription];
      isNotWhitespace2 = [itemDescription isNotWhitespace];

      if ((isNotWhitespace2 & 1) == 0)
      {
        elementCharBufferTrimmed = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [lastObject setItemDescription:elementCharBufferTrimmed];
        goto LABEL_37;
      }
    }

    else if ([(IMPodcastParser *)self itemElementNestCount]== 3 && ([(IMPodcastParser *)self inAuthorElement]& isWhitespace) == 1)
    {
      if (![elementCopy isEqualToString:@"name"])
      {
        if ([elementCopy isEqualToString:@"author"])
        {
          [(IMPodcastParser *)self setInAuthorElement:0];
        }

        goto LABEL_38;
      }

LABEL_33:
      elementCharBufferTrimmed = [(IMPodcastParser *)self elementCharBufferTrimmed];
      [lastObject setAuthor:elementCharBufferTrimmed];
      goto LABEL_37;
    }

LABEL_38:
    if ([(IMPodcastParser *)self itemElementNestCount])
    {
      [(IMPodcastParser *)self setItemElementNestCount:[(IMPodcastParser *)self itemElementNestCount]- 1];
    }

    goto LABEL_49;
  }

  if ([(IMPodcastParser *)self itemElementNestCount])
  {
    isWhitespace = 1;
    goto LABEL_7;
  }

LABEL_16:
  if ([elementCopy isEqualToString:@"title"])
  {
    elementCharBuffer = [(IMPodcastParser *)self elementCharBuffer];
    isWhitespace2 = [elementCharBuffer isWhitespace];

    if ((isWhitespace2 & 1) == 0)
    {
      parsedFeed2 = [(IMPodcastParser *)self parsedFeed];
      feedDescription = [parsedFeed2 feedDescription];

      if (!feedDescription)
      {
        v19 = @"title";
LABEL_47:
        [(IMPodcastParser *)self setFeedDescriptionSourceElement:v19];
        lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
        parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
        [parsedFeed3 setFeedDescription:lastObject];
        goto LABEL_48;
      }
    }

    goto LABEL_50;
  }

  if ([elementCopy isEqualToString:@"logo"])
  {
    lastObject = [(IMPodcastParser *)self elementCharBufferTrimmed];
    parsedFeed3 = [(IMPodcastParser *)self parsedFeed];
    [parsedFeed3 setImageURL:lastObject];
LABEL_48:

LABEL_49:
    goto LABEL_50;
  }

LABEL_22:
  if (v9)
  {
    if ([elementCopy isEqualToString:@"summary"])
    {
      elementCharBuffer2 = [(IMPodcastParser *)self elementCharBuffer];
      isWhitespace3 = [elementCharBuffer2 isWhitespace];

      if ((isWhitespace3 & 1) == 0)
      {
        parsedFeed4 = [(IMPodcastParser *)self parsedFeed];
        feedDescription2 = [parsedFeed4 feedDescription];
        if (feedDescription2)
        {
          v25 = feedDescription2;
          feedDescriptionSourceElement = [(IMPodcastParser *)self feedDescriptionSourceElement];
          v27 = [feedDescriptionSourceElement isEqualToString:@"title"];

          if (!v27)
          {
            goto LABEL_50;
          }
        }

        else
        {
        }

        v19 = @"summary";
        goto LABEL_47;
      }
    }
  }

LABEL_50:
  [(IMPodcastParser *)self endBufferingElementChars];
}

- (void)postProcessItemElement:(id)element
{
  elementCopy = element;
  guid = [elementCopy guid];
  if (![guid length])
  {
    enclosureURL = [elementCopy enclosureURL];

    if (!enclosureURL)
    {
      goto LABEL_3;
    }

    enclosureParameterString = [elementCopy enclosureParameterString];

    if (enclosureParameterString)
    {
      v13 = MEMORY[0x1E696AEC0];
      guid = [elementCopy enclosureURL];
      enclosureParameterString2 = [elementCopy enclosureParameterString];
      v15 = [v13 stringWithFormat:@"%@?%@", guid, enclosureParameterString2];
      [elementCopy setGuid:v15];
    }

    else
    {
      guid = [elementCopy enclosureURL];
      [elementCopy setGuid:guid];
    }
  }

LABEL_3:
  title = [elementCopy title];
  if (!title || (v6 = title, [elementCopy title], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isWhitespace"), v7, v6, v8))
  {
    parsedFeed = [(IMPodcastParser *)self parsedFeed];
    items = [parsedFeed items];
    [items removeObject:elementCopy];
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  if ([(IMPodcastParser *)self shouldBufferElementChars])
  {
    elementCharBuffer = [(IMPodcastParser *)self elementCharBuffer];
    [elementCharBuffer appendString:charactersCopy];
  }
}

+ (BOOL)isITunesNamespace:(id)namespace
{
  namespaceCopy = namespace;
  if ([namespaceCopy isEqualToString:@"http://www.itunes.com/dtds/podcast-1.0.dtd"] & 1) != 0 || (objc_msgSend(namespaceCopy, "isEqualToString:", @"http://www.itunes.com/DTDs/Podcast-1.0.dtd"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [namespaceCopy isEqualToString:@"http://www.itunes.com/DTDs/PodCast-1.0.dtd"];
  }

  return v4;
}

- (void)startBufferingElementChars
{
  if ([(IMPodcastParser *)self shouldBufferElementChars])
  {
    [(IMPodcastParser *)self endBufferingElementChars];
  }

  [(IMPodcastParser *)self setShouldBufferElementChars:1];
  string = [MEMORY[0x1E696AD60] string];
  [(IMPodcastParser *)self setElementCharBuffer:string];
}

- (id)elementCharBufferTrimmed
{
  elementCharBuffer = [(IMPodcastParser *)self elementCharBuffer];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [elementCharBuffer im_stringByMemoryEfficientTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v4;
}

@end