@interface OKMediaItemMetadata
+ (unint64_t)alignResolution:(unint64_t)a3;
- (BOOL)hasRegionsOfInterest;
- (BOOL)hasRegionsOfInterestName;
- (BOOL)writeToFileURL:(id)a3;
- (CGRect)regionOfInterestContainerBounds;
- (CGSize)resolution;
- (CLLocation)location;
- (CLLocationCoordinate2D)locationCoordinate;
- (NSArray)regionsOfInterest;
- (NSArray)regionsOfInterestName;
- (OKMediaItemMetadata)init;
- (OKMediaItemMetadata)initWithDictionary:(id)a3;
- (OKMediaItemMetadata)initWithFileURL:(id)a3;
- (double)aspectRatio;
- (id)dictionary;
- (id)dictionaryValueForKey:(id)a3;
- (id)regionsOfInterestDictionary;
- (unint64_t)bestResolutionForSize:(CGSize)a3 scale:(double)a4 quality:(double)a5;
- (void)dealloc;
- (void)invalidate;
- (void)setPropertiesFromDictionary:(id)a3;
- (void)setRegionsOfInterest:(id)a3;
@end

@implementation OKMediaItemMetadata

- (OKMediaItemMetadata)init
{
  v4.receiver = self;
  v4.super_class = OKMediaItemMetadata;
  result = [(OKMediaItemMetadata *)&v4 init];
  if (result)
  {
    result->_resolution = *MEMORY[0x277CBF3A8];
    *&result->_creationDate = 0u;
    *&result->_duration = 0u;
    *&result->_latitude = vdupq_n_s64(0x7FF8000000000000uLL);
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    result->_regionOfInterestContainerBounds.origin = *MEMORY[0x277CBF3A0];
    result->_type = 0;
    result->_subType = 0;
    result->_opaque = 1;
    result->_regionsOfInterest = 0;
    result->_name = 0;
    result->_caption = 0;
    result->_UTI = 0;
    result->_regionsOfInterestDetected = 0;
    result->_regionOfInterestContainerBounds.size = v3;
  }

  return result;
}

- (OKMediaItemMetadata)initWithDictionary:(id)a3
{
  v4 = [(OKMediaItemMetadata *)self init];
  v5 = v4;
  if (v4)
  {
    [(OKMediaItemMetadata *)v4 setPropertiesFromDictionary:a3];
  }

  return v5;
}

- (void)dealloc
{
  creationDate = self->_creationDate;
  if (creationDate)
  {

    self->_creationDate = 0;
  }

  UTI = self->_UTI;
  if (UTI)
  {

    self->_UTI = 0;
  }

  name = self->_name;
  if (name)
  {

    self->_name = 0;
  }

  caption = self->_caption;
  if (caption)
  {

    self->_caption = 0;
  }

  regionsOfInterest = self->_regionsOfInterest;
  if (regionsOfInterest)
  {

    self->_regionsOfInterest = 0;
  }

  v8.receiver = self;
  v8.super_class = OKMediaItemMetadata;
  [(OKMediaItemMetadata *)&v8 dealloc];
}

