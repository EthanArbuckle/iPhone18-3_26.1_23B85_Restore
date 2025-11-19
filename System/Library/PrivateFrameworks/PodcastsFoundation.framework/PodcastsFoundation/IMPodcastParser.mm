@interface IMPodcastParser
+ (BOOL)isITunesNamespace:(id)a3;
- (IMPodcastParser)init;
- (id)dateFromAtomDateString:(id)a3;
- (id)dateFromRSSDateString:(id)a3;
- (id)elementCharBufferTrimmed;
- (id)parseWithData:(id)a3;
- (id)removeLastColonOfString:(id)a3;
- (void)_parseEnclosureElement:(id)a3 forFeedItem:(id)a4;
- (void)atomParser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)atomParser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parseStreamFromURL:(id)a3 withCompletionBlock:(id)a4;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)postProcessItemElement:(id)a3;
- (void)rssParser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)rssParser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
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

- (id)parseWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(IMPodcastParser *)self setFeedType:-1];
    v5 = objc_alloc_init(IMPodcastFeed);
    [(IMPodcastParser *)self setParsedFeed:v5];

    v6 = [objc_alloc(MEMORY[0x1E696B0A8]) initWithData:v4];
    [v6 setShouldResolveExternalEntities:0];
    [v6 setDelegate:self];
    [v6 setShouldProcessNamespaces:1];
    [v6 parse];
  }

  v7 = NSPersistentStringForMTDisplayType(0);
  v8 = [(IMPodcastParser *)self parsedFeed];
  [v8 setDisplayType:v7];

  return [(IMPodcastParser *)self parsedFeed];
}

- (void)parseStreamFromURL:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(IMPodcastParser *)self setFeedType:-1];
  v8 = objc_alloc_init(IMPodcastFeed);
  [(IMPodcastParser *)self setParsedFeed:v8];

  v9 = [IMXMLStreamOperation operationWithURL:v7 parseDelegate:self];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __58__IMPodcastParser_parseStreamFromURL_withCompletionBlock___block_invoke;
  v15 = &unk_1E8569228;
  v16 = self;
  v17 = v6;
  v10 = v6;
  [v9 setCompletionBlock:&v12];
  v11 = [MEMORY[0x1E696ADC8] mainQueue];
  [v11 addOperation:v9];
}

void __58__IMPodcastParser_parseStreamFromURL_withCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) parsedFeed];
  (*(v1 + 16))(v1, v2);
}

- (id)dateFromRSSDateString:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = [v4 length];
  v5 = [(IMPodcastParser *)self rssDateFormatter];
  v9 = 0;
  v10 = 0;
  [v5 getObjectValue:&v10 forString:v4 range:v11 error:&v9];

  v6 = v10;
  v7 = v9;

  return v6;
}

- (id)removeLastColonOfString:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@":" options:4];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && v5 == 1)
  {
    v8 = v4;
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v3 substringToIndex:v4];
    v11 = [v3 substringFromIndex:v8 + 1];
    v7 = [v9 stringWithFormat:@"%@%@", v10, v11];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (id)dateFromAtomDateString:(id)a3
{
  v3 = [(IMPodcastParser *)self removeLastColonOfString:a3];
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

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (![(IMPodcastParser *)self feedType])
  {
    [(IMPodcastParser *)self rssParser:v18 didStartElement:v12 namespaceURI:v13 qualifiedName:v14 attributes:v15];
    goto LABEL_11;
  }

  if ([(IMPodcastParser *)self feedType]== 1)
  {
    [(IMPodcastParser *)self atomParser:v18 didStartElement:v12 namespaceURI:v13 qualifiedName:v14 attributes:v15];
    goto LABEL_11;
  }

  if ([(IMPodcastParser *)self feedType]== -1)
  {
    if ([v12 isEqualToString:@"rss"])
    {
      v16 = self;
      v17 = 0;
    }

    else
    {
      if (![v12 isEqualToString:@"feed"])
      {
        goto LABEL_11;
      }

      v16 = self;
      v17 = 1;
    }

    [(IMPodcastParser *)v16 setFeedType:v17];
  }

LABEL_11:
}

