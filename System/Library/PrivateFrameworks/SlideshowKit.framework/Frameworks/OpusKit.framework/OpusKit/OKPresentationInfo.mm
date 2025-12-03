@interface OKPresentationInfo
- (NSArray)resolutions;
- (NSString)mainFeederName;
- (NSString)mainNavigatorName;
- (NSString)trailerNavigatorName;
- (OKPresentationInfo)init;
- (double)couchPotatoDelay;
- (double)couchPotatoStepDuration;
- (id)dictionary;
- (unint64_t)format;
- (void)dealloc;
- (void)importFromDictionary:(id)dictionary;
- (void)reset;
- (void)setCouchPotatoDelay:(double)delay;
- (void)setCouchPotatoStepDuration:(double)duration;
- (void)setFormat:(unint64_t)format;
- (void)setMainFeederName:(id)name;
- (void)setMainNavigatorName:(id)name;
- (void)setResolutions:(id)resolutions;
- (void)setTrailerNavigatorName:(id)name;
@end

@implementation OKPresentationInfo

- (OKPresentationInfo)init
{
  v5.receiver = self;
  v5.super_class = OKPresentationInfo;
  v2 = [(OKPresentationInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_presentation, 0);
    v3->_infoLock = objc_alloc_init(MEMORY[0x277CCAC60]);
    [(OKPresentationInfo *)v3 reset];
  }

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_presentation, 0);
  infoLock = self->_infoLock;
  if (infoLock)
  {
    v4 = infoLock;
    [(NSRecursiveLock *)v4 lock];

    self->_infoLock = 0;
    [(NSRecursiveLock *)v4 unlock];
  }

  uuid = self->_uuid;
  if (uuid)
  {

    self->_uuid = 0;
  }

  creationDate = self->_creationDate;
  if (creationDate)
  {

    self->_creationDate = 0;
  }

  lastModifiedDate = self->_lastModifiedDate;
  if (lastModifiedDate)
  {

    self->_lastModifiedDate = 0;
  }

  versionID = self->_versionID;
  if (versionID)
  {

    self->_versionID = 0;
  }

  producerIdentifier = self->_producerIdentifier;
  if (producerIdentifier)
  {

    self->_producerIdentifier = 0;
  }

  resolutions = self->_resolutions;
  if (resolutions)
  {

    self->_resolutions = 0;
  }

  trailerNavigatorName = self->_trailerNavigatorName;
  if (trailerNavigatorName)
  {

    self->_trailerNavigatorName = 0;
  }

  mainNavigatorName = self->_mainNavigatorName;
  if (mainNavigatorName)
  {

    self->_mainNavigatorName = 0;
  }

  mainFeederName = self->_mainFeederName;
  if (mainFeederName)
  {

    self->_mainFeederName = 0;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {

    self->_backgroundColor = 0;
  }

  v15.receiver = self;
  v15.super_class = OKPresentationInfo;
  [(OKPresentationInfo *)&v15 dealloc];
}

- (void)setFormat:(unint64_t)format
{
  objc_sync_enter(self);
  if (self->_format != format)
  {
    self->_format = format;
    [[(OKPresentationInfo *)self presentation] setPresentationChanged:1];
  }

  objc_sync_exit(self);
}

- (unint64_t)format
{
  objc_sync_enter(self);
  format = self->_format;
  objc_sync_exit(self);
  return format;
}

- (void)setResolutions:(id)resolutions
{
  objc_sync_enter(self);
  if (self->_resolutions != resolutions)
  {
    [(OKPresentationInfo *)self willChangeValueForKey:@"resolutions"];

    self->_resolutions = [resolutions copy];
    [(OKPresentationInfo *)self didChangeValueForKey:@"resolutions"];
  }

  objc_sync_exit(self);
}

- (NSArray)resolutions
{
  objc_sync_enter(self);
  resolutions = self->_resolutions;
  objc_sync_exit(self);
  return &resolutions->super;
}

