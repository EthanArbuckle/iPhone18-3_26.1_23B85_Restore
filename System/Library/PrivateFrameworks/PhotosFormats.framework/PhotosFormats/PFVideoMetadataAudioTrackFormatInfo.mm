@interface PFVideoMetadataAudioTrackFormatInfo
+ (id)infoForFirstAudioTrackOfAsset:(id)asset matchingCodecPredicate:(id)predicate;
- (BOOL)getHOAChannelCount:(int64_t *)count BEDChannelCount:(int64_t *)channelCount;
- (int64_t)channelCount;
@end

@implementation PFVideoMetadataAudioTrackFormatInfo

- (BOOL)getHOAChannelCount:(int64_t *)count BEDChannelCount:(int64_t *)channelCount
{
  *count = 0;
  *channelCount = 0;
  if ([(PFVideoMetadataAudioTrackFormatInfo *)self channelLayoutUsesChannelDescriptions])
  {
    channelLayout = self->_channelLayout;
    mNumberChannelDescriptions = channelLayout->mNumberChannelDescriptions;
    if (mNumberChannelDescriptions)
    {
      v9 = 0;
      v10 = 0;
      mChannelDescriptions = channelLayout->mChannelDescriptions;
      do
      {
        mChannelLabel = mChannelDescriptions->mChannelLabel;
        ++mChannelDescriptions;
        v13 = (mChannelLabel & 0xFFFF0000) != 0x10000;
        v14 = mChannelLabel & 0xFFFE0000;
        if ((mChannelLabel & 0xFFFF0000) == 0x10000)
        {
          ++v10;
        }

        v15 = v14 == 0x20000 && v13;
        v9 += v15;
        --mNumberChannelDescriptions;
      }

      while (mNumberChannelDescriptions);
      if (v9)
      {
        *count = v9;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *channelCount = [(PFVideoMetadataAudioTrackFormatInfo *)self channelCount]- (v9 + v10);
    goto LABEL_16;
  }

  channelLayoutUsesHOA = [(PFVideoMetadataAudioTrackFormatInfo *)self channelLayoutUsesHOA];
  if (channelLayoutUsesHOA)
  {
    *count = self->_channelLayout->mChannelLayoutTag;
LABEL_16:
    LOBYTE(channelLayoutUsesHOA) = 1;
  }

  return channelLayoutUsesHOA;
}

- (int64_t)channelCount
{
  formatListItem = self->_formatListItem;
  if (formatListItem)
  {
    return formatListItem->mASBD.mChannelsPerFrame;
  }

  else
  {
    return 0;
  }
}

+ (id)infoForFirstAudioTrackOfAsset:(id)asset matchingCodecPredicate:(id)predicate
{
  v38 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  predicateCopy = predicate;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E69875A0] forAsset:assetCopy];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v24 = assetCopy;
    v25 = v7;
    v23 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        formatDescriptions = [v12 formatDescriptions];
        v14 = [formatDescriptions countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v27;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(formatDescriptions);
              }

              v18 = *(*(&v26 + 1) + 8 * j);
              MediaSubType = CMFormatDescriptionGetMediaSubType(v18);
              if (predicateCopy[2](predicateCopy, MediaSubType))
              {
                v20 = objc_opt_new();
                objc_storeStrong((v20 + 8), v12);
                *(v20 + 16) = v18;
                RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(v18);
                *(v20 + 24) = RichestDecodableFormat;
                assetCopy = v24;
                if (!RichestDecodableFormat && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v35 = v24;
                  _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to get richest decodable audio format for asset %@", buf, 0xCu);
                }

                *(v20 + 32) = CMAudioFormatDescriptionGetChannelLayout(*(v20 + 16), 0);

                v7 = v25;
                goto LABEL_22;
              }
            }

            v15 = [formatDescriptions countByEnumeratingWithState:&v26 objects:v36 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v7 = v25;
        v10 = v23;
      }

      v9 = [v25 countByEnumeratingWithState:&v30 objects:v37 count:16];
      v20 = 0;
      assetCopy = v24;
    }

    while (v9);
  }

  else
  {
    v20 = 0;
  }

LABEL_22:

  return v20;
}

@end