@interface TFImageFetcher
- (TFImageFetcher)init;
- (id)_urlStringForIconArtwork:(id)artwork ofSize:(CGSize)size fileFormat:(id)format;
- (void)fetchIconArtwork:(id)artwork ofSize:(CGSize)size intoView:(id)view animated:(BOOL)animated;
@end

@implementation TFImageFetcher

- (TFImageFetcher)init
{
  v6.receiver = self;
  v6.super_class = TFImageFetcher;
  v2 = [(TFImageFetcher *)&v6 init];
  if (v2)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v2->_displayedScreenScale = v4;
  }

  return v2;
}

- (void)fetchIconArtwork:(id)artwork ofSize:(CGSize)size intoView:(id)view animated:(BOOL)animated
{
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  height = [(TFImageFetcher *)self _urlStringForIconArtwork:artwork ofSize:@"jpeg" fileFormat:width, height];
  v13 = [MEMORY[0x277CBEBC0] URLWithString:height];
  if (v13)
  {
    mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __60__TFImageFetcher_fetchIconArtwork_ofSize_intoView_animated___block_invoke;
    v22 = &unk_279D98428;
    selfCopy = self;
    v24 = v13;
    v25 = viewCopy;
    animatedCopy = animated;
    v15 = [mEMORY[0x277CCAD30] dataTaskWithURL:v24 completionHandler:&v19];

    [v15 resume];
  }

  else
  {
    v16 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger = [v16 generatedLogger];
    if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = objc_opt_class();
      v29 = 2112;
      v30 = height;
      v18 = v28;
      _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_ERROR, "%@: Invalid URL %@", buf, 0x16u);
    }
  }
}

void __60__TFImageFetcher_fetchIconArtwork_ofSize_intoView_animated___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = +[TFLogConfiguration defaultConfiguration];
    v6 = [v5 generatedLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 absoluteString];
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_ERROR, "%@: Failed to fetch url %@", buf, 0x16u);
    }
  }

  else
  {
    v11 = [MEMORY[0x277D755B8] imageWithData:a2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__TFImageFetcher_fetchIconArtwork_ofSize_intoView_animated___block_invoke_5;
    block[3] = &unk_279D98400;
    v13 = *(a1 + 48);
    v14 = v11;
    v15 = *(a1 + 56);
    v5 = v11;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v6 = v13;
  }
}

- (id)_urlStringForIconArtwork:(id)artwork ofSize:(CGSize)size fileFormat:(id)format
{
  height = size.height;
  width = size.width;
  v36[3] = *MEMORY[0x277D85DE8];
  artworkCopy = artwork;
  formatCopy = format;
  v11 = MEMORY[0x277CCACA8];
  [(TFImageFetcher *)self displayedScreenScale];
  v13 = [v11 stringWithFormat:@"%d", (width * v12)];
  v14 = MEMORY[0x277CCACA8];
  [(TFImageFetcher *)self displayedScreenScale];
  v16 = [v14 stringWithFormat:@"%d", (height * v15)];
  v35[0] = @"{w}";
  v35[1] = @"{h}";
  v36[0] = v13;
  v36[1] = v16;
  v35[2] = @"{f}";
  v28 = formatCopy;
  v36[2] = formatCopy;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v29 = artworkCopy;
  urlTemplate = [artworkCopy urlTemplate];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [v17 allKeys];
  v20 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      v23 = 0;
      v24 = urlTemplate;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(allKeys);
        }

        v25 = *(*(&v30 + 1) + 8 * v23);
        v26 = [v17 objectForKeyedSubscript:v25];
        urlTemplate = [v24 stringByReplacingOccurrencesOfString:v25 withString:v26];

        ++v23;
        v24 = urlTemplate;
      }

      while (v21 != v23);
      v21 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v21);
  }

  return urlTemplate;
}

@end