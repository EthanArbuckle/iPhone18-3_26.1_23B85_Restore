@interface IMPodcastFeedChannelItem
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation IMPodcastFeedChannelItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = IMPodcastFeedChannelItem;
  v4 = [(IMPodcastFeedChannelItem *)&v9 description];
  name = [(IMPodcastFeedChannelItem *)self name];
  storeId = [(IMPodcastFeedChannelItem *)self storeId];
  v7 = [v3 stringWithFormat:@"%@ Name: %@ ID: %@", v4, name, storeId];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(IMPodcastFeedChannelItem *)self name];
    name2 = [v5 name];
    if ((name == name2 || [name isEqual:name2]) && (v8 = -[IMPodcastFeedChannelItem showCount](self, "showCount"), v8 == objc_msgSend(v5, "showCount")) && (v9 = -[IMPodcastFeedChannelItem availableShowCount](self, "availableShowCount"), v9 == objc_msgSend(v5, "availableShowCount")))
    {
      storeId = [(IMPodcastFeedChannelItem *)self storeId];
      storeId2 = [v5 storeId];
      if (storeId == storeId2 || [storeId isEqual:storeId2])
      {
        displayType = [(IMPodcastFeedChannelItem *)self displayType];
        displayType2 = [v5 displayType];
        if (displayType == displayType2 || [displayType isEqual:displayType2])
        {
          v42 = displayType;
          artworkURL = [(IMPodcastFeedChannelItem *)self artworkURL];
          artworkURL2 = [v5 artworkURL];
          if (artworkURL == artworkURL2 || [artworkURL isEqual:artworkURL2])
          {
            v40 = displayType2;
            v41 = artworkURL2;
            logoImageURL = [(IMPodcastFeedChannelItem *)self logoImageURL];
            logoImageURL2 = [v5 logoImageURL];
            if (logoImageURL == logoImageURL2 || [logoImageURL isEqual:logoImageURL2])
            {
              v38 = storeId;
              v39 = logoImageURL2;
              backgroundColor = [(IMPodcastFeedChannelItem *)self backgroundColor];
              backgroundColor2 = [v5 backgroundColor];
              v37 = backgroundColor;
              if (backgroundColor == backgroundColor2 || [backgroundColor isEqual:backgroundColor2])
              {
                v36 = backgroundColor2;
                [(IMPodcastFeedChannelItem *)self logoImageHeight];
                v21 = v20;
                [v5 logoImageHeight];
                if (v21 == v22 && (-[IMPodcastFeedChannelItem logoImageWidth](self, "logoImageWidth"), v24 = v23, [v5 logoImageWidth], v24 == v25))
                {
                  uberBackgroundImageURL = [(IMPodcastFeedChannelItem *)self uberBackgroundImageURL];
                  uberBackgroundImageURL2 = [v5 uberBackgroundImageURL];
                  if (uberBackgroundImageURL == uberBackgroundImageURL2 || [uberBackgroundImageURL isEqual:uberBackgroundImageURL2])
                  {
                    uberBackgroundJoeColor = [(IMPodcastFeedChannelItem *)self uberBackgroundJoeColor];
                    uberBackgroundJoeColor2 = [v5 uberBackgroundJoeColor];
                    if (uberBackgroundJoeColor == uberBackgroundJoeColor2)
                    {
                      v32 = uberBackgroundJoeColor;
                      v33 = 1;
                    }

                    else
                    {
                      v30 = uberBackgroundJoeColor2;
                      v31 = [uberBackgroundJoeColor isEqual:uberBackgroundJoeColor2];
                      uberBackgroundJoeColor2 = v30;
                      v32 = uberBackgroundJoeColor;
                      v33 = v31;
                    }

                    uberBackgroundImageURL2 = v35;
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

                backgroundColor2 = v36;
              }

              else
              {
                v33 = 0;
              }

              storeId = v38;
              logoImageURL2 = v39;
            }

            else
            {
              v33 = 0;
            }

            displayType2 = v40;
            artworkURL2 = v41;
          }

          else
          {
            v33 = 0;
          }

          displayType = v42;
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