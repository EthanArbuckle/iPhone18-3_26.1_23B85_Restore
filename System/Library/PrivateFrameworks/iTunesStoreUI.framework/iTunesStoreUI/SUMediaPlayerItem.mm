@interface SUMediaPlayerItem
- (SUMediaPlayerItem)initWithItem:(id)a3;
- (double)bookmarkedStartTime;
- (id)_newPingURLsWithArray:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setBookmarkedStartTime:(double)a3;
@end

@implementation SUMediaPlayerItem

- (SUMediaPlayerItem)initWithItem:(id)a3
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must have item"];
  }

  v16.receiver = self;
  v16.super_class = SUMediaPlayerItem;
  v5 = [(SUMediaPlayerItem *)&v16 init];
  if (v5)
  {
    v5->_bookmarkIdentifier = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", objc_msgSend(a3, "itemIdentifier")];
    v5->_itemIdentifier = [a3 itemIdentifier];
    v5->_itemType = [a3 itemType];
    v5->_subtitle = [a3 artistName];
    v5->_title = [a3 unmodifiedTitle];
    if (SUItemTypeIsVideoType(v5->_itemType))
    {
      v6 = 3;
    }

    else
    {
      v7 = [a3 itemMediaKind];
      v8 = [v7 isEqualToString:*MEMORY[0x1E69D4D00]];
      v6 = 3;
      if (!v8)
      {
        v6 = 1;
      }
    }

    v5->_initialOrientation = v6;
    v9 = [a3 valueForProperty:@"pings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = -[SUMediaPlayerItem _newPingURLsWithArray:](v5, "_newPingURLsWithArray:", [v9 objectForKey:@"download"]);
      v5->_downloadPingURLs = [v10 copy];

      v11 = -[SUMediaPlayerItem _newPingURLsWithArray:](v5, "_newPingURLsWithArray:", [v9 objectForKey:@"play"]);
      v5->_playbackPingURLs = [v11 copy];
    }

    v12 = [objc_msgSend(a3 "defaultStoreOffer")];
    v13 = [a3 itemType];
    v14 = [v12 URL];
    if (v13 != 1007)
    {
      v5->_playableDuration = [v12 durationInMilliseconds] / 1000.0;
    }

    v5->_url = v14;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUMediaPlayerItem;
  [(SUMediaPlayerItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = [(NSURL *)self->_backgroundImageURL copyWithZone:a3];
  *(v5 + 16) = [(NSString *)self->_bookmarkIdentifier copyWithZone:a3];
  *(v5 + 24) = [(NSArray *)self->_downloadPingURLs copyWithZone:a3];
  *(v5 + 32) = *&self->_initialOrientation;
  *(v5 + 48) = self->_itemType;
  *(v5 + 64) = self->_playableDuration;
  *(v5 + 56) = [(NSArray *)self->_playbackPingURLs copyWithZone:a3];
  *(v5 + 72) = [(NSString *)self->_subtitle copyWithZone:a3];
  *(v5 + 80) = [(NSString *)self->_title copyWithZone:a3];
  *(v5 + 88) = [(NSURL *)self->_url copyWithZone:a3];
  return v5;
}

- (double)bookmarkedStartTime
{
  if (!self->_bookmarkIdentifier)
  {
    return 0.0;
  }

  v3 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0.0;
  }

  v4 = [v3 objectForKey:self->_bookmarkIdentifier];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  [v4 doubleValue];
  return result;
}

- (void)setBookmarkedStartTime:(double)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_bookmarkIdentifier)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [objc_msgSend(v5 objectForKey:{@"MSStreamStartTimes", "mutableCopy"}];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = [MEMORY[0x1E69D4938] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v9 &= 2u;
    }

    if (a3 >= 2.22044605e-16)
    {
      if (v9)
      {
        v15 = objc_opt_class();
        bookmarkIdentifier = self->_bookmarkIdentifier;
        v22 = 138412802;
        v23 = v15;
        v24 = 2048;
        v25 = a3;
        v26 = 2112;
        v27 = bookmarkIdentifier;
        LODWORD(v21) = 32;
        v20 = &v22;
        v17 = _os_log_send_and_compose_impl();
        if (v17)
        {
          v18 = v17;
          v19 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v22, v21}];
          free(v18);
          v20 = v19;
          SSFileLog();
        }
      }

      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", a3, v20), self->_bookmarkIdentifier}];
    }

    else
    {
      if (v9)
      {
        v10 = objc_opt_class();
        v11 = self->_bookmarkIdentifier;
        v22 = 138412546;
        v23 = v10;
        v24 = 2112;
        v25 = *&v11;
        LODWORD(v21) = 22;
        v20 = &v22;
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          v13 = v12;
          v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v22, v21}];
          free(v13);
          v20 = v14;
          SSFileLog();
        }
      }

      [v6 removeObjectForKey:{self->_bookmarkIdentifier, v20}];
    }

    [v5 setObject:v6 forKey:@"MSStreamStartTimes"];
    [v5 synchronize];
  }
}

- (id)_newPingURLsWithArray:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];
            if (v10)
            {
              v11 = v10;
              [v4 addObject:v10];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

@end