- (double)couchPotatoStepDuration
{
  objc_sync_enter(self);
  if (self->_couchPotatoStepDuration == -1.0)
  {
    couchPotatoStepDuration = 8.0;
  }

  else
  {
    couchPotatoStepDuration = self->_couchPotatoStepDuration;
  }

  objc_sync_exit(self);
  return couchPotatoStepDuration;
}

- (void)setCouchPotatoStepDuration:(double)duration
{
  objc_sync_enter(self);
  if (self->_couchPotatoStepDuration != duration)
  {
    self->_couchPotatoStepDuration = duration;
  }

  objc_sync_exit(self);
}

- (void)setCouchPotatoDelay:(double)delay
{
  objc_sync_enter(self);
  if (self->_couchPotatoDelay != delay)
  {
    self->_couchPotatoDelay = delay;
  }

  objc_sync_exit(self);
}

- (double)couchPotatoDelay
{
  objc_sync_enter(self);
  if (self->_couchPotatoDelay == -1.0)
  {
    couchPotatoDelay = 45.0;
  }

  else
  {
    couchPotatoDelay = self->_couchPotatoDelay;
  }

  objc_sync_exit(self);
  return couchPotatoDelay;
}

- (void)setTrailerNavigatorName:(id)name
{
  objc_sync_enter(self);
  trailerNavigatorName = self->_trailerNavigatorName;
  if (trailerNavigatorName != name)
  {

    self->_trailerNavigatorName = [name copy];
  }

  objc_sync_exit(self);
}

- (NSString)trailerNavigatorName
{
  objc_sync_enter(self);
  if (self->_trailerNavigatorName)
  {
    trailerNavigatorName = self->_trailerNavigatorName;
  }

  else
  {
    trailerNavigatorName = @"trailer";
  }

  objc_sync_exit(self);
  return &trailerNavigatorName->isa;
}

- (void)setMainNavigatorName:(id)name
{
  objc_sync_enter(self);
  mainNavigatorName = self->_mainNavigatorName;
  if (mainNavigatorName != name)
  {

    self->_mainNavigatorName = [name copy];
  }

  objc_sync_exit(self);
}

- (NSString)mainNavigatorName
{
  objc_sync_enter(self);
  if (self->_mainNavigatorName)
  {
    mainNavigatorName = self->_mainNavigatorName;
  }

  else
  {
    mainNavigatorName = @"root";
  }

  objc_sync_exit(self);
  return &mainNavigatorName->isa;
}

- (void)setMainFeederName:(id)name
{
  objc_sync_enter(self);
  mainFeederName = self->_mainFeederName;
  if (mainFeederName != name)
  {

    self->_mainFeederName = [name copy];
  }

  objc_sync_exit(self);
}

- (NSString)mainFeederName
{
  objc_sync_enter(self);
  if (self->_mainFeederName)
  {
    mainFeederName = self->_mainFeederName;
  }

  else
  {
    mainFeederName = @"root";
  }

  objc_sync_exit(self);
  return &mainFeederName->isa;
}

