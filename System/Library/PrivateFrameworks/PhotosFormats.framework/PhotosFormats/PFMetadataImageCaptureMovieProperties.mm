@interface PFMetadataImageCaptureMovieProperties
- (BOOL)configureWithMetadataPlist:(id)a3;
- (BOOL)isSloMo;
- (BOOL)isTimelapse;
- (PFMetadataImageCaptureMovieProperties)initWithImageCaptureMovieProperties:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5;
- (id)_makeGPSProperties;
- (id)plistForEncoding;
@end

@implementation PFMetadataImageCaptureMovieProperties

- (id)plistForEncoding
{
  v6.receiver = self;
  v6.super_class = PFMetadataImageCaptureMovieProperties;
  v3 = [(PFMetadata *)&v6 plistForEncoding];
  v4 = [v3 mutableCopy];

  [v4 setObject:self->_iccMovieProperties forKeyedSubscript:PFMetadataICCMovieProperties];

  return v4;
}

- (id)_makeGPSProperties
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_iccMovieProperties objectForKeyedSubscript:PFMetadataImageCapturePropertyGPSString];
  if (v2)
  {
    v7 = 0.0;
    v8 = 0.0;
    v3 = 0;
    if ([PFMetadataMovie parseISO6709String:v2 outLatitude:&v8 outLongitude:&v7])
    {
      v9[0] = *MEMORY[0x1E696DC18];
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      v10[0] = v4;
      v9[1] = *MEMORY[0x1E696DC28];
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      v10[1] = v5;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isTimelapse
{
  v2 = [(NSDictionary *)self->_iccMovieProperties objectForKeyedSubscript:PFMetadataImageCapturePropertyTimeLapse];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isSloMo
{
  v2 = [(NSDictionary *)self->_iccMovieProperties objectForKeyedSubscript:PFMetadataImageCapturePropertyHighFramerate];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)configureWithMetadataPlist:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFMetadataImageCaptureMovieProperties;
  v5 = [(PFMetadata *)&v9 configureWithMetadataPlist:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:PFMetadataICCMovieProperties];
    iccMovieProperties = self->_iccMovieProperties;
    self->_iccMovieProperties = v6;
  }

  return v5;
}

- (PFMetadataImageCaptureMovieProperties)initWithImageCaptureMovieProperties:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5
{
  v9 = a3;
  if (v9)
  {
    v13.receiver = self;
    v13.super_class = PFMetadataImageCaptureMovieProperties;
    v10 = [(PFMetadata *)&v13 initWithContentType:a4 options:12 timeZoneLookup:a5];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_iccMovieProperties, a3);
      [(PFMetadata *)v11 setSourceType:11];
    }
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

@end