- (void)rssParser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v32 = a4;
  v10 = a5;
  v11 = a7;
  v12 = [IMPodcastParser isITunesNamespace:v10];
  v13 = [IMPodcastParser isContentNamespace:v10];
  if (v10)
  {
    v14 = [v10 isWhitespace];
  }

  else
  {
    v14 = 1;
  }

  if (self->_inGlobalImageElement && [v32 isEqualToString:@"url"])
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

    v15 = [(IMPodcastParser *)self parsedFeed];
    v16 = [v15 items];
    v17 = [v16 lastObject];

    if (rssParser_didStartElement_namespaceURI_qualifiedName_attributes__onceToken_globalElementsToCapture != -1)
    {
      [IMPodcastParser rssParser:didStartElement:namespaceURI:qualifiedName:attributes:];
    }

    v18 = v32;
    if (rssParser_didStartElement_namespaceURI_qualifiedName_attributes__onceToken_itunesElementsToCapture != -1)
    {
      [IMPodcastParser rssParser:didStartElement:namespaceURI:qualifiedName:attributes:];
      v18 = v32;
    }

    if (rssParser_didStartElement_namespaceURI_qualifiedName_attributes__onceToken_contentElementsToCapture == -1)
    {
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      [IMPodcastParser rssParser:didStartElement:namespaceURI:qualifiedName:attributes:];
      v18 = v32;
      if (v14)
      {
LABEL_15:
        v19 = [rssParser_didStartElement_namespaceURI_qualifiedName_attributes__globalElementsToCapture containsObject:v18];
        v18 = v32;
        if (v19)
        {
          goto LABEL_20;
        }
      }
    }

    if (!v12 || (v20 = [rssParser_didStartElement_namespaceURI_qualifiedName_attributes__itunesElementsToCapture containsObject:v18], v18 = v32, (v20 & 1) == 0))
    {
      if (!v13 || (v21 = [rssParser_didStartElement_namespaceURI_qualifiedName_attributes__contentElementsToCapture containsObject:v18], v18 = v32, !v21))
      {
        if (v12 && (v25 = [v18 isEqualToString:@"category"], v18 = v32, v25))
        {
          if (![(IMPodcastParser *)self preferredItemCategoryFound])
          {
            v26 = [v11 valueForKey:@"text"];
            v27 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
            v28 = [v26 stringByTrimmingCharactersInSet:v27];
            [v17 setCategory:v28];
          }
        }

        else if ([v18 isEqualToString:@"enclosure"])
        {
          [(IMPodcastParser *)self _parseEnclosureElement:v11 forFeedItem:v17];
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
    if (!v14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    [IMPodcastParser rssParser:didStartElement:namespaceURI:qualifiedName:attributes:];
    if (!v14)
    {
      goto LABEL_36;
    }
  }

  if ([v32 isEqualToString:@"item"])
  {
    [(IMPodcastParser *)self setItemElementNestCount:1];
    [(IMPodcastParser *)self setPreferredItemCategoryFound:0];
    v22 = objc_alloc_init(IMPodcastFeedItem);
    v23 = [(IMPodcastParser *)self parsedFeed];
    v24 = [v23 items];
    [v24 addObject:v22];

LABEL_43:
    goto LABEL_51;
  }

LABEL_36:
  if (v12)
  {
    if ([v32 isEqualToString:@"category"])
    {
      if ([(IMPodcastParser *)self preferredFeedCategoryFound])
      {
        goto LABEL_51;
      }

      v22 = [v11 valueForKey:@"text"];
      v29 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v30 = [(IMPodcastFeedItem *)v22 stringByTrimmingCharactersInSet:v29];
      v31 = [(IMPodcastParser *)self parsedFeed];
      [v31 setCategory:v30];
      goto LABEL_42;
    }

    if ([v32 isEqualToString:@"image"])
    {
      v22 = [v11 valueForKey:@"href"];
      v29 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v30 = [(IMPodcastFeedItem *)v22 stringByTrimmingCharactersInSet:v29];
      v31 = [(IMPodcastParser *)self parsedFeed];
      [v31 setImageURL:v30];
LABEL_42:

      goto LABEL_43;
    }
  }

  if (v14)
  {
    if ([v32 isEqualToString:@"image"])
    {
      self->_inGlobalImageElement = 1;
      goto LABEL_51;
    }

    if ([rssParser_didStartElement_namespaceURI_qualifiedName_attributes__subelement_globalElementsToCapture containsObject:v32])
    {
      goto LABEL_50;
    }
  }

  if (v12 && [rssParser_didStartElement_namespaceURI_qualifiedName_attributes__subelement_itunesElementsToCapture containsObject:v32])
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

- (void)_parseEnclosureElement:(id)a3 forFeedItem:(id)a4
{
  v35 = a3;
  v5 = a4;
  v6 = [v35 valueForKey:@"type"];
  v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [v35 valueForKey:@"url"];
  v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

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

    v19 = [MEMORY[0x1E696AD48] URLAllowedCharacterSet];
    v20 = [v19 mutableCopy];

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
      v26 = [v24 scheme];
      if (v26)
      {
        v27 = v26;
        v28 = [v25 host];

        if (v28)
        {
          v34 = [v35 valueForKey:@"length"];
          v29 = [v34 longLongValue];
          v33 = v29 & ~(v29 >> 63);
          v30 = [v16 pathExtension];
          v31 = [IMUTITypes UTIByExtension:v30];
          if (v31)
          {
            [v5 setUti:v31];
          }

          else
          {
            v32 = [IMUTITypes UTIFromMIMEType:v8];
            [v5 setUti:v32];
          }

          [v5 setEnclosureURL:v16];
          [v5 setEnclosureParameterString:v17];
          [v5 setByteSize:v33];
        }
      }
    }
  }
}

- (void)atomParser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v37 = a4;
  v10 = a5;
  v11 = a7;
  v12 = [IMPodcastParser isITunesNamespace:v10];
  if (!v10)
  {
    if (![(IMPodcastParser *)self itemElementNestCount])
    {
      goto LABEL_18;
    }

    v13 = 1;
LABEL_8:
    if ([(IMPodcastParser *)self itemElementNestCount]== 1)
    {
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"title", @"published", @"id", @"summary", 0}];
      v16 = v15;
      if (v13 && ([v15 containsObject:v37] & 1) != 0 || v12 && objc_msgSend(v37, "isEqualToString:", @"author"))
      {
        [(IMPodcastParser *)self startBufferingElementChars];
      }

      else if (v13)
      {
        if ([v37 isEqualToString:@"author"])
        {
          [(IMPodcastParser *)self setInAuthorElement:1];
        }

        else if ([v37 isEqualToString:@"link"])
        {
          v20 = [v11 valueForKey:@"href"];
          v21 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v22 = [v20 stringByTrimmingCharactersInSet:v21];

          v23 = [v11 valueForKey:@"rel"];
          v24 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v25 = [v23 stringByTrimmingCharactersInSet:v24];

          v26 = [v11 valueForKey:@"length"];
          v27 = [v26 longLongValue];
          if ([v25 isEqualToString:@"enclosure"] && v22 && (objc_msgSend(v22, "isWhitespace") & 1) == 0)
          {
            v36 = v27;
            v28 = [(IMPodcastParser *)self parsedFeed];
            v29 = [v28 items];
            v30 = [v29 lastObject];

            v31 = v30;
            v32 = [v30 enclosureURL];

            if (!v32)
            {
              v33 = [v30 enclosureURL];

              if (v33)
              {
                [v30 setByteSize:0];
                [v30 setUti:0];
              }

              [v30 setEnclosureURL:v22];
              [v30 setByteSize:v36 & ~(v36 >> 63)];
              v34 = [v22 pathExtension];
              v35 = [IMUTITypes UTIByExtension:v34];
              [v31 setUti:v35];
            }
          }
        }
      }
    }

    else if (-[IMPodcastParser itemElementNestCount](self, "itemElementNestCount") == 2 && (-[IMPodcastParser inAuthorElement](self, "inAuthorElement") & v13) == 1 && [v37 isEqualToString:@"name"])
    {
      [(IMPodcastParser *)self startBufferingElementChars];
    }

    [(IMPodcastParser *)self setItemElementNestCount:[(IMPodcastParser *)self itemElementNestCount]+ 1];
    goto LABEL_41;
  }

  v13 = [v10 isWhitespace];
  if ([(IMPodcastParser *)self itemElementNestCount])
  {
    goto LABEL_8;
  }

  if (!v13)
  {
    v14 = 0;
    if (!v12)
    {
      goto LABEL_26;
    }

LABEL_25:
    if ([v37 isEqualToString:@"summary"])
    {
LABEL_28:
      [(IMPodcastParser *)self startBufferingElementChars];
      goto LABEL_41;
    }

    goto LABEL_26;
  }

