@interface KNSoundtrack
- (KNSoundtrack)initWithContext:(id)a3;
- (KNSoundtrack)initWithSoundtrackMedia:(id)a3 context:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setMedia:(id)a3;
- (void)setMode:(int64_t)a3;
- (void)setVolume:(float)a3;
@end

@implementation KNSoundtrack

- (void)setVolume:(float)a3
{
  if (self->_volume != a3)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_volume = a3;
  }
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_mode = a3;
  }
}

- (void)setMedia:(id)a3
{
  v4 = a3;
  if (self->_media != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_media, v8);
    v4 = v8;
  }
}

- (KNSoundtrack)initWithContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = KNSoundtrack;
  v3 = [(KNSoundtrack *)&v7 initWithContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_volume = 1.0;
    media = v3->_media;
    v3->_media = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (KNSoundtrack)initWithSoundtrackMedia:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_initWithContext_(self, v8, v7);
  if (v11)
  {
    v12 = objc_msgSend_copy(v6, v9, v10);
    media = v11->_media;
    v11->_media = v12;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)loadFromUnarchiver:(id)a3
{
  v17 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v17, v4, off_2812EA908[92]);

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
      v13 = objc_msgSend_readDataReferenceMessage_(v17, v8, *(*(v5 + 40) + v12));
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

- (void)saveToArchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v4, sub_275DC9704, off_2812EA908[92]);

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
  objc_msgSend_setDataReferenceArray_message_(v10, v6, self->_media, v5 + 24);
}

@end