- (void)reset
{
  [(OKPresentationInfo *)self lock];
  -[OKPresentationInfo setUuid:](self, "setUuid:", [MEMORY[0x277CCACA8] generateUUID]);
  -[OKPresentationInfo setCreationDate:](self, "setCreationDate:", [MEMORY[0x277CBEAA8] date]);
  [(OKPresentationInfo *)self setLastModifiedDate:self->_creationDate];
  -[OKPresentationInfo setVersionID:](self, "setVersionID:", [MEMORY[0x277CCACA8] generateUUID]);
  [(OKPresentationInfo *)self setFormat:1];
  [(OKPresentationInfo *)self setFormatVersion:2];
  [(OKPresentationInfo *)self setApiVersion:1212.1];
  [(OKPresentationInfo *)self setProducerIdentifier:0];
  [(OKPresentationInfo *)self setProducerVersion:0.0];
  [(OKPresentationInfo *)self setRequiresProducer:0];
  -[OKPresentationInfo setResolutions:](self, "setResolutions:", [MEMORY[0x277CBEB18] arrayWithObject:{+[OKRuntime resolutionStringWithSize:keepAspectRatio:](OKRuntime, "resolutionStringWithSize:keepAspectRatio:", 0, *&OKResolutionSizeDefault, unk_280362BD0)}]);
  [(OKPresentationInfo *)self setCouchPotatoSupported:0];
  [(OKPresentationInfo *)self setCouchPotatoDelay:-1.0];
  [(OKPresentationInfo *)self setCouchPotatoStepDuration:-1.0];
  [(OKPresentationInfo *)self setTrailerSupported:0];
  [(OKPresentationInfo *)self setTrailerNavigatorName:0];
  [(OKPresentationInfo *)self setWheelControllerSupported:0];
  [(OKPresentationInfo *)self setMainNavigatorName:0];
  [(OKPresentationInfo *)self setMainFeederName:0];
  [(OKPresentationInfo *)self setBackgroundColor:0];
  [(OKPresentationInfo *)self setOverviewSupported:0];

  [(OKPresentationInfo *)self unlock];
}

- (void)importFromDictionary:(id)dictionary
{
  [(OKPresentationInfo *)self lock];
  [(OKPresentationInfo *)self reset];
  v5 = [dictionary objectForKey:@"uuid"];
  if (v5)
  {
    [(OKPresentationInfo *)self setUuid:v5];
  }

  v6 = [dictionary objectForKey:@"creationDate"];
  if (v6)
  {
    [(OKPresentationInfo *)self setCreationDate:v6];
  }

  v7 = [dictionary objectForKey:@"lastModifiedDate"];
  if (v7)
  {
    [(OKPresentationInfo *)self setLastModifiedDate:v7];
  }

  v8 = [dictionary objectForKey:@"versionID"];
  if (v8)
  {
    [(OKPresentationInfo *)self setVersionID:v8];
  }

  v9 = [dictionary objectForKey:@"format"];
  if (v9)
  {
    -[OKPresentationInfo setFormat:](self, "setFormat:", [v9 unsignedIntegerValue]);
  }

  v10 = [dictionary objectForKey:@"formatVersion"];
  if (v10)
  {
    -[OKPresentationInfo setFormatVersion:](self, "setFormatVersion:", [v10 unsignedIntegerValue]);
  }

  v11 = [dictionary objectForKey:@"apiVersion"];
  if (v11)
  {
    [v11 doubleValue];
    [(OKPresentationInfo *)self setApiVersion:?];
  }

  v12 = [dictionary objectForKey:@"producerIdentifier"];
  if (v12)
  {
    [(OKPresentationInfo *)self setProducerIdentifier:v12];
  }

  v13 = [dictionary objectForKey:@"producerVersion"];
  if (v13)
  {
    [v13 doubleValue];
    [(OKPresentationInfo *)self setProducerVersion:?];
  }

  v14 = [dictionary objectForKey:@"requiresProducer"];
  if (v14)
  {
    -[OKPresentationInfo setRequiresProducer:](self, "setRequiresProducer:", [v14 BOOLValue]);
  }

  v15 = [dictionary objectForKey:@"resolutions"];
  if (v15)
  {
    -[OKPresentationInfo setResolutions:](self, "setResolutions:", [MEMORY[0x277CBEB18] arrayWithArray:v15]);
  }

  v16 = [dictionary objectForKey:@"couchPotatoSupported"];
  if (v16)
  {
    -[OKPresentationInfo setCouchPotatoSupported:](self, "setCouchPotatoSupported:", [v16 BOOLValue]);
  }

  v17 = [dictionary objectForKey:@"couchPotatoStepDuration"];
  if (v17)
  {
    [v17 doubleValue];
    [(OKPresentationInfo *)self setCouchPotatoStepDuration:?];
  }

  v18 = [dictionary objectForKey:@"couchPotatoDelay"];
  if (v18)
  {
    [v18 doubleValue];
    [(OKPresentationInfo *)self setCouchPotatoDelay:?];
  }

  v19 = [dictionary objectForKey:@"motionSupported"];
  if (v19)
  {
    -[OKPresentationInfo setMotionSupported:](self, "setMotionSupported:", [v19 BOOLValue]);
  }

  v20 = [dictionary objectForKey:@"wheelControllerSupported"];
  if (v20)
  {
    -[OKPresentationInfo setWheelControllerSupported:](self, "setWheelControllerSupported:", [v20 BOOLValue]);
  }

  v21 = [dictionary objectForKey:@"overviewSupported"];
  if (v21)
  {
    -[OKPresentationInfo setOverviewSupported:](self, "setOverviewSupported:", [v21 BOOLValue]);
  }

  v22 = [dictionary objectForKey:@"trailerSupported"];
  if (v22)
  {
    -[OKPresentationInfo setTrailerSupported:](self, "setTrailerSupported:", [v22 BOOLValue]);
  }

  v23 = [dictionary objectForKey:@"trailerNavigatorName"];
  if (v23)
  {
    [(OKPresentationInfo *)self setTrailerNavigatorName:v23];
  }

  v24 = [dictionary objectForKey:@"mainNavigatorName"];
  if (v24)
  {
    [(OKPresentationInfo *)self setMainNavigatorName:v24];
  }

  v25 = [dictionary objectForKey:@"mainFeederName"];
  if (v25)
  {
    [(OKPresentationInfo *)self setMainFeederName:v25];
  }

  if ([dictionary objectForKey:@"backgroundColor"])
  {
    [(OKPresentationInfo *)self setBackgroundColor:UIColorFromString()];
  }

  [(OKPresentationInfo *)self unlock];
}

