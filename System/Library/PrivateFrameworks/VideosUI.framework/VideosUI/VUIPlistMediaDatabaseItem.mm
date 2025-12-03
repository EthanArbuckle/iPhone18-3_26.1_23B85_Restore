@interface VUIPlistMediaDatabaseItem
- (BOOL)isEqual:(id)equal;
- (VUIPlistMediaDatabaseItem)initWithDictionary:(id)dictionary;
- (VUIPlistMediaDatabaseItem)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (VUIPlistMediaDatabaseSeason)season;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation VUIPlistMediaDatabaseItem

- (VUIPlistMediaDatabaseItem)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = VUIPlistMediaDatabaseItem;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v9 initWithIdentifier:identifier type:type];
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

- (VUIPlistMediaDatabaseItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v53.receiver = self;
  v53.super_class = VUIPlistMediaDatabaseItem;
  v5 = [(VUIPlistMediaDatabaseEntity *)&v53 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy vui_numberForKey:@"Local"];
    v7 = [v6 copy];
    local = v5->_local;
    v5->_local = v7;

    v9 = [dictionaryCopy vui_numberForKey:@"Duration"];
    v10 = [v9 copy];
    duration = v5->_duration;
    v5->_duration = v10;

    v12 = [dictionaryCopy vui_dateForKey:@"ReleaseDate"];
    v13 = [v12 copy];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v13;

    v15 = [dictionaryCopy vui_numberForKey:@"EpisodeNumber"];
    v16 = [v15 copy];
    episodeNumber = v5->_episodeNumber;
    v5->_episodeNumber = v16;

    v18 = [dictionaryCopy vui_stringForKey:@"Studio"];
    v19 = [v18 copy];
    studio = v5->_studio;
    v5->_studio = v19;

    v21 = [dictionaryCopy vui_numberForKey:@"ColorCapability"];
    v22 = [v21 copy];
    colorCapability = v5->_colorCapability;
    v5->_colorCapability = v22;

    v24 = [dictionaryCopy vui_numberForKey:@"ColorCapability"];
    v25 = [v24 copy];
    HLSColorCapability = v5->_HLSColorCapability;
    v5->_HLSColorCapability = v25;

    v27 = [dictionaryCopy vui_dictionaryForKey:@"OfflineFPSKeys"];
    v28 = [v27 copy];
    offlineFPSKeys = v5->_offlineFPSKeys;
    v5->_offlineFPSKeys = v28;

    v30 = [dictionaryCopy vui_stringForKey:@"DownloadState"];
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

    v33 = [dictionaryCopy vui_stringForKey:@"ContentRating"];
    if (v33)
    {
      v34 = [objc_alloc(MEMORY[0x1E69DF6B8]) initWithStringRepresentation:v33];
      contentRating = v5->_contentRating;
      v5->_contentRating = v34;
    }

    v36 = [dictionaryCopy vui_stringForKey:@"PreviewFrameURL"];
    if (v36)
    {
      v37 = [MEMORY[0x1E695DFF8] URLWithString:v36];
      previewFrameURL = v5->_previewFrameURL;
      v5->_previewFrameURL = v37;
    }

    v39 = [dictionaryCopy vui_stringForKey:@"Credits"];
    if (v39)
    {
      v40 = [[VUIMediaItemCredits alloc] initWithStringRepresentation:v39];
      credits = v5->_credits;
      v5->_credits = v40;
    }

    v42 = [dictionaryCopy vui_stringForKey:@"RelativeFilePathString"];
    if ([v42 length])
    {
      v43 = MEMORY[0x1E695DFF8];
      v44 = NSHomeDirectory();
      v45 = [v43 fileURLWithPath:v44];
      v46 = [v43 fileURLWithPath:v42 relativeToURL:v45];
      filePathURL = v5->_filePathURL;
      v5->_filePathURL = v46;
    }

    v48 = [dictionaryCopy vui_stringForKey:@"PlaybackURL"];
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
  dictionaryRepresentation = [(VUIPlistMediaDatabaseEntity *)&v26 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];
  isLocal = [(VUIPlistMediaDatabaseItem *)self isLocal];
  [v4 vui_setObjectIfNotNil:isLocal forKey:@"Local"];

  duration = [(VUIPlistMediaDatabaseItem *)self duration];
  [v4 vui_setObjectIfNotNil:duration forKey:@"Duration"];

  releaseDate = [(VUIPlistMediaDatabaseItem *)self releaseDate];
  [v4 vui_setObjectIfNotNil:releaseDate forKey:@"ReleaseDate"];

  episodeNumber = [(VUIPlistMediaDatabaseItem *)self episodeNumber];
  [v4 vui_setObjectIfNotNil:episodeNumber forKey:@"EpisodeNumber"];

  studio = [(VUIPlistMediaDatabaseItem *)self studio];
  [v4 vui_setObjectIfNotNil:studio forKey:@"Studio"];

  credits = [(VUIPlistMediaDatabaseItem *)self credits];
  stringRepresentation = [credits stringRepresentation];
  [v4 vui_setObjectIfNotNil:stringRepresentation forKey:@"Credits"];

  previewFrameURL = [(VUIPlistMediaDatabaseItem *)self previewFrameURL];
  absoluteString = [previewFrameURL absoluteString];
  [v4 vui_setObjectIfNotNil:absoluteString forKey:@"PreviewFrameURL"];

  contentRating = [(VUIPlistMediaDatabaseItem *)self contentRating];
  stringRepresentation2 = [contentRating stringRepresentation];
  [v4 vui_setObjectIfNotNil:stringRepresentation2 forKey:@"ContentRating"];

  colorCapability = [(VUIPlistMediaDatabaseItem *)self colorCapability];
  [v4 vui_setObjectIfNotNil:colorCapability forKey:@"ColorCapability"];

  hLSColorCapability = [(VUIPlistMediaDatabaseItem *)self HLSColorCapability];
  [v4 vui_setObjectIfNotNil:hLSColorCapability forKey:@"HLSColorCapability"];

  playbackURL = [(VUIPlistMediaDatabaseItem *)self playbackURL];
  absoluteString2 = [playbackURL absoluteString];
  [v4 vui_setObjectIfNotNil:absoluteString2 forKey:@"PlaybackURL"];

  filePathURL = [(VUIPlistMediaDatabaseItem *)self filePathURL];
  relativeString = [filePathURL relativeString];
  stringByRemovingPercentEncoding = [relativeString stringByRemovingPercentEncoding];
  [v4 vui_setObjectIfNotNil:stringByRemovingPercentEncoding forKey:@"RelativeFilePathString"];

  offlineFPSKeys = [(VUIPlistMediaDatabaseItem *)self offlineFPSKeys];
  [v4 vui_setObjectIfNotNil:offlineFPSKeys forKey:@"OfflineFPSKeys"];

  downloadState = [(VUIPlistMediaDatabaseItem *)self downloadState];
  [v4 vui_setObjectIfNotNil:downloadState forKey:@"DownloadState"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34.receiver = self;
  v34.super_class = VUIPlistMediaDatabaseItem;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v34 copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
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

        isPlayable = [(VUIPlistMediaDatabaseItem *)self isPlayable];
        isPlayable2 = [(VUIPlistMediaDatabaseItem *)v6 isPlayable];
        v9 = isPlayable;
        v10 = isPlayable2;
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

        duration = [(VUIPlistMediaDatabaseItem *)self duration];
        duration2 = [(VUIPlistMediaDatabaseItem *)v6 duration];
        v9 = duration;
        v16 = duration2;
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

        releaseDate = [(VUIPlistMediaDatabaseItem *)self releaseDate];
        releaseDate2 = [(VUIPlistMediaDatabaseItem *)v6 releaseDate];
        v9 = releaseDate;
        v20 = releaseDate2;
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

        episodeNumber = [(VUIPlistMediaDatabaseItem *)self episodeNumber];
        episodeNumber2 = [(VUIPlistMediaDatabaseItem *)v6 episodeNumber];
        v9 = episodeNumber;
        v24 = episodeNumber2;
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

        studio = [(VUIPlistMediaDatabaseItem *)self studio];
        studio2 = [(VUIPlistMediaDatabaseItem *)v6 studio];
        v9 = studio;
        v28 = studio2;
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

        credits = [(VUIPlistMediaDatabaseItem *)self credits];
        credits2 = [(VUIPlistMediaDatabaseItem *)v6 credits];
        v9 = credits;
        v32 = credits2;
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

        previewFrameURL = [(VUIPlistMediaDatabaseItem *)self previewFrameURL];
        previewFrameURL2 = [(VUIPlistMediaDatabaseItem *)v6 previewFrameURL];
        v9 = previewFrameURL;
        v36 = previewFrameURL2;
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

        contentRating = [(VUIPlistMediaDatabaseItem *)self contentRating];
        contentRating2 = [(VUIPlistMediaDatabaseItem *)v6 contentRating];
        v9 = contentRating;
        v40 = contentRating2;
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

        colorCapability = [(VUIPlistMediaDatabaseItem *)self colorCapability];
        colorCapability2 = [(VUIPlistMediaDatabaseItem *)v6 colorCapability];
        v9 = colorCapability;
        v44 = colorCapability2;
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

        hLSColorCapability = [(VUIPlistMediaDatabaseItem *)self HLSColorCapability];
        hLSColorCapability2 = [(VUIPlistMediaDatabaseItem *)v6 HLSColorCapability];
        v9 = hLSColorCapability;
        v48 = hLSColorCapability2;
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

        playbackURL = [(VUIPlistMediaDatabaseItem *)self playbackURL];
        playbackURL2 = [(VUIPlistMediaDatabaseItem *)v6 playbackURL];
        v9 = playbackURL;
        v52 = playbackURL2;
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

        filePathURL = [(VUIPlistMediaDatabaseItem *)self filePathURL];
        filePathURL2 = [(VUIPlistMediaDatabaseItem *)v6 filePathURL];
        v9 = filePathURL;
        v56 = filePathURL2;
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

        offlineFPSKeys = [(VUIPlistMediaDatabaseItem *)self offlineFPSKeys];
        offlineFPSKeys2 = [(VUIPlistMediaDatabaseItem *)v6 offlineFPSKeys];
        v9 = offlineFPSKeys;
        v60 = offlineFPSKeys2;
        v11 = v60;
        if (v9 == v60)
        {

LABEL_85:
          downloadState = [(VUIPlistMediaDatabaseItem *)self downloadState];
          downloadState2 = [(VUIPlistMediaDatabaseItem *)v6 downloadState];
          v9 = downloadState;
          v64 = downloadState2;
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
  isPlayable = [(VUIPlistMediaDatabaseItem *)self isPlayable];
  [isPlayable BOOLValue];
  v7 = VUIBoolLogString();
  v8 = [v5 stringWithFormat:@"%@=%@", @"isPlayable", v7];
  [v3 addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  duration = [(VUIPlistMediaDatabaseItem *)self duration];
  v11 = [v9 stringWithFormat:@"%@=%@", @"duration", duration];
  [v3 addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  releaseDate = [(VUIPlistMediaDatabaseItem *)self releaseDate];
  v14 = [v12 stringWithFormat:@"%@=%@", @"releaseDate", releaseDate];
  [v3 addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  episodeNumber = [(VUIPlistMediaDatabaseItem *)self episodeNumber];
  v17 = [v15 stringWithFormat:@"%@=%@", @"episodeNumber", episodeNumber];
  [v3 addObject:v17];

  v18 = MEMORY[0x1E696AEC0];
  studio = [(VUIPlistMediaDatabaseItem *)self studio];
  v20 = [v18 stringWithFormat:@"%@=%@", @"studio", studio];
  [v3 addObject:v20];

  v21 = MEMORY[0x1E696AEC0];
  credits = [(VUIPlistMediaDatabaseItem *)self credits];
  v23 = [v21 stringWithFormat:@"%@=%@", @"credits", credits];
  [v3 addObject:v23];

  v24 = MEMORY[0x1E696AEC0];
  previewFrameURL = [(VUIPlistMediaDatabaseItem *)self previewFrameURL];
  v26 = [v24 stringWithFormat:@"%@=%@", @"previewFrameURL", previewFrameURL];
  [v3 addObject:v26];

  v27 = MEMORY[0x1E696AEC0];
  contentRating = [(VUIPlistMediaDatabaseItem *)self contentRating];
  v29 = [v27 stringWithFormat:@"%@=%@", @"contentRating", contentRating];
  [v3 addObject:v29];

  v30 = MEMORY[0x1E696AEC0];
  colorCapability = [(VUIPlistMediaDatabaseItem *)self colorCapability];
  v32 = [v30 stringWithFormat:@"%@=%@", @"colorCapability", colorCapability];
  [v3 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  hLSColorCapability = [(VUIPlistMediaDatabaseItem *)self HLSColorCapability];
  v35 = [v33 stringWithFormat:@"%@=%@", @"HLSColorCapability", hLSColorCapability];
  [v3 addObject:v35];

  v36 = MEMORY[0x1E696AEC0];
  playbackURL = [(VUIPlistMediaDatabaseItem *)self playbackURL];
  v38 = [v36 stringWithFormat:@"%@=%@", @"playbackURL", playbackURL];
  [v3 addObject:v38];

  v39 = MEMORY[0x1E696AEC0];
  filePathURL = [(VUIPlistMediaDatabaseItem *)self filePathURL];
  v41 = [v39 stringWithFormat:@"%@=%@", @"filePathURL", filePathURL];
  [v3 addObject:v41];

  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", @"offlineFPSKeys", @"[omitted]"];
  [v3 addObject:v42];

  v43 = MEMORY[0x1E696AEC0];
  downloadState = [(VUIPlistMediaDatabaseItem *)self downloadState];
  v45 = [v43 stringWithFormat:@"%@=%@", @"downloadState", downloadState];
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