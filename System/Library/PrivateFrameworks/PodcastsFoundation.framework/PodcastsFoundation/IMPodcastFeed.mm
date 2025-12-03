@interface IMPodcastFeed
- (BOOL)hasEpisodes;
- (BOOL)isEqual:(id)equal;
- (IMPodcastFeed)init;
- (unint64_t)offerTypesAsFlagBits;
@end

@implementation IMPodcastFeed

- (IMPodcastFeed)init
{
  v5.receiver = self;
  v5.super_class = IMPodcastFeed;
  v2 = [(IMPodcastFeed *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    [(IMPodcastFeed *)v2 setItems:v3];
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    feedDescription = [(IMPodcastFeed *)self feedDescription];
    feedDescription2 = [(IMPodcastFeed *)self feedDescription];
    if (feedDescription == feedDescription2 || [feedDescription isEqual:feedDescription2])
    {
      author = [(IMPodcastFeed *)self author];
      author2 = [v5 author];
      if (author == author2 || [author isEqual:author2])
      {
        category = [(IMPodcastFeed *)self category];
        category2 = [v5 category];
        if (category == category2 || [category isEqual:category2])
        {
          v67 = category;
          imageURL = [(IMPodcastFeed *)self imageURL];
          imageURL2 = [v5 imageURL];
          if (imageURL == imageURL2 || [imageURL isEqual:imageURL2])
          {
            v65 = category2;
            v66 = imageURL2;
            globalImageURL = [(IMPodcastFeed *)self globalImageURL];
            globalImageURL2 = [v5 globalImageURL];
            if (globalImageURL == globalImageURL2 || [globalImageURL isEqual:globalImageURL2])
            {
              v63 = author;
              v64 = globalImageURL2;
              items = [(IMPodcastFeed *)self items];
              items2 = [v5 items];
              if (items == items2 || [items isEqual:items2])
              {
                v61 = author2;
                v62 = items2;
                provider = [(IMPodcastFeed *)self provider];
                provider2 = [v5 provider];
                v60 = provider;
                if (provider == provider2 || [provider isEqual:provider2])
                {
                  v59 = provider2;
                  category3 = [(IMPodcastFeed *)self category];
                  category4 = [v5 category];
                  v58 = category3;
                  if (category3 == category4 || [category3 isEqual:category4])
                  {
                    v57 = category4;
                    updatedFeedURL = [(IMPodcastFeed *)self updatedFeedURL];
                    updatedFeedURL2 = [v5 updatedFeedURL];
                    v56 = updatedFeedURL;
                    if (updatedFeedURL == updatedFeedURL2 || [updatedFeedURL isEqual:updatedFeedURL2])
                    {
                      v55 = updatedFeedURL2;
                      title = [(IMPodcastFeed *)self title];
                      title2 = [v5 title];
                      v54 = title;
                      if (title == title2 || [title isEqual:title2])
                      {
                        v53 = title2;
                        isExplicit = [(IMPodcastFeed *)self isExplicit];
                        if (isExplicit == [v5 isExplicit] && (v27 = -[IMPodcastFeed isNotSubscribable](self, "isNotSubscribable"), v27 == objc_msgSend(v5, "isNotSubscribable")))
                        {
                          shareURL = [(IMPodcastFeed *)self shareURL];
                          shareURL2 = [v5 shareURL];
                          v52 = shareURL;
                          if (shareURL == shareURL2 || [shareURL isEqual:shareURL2])
                          {
                            v51 = shareURL2;
                            showType = [(IMPodcastFeed *)self showType];
                            showType2 = [v5 showType];
                            v50 = showType;
                            if (showType == showType2 || [showType isEqual:showType2])
                            {
                              v49 = showType2;
                              webpageURL = [(IMPodcastFeed *)self webpageURL];
                              webpageURL2 = [v5 webpageURL];
                              v48 = webpageURL;
                              if (webpageURL == webpageURL2 || [webpageURL isEqual:webpageURL2])
                              {
                                v47 = webpageURL2;
                                displayType = [(IMPodcastFeed *)self displayType];
                                displayType2 = [v5 displayType];
                                v46 = displayType;
                                if (displayType == displayType2 || [displayType isEqual:displayType2])
                                {
                                  v45 = displayType2;
                                  offers = [(IMPodcastFeed *)self offers];
                                  offers2 = [(IMPodcastFeed *)self offers];
                                  if (offers == offers2 || [offers isEqual:offers2])
                                  {
                                    v44 = offers2;
                                    showSpecificUpsellCopy = [(IMPodcastFeed *)self showSpecificUpsellCopy];
                                    showSpecificUpsellCopy2 = [(IMPodcastFeed *)self showSpecificUpsellCopy];
                                    if (showSpecificUpsellCopy == showSpecificUpsellCopy2)
                                    {
                                      v28 = 1;
                                    }

                                    else
                                    {
                                      v41 = showSpecificUpsellCopy2;
                                      v42 = [showSpecificUpsellCopy isEqual:showSpecificUpsellCopy2];
                                      showSpecificUpsellCopy2 = v41;
                                      v28 = v42;
                                    }

                                    offers2 = v44;
                                  }

                                  else
                                  {
                                    v28 = 0;
                                  }

                                  displayType2 = v45;
                                }

                                else
                                {
                                  v28 = 0;
                                }

                                webpageURL2 = v47;
                              }

                              else
                              {
                                v28 = 0;
                              }

                              showType2 = v49;
                            }

                            else
                            {
                              v28 = 0;
                            }

                            shareURL2 = v51;
                          }

                          else
                          {
                            v28 = 0;
                          }
                        }

                        else
                        {
                          v28 = 0;
                        }

                        title2 = v53;
                      }

                      else
                      {
                        v28 = 0;
                      }

                      updatedFeedURL2 = v55;
                    }

                    else
                    {
                      v28 = 0;
                    }

                    category4 = v57;
                  }

                  else
                  {
                    v28 = 0;
                  }

                  provider2 = v59;
                }

                else
                {
                  v28 = 0;
                }

                items2 = v62;
                author2 = v61;
              }

              else
              {
                v28 = 0;
              }

              author = v63;
              globalImageURL2 = v64;
            }

            else
            {
              v28 = 0;
            }

            category2 = v65;
            imageURL2 = v66;
          }

          else
          {
            v28 = 0;
          }

          category = v67;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (unint64_t)offerTypesAsFlagBits
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  offers = [(IMPodcastFeed *)self offers];
  v3 = [offers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(offers);
        }

        v5 |= [*(*(&v10 + 1) + 8 * i) offerTypeAsFlagBit];
      }

      v4 = [offers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)hasEpisodes
{
  items = [(IMPodcastFeed *)self items];
  v3 = [items count] != 0;

  return v3;
}

@end