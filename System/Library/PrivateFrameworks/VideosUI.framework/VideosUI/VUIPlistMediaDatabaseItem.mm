@interface VUIPlistMediaDatabaseItem
- (BOOL)isEqual:(id)a3;
- (VUIPlistMediaDatabaseItem)initWithDictionary:(id)a3;
- (VUIPlistMediaDatabaseItem)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (VUIPlistMediaDatabaseSeason)season;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation VUIPlistMediaDatabaseItem

- (VUIPlistMediaDatabaseItem)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = VUIPlistMediaDatabaseItem;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v9 initWithIdentifier:a3 type:a4];
  v5 = v4;
  if (v4)
  {
    colorCapability = v4->_colorCapability;
    v4->_colorCapability = &unk_1F5E5D9E0;

    HLSColorCapability = v5->_HLSColorCapability;
    v5->_HLSColorCapability = &unk_1F5E5D9E0;

    objc_storeStrong(&v5->_downloadState, VUIPlistDatabaseItemDownloadStateNotDownloaded);
  }

  return v5;
}

- (VUIPlistMediaDatabaseItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = VUIPlistMediaDatabaseItem;
  v5 = [(VUIPlistMediaDatabaseEntity *)&v53 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 vui_numberForKey:@"Local"];
    v7 = [v6 copy];
    local = v5->_local;
    v5->_local = v7;

    v9 = [v4 vui_numberForKey:@"Duration"];
    v10 = [v9 copy];
    duration = v5->_duration;
    v5->_duration = v10;

    v12 = [v4 vui_dateForKey:@"ReleaseDate"];
    v13 = [v12 copy];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v13;

    v15 = [v4 vui_numberForKey:@"EpisodeNumber"];
    v16 = [v15 copy];
    episodeNumber = v5->_episodeNumber;
    v5->_episodeNumber = v16;

    v18 = [v4 vui_stringForKey:@"Studio"];
    v19 = [v18 copy];
    studio = v5->_studio;
    v5->_studio = v19;

    v21 = [v4 vui_numberForKey:@"ColorCapability"];
    v22 = [v21 copy];
    colorCapability = v5->_colorCapability;
    v5->_colorCapability = v22;

    v24 = [v4 vui_numberForKey:@"ColorCapability"];
    v25 = [v24 copy];
    HLSColorCapability = v5->_HLSColorCapability;
    v5->_HLSColorCapability = v25;

    v27 = [v4 vui_dictionaryForKey:@"OfflineFPSKeys"];
    v28 = [v27 copy];
    offlineFPSKeys = v5->_offlineFPSKeys;
    v5->_offlineFPSKeys = v28;

    v30 = [v4 vui_stringForKey:@"DownloadState"];
    v31 = [v30 copy];
    downloadState = v5->_downloadState;
    v5->_downloadState = v31;

    if (!v5->_downloadState)
    {
      objc_storeStrong(&v5->_downloadState, VUIPlistDatabaseItemDownloadStateNotDownloaded);
    }

    if (!v5->_colorCapability)
    {
      v5->_colorCapability = &unk_1F5E5D9E0;
    }

    if (!v5->_HLSColorCapability)
    {
      v5->_HLSColorCapability = &unk_1F5E5D9E0;
    }

    v33 = [v4 vui_stringForKey:@"ContentRating"];
    if (v33)
    {
      v34 = [objc_alloc(MEMORY[0x1E69DF6B8]) initWithStringRepresentation:v33];
      contentRating = v5->_contentRating;
      v5->_contentRating = v34;
    }

    v36 = [v4 vui_stringForKey:@"PreviewFrameURL"];
    if (v36)
    {
      v37 = [MEMORY[0x1E695DFF8] URLWithString:v36];
      previewFrameURL = v5->_previewFrameURL;
      v5->_previewFrameURL = v37;
    }

    v39 = [v4 vui_stringForKey:@"Credits"];
    if (v39)
    {
      v40 = [[VUIMediaItemCredits alloc] initWithStringRepresentation:v39];
      credits = v5->_credits;
      v5->_credits = v40;
    }

    v42 = [v4 vui_stringForKey:@"RelativeFilePathString"];
    if ([v42 length])
    {
      v43 = MEMORY[0x1E695DFF8];
      v44 = NSHomeDirectory();
      v45 = [v43 fileURLWithPath:v44];
      v46 = [v43 fileURLWithPath:v42 relativeToURL:v45];
      filePathURL = v5->_filePathURL;
      v5->_filePathURL = v46;
    }

    v48 = [v4 vui_stringForKey:@"PlaybackURL"];
    v49 = v48;
    if (v48 && [v48 length])
    {
      v50 = [MEMORY[0x1E695DFF8] URLWithString:v49];
      playbackURL = v5->_playbackURL;
      v5->_playbackURL = v50;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v26.receiver = self;
  v26.super_class = VUIPlistMediaDatabaseItem;
  v3 = [(VUIPlistMediaDatabaseEntity *)&v26 dictionaryRepresentation];
  v4 = [v3 mutableCopy];
  v5 = [(VUIPlistMediaDatabaseItem *)self isLocal];
  [v4 vui_setObjectIfNotNil:v5 forKey:@"Local"];

  v6 = [(VUIPlistMediaDatabaseItem *)self duration];
  [v4 vui_setObjectIfNotNil:v6 forKey:@"Duration"];

  v7 = [(VUIPlistMediaDatabaseItem *)self releaseDate];
  [v4 vui_setObjectIfNotNil:v7 forKey:@"ReleaseDate"];

  v8 = [(VUIPlistMediaDatabaseItem *)self episodeNumber];
  [v4 vui_setObjectIfNotNil:v8 forKey:@"EpisodeNumber"];

  v9 = [(VUIPlistMediaDatabaseItem *)self studio];
  [v4 vui_setObjectIfNotNil:v9 forKey:@"Studio"];

  v10 = [(VUIPlistMediaDatabaseItem *)self credits];
  v11 = [v10 stringRepresentation];
  [v4 vui_setObjectIfNotNil:v11 forKey:@"Credits"];

  v12 = [(VUIPlistMediaDatabaseItem *)self previewFrameURL];
  v13 = [v12 absoluteString];
  [v4 vui_setObjectIfNotNil:v13 forKey:@"PreviewFrameURL"];

  v14 = [(VUIPlistMediaDatabaseItem *)self contentRating];
  v15 = [v14 stringRepresentation];
  [v4 vui_setObjectIfNotNil:v15 forKey:@"ContentRating"];

  v16 = [(VUIPlistMediaDatabaseItem *)self colorCapability];
  [v4 vui_setObjectIfNotNil:v16 forKey:@"ColorCapability"];

  v17 = [(VUIPlistMediaDatabaseItem *)self HLSColorCapability];
  [v4 vui_setObjectIfNotNil:v17 forKey:@"HLSColorCapability"];

  v18 = [(VUIPlistMediaDatabaseItem *)self playbackURL];
  v19 = [v18 absoluteString];
  [v4 vui_setObjectIfNotNil:v19 forKey:@"PlaybackURL"];

  v20 = [(VUIPlistMediaDatabaseItem *)self filePathURL];
  v21 = [v20 relativeString];
  v22 = [v21 stringByRemovingPercentEncoding];
  [v4 vui_setObjectIfNotNil:v22 forKey:@"RelativeFilePathString"];

  v23 = [(VUIPlistMediaDatabaseItem *)self offlineFPSKeys];
  [v4 vui_setObjectIfNotNil:v23 forKey:@"OfflineFPSKeys"];

  v24 = [(VUIPlistMediaDatabaseItem *)self downloadState];
  [v4 vui_setObjectIfNotNil:v24 forKey:@"DownloadState"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v34.receiver = self;
  v34.super_class = VUIPlistMediaDatabaseItem;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v34 copyWithZone:a3];
  v5 = [(NSNumber *)self->_local copy];
  v6 = v4[8];
  v4[8] = v5;

  v7 = [(NSNumber *)self->_duration copy];
  v8 = v4[10];
  v4[10] = v7;

  v9 = [(NSDate *)self->_releaseDate copy];
  v10 = v4[11];
  v4[11] = v9;

  v11 = [(NSNumber *)self->_episodeNumber copy];
  v12 = v4[16];
  v4[16] = v11;

  v13 = [(NSString *)self->_studio copy];
  v14 = v4[17];
  v4[17] = v13;

  v15 = [(VUIMediaItemCredits *)self->_credits copy];
  v16 = v4[18];
  v4[18] = v15;

  v17 = [(NSURL *)self->_previewFrameURL copy];
  v18 = v4[12];
  v4[12] = v17;

  v19 = [(VUIContentRating *)self->_contentRating copy];
  v20 = v4[13];
  v4[13] = v19;

  v21 = [(NSNumber *)self->_colorCapability copy];
  v22 = v4[14];
  v4[14] = v21;

  v23 = [(NSNumber *)self->_HLSColorCapability copy];
  v24 = v4[15];
  v4[15] = v23;

  v25 = [(NSURL *)self->_playbackURL copy];
  v26 = v4[19];
  v4[19] = v25;

  v27 = [(NSURL *)self->_filePathURL copy];
  v28 = v4[20];
  v4[20] = v27;

  v29 = [(NSDictionary *)self->_offlineFPSKeys copy];
  v30 = v4[21];
  v4[21] = v29;

  v31 = [(NSString *)self->_downloadState copy];
  v32 = v4[22];
  v4[22] = v31;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v66.receiver = self;
        v66.super_class = VUIPlistMediaDatabaseItem;
        if (![(VUIPlistMediaDatabaseEntity *)&v66 isEqual:v6])
        {
LABEL_83:
          v12 = 0;
LABEL_91:

          goto LABEL_92;
        }

        v7 = [(VUIPlistMediaDatabaseItem *)self isPlayable];
        v8 = [(VUIPlistMediaDatabaseItem *)v6 isPlayable];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v10)
          {
            goto LABEL_90;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v14 = [(VUIPlistMediaDatabaseItem *)self duration];
        v15 = [(VUIPlistMediaDatabaseItem *)v6 duration];
        v9 = v14;
        v16 = v15;
        v11 = v16;
        if (v9 == v16)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v16)
          {
            goto LABEL_90;
          }

          v17 = [v9 isEqual:v16];

          if ((v17 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v18 = [(VUIPlistMediaDatabaseItem *)self releaseDate];
        v19 = [(VUIPlistMediaDatabaseItem *)v6 releaseDate];
        v9 = v18;
        v20 = v19;
        v11 = v20;
        if (v9 == v20)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v20)
          {
            goto LABEL_90;
          }

          v21 = [v9 isEqual:v20];

          if ((v21 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v22 = [(VUIPlistMediaDatabaseItem *)self episodeNumber];
        v23 = [(VUIPlistMediaDatabaseItem *)v6 episodeNumber];
        v9 = v22;
        v24 = v23;
        v11 = v24;
        if (v9 == v24)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v24)
          {
            goto LABEL_90;
          }

          v25 = [v9 isEqual:v24];

          if ((v25 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v26 = [(VUIPlistMediaDatabaseItem *)self studio];
        v27 = [(VUIPlistMediaDatabaseItem *)v6 studio];
        v9 = v26;
        v28 = v27;
        v11 = v28;
        if (v9 == v28)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v28)
          {
            goto LABEL_90;
          }

          v29 = [v9 isEqual:v28];

          if ((v29 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v30 = [(VUIPlistMediaDatabaseItem *)self credits];
        v31 = [(VUIPlistMediaDatabaseItem *)v6 credits];
        v9 = v30;
        v32 = v31;
        v11 = v32;
        if (v9 == v32)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v32)
          {
            goto LABEL_90;
          }

          v33 = [v9 isEqual:v32];

          if ((v33 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v34 = [(VUIPlistMediaDatabaseItem *)self previewFrameURL];
        v35 = [(VUIPlistMediaDatabaseItem *)v6 previewFrameURL];
        v9 = v34;
        v36 = v35;
        v11 = v36;
        if (v9 == v36)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v36)
          {
            goto LABEL_90;
          }

          v37 = [v9 isEqual:v36];

          if ((v37 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v38 = [(VUIPlistMediaDatabaseItem *)self contentRating];
        v39 = [(VUIPlistMediaDatabaseItem *)v6 contentRating];
        v9 = v38;
        v40 = v39;
        v11 = v40;
        if (v9 == v40)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v40)
          {
            goto LABEL_90;
          }

          v41 = [v9 isEqual:v40];

          if ((v41 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v42 = [(VUIPlistMediaDatabaseItem *)self colorCapability];
        v43 = [(VUIPlistMediaDatabaseItem *)v6 colorCapability];
        v9 = v42;
        v44 = v43;
        v11 = v44;
        if (v9 == v44)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v44)
          {
            goto LABEL_90;
          }

          v45 = [v9 isEqual:v44];

          if ((v45 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v46 = [(VUIPlistMediaDatabaseItem *)self HLSColorCapability];
        v47 = [(VUIPlistMediaDatabaseItem *)v6 HLSColorCapability];
        v9 = v46;
        v48 = v47;
        v11 = v48;
        if (v9 == v48)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v48)
          {
            goto LABEL_90;
          }

          v49 = [v9 isEqual:v48];

          if ((v49 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v50 = [(VUIPlistMediaDatabaseItem *)self playbackURL];
        v51 = [(VUIPlistMediaDatabaseItem *)v6 playbackURL];
        v9 = v50;
        v52 = v51;
        v11 = v52;
        if (v9 == v52)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v52)
          {
            goto LABEL_90;
          }

          v53 = [v9 isEqual:v52];

          if ((v53 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v54 = [(VUIPlistMediaDatabaseItem *)self filePathURL];
        v55 = [(VUIPlistMediaDatabaseItem *)v6 filePathURL];
        v9 = v54;
        v56 = v55;
        v11 = v56;
        if (v9 == v56)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v56)
          {
            goto LABEL_90;
          }

          v57 = [v9 isEqual:v56];

          if ((v57 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        v58 = [(VUIPlistMediaDatabaseItem *)self offlineFPSKeys];
        v59 = [(VUIPlistMediaDatabaseItem *)v6 offlineFPSKeys];
        v9 = v58;
        v60 = v59;
        v11 = v60;
        if (v9 == v60)
        {

LABEL_85:
          v62 = [(VUIPlistMediaDatabaseItem *)self downloadState];
          v63 = [(VUIPlistMediaDatabaseItem *)v6 downloadState];
          v9 = v62;
          v64 = v63;
          v11 = v64;
          if (v9 == v64)
          {
            v12 = 1;
          }

          else
          {
            v12 = 0;
            if (v9 && v64)
            {
              v12 = [v9 isEqual:v64];
            }
          }

          goto LABEL_90;
        }

        v12 = 0;
        if (v9 && v60)
        {
          v61 = [v9 isEqual:v60];

          if ((v61 & 1) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_85;
        }

LABEL_90:

        goto LABEL_91;
      }
    }

    v12 = 0;
  }

LABEL_92:

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50.receiver = self;
  v50.super_class = VUIPlistMediaDatabaseItem;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v50 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIPlistMediaDatabaseItem *)self isPlayable];
  [v6 BOOLValue];
  v7 = VUIBoolLogString();
  v8 = [v5 stringWithFormat:@"%@=%@", @"isPlayable", v7];
  [v3 addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(VUIPlistMediaDatabaseItem *)self duration];
  v11 = [v9 stringWithFormat:@"%@=%@", @"duration", v10];
  [v3 addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(VUIPlistMediaDatabaseItem *)self releaseDate];
  v14 = [v12 stringWithFormat:@"%@=%@", @"releaseDate", v13];
  [v3 addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [(VUIPlistMediaDatabaseItem *)self episodeNumber];
  v17 = [v15 stringWithFormat:@"%@=%@", @"episodeNumber", v16];
  [v3 addObject:v17];

  v18 = MEMORY[0x1E696AEC0];
  v19 = [(VUIPlistMediaDatabaseItem *)self studio];
  v20 = [v18 stringWithFormat:@"%@=%@", @"studio", v19];
  [v3 addObject:v20];

  v21 = MEMORY[0x1E696AEC0];
  v22 = [(VUIPlistMediaDatabaseItem *)self credits];
  v23 = [v21 stringWithFormat:@"%@=%@", @"credits", v22];
  [v3 addObject:v23];

  v24 = MEMORY[0x1E696AEC0];
  v25 = [(VUIPlistMediaDatabaseItem *)self previewFrameURL];
  v26 = [v24 stringWithFormat:@"%@=%@", @"previewFrameURL", v25];
  [v3 addObject:v26];

  v27 = MEMORY[0x1E696AEC0];
  v28 = [(VUIPlistMediaDatabaseItem *)self contentRating];
  v29 = [v27 stringWithFormat:@"%@=%@", @"contentRating", v28];
  [v3 addObject:v29];

  v30 = MEMORY[0x1E696AEC0];
  v31 = [(VUIPlistMediaDatabaseItem *)self colorCapability];
  v32 = [v30 stringWithFormat:@"%@=%@", @"colorCapability", v31];
  [v3 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  v34 = [(VUIPlistMediaDatabaseItem *)self HLSColorCapability];
  v35 = [v33 stringWithFormat:@"%@=%@", @"HLSColorCapability", v34];
  [v3 addObject:v35];

  v36 = MEMORY[0x1E696AEC0];
  v37 = [(VUIPlistMediaDatabaseItem *)self playbackURL];
  v38 = [v36 stringWithFormat:@"%@=%@", @"playbackURL", v37];
  [v3 addObject:v38];

  v39 = MEMORY[0x1E696AEC0];
  v40 = [(VUIPlistMediaDatabaseItem *)self filePathURL];
  v41 = [v39 stringWithFormat:@"%@=%@", @"filePathURL", v40];
  [v3 addObject:v41];

  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", @"offlineFPSKeys", @"[omitted]"];
  [v3 addObject:v42];

  v43 = MEMORY[0x1E696AEC0];
  v44 = [(VUIPlistMediaDatabaseItem *)self downloadState];
  v45 = [v43 stringWithFormat:@"%@=%@", @"downloadState", v44];
  [v3 addObject:v45];

  v46 = MEMORY[0x1E696AEC0];
  v47 = [v3 componentsJoinedByString:{@", "}];
  v48 = [v46 stringWithFormat:@"<%@>", v47];

  return v48;
}

- (VUIPlistMediaDatabaseSeason)season
{
  WeakRetained = objc_loadWeakRetained(&self->_season);

  return WeakRetained;
}

@end