- (void)setPropertiesFromDictionary:(id)a3
{
  objc_sync_enter(self);
  v5 = [a3 objectForKey:@"Media Type"];
  if (v5)
  {
    -[OKMediaItemMetadata setType:](self, "setType:", [v5 unsignedIntegerValue]);
  }

  v6 = [a3 objectForKey:@"Media SubType"];
  if (v6)
  {
    -[OKMediaItemMetadata setSubType:](self, "setSubType:", [v6 unsignedIntegerValue]);
  }

  v7 = [a3 objectForKey:@"Resolution"];
  if (v7)
  {
    v8 = CGSizeFromString(v7);
    [(OKMediaItemMetadata *)self setResolution:v8.width, v8.height];
  }

  v9 = [a3 objectForKey:@"Creation Date"];
  if (v9)
  {
    [(OKMediaItemMetadata *)self setCreationDate:v9];
  }

  v10 = [a3 objectForKey:@"Image Orientation"];
  if (v10)
  {
    -[OKMediaItemMetadata setOrientation:](self, "setOrientation:", [v10 unsignedIntegerValue]);
  }

  v11 = [a3 objectForKey:@"Duration"];
  if (v11)
  {
    [v11 doubleValue];
    [(OKMediaItemMetadata *)self setDuration:?];
  }

  v12 = [a3 objectForKey:@"DisplayTime"];
  if (v12)
  {
    [v12 doubleValue];
    [(OKMediaItemMetadata *)self setDisplayTime:?];
  }

  v13 = [a3 objectForKey:@"Latitude"];
  if (v13)
  {
    [v13 doubleValue];
    [(OKMediaItemMetadata *)self setLatitude:?];
  }

  v14 = [a3 objectForKey:@"Longitude"];
  if (v14)
  {
    [v14 doubleValue];
    [(OKMediaItemMetadata *)self setLongitude:?];
  }

  v15 = [a3 objectForKey:@"Opaque"];
  if (v15)
  {
    -[OKMediaItemMetadata setOpaque:](self, "setOpaque:", [v15 BOOLValue]);
  }

  v16 = [a3 objectForKey:@"UTI"];
  if (v16)
  {
    [(OKMediaItemMetadata *)self setUTI:v16];
  }

  v17 = [a3 objectForKey:@"Name"];
  if (v17)
  {
    [(OKMediaItemMetadata *)self setName:v17];
  }

  v18 = [a3 objectForKey:@"Caption"];
  if (v18)
  {
    [(OKMediaItemMetadata *)self setCaption:v18];
  }

  v19 = [a3 objectForKey:@"ROI Detected"];
  if (v19)
  {
    -[OKMediaItemMetadata setRegionsOfInterestDetected:](self, "setRegionsOfInterestDetected:", [v19 BOOLValue]);
  }

  v20 = [a3 objectForKey:@"ROI Rectangles"];
  if (v20)
  {
    [(OKMediaItemMetadata *)self setRegionsOfInterest:v20];
  }

  v21 = [a3 objectForKey:@"ROIs Container Bounds"];
  if (v21)
  {
    v23 = CGRectFromString(v21);
    [(OKMediaItemMetadata *)self setRegionOfInterestContainerBounds:v23.origin.x, v23.origin.y, v23.size.width, v23.size.height];
  }

  objc_sync_exit(self);
}

- (id)regionsOfInterestDictionary
{
  objc_sync_enter(self);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_regionsOfInterestDetected), @"ROI Detected"}];
  if (self->_regionsOfInterestDetected)
  {
    regionsOfInterest = self->_regionsOfInterest;
    if (regionsOfInterest)
    {
      [v3 setObject:regionsOfInterest forKey:@"ROI Rectangles"];
    }

    if (!CGRectIsNull(self->_regionOfInterestContainerBounds) && !CGRectEqualToRect(self->_regionOfInterestContainerBounds, *MEMORY[0x277CBF3A0]))
    {
      [v3 setObject:NSStringFromCGRect(self->_regionOfInterestContainerBounds) forKey:@"ROIs Container Bounds"];
    }
  }

  v5 = v3;
  objc_sync_exit(self);
  return v5;
}

- (id)dictionary
{
  objc_sync_enter(self);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_type)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:"), @"Media Type"}];
  }

  else if (*MEMORY[0x277D62808] >= 2)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItemMetadata.m" line:325 andFormat:@"Media item type must not be nil, this may lead to an unexpected behavior...", 0];
  }

  if (self->_subType)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:"), @"Media SubType"}];
  }

  width = self->_resolution.width;
  height = self->_resolution.height;
  if (width != *MEMORY[0x277CBF3A8] || height != *(MEMORY[0x277CBF3A8] + 8))
  {
    [v3 setObject:NSStringFromCGSize(*&width) forKey:@"Resolution"];
    v7 = MEMORY[0x277CCABB0];
    [(OKMediaItemMetadata *)self aspectRatio];
    [v3 setObject:objc_msgSend(v7 forKey:{"numberWithDouble:"), @"Aspect Ratio"}];
  }

  creationDate = self->_creationDate;
  if (creationDate)
  {
    [v3 setObject:creationDate forKey:@"Creation Date"];
  }

  else if (*MEMORY[0x277D62808] >= 2)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItemMetadata.m" line:350 andFormat:@"Media item creation date must not be nil, this may lead to an unexpected behavior...", 0];
  }

  if (self->_orientation)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:"), @"Image Orientation"}];
  }

  if (self->_duration != 0.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"Duration"}];
  }

  if (self->_displayTime != 0.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"DisplayTime"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_latitude), @"Latitude"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_longitude), @"Longitude"}];
  if (!self->_opaque)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 0), @"Opaque"}];
  }

  UTI = self->_UTI;
  if (UTI)
  {
    [v3 setObject:UTI forKey:@"UTI"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"Name"];
  }

  caption = self->_caption;
  if (caption)
  {
    [v3 setObject:caption forKey:@"Caption"];
  }

  [v3 addEntriesFromDictionary:{-[OKMediaItemMetadata regionsOfInterestDictionary](self, "regionsOfInterestDictionary")}];
  v12 = v3;
  objc_sync_exit(self);
  return v12;
}

