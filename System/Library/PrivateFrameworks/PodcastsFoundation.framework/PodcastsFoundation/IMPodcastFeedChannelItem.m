@interface IMPodcastFeedChannelItem
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation IMPodcastFeedChannelItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = IMPodcastFeedChannelItem;
  v4 = [(IMPodcastFeedChannelItem *)&v9 description];
  v5 = [(IMPodcastFeedChannelItem *)self name];
  v6 = [(IMPodcastFeedChannelItem *)self storeId];
  v7 = [v3 stringWithFormat:@"%@ Name: %@ ID: %@", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IMPodcastFeedChannelItem *)self name];
    v7 = [v5 name];
    if ((v6 == v7 || [v6 isEqual:v7]) && (v8 = -[IMPodcastFeedChannelItem showCount](self, "showCount"), v8 == objc_msgSend(v5, "showCount")) && (v9 = -[IMPodcastFeedChannelItem availableShowCount](self, "availableShowCount"), v9 == objc_msgSend(v5, "availableShowCount")))
    {
      v10 = [(IMPodcastFeedChannelItem *)self storeId];
      v11 = [v5 storeId];
      if (v10 == v11 || [v10 isEqual:v11])
      {
        v12 = [(IMPodcastFeedChannelItem *)self displayType];
        v13 = [v5 displayType];
        if (v12 == v13 || [v12 isEqual:v13])
        {
          v42 = v12;
          v14 = [(IMPodcastFeedChannelItem *)self artworkURL];
          v15 = [v5 artworkURL];
          if (v14 == v15 || [v14 isEqual:v15])
          {
            v40 = v13;
            v41 = v15;
            v16 = [(IMPodcastFeedChannelItem *)self logoImageURL];
            v17 = [v5 logoImageURL];
            if (v16 == v17 || [v16 isEqual:v17])
            {
              v38 = v10;
              v39 = v17;
              v18 = [(IMPodcastFeedChannelItem *)self backgroundColor];
              v19 = [v5 backgroundColor];
              v37 = v18;
              if (v18 == v19 || [v18 isEqual:v19])
              {
                v36 = v19;
                [(IMPodcastFeedChannelItem *)self logoImageHeight];
                v21 = v20;
                [v5 logoImageHeight];
                if (v21 == v22 && (-[IMPodcastFeedChannelItem logoImageWidth](self, "logoImageWidth"), v24 = v23, [v5 logoImageWidth], v24 == v25))
                {
                  v26 = [(IMPodcastFeedChannelItem *)self uberBackgroundImageURL];
                  v27 = [v5 uberBackgroundImageURL];
                  if (v26 == v27 || [v26 isEqual:v27])
                  {
                    v28 = [(IMPodcastFeedChannelItem *)self uberBackgroundJoeColor];
                    v29 = [v5 uberBackgroundJoeColor];
                    if (v28 == v29)
                    {
                      v32 = v28;
                      v33 = 1;
                    }

                    else
                    {
                      v30 = v29;
                      v31 = [v28 isEqual:v29];
                      v29 = v30;
                      v32 = v28;
                      v33 = v31;
                    }

                    v27 = v35;
                  }

                  else
                  {
                    v33 = 0;
                  }
                }

                else
                {
                  v33 = 0;
                }

                v19 = v36;
              }

              else
              {
                v33 = 0;
              }

              v10 = v38;
              v17 = v39;
            }

            else
            {
              v33 = 0;
            }

            v13 = v40;
            v15 = v41;
          }

          else
          {
            v33 = 0;
          }

          v12 = v42;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end