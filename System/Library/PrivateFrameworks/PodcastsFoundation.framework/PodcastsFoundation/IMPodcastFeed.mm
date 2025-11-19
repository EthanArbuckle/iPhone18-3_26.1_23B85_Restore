@interface IMPodcastFeed
- (BOOL)hasEpisodes;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IMPodcastFeed *)self feedDescription];
    v7 = [(IMPodcastFeed *)self feedDescription];
    if (v6 == v7 || [v6 isEqual:v7])
    {
      v8 = [(IMPodcastFeed *)self author];
      v9 = [v5 author];
      if (v8 == v9 || [v8 isEqual:v9])
      {
        v10 = [(IMPodcastFeed *)self category];
        v11 = [v5 category];
        if (v10 == v11 || [v10 isEqual:v11])
        {
          v67 = v10;
          v12 = [(IMPodcastFeed *)self imageURL];
          v13 = [v5 imageURL];
          if (v12 == v13 || [v12 isEqual:v13])
          {
            v65 = v11;
            v66 = v13;
            v14 = [(IMPodcastFeed *)self globalImageURL];
            v15 = [v5 globalImageURL];
            if (v14 == v15 || [v14 isEqual:v15])
            {
              v63 = v8;
              v64 = v15;
              v16 = [(IMPodcastFeed *)self items];
              v17 = [v5 items];
              if (v16 == v17 || [v16 isEqual:v17])
              {
                v61 = v9;
                v62 = v17;
                v18 = [(IMPodcastFeed *)self provider];
                v19 = [v5 provider];
                v60 = v18;
                if (v18 == v19 || [v18 isEqual:v19])
                {
                  v59 = v19;
                  v20 = [(IMPodcastFeed *)self category];
                  v21 = [v5 category];
                  v58 = v20;
                  if (v20 == v21 || [v20 isEqual:v21])
                  {
                    v57 = v21;
                    v22 = [(IMPodcastFeed *)self updatedFeedURL];
                    v23 = [v5 updatedFeedURL];
                    v56 = v22;
                    if (v22 == v23 || [v22 isEqual:v23])
                    {
                      v55 = v23;
                      v24 = [(IMPodcastFeed *)self title];
                      v25 = [v5 title];
                      v54 = v24;
                      if (v24 == v25 || [v24 isEqual:v25])
                      {
                        v53 = v25;
                        v26 = [(IMPodcastFeed *)self isExplicit];
                        if (v26 == [v5 isExplicit] && (v27 = -[IMPodcastFeed isNotSubscribable](self, "isNotSubscribable"), v27 == objc_msgSend(v5, "isNotSubscribable")))
                        {
                          v29 = [(IMPodcastFeed *)self shareURL];
                          v30 = [v5 shareURL];
                          v52 = v29;
                          if (v29 == v30 || [v29 isEqual:v30])
                          {
                            v51 = v30;
                            v31 = [(IMPodcastFeed *)self showType];
                            v32 = [v5 showType];
                            v50 = v31;
                            if (v31 == v32 || [v31 isEqual:v32])
                            {
                              v49 = v32;
                              v33 = [(IMPodcastFeed *)self webpageURL];
                              v34 = [v5 webpageURL];
                              v48 = v33;
                              if (v33 == v34 || [v33 isEqual:v34])
                              {
                                v47 = v34;
                                v35 = [(IMPodcastFeed *)self displayType];
                                v36 = [v5 displayType];
                                v46 = v35;
                                if (v35 == v36 || [v35 isEqual:v36])
                                {
                                  v45 = v36;
                                  v37 = [(IMPodcastFeed *)self offers];
                                  v38 = [(IMPodcastFeed *)self offers];
                                  if (v37 == v38 || [v37 isEqual:v38])
                                  {
                                    v44 = v38;
                                    v39 = [(IMPodcastFeed *)self showSpecificUpsellCopy];
                                    v40 = [(IMPodcastFeed *)self showSpecificUpsellCopy];
                                    if (v39 == v40)
                                    {
                                      v28 = 1;
                                    }

                                    else
                                    {
                                      v41 = v40;
                                      v42 = [v39 isEqual:v40];
                                      v40 = v41;
                                      v28 = v42;
                                    }

                                    v38 = v44;
                                  }

                                  else
                                  {
                                    v28 = 0;
                                  }

                                  v36 = v45;
                                }

                                else
                                {
                                  v28 = 0;
                                }

                                v34 = v47;
                              }

                              else
                              {
                                v28 = 0;
                              }

                              v32 = v49;
                            }

                            else
                            {
                              v28 = 0;
                            }

                            v30 = v51;
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

                        v25 = v53;
                      }

                      else
                      {
                        v28 = 0;
                      }

                      v23 = v55;
                    }

                    else
                    {
                      v28 = 0;
                    }

                    v21 = v57;
                  }

                  else
                  {
                    v28 = 0;
                  }

                  v19 = v59;
                }

                else
                {
                  v28 = 0;
                }

                v17 = v62;
                v9 = v61;
              }

              else
              {
                v28 = 0;
              }

              v8 = v63;
              v15 = v64;
            }

            else
            {
              v28 = 0;
            }

            v11 = v65;
            v13 = v66;
          }

          else
          {
            v28 = 0;
          }

          v10 = v67;
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
  v2 = [(IMPodcastFeed *)self offers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v10 + 1) + 8 * i) offerTypeAsFlagBit];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(IMPodcastFeed *)self items];
  v3 = [v2 count] != 0;

  return v3;
}

@end