- (id)dictionaryValueForKey:(id)a3
{
  objc_sync_enter(self);
  if ([a3 isEqualToString:@"Media Type"])
  {
    if (!self->_type)
    {
      goto LABEL_54;
    }

    goto LABEL_6;
  }

  if (![a3 isEqualToString:@"Media SubType"])
  {
    if ([a3 isEqualToString:@"Resolution"])
    {
      width = self->_resolution.width;
      height = self->_resolution.height;
      if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
      {
        goto LABEL_54;
      }

      v5 = NSStringFromCGSize(*&width);
      goto LABEL_7;
    }

    if ([a3 isEqualToString:@"Aspect Ratio"])
    {
      if (self->_resolution.width == *MEMORY[0x277CBF3A8] && self->_resolution.height == *(MEMORY[0x277CBF3A8] + 8))
      {
        goto LABEL_54;
      }

      v11 = MEMORY[0x277CCABB0];
      [(OKMediaItemMetadata *)self aspectRatio];
      goto LABEL_36;
    }

    if ([a3 isEqualToString:@"Creation Date"])
    {
      v12 = 40;
      goto LABEL_22;
    }

    if ([a3 isEqualToString:@"Image Orientation"])
    {
      if (!self->_orientation)
      {
        goto LABEL_54;
      }

      goto LABEL_6;
    }

    if ([a3 isEqualToString:@"Duration"])
    {
      duration = self->_duration;
    }

    else if ([a3 isEqualToString:@"DisplayTime"])
    {
      duration = self->_displayTime;
    }

    else if ([a3 isEqualToString:@"Latitude"])
    {
      duration = self->_latitude;
    }

    else
    {
      if (![a3 isEqualToString:@"Longitude"])
      {
        if ([a3 isEqualToString:@"Opaque"])
        {
          if (!self->_opaque)
          {
            goto LABEL_54;
          }

          regionsOfInterestDetected = 1;
        }

        else
        {
          if ([a3 isEqualToString:@"UTI"])
          {
            v12 = 96;
            goto LABEL_22;
          }

          if ([a3 isEqualToString:@"Name"])
          {
            v12 = 104;
            goto LABEL_22;
          }

          if ([a3 isEqualToString:@"Caption"])
          {
            v12 = 112;
            goto LABEL_22;
          }

          if (![a3 isEqualToString:@"ROI Detected"])
          {
            if (([a3 isEqualToString:@"ROI Rectangles"] & 1) == 0)
            {
              if (![a3 isEqualToString:@"ROIs Container Bounds"] || CGRectIsNull(self->_regionOfInterestContainerBounds) || CGRectEqualToRect(self->_regionOfInterestContainerBounds, *MEMORY[0x277CBF3A0]))
              {
                goto LABEL_54;
              }

              v5 = NSStringFromCGRect(self->_regionOfInterestContainerBounds);
              goto LABEL_7;
            }

            v12 = 128;
LABEL_22:
            v6 = *(&self->super.isa + v12);
            goto LABEL_55;
          }

          regionsOfInterestDetected = self->_regionsOfInterestDetected;
        }

        v5 = [MEMORY[0x277CCABB0] numberWithBool:regionsOfInterestDetected];
        goto LABEL_7;
      }

      duration = self->_longitude;
    }

    if (duration == 0.0)
    {
      goto LABEL_54;
    }

    v11 = MEMORY[0x277CCABB0];
LABEL_36:
    v5 = [v11 numberWithDouble:?];
    goto LABEL_7;
  }

  if (!self->_subType)
  {
LABEL_54:
    v6 = 0;
    goto LABEL_55;
  }

LABEL_6:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
LABEL_7:
  v6 = v5;
LABEL_55:
  objc_sync_exit(self);
  return v6;
}