- (id)dictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(OKPresentationInfo *)self lock];
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  creationDate = self->_creationDate;
  if (creationDate)
  {
    [v3 setObject:creationDate forKey:@"creationDate"];
  }

  lastModifiedDate = self->_lastModifiedDate;
  if (lastModifiedDate)
  {
    [v3 setObject:lastModifiedDate forKey:@"lastModifiedDate"];
  }

  versionID = self->_versionID;
  if (versionID)
  {
    [v3 setObject:versionID forKey:@"versionID"];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_format), @"format"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_formatVersion), @"formatVersion"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_apiVersion), @"apiVersion"}];
  producerIdentifier = self->_producerIdentifier;
  if (producerIdentifier)
  {
    [v3 setObject:producerIdentifier forKey:@"producerIdentifier"];
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_producerVersion), @"producerVersion"}];
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_requiresProducer), @"requiresProducer"}];
  }

  [v3 setObject:self->_resolutions forKey:@"resolutions"];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_couchPotatoSupported), @"couchPotatoSupported"}];
  if (self->_couchPotatoDelay != -1.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"couchPotatoDelay"}];
  }

  if (self->_couchPotatoStepDuration != -1.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"couchPotatoStepDuration"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_motionSupported), @"motionSupported"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_wheelControllerSupported), @"wheelControllerSupported"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_overviewSupported), @"wheelControllerSupported"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_trailerSupported), @"trailerSupported"}];
  trailerNavigatorName = self->_trailerNavigatorName;
  if (trailerNavigatorName)
  {
    [v3 setObject:trailerNavigatorName forKey:@"trailerNavigatorName"];
  }

  mainNavigatorName = self->_mainNavigatorName;
  if (mainNavigatorName)
  {
    [v3 setObject:mainNavigatorName forKey:@"mainNavigatorName"];
  }

  mainFeederName = self->_mainFeederName;
  if (mainFeederName)
  {
    [v3 setObject:mainFeederName forKey:@"mainFeederName"];
  }

  if (self->_backgroundColor)
  {
    [v3 setObject:NSStringFromUIColor() forKey:@"backgroundColor"];
  }

  [(OKPresentationInfo *)self unlock];

  return v3;
}

@end