@interface KNSoundtrack
- (KNSoundtrack)initWithContext:(id)context;
- (KNSoundtrack)initWithSoundtrackMedia:(id)media context:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setMedia:(id)media;
- (void)setMode:(int64_t)mode;
- (void)setVolume:(float)volume;
@end

@implementation KNSoundtrack

- (void)setVolume:(float)volume
{
  if (self->_volume != volume)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_volume = volume;
  }
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    objc_msgSend_willModify(self, a2, mode);
    self->_mode = mode;
  }
}

- (void)setMedia:(id)media
{
  mediaCopy = media;
  if (self->_media != mediaCopy)
  {
    v9 = mediaCopy;
    objc_msgSend_willModify(self, mediaCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_media, v8);
    mediaCopy = v8;
  }
}

- (KNSoundtrack)initWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = KNSoundtrack;
  v3 = [(KNSoundtrack *)&v7 initWithContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_volume = 1.0;
    media = v3->_media;
    v3->_media = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (KNSoundtrack)initWithSoundtrackMedia:(id)media context:(id)context
{
  mediaCopy = media;
  contextCopy = context;
  v11 = objc_msgSend_initWithContext_(self, v8, contextCopy);
  if (v11)
  {
    v12 = objc_msgSend_copy(mediaCopy, v9, v10);
    media = v11->_media;
    v11->_media = v12;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_context(self, v5, v6);
  v9 = objc_msgSend_initWithContext_(v4, v8, v7);

  *(v9 + 64) = self->_volume;
  *(v9 + 72) = self->_mode;
  v12 = objc_msgSend_copy(self->_media, v10, v11);
  v13 = *(v9 + 80);
  *(v9 + 80) = v12;

  return v9;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[92]);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 48);
    self->_volume = v7;
  }

  if ((v6 & 2) != 0)
  {
    self->_mode = *(v5 + 56);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = *(v5 + 32);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v8, *(*(v5 + 40) + v12));
      objc_msgSend_addObject_(v10, v14, v13);

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v15 = objc_msgSend_copy(v10, v8, v9);
  media = self->_media;
  self->_media = v15;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275DC9704, off_2812EA908[92]);

  v7 = *(v5 + 16);
  *(v5 + 48) = self->_volume;
  mode = self->_mode;
  *(v5 + 16) = v7 | 3;
  if (mode == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!mode)
  {
    v9 = 0;
  }

  *(v5 + 56) = v9;
  objc_msgSend_setDataReferenceArray_message_(archiverCopy, v6, self->_media, v5 + 24);
}

@end