- (void)invalidate
{
  objc_sync_enter(self);
  self->_type = 0;
  self->_subType = 0;
  self->_resolution = *MEMORY[0x277CBF3A8];
  creationDate = self->_creationDate;
  if (creationDate)
  {

    self->_creationDate = 0;
  }

  self->_orientation = 0;
  self->_duration = 0.0;
  self->_displayTime = 0.0;
  *&self->_latitude = vdupq_n_s64(0x7FF8000000000000uLL);
  self->_opaque = 1;
  UTI = self->_UTI;
  if (UTI)
  {

    self->_UTI = 0;
  }

  name = self->_name;
  if (name)
  {

    self->_name = 0;
  }

  caption = self->_caption;
  if (caption)
  {

    self->_caption = 0;
  }

  self->_regionsOfInterestDetected = 0;
  regionsOfInterest = self->_regionsOfInterest;
  if (regionsOfInterest)
  {

    self->_regionsOfInterest = 0;
  }

  v8 = *(MEMORY[0x277CBF3A0] + 16);
  self->_regionOfInterestContainerBounds.origin = *MEMORY[0x277CBF3A0];
  self->_regionOfInterestContainerBounds.size = v8;

  objc_sync_exit(self);
}

- (double)aspectRatio
{
  objc_sync_enter(self);
  width = self->_resolution.width;
  height = self->_resolution.height;
  v5 = height == *(MEMORY[0x277CBF3A8] + 8) && width == *MEMORY[0x277CBF3A8];
  v6 = width / height;
  if (v5)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v6;
  }

  objc_sync_exit(self);
  return v7;
}

- (CLLocation)location
{
  objc_sync_enter(self);
  v3 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:self->_latitude longitude:self->_longitude];
  objc_sync_exit(self);
  return v3;
}

- (CLLocationCoordinate2D)locationCoordinate
{
  objc_sync_enter(self);
  v3 = CLLocationCoordinate2DMake(self->_latitude, self->_longitude);
  objc_sync_exit(self);
  latitude = v3.latitude;
  longitude = v3.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)hasRegionsOfInterest
{
  objc_sync_enter(self);
  if ([(NSArray *)self->_regionsOfInterest count]&& !CGRectIsNull(self->_regionOfInterestContainerBounds))
  {
    v3 = !CGRectEqualToRect(self->_regionOfInterestContainerBounds, *MEMORY[0x277CBF3A0]);
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  objc_sync_exit(self);
  return v3;
}

- (BOOL)hasRegionsOfInterestName
{
  v19 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  regionsOfInterest = self->_regionsOfInterest;
  v4 = [(NSArray *)regionsOfInterest countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(regionsOfInterest);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 objectForKey:@"ROI Bounds"];
        v9 = [v7 objectForKey:@"ROI Name"];
        if (v8)
        {
          v10 = v9;
          v11 = ![v8 length] || v10 == 0;
          if (!v11 && [v10 length])
          {
            v12 = 1;
            goto LABEL_16;
          }
        }
      }

      v4 = [(NSArray *)regionsOfInterest countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_16:
  objc_sync_exit(self);
  return v12;
}

- (NSArray)regionsOfInterestName
{
  v19 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v3 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  regionsOfInterest = self->_regionsOfInterest;
  v5 = [(NSArray *)regionsOfInterest countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(regionsOfInterest);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 objectForKey:@"ROI Bounds"];
        v10 = [v8 objectForKey:@"ROI Name"];
        if (v9)
        {
          v11 = v10;
          if ([v9 length])
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12 && [v11 length])
          {
            [(NSArray *)v3 addObject:v11];
          }
        }
      }

      v5 = [(NSArray *)regionsOfInterest countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  objc_sync_exit(self);
  return v3;
}

- (void)setRegionsOfInterest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  [(OKMediaItemMetadata *)self willChangeValueForKey:@"regionsOfInterest"];

  self->_regionsOfInterest = [a3 copy];
  [(OKMediaItemMetadata *)self didChangeValueForKey:@"regionsOfInterest"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  regionsOfInterest = self->_regionsOfInterest;
  v6 = [(NSArray *)regionsOfInterest countByEnumeratingWithState:&v13 objects:v17 count:16];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  if (v6)
  {
    v11 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(regionsOfInterest);
        }

        v21 = CGRectFromString([*(*(&v13 + 1) + 8 * i) objectForKey:@"ROI Bounds"]);
        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        v20 = CGRectUnion(v19, v21);
        x = v20.origin.x;
        y = v20.origin.y;
        width = v20.size.width;
        height = v20.size.height;
      }

      v6 = [(NSArray *)regionsOfInterest countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([a3 count])
  {
    self->_regionsOfInterestDetected = 1;
  }

  [(OKMediaItemMetadata *)self setRegionOfInterestContainerBounds:x, y, width, height];
  objc_sync_exit(self);
}

- (NSArray)regionsOfInterest
{
  objc_sync_enter(self);
  regionsOfInterest = self->_regionsOfInterest;
  objc_sync_exit(self);
  return regionsOfInterest;
}

