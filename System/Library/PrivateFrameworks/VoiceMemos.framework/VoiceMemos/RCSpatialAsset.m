@interface RCSpatialAsset
- (BOOL)_descriptionIsSpatial:(opaqueCMFormatDescription *)a3;
- (BOOL)_isSpatialTrack:(id)a3;
- (RCSpatialAsset)initWithAsset:(id)a3;
- (id)_associatedTrackOfType:(id)a3 forTrack:(id)a4;
- (id)_findOverdubTrack;
- (id)_findSpatialMetadataGroup;
- (id)_findSpatialTrack;
- (id)_metadataGroupFor:(id)a3;
@end

@implementation RCSpatialAsset

- (RCSpatialAsset)initWithAsset:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = RCSpatialAsset;
  v6 = [(RCSpatialAsset *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, a3);
    v8 = [(RCSpatialAsset *)v7 _findSpatialTrack];
    spatialTrack = v7->_spatialTrack;
    v7->_spatialTrack = v8;

    if (!v7->_spatialTrack)
    {
      goto LABEL_7;
    }

    v10 = [(RCSpatialAsset *)v7 _associatedTrackOfType:*MEMORY[0x277CE6190] forTrack:?];
    fallbackTrack = v7->_fallbackTrack;
    v7->_fallbackTrack = v10;

    if (!v7->_fallbackTrack || ([(RCSpatialAsset *)v7 _findSpatialMetadataGroup], v12 = objc_claimAutoreleasedReturnValue(), spatialMetadataGroup = v7->_spatialMetadataGroup, v7->_spatialMetadataGroup = v12, spatialMetadataGroup, !v7->_spatialMetadataGroup))
    {
LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }

    v14 = [(RCSpatialAsset *)v7 _findOverdubTrack];
    overdubTrack = v7->_overdubTrack;
    v7->_overdubTrack = v14;
  }

  v16 = v7;
LABEL_8:

  return v16;
}

- (id)_findSpatialTrack
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(AVAsset *)self->_asset tracks];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([(RCSpatialAsset *)self _isSpatialTrack:v8])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_findOverdubTrack
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(AVAsset *)self->_asset tracks];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = *MEMORY[0x277CE5E48];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 mediaType];
        if ([v10 isEqualToString:v7] && objc_msgSend(v9, "isEnabled"))
        {
          v11 = [v9 trackID];
          v12 = [(AVAssetTrack *)self->_fallbackTrack trackID];

          if (v11 != v12)
          {
            v13 = v9;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = 0;
LABEL_14:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_findSpatialMetadataGroup
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(AVAsset *)self->_asset tracks];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(RCSpatialAsset *)self _metadataGroupFor:*(*(&v12 + 1) + 8 * i)];
        if (v8)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_metadataGroupFor:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mediaType];
  v6 = [v5 isEqualToString:*MEMORY[0x277CE5E70]];

  if (!v6)
  {
    v23 = 0;
    goto LABEL_28;
  }

  v7 = [(RCSpatialAsset *)self _associatedTrackOfType:*MEMORY[0x277CE6198] forTrack:v4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 trackID];
    if (v9 == [(AVAssetTrack *)self->_spatialTrack trackID])
    {
      v35 = *MEMORY[0x277CC08F0];
      v36 = *(MEMORY[0x277CC08F0] + 16);
      v10 = [v4 makeSampleCursorWithPresentationTimeStamp:&v35];
      if (!v10)
      {
        v23 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v11 = [objc_alloc(MEMORY[0x277CE6628]) initWithStartCursor:v10];
      [v11 setDirection:1];
      [v11 setPreferredMinSampleCount:1];
      [v11 setMaxSampleCount:1];
      v12 = [objc_alloc(MEMORY[0x277CE6618]) initWithAsset:self->_asset timebase:0];
      v34 = 0;
      v13 = [v12 createSampleBufferForRequest:v11 error:&v34];
      v14 = v34;
      if (v13)
      {
        v15 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:v13];
        CFRelease(v13);
        if (v15)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v16 = [v15 items];
          v17 = [v16 countByEnumeratingWithState:&v30 objects:v37 count:16];
          if (v17)
          {
            v18 = v17;
            v26 = v15;
            v27 = v14;
            v28 = v12;
            v29 = v10;
            v19 = *v31;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v31 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = [*(*(&v30 + 1) + 8 * i) identifier];
                v22 = [v21 isEqualToString:@"mdta/com.apple.quicktime.cinematic-audio"];

                if (v22)
                {
                  v15 = v26;
                  v23 = v26;
                  v12 = v28;
                  v10 = v29;
                  v14 = v27;
                  goto LABEL_24;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v30 objects:v37 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

            v23 = 0;
            v12 = v28;
            v10 = v29;
            v15 = v26;
            v14 = v27;
          }

          else
          {
            v23 = 0;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
        v15 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(RCSpatialAsset *)v14 _metadataGroupFor:v15];
        }
      }

      v23 = 0;
LABEL_25:

      goto LABEL_26;
    }
  }

  v23 = 0;
LABEL_27:

LABEL_28:
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)_isSpatialTrack:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mediaType];
  v6 = [v5 isEqualToString:*MEMORY[0x277CE5E48]];

  if (v6 && ([v4 isEnabled] & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v4 formatDescriptions];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([(RCSpatialAsset *)self _descriptionIsSpatial:*(*(&v15 + 1) + 8 * i)])
          {
            v7 = 1;
            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_descriptionIsSpatial:(opaqueCMFormatDescription *)a3
{
  if (CMFormatDescriptionGetMediaSubType(a3) != 1634754915)
  {
    goto LABEL_10;
  }

  ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(a3, 0);
  if (ChannelLayout)
  {
    if (ChannelLayout->mChannelLayoutTag)
    {
      LODWORD(ChannelLayout) = (ChannelLayout->mChannelLayoutTag >> 17) & 1;
      return ChannelLayout;
    }

    mNumberChannelDescriptions = ChannelLayout->mNumberChannelDescriptions;
    if (!mNumberChannelDescriptions)
    {
LABEL_9:
      LOBYTE(ChannelLayout) = mNumberChannelDescriptions == 4;
      return ChannelLayout;
    }

    mChannelDescriptions = ChannelLayout->mChannelDescriptions;
    v7 = ChannelLayout->mNumberChannelDescriptions;
    while ((mChannelDescriptions->mChannelLabel & 0x20000) != 0)
    {
      ++mChannelDescriptions;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    LOBYTE(ChannelLayout) = 0;
  }

  return ChannelLayout;
}

- (id)_associatedTrackOfType:(id)a3 forTrack:(id)a4
{
  v4 = [a4 associatedTracksOfType:a3];
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_metadataGroupFor:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[RCSpatialAsset _metadataGroupFor:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- Failed to create sample buffer, error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end