LABEL_18:
  if ([v37 isEqualToString:@"entry"])
  {
    [(IMPodcastParser *)self setItemElementNestCount:1];
    [(IMPodcastParser *)self setPreferredItemCategoryFound:0];
    v17 = objc_alloc_init(IMPodcastFeedItem);
    v18 = [(IMPodcastParser *)self parsedFeed];
    v19 = [v18 items];
    [v19 addObject:v17];

    goto LABEL_41;
  }

  if ([v37 isEqualToString:@"title"])
  {
    goto LABEL_28;
  }

  v14 = 1;
  if (v12)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (v14 && [v37 isEqualToString:@"logo"])
  {
    goto LABEL_28;
  }

LABEL_41:
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(IMPodcastParser *)self feedType])
  {
    if ([(IMPodcastParser *)self feedType]== 1)
    {
      [(IMPodcastParser *)self atomParser:v13 didEndElement:v10 namespaceURI:v11 qualifiedName:v12];
    }
  }

  else
  {
    [(IMPodcastParser *)self rssParser:v13 didEndElement:v10 namespaceURI:v11 qualifiedName:v12];
  }
}

- (void)rssParser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v65 = a4;
  v8 = a5;
  v9 = [IMPodcastParser isITunesNamespace:v8];
  v10 = [IMPodcastParser isContentNamespace:v8];
  if (v8)
  {
    v11 = [v8 isWhitespace];
  }

  else
  {
    v11 = 1;
  }

  if (self->_inGlobalImageElement && [v65 isEqualToString:@"url"])
  {
    v12 = [(IMPodcastParser *)self elementCharBufferTrimmed];
    v13 = [(IMPodcastParser *)self parsedFeed];
    [v13 setGlobalImageURL:v12];

    [(IMPodcastParser *)self endBufferingElementChars];
  }

  if ([(IMPodcastParser *)self itemElementNestCount])
  {
    v14 = [(IMPodcastParser *)self parsedFeed];
    v15 = [v14 items];
    v16 = [v15 lastObject];

    if ([(IMPodcastParser *)self itemElementNestCount]!= 2)
    {
      if (v11)
      {
        v20 = [v65 isEqualToString:@"item"];
        if ([(IMPodcastParser *)self itemElementNestCount]== v20)
        {
          [(IMPodcastParser *)self setItemElementNestCount:0];
          [(IMPodcastParser *)self postProcessItemElement:v16];
        }
      }

      goto LABEL_75;
    }

    v17 = v65;
    if (v11)
    {
      if ([v65 isEqualToString:@"title"])
      {
        v18 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [v16 setTitle:v18];
        goto LABEL_74;
      }

      v26 = [v65 isEqualToString:@"guid"];
      v17 = v65;
      if (v26)
      {
        v18 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [v16 setGuid:v18];
        goto LABEL_74;
      }
    }

    if (v9)
    {
      if ([v17 isEqualToString:@"duration"])
      {
        v27 = [(IMPodcastParser *)self elementCharBuffer];
        v18 = [v27 componentsSeparatedByString:@":"];

        if ([v18 count] && objc_msgSend(v18, "count") <= 3)
        {
          v28 = MEMORY[0x1E696AEC0];
          v29 = [(IMPodcastParser *)self elementCharBuffer];
          [v28 durationWithHMSString:v29];
          [v16 setDuration:?];
        }

        goto LABEL_74;
      }

      v30 = [v65 isEqualToString:@"author"];
      v17 = v65;
      if (v30)
      {
        v18 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [v16 setAuthor:v18];
        goto LABEL_74;
      }
    }

    if (v11)
    {
      if ([v17 isEqualToString:@"pubDate"])
      {
        v18 = [(IMPodcastParser *)self elementCharBuffer];
        v31 = [(IMPodcastParser *)self dateFromRSSDateString:v18];
        [v16 setPubDate:v31];

        goto LABEL_74;
      }

      v41 = [v65 isEqualToString:@"link"];
      v17 = v65;
      if (v41)
      {
        v18 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [v16 setWebpageURL:v18];
        goto LABEL_74;
      }
    }

    if (v9)
    {
      if ([v17 isEqualToString:@"category"])
      {
        v42 = [v16 category];

        if (v42)
        {
          [(IMPodcastParser *)self setPreferredItemCategoryFound:1];
        }

        goto LABEL_75;
      }

      if ([v65 isEqualToString:@"summary"])
      {
        v18 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        if (![v18 length])
        {
          goto LABEL_74;
        }

        [v16 setItemSummary:v18];
        v45 = @"summary";
LABEL_69:
        [v16 setItemSummarySourceElement:v45];
        goto LABEL_74;
      }

      v46 = [v65 isEqualToString:@"subtitle"];
      v17 = v65;
      if (v46)
      {
        v47 = [v16 itemSummary];
        if (!v47 || (v48 = v47, [v16 itemSummarySourceElement], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "isEqualToString:", @"description"), v49, v48, v17 = v65, v50))
        {
          v18 = [(IMPodcastParser *)self elementCharBufferTrimmed];
          if (![v18 length])
          {
            goto LABEL_74;
          }

          [v16 setItemSummary:v18];
          v45 = @"subtitle";
          goto LABEL_69;
        }
      }
    }

    if (v10 && [v17 isEqualToString:@"encoded"])
    {
      v18 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      if ([v18 length])
      {
        [v16 setItemDescription:v18];
        [v16 setItemDescriptionSourceElement:@"encoded"];
      }
    }

    else
    {
      if (v11 && [v65 isEqualToString:@"description"])
      {
        v51 = [v16 itemDescription];

        if (!v51)
        {
          v52 = [(IMPodcastParser *)self elementCharBufferTrimmed];
          [v16 setItemDescription:v52];

          [v16 setItemDescriptionSourceElement:@"description"];
        }

        v53 = [v16 itemSummary];

        if (!v53)
        {
          v54 = [(IMPodcastParser *)self elementCharBufferTrimmed];
          [v16 setItemSummary:v54];

          [v16 setItemSummarySourceElement:@"description"];
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

      if ([v65 isEqualToString:@"order"])
      {
        v55 = [(IMPodcastParser *)self elementCharBuffer];
        v56 = [v55 intValue];

        if ((v56 - 1) <= 0x7FFE)
        {
          [v16 setTrackNum:v56];
        }

        goto LABEL_75;
      }

      if ([v65 isEqualToString:@"explicit"])
      {
        v57 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        v18 = [v57 lowercaseString];

        if ([v18 isEqualToString:@"yes"])
        {
          [v16 setIsExplicit:1];
        }
      }

      else if ([v65 isEqualToString:@"title"])
      {
        v18 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [v16 setItunesTitle:v18];
      }

      else
      {
        if (![v65 isEqualToString:@"episodeType"])
        {
          if ([v65 isEqualToString:@"season"])
          {
            v61 = [(IMPodcastParser *)self elementCharBuffer];
            v62 = [v61 longLongValue];

            if ((v62 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
            {
              [v16 setSeasonNumber:v62];
            }
          }

          else if ([v65 isEqualToString:@"episode"])
          {
            v63 = [(IMPodcastParser *)self elementCharBuffer];
            v64 = [v63 longLongValue];

            if ((v64 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
            {
              [v16 setEpisodeNumber:v64];
            }
          }

          goto LABEL_75;
        }

        v18 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [v16 setEpisodeType:v18];
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  if (v9)
  {
    if ([v65 isEqualToString:@"author"])
    {
      v16 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      v19 = [(IMPodcastParser *)self parsedFeed];
      [v19 setAuthor:v16];
      goto LABEL_96;
    }

    if ([v65 isEqualToString:@"provider"])
    {
      v16 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      v19 = [(IMPodcastParser *)self parsedFeed];
      [v19 setProvider:v16];
      goto LABEL_96;
    }

    if ([v65 isEqualToString:@"summary"])
    {
      v34 = [(IMPodcastParser *)self elementCharBuffer];
      v35 = [v34 isWhitespace];

      if (v35)
      {
        goto LABEL_98;
      }

      v36 = [(IMPodcastParser *)self parsedFeed];
      v37 = [v36 feedDescription];
      if (v37)
      {
        v38 = v37;
        v39 = [(IMPodcastParser *)self feedDescriptionSourceElement];
        v40 = [v39 isEqualToString:@"description"];

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
      v16 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      v19 = [(IMPodcastParser *)self parsedFeed];
      [v19 setFeedDescription:v16];
      goto LABEL_96;
    }

    if ([v65 isEqualToString:@"category"])
    {
      v43 = [(IMPodcastParser *)self parsedFeed];
      v44 = [v43 category];

      if (v44)
      {
        [(IMPodcastParser *)self setPreferredFeedCategoryFound:1];
      }

      goto LABEL_98;
    }

    if ([v65 isEqualToString:@"new-feed-url"])
    {
      v16 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      v19 = [(IMPodcastParser *)self parsedFeed];
      [v19 setUpdatedFeedURL:v16];
      goto LABEL_96;
    }

    if ([v65 isEqualToString:@"title"])
    {
      v58 = [(IMPodcastParser *)self parsedFeed];
      v59 = [v58 title];

      if (v59)
      {
        goto LABEL_98;
      }

      v16 = [(IMPodcastParser *)self elementCharBufferTrimmed];
LABEL_40:
      v19 = [(IMPodcastParser *)self parsedFeed];
      [v19 setTitle:v16];
      goto LABEL_96;
    }

    if ([v65 isEqualToString:@"explicit"])
    {
      v60 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      v16 = [v60 lowercaseString];

      if (![v16 isEqualToString:@"yes"])
      {
        goto LABEL_97;
      }

      v19 = [(IMPodcastParser *)self parsedFeed];
      [v19 setIsExplicit:1];
LABEL_96:

LABEL_97:
      goto LABEL_98;
    }

    if ([v65 isEqualToString:@"type"])
    {
      v16 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      v19 = [(IMPodcastParser *)self parsedFeed];
      [v19 setShowType:v16];
      goto LABEL_96;
    }
  }

  else
  {
    if (!v11)
    {
      goto LABEL_98;
    }

    if ([v65 isEqualToString:@"description"])
    {
      v21 = [(IMPodcastParser *)self elementCharBuffer];
      v22 = [v21 isWhitespace];

      if ((v22 & 1) == 0)
      {
        v23 = [(IMPodcastParser *)self parsedFeed];
        v24 = [v23 feedDescription];

        if (!v24)
        {
          v25 = @"description";
          goto LABEL_95;
        }
      }
    }

    else
    {
      if ([v65 isEqualToString:@"title"])
      {
        v16 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        if (![v16 length])
        {
          goto LABEL_97;
        }

        v32 = [(IMPodcastParser *)self parsedFeed];
        v33 = [v32 title];

        if (v33)
        {
          goto LABEL_97;
        }

        goto LABEL_40;
      }

      if ([v65 isEqualToString:@"link"])
      {
        v16 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        v19 = [(IMPodcastParser *)self parsedFeed];
        [v19 setWebpageURL:v16];
        goto LABEL_96;
      }

      if ([v65 isEqualToString:@"image"])
      {
        self->_inGlobalImageElement = 0;
      }
    }
  }

LABEL_98:
  [(IMPodcastParser *)self endBufferingElementChars];
}

- (void)atomParser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v33 = a4;
  v8 = a5;
  v9 = [IMPodcastParser isITunesNamespace:v8];
  if (v8)
  {
    v10 = [v8 isWhitespace];
    if (![(IMPodcastParser *)self itemElementNestCount])
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

LABEL_7:
    v11 = [(IMPodcastParser *)self parsedFeed];
    v12 = [v11 items];
    v13 = [v12 lastObject];

    if ([(IMPodcastParser *)self itemElementNestCount]== 2)
    {
      if (v10)
      {
        if ([v33 isEqualToString:@"title"])
        {
          v14 = [(IMPodcastParser *)self elementCharBufferTrimmed];
          [v13 setTitle:v14];
LABEL_37:

          goto LABEL_38;
        }

        if ([v33 isEqualToString:@"id"])
        {
          v14 = [(IMPodcastParser *)self elementCharBufferTrimmed];
          [v13 setGuid:v14];
          goto LABEL_37;
        }
      }

      if (v9 && [v33 isEqualToString:@"author"])
      {
        v28 = [v13 author];
        v29 = [v28 isNotWhitespace];

        if (v29)
        {
          goto LABEL_38;
        }

        goto LABEL_33;
      }

      if (!v10)
      {
        goto LABEL_38;
      }

      if ([v33 isEqualToString:@"published"])
      {
        v14 = [(IMPodcastParser *)self elementCharBuffer];
        v30 = [(IMPodcastParser *)self dateFromAtomDateString:v14];
        [v13 setPubDate:v30];

        goto LABEL_37;
      }

      if (![v33 isEqualToString:@"summary"])
      {
        if ([v33 isEqualToString:@"entry"])
        {
          [(IMPodcastParser *)self setItemElementNestCount:0];
          [(IMPodcastParser *)self postProcessItemElement:v13];
        }

        goto LABEL_38;
      }

      v31 = [v13 itemDescription];
      v32 = [v31 isNotWhitespace];

      if ((v32 & 1) == 0)
      {
        v14 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        [v13 setItemDescription:v14];
        goto LABEL_37;
      }
    }

    else if ([(IMPodcastParser *)self itemElementNestCount]== 3 && ([(IMPodcastParser *)self inAuthorElement]& v10) == 1)
    {
      if (![v33 isEqualToString:@"name"])
      {
        if ([v33 isEqualToString:@"author"])
        {
          [(IMPodcastParser *)self setInAuthorElement:0];
        }

        goto LABEL_38;
      }

LABEL_33:
      v14 = [(IMPodcastParser *)self elementCharBufferTrimmed];
      [v13 setAuthor:v14];
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
    v10 = 1;
    goto LABEL_7;
  }

LABEL_16:
  if ([v33 isEqualToString:@"title"])
  {
    v15 = [(IMPodcastParser *)self elementCharBuffer];
    v16 = [v15 isWhitespace];

    if ((v16 & 1) == 0)
    {
      v17 = [(IMPodcastParser *)self parsedFeed];
      v18 = [v17 feedDescription];

      if (!v18)
      {
        v19 = @"title";
LABEL_47:
        [(IMPodcastParser *)self setFeedDescriptionSourceElement:v19];
        v13 = [(IMPodcastParser *)self elementCharBufferTrimmed];
        v20 = [(IMPodcastParser *)self parsedFeed];
        [v20 setFeedDescription:v13];
        goto LABEL_48;
      }
    }

    goto LABEL_50;
  }

  if ([v33 isEqualToString:@"logo"])
  {
    v13 = [(IMPodcastParser *)self elementCharBufferTrimmed];
    v20 = [(IMPodcastParser *)self parsedFeed];
    [v20 setImageURL:v13];
LABEL_48:

LABEL_49:
    goto LABEL_50;
  }

LABEL_22:
  if (v9)
  {
    if ([v33 isEqualToString:@"summary"])
    {
      v21 = [(IMPodcastParser *)self elementCharBuffer];
      v22 = [v21 isWhitespace];

      if ((v22 & 1) == 0)
      {
        v23 = [(IMPodcastParser *)self parsedFeed];
        v24 = [v23 feedDescription];
        if (v24)
        {
          v25 = v24;
          v26 = [(IMPodcastParser *)self feedDescriptionSourceElement];
          v27 = [v26 isEqualToString:@"title"];

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

- (void)postProcessItemElement:(id)a3
{
  v16 = a3;
  v4 = [v16 guid];
  if (![v4 length])
  {
    v11 = [v16 enclosureURL];

    if (!v11)
    {
      goto LABEL_3;
    }

    v12 = [v16 enclosureParameterString];

    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      v4 = [v16 enclosureURL];
      v14 = [v16 enclosureParameterString];
      v15 = [v13 stringWithFormat:@"%@?%@", v4, v14];
      [v16 setGuid:v15];
    }

    else
    {
      v4 = [v16 enclosureURL];
      [v16 setGuid:v4];
    }
  }

LABEL_3:
  v5 = [v16 title];
  if (!v5 || (v6 = v5, [v16 title], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isWhitespace"), v7, v6, v8))
  {
    v9 = [(IMPodcastParser *)self parsedFeed];
    v10 = [v9 items];
    [v10 removeObject:v16];
  }
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v6 = a4;
  if ([(IMPodcastParser *)self shouldBufferElementChars])
  {
    v5 = [(IMPodcastParser *)self elementCharBuffer];
    [v5 appendString:v6];
  }
}

+ (BOOL)isITunesNamespace:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"http://www.itunes.com/dtds/podcast-1.0.dtd"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"http://www.itunes.com/DTDs/Podcast-1.0.dtd"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"http://www.itunes.com/DTDs/PodCast-1.0.dtd"];
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
  v3 = [MEMORY[0x1E696AD60] string];
  [(IMPodcastParser *)self setElementCharBuffer:v3];
}

- (id)elementCharBufferTrimmed
{
  v2 = [(IMPodcastParser *)self elementCharBuffer];
  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v2 im_stringByMemoryEfficientTrimmingCharactersInSet:v3];

  return v4;
}

@end