+ (unint64_t)alignResolution:(unint64_t)a3
{
  v3 = 2048;
  if (a3 <= 0x7FF)
  {
    v3 = (((a3 & 0xFFFFFFFFFFFFF83FLL) + 63) & 0xFFFFFFFFFFFFFFC0) + (a3 & 0x7C0);
  }

  if (a3 >= 0x80)
  {
    return v3;
  }

  else
  {
    return 128;
  }
}

- (unint64_t)bestResolutionForSize:(CGSize)a3 scale:(double)a4 quality:(double)a5
{
  height = a3.height;
  width = a3.width;
  if (a3.width <= a3.height)
  {
    v9 = a3.height;
  }

  else
  {
    v9 = a3.width;
  }

  [(OKMediaItemMetadata *)self aspectRatio];
  if (v10 > 0.0)
  {
    if (v10 >= width / height)
    {
      v12 = height * v10;
      if (v12 <= height)
      {
        v9 = height;
      }

      else
      {
        v9 = v12;
      }
    }

    else
    {
      v11 = width / v10;
      if (width <= v11)
      {
        v9 = v11;
      }

      else
      {
        v9 = width;
      }
    }
  }

  v13 = (fmax(fmin(a5, 1.0), 0.100000001) * v9 * a4);

  return [OKMediaItemMetadata alignResolution:v13];
}

- (OKMediaItemMetadata)initWithFileURL:(id)a3
{
  v9.receiver = self;
  v9.super_class = OKMediaItemMetadata;
  v4 = [(OKMediaItemMetadata *)&v9 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithURL:a3];
    v8 = 0;
    [v5 open];
    v6 = [MEMORY[0x277CCAC58] propertyListWithStream:v5 options:0 format:0 error:&v8];
    [v5 close];

    if (v6)
    {
      [(OKMediaItemMetadata *)v4 setPropertiesFromDictionary:v6];
    }

    else
    {
      if (*MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItemMetadata.m" line:779 andFormat:@"Failed to load media metadata from %@: %@", a3, objc_msgSend(v8, "localizedDescription")];
      }

      return 0;
    }
  }

  return v4;
}

- (BOOL)writeToFileURL:(id)a3
{
  objc_sync_enter(self);
  v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v12 = 0;
  v11 = 0;
  if ([v5 fileExistsAtPath:objc_msgSend(objc_msgSend(a3 isDirectory:{"URLByDeletingLastPathComponent"), "relativePath"), &v11}])
  {
    if ((v11 & 1) == 0)
    {
      if (*MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItemMetadata.m" line:817 andFormat:@"Failed to write media metadata to %@: %@", a3, @"Destination path already exists as file instead of directory"];
      }

      goto LABEL_17;
    }
  }

  else if (([v5 createDirectoryAtURL:objc_msgSend(a3 withIntermediateDirectories:"URLByDeletingLastPathComponent") attributes:1 error:{0, &v12}] & 1) == 0)
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItemMetadata.m" line:808 andFormat:@"Failed to write media metadata to %@: %@", a3, objc_msgSend(v12, "localizedDescription")];
    }

    goto LABEL_17;
  }

  v6 = [(OKMediaItemMetadata *)self dictionary];
  v7 = [MEMORY[0x277CCAA00] temporaryFileURLWithExtension:@"tmp"];
  v8 = [objc_alloc(MEMORY[0x277CBEB78]) initWithURL:v7 append:0];
  [v8 open];
  if (![MEMORY[0x277CCAC58] writePropertyList:v6 toStream:v8 format:200 options:0 error:&v12])
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItemMetadata.m" line:834 andFormat:@"Failed to write media metadata to \"%@\" (\"%@\", a3, v7, objc_msgSend(v12, "localizedDescription"")];
    }

    [v8 close];

    goto LABEL_16;
  }

  [v8 close];

  [v5 removeItemAtURL:a3 error:0];
  if (([v5 moveItemAtURL:v7 toURL:a3 error:&v12] & 1) == 0)
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItemMetadata.m" line:852 andFormat:@"Failed to save cache to %@: %@", a3, objc_msgSend(v12, "localizedDescription")];
    }

LABEL_16:
    [v5 removeItemAtURL:v7 error:0];
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v9 = 1;
LABEL_18:

  objc_sync_exit(self);
  return v9;
}

- (CGSize)resolution
{
  objc_copyStruct(v4, &self->_resolution, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)regionOfInterestContainerBounds
{
  objc_copyStruct(v6, &self->_regionOfInterestContainerBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end