@interface VFXAudioSource
+ (VFXAudioSource)audioSourceWithAVAudioPCMBuffer:(id)buffer;
+ (id)audioSourceNamed:(id)named;
- (VFXAudioSource)initWithAVAudioPCMBuffer:(id)buffer;
- (VFXAudioSource)initWithCoder:(id)coder;
- (VFXAudioSource)initWithFileNamed:(id)named;
- (VFXAudioSource)initWithFileNamed:(id)named inBundle:(id)bundle;
- (VFXAudioSource)initWithURL:(id)l;
- (double)duration;
- (id)audioBufferFormat;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)renderingAlgorithm;
- (void)_customDecodingOfVFXAudioSource:(id)source;
- (void)_customEncodingOfVFXAudioSource:(id)source;
- (void)_load;
- (void)_loadURLWithBundle:(id)bundle;
- (void)dealloc;
- (void)load;
- (void)loadIfNeeded;
@end

@implementation VFXAudioSource

+ (VFXAudioSource)audioSourceWithAVAudioPCMBuffer:(id)buffer
{
  v4 = [self alloc];
  v7 = objc_msgSend_initWithAVAudioPCMBuffer_(v4, v5, buffer, v6);

  return v7;
}

- (VFXAudioSource)initWithAVAudioPCMBuffer:(id)buffer
{
  v5 = objc_msgSend_init(self, a2, buffer, v3);
  if (v5)
  {
    v5->_audioBuffer = buffer;
    objc_msgSend_setPositional_(v5, v6, 1, v7);
    LODWORD(v8) = 1.0;
    objc_msgSend_setVolume_(v5, v9, v10, v11, v8);
    LODWORD(v12) = 1.0;
    objc_msgSend_setRate_(v5, v13, v14, v15, v12);
  }

  return v5;
}

- (int64_t)renderingAlgorithm
{
  if (objc_msgSend_isPositional(self, a2, v2, v3))
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

- (void)_loadURLWithBundle:(id)bundle
{
  p_audioName = &self->_audioName;
  audioName = self->_audioName;
  if (audioName)
  {
    v8 = objc_msgSend_pathExtension(audioName, a2, bundle, v3);
    if (v8 && (v12 = v8, objc_msgSend_length(v8, v9, v10, v11)))
    {
      v15 = objc_msgSend_stringByDeletingPathExtension(*p_audioName, v9, v13, v14);
      v17 = objc_msgSend_URLForResource_withExtension_(bundle, v16, v15, v12);
    }

    else
    {
      v17 = objc_msgSend_URLForResource_withExtension_(bundle, v9, *p_audioName, @"caf");
      if (v17 || (v17 = objc_msgSend_URLForResource_withExtension_(bundle, v19, *p_audioName, @"caff")) != 0)
      {
LABEL_11:
        self->_audioURL = v17;
        return;
      }

      v17 = objc_msgSend_URLForResource_withExtension_(bundle, v20, *p_audioName, @"aiff");
    }

    if (!v17)
    {
      v18 = sub_1AF0D5194();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF49BC(p_audioName, v18);
      }

      v17 = 0;
    }

    goto LABEL_11;
  }
}

- (VFXAudioSource)initWithFileNamed:(id)named inBundle:(id)bundle
{
  v6 = objc_msgSend_init(self, a2, named, bundle);
  if (v6)
  {
    v6->_audioName = named;
    objc_msgSend_setPositional_(v6, v7, 1, v8);
    LODWORD(v9) = 1.0;
    objc_msgSend_setVolume_(v6, v10, v11, v12, v9);
    LODWORD(v13) = 1.0;
    objc_msgSend_setRate_(v6, v14, v15, v16, v13);
    objc_msgSend__loadURLWithBundle_(v6, v17, bundle, v18);
  }

  return v6;
}

- (VFXAudioSource)initWithFileNamed:(id)named
{
  v6 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, named, v3);

  return MEMORY[0x1EEE66B58](self, sel_initWithFileNamed_inBundle_, named, v6);
}

- (VFXAudioSource)initWithURL:(id)l
{
  v16.receiver = self;
  v16.super_class = VFXAudioSource;
  v4 = [(VFXAudioSource *)&v16 init];
  if (v4)
  {
    v4->_audioURL = l;
    objc_msgSend_setPositional_(v4, v5, 1, v6);
    LODWORD(v7) = 1.0;
    objc_msgSend_setVolume_(v4, v8, v9, v10, v7);
    LODWORD(v11) = 1.0;
    objc_msgSend_setRate_(v4, v12, v13, v14, v11);
  }

  return v4;
}

+ (id)audioSourceNamed:(id)named
{
  if (qword_1EB658850 != -1)
  {
    sub_1AFDF4A38();
  }

  result = objc_msgSend_objectForKey_(qword_1EB658848, a2, named, v3);
  if (!result)
  {
    v6 = [VFXAudioSource alloc];
    v9 = objc_msgSend_initWithFileNamed_(v6, v7, named, v8);
    v11 = v9;
    if (named && v9)
    {
      objc_msgSend_setObject_forKey_(qword_1EB658848, v10, v9, named);
    }

    return v11;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXAudioSource;
  [(VFXAudioSource *)&v3 dealloc];
}

- (void)load
{
  if (!self->_loaded)
  {
    objc_msgSend__load(self, a2, v2, v3);
  }
}

- (void)_load
{
  self->_loaded = 1;
  if (!self->_audioURL && self->_audioName)
  {
    v5 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2, v3);
    objc_msgSend__loadURLWithBundle_(self, v6, v5, v7);
  }

  if (!self->_audioFile && self->_audioURL)
  {
    v25 = 0;
    v8 = objc_alloc(MEMORY[0x1E6958408]);
    self->_audioFile = objc_msgSend_initForReading_error_(v8, v9, self->_audioURL, &v25);
  }

  if ((objc_msgSend_shouldStream(self, a2, v2, v3) & 1) == 0 && !self->_audioBuffer)
  {
    if (self->_audioFile)
    {
      v25 = 0;
      v10 = objc_alloc(MEMORY[0x1E6958440]);
      v14 = objc_msgSend_processingFormat(self->_audioFile, v11, v12, v13);
      v18 = objc_msgSend_length(self->_audioFile, v15, v16, v17);
      v20 = objc_msgSend_initWithPCMFormat_frameCapacity_(v10, v19, v14, v18);
      self->_audioBuffer = v20;
      if ((objc_msgSend_readIntoBuffer_error_(self->_audioFile, v21, v20, &v25) & 1) == 0)
      {
        v22 = sub_1AF0D5194();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF4A4C(&v25, v22, v23, v24);
        }
      }
    }
  }
}

- (void)loadIfNeeded
{
  if (!self->_loaded)
  {
    objc_msgSend_load(self, a2, v2, v3);
  }
}

- (id)audioBufferFormat
{
  objc_msgSend_loadIfNeeded(self, a2, v2, v3);
  audioBuffer = self->_audioBuffer;

  return objc_msgSend_format(audioBuffer, v5, v6, v7);
}

- (double)duration
{
  if (objc_msgSend_loops(self, a2, v2, v3))
  {
    return 1.79769313e308;
  }

  objc_msgSend_loadIfNeeded(self, v5, v6, v7);
  audioFile = self->_audioFile;
  if (!audioFile)
  {
    return 0.0;
  }

  if (self->_audioBuffer)
  {
    v16 = objc_msgSend_frameLength(self->_audioBuffer, v9, v10, v11);
  }

  else
  {
    v16 = objc_msgSend_length(audioFile, v9, v10, v11);
  }

  v17 = objc_msgSend_fileFormat(self->_audioFile, v13, v14, v15);
  objc_msgSend_sampleRate(v17, v18, v19, v20);
  return v16 / v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  audioName = self->_audioName;
  if (audioName)
  {
    v6 = objc_msgSend_audioSourceNamed_(VFXAudioSource, a2, audioName, v3);
  }

  else
  {
    if (self->_audioURL)
    {
      v9 = [VFXAudioSource alloc];
      v7 = objc_msgSend_initWithURL_(v9, v10, self->_audioURL, v11);
      goto LABEL_6;
    }

    audioBuffer = self->_audioBuffer;
    if (!audioBuffer)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v6 = objc_msgSend_audioSourceWithAVAudioPCMBuffer_(VFXAudioSource, a2, audioBuffer, v3);
  }

  v7 = v6;
LABEL_6:
  v12 = v7;
LABEL_7:
  isPositional = objc_msgSend_isPositional(self, a2, audioBuffer, v3);
  objc_msgSend_setPositional_(v12, v14, isPositional, v15);
  objc_msgSend_volume(self, v16, v17, v18);
  objc_msgSend_setVolume_(v12, v19, v20, v21);
  objc_msgSend_rate(self, v22, v23, v24);
  objc_msgSend_setRate_(v12, v25, v26, v27);
  v31 = objc_msgSend_loops(self, v28, v29, v30);
  objc_msgSend_setLoops_(v12, v32, v31, v33);
  shouldStream = objc_msgSend_shouldStream(self, v34, v35, v36);
  objc_msgSend_setShouldStream_(v12, v38, shouldStream, v39);
  return v12;
}

- (void)_customEncodingOfVFXAudioSource:(id)source
{
  audioName = self->_audioName;
  if (audioName)
  {
    objc_msgSend_encodeObject_forKey_(source, a2, audioName, @"name");
  }

  else if (self->_audioURL)
  {
    objc_msgSend_encodeObject_forKey_(source, a2, 0, @"url");
  }

  else
  {
    v36 = sub_1AF0D5194();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4ADC(v36);
    }
  }

  objc_msgSend_volume(self, v6, v7, v8);
  objc_msgSend_encodeFloat_forKey_(source, v9, @"volume", v10);
  objc_msgSend_rate(self, v11, v12, v13);
  objc_msgSend_encodeFloat_forKey_(source, v14, @"rate", v15);
  objc_msgSend_reverbBlend(self, v16, v17, v18);
  objc_msgSend_encodeFloat_forKey_(source, v19, @"reverbBlend", v20);
  isPositional = objc_msgSend_isPositional(self, v21, v22, v23);
  objc_msgSend_encodeBool_forKey_(source, v25, isPositional, @"positional");
  v29 = objc_msgSend_loops(self, v26, v27, v28);
  objc_msgSend_encodeBool_forKey_(source, v30, v29, @"loops");
  shouldStream = objc_msgSend_shouldStream(self, v31, v32, v33);
  objc_msgSend_encodeBool_forKey_(source, v35, shouldStream, @"shouldStream");
}

- (void)_customDecodingOfVFXAudioSource:(id)source
{
  p_audioName = &self->_audioName;
  if (self->_audioName)
  {
    v7 = @"name";
  }

  else
  {
    p_audioName = &self->_audioURL;
    if (!self->_audioURL)
    {
      goto LABEL_6;
    }

    v7 = @"url";
  }

  v8 = objc_opt_class();
  *p_audioName = objc_msgSend_decodeObjectOfClass_forKey_(source, v9, v8, v7);
LABEL_6:
  objc_msgSend_decodeFloatForKey_(source, a2, @"volume", v3);
  objc_msgSend_setVolume_(self, v10, v11, v12);
  objc_msgSend_decodeFloatForKey_(source, v13, @"rate", v14);
  objc_msgSend_setRate_(self, v15, v16, v17);
  objc_msgSend_decodeFloatForKey_(source, v18, @"reverbBlend", v19);
  objc_msgSend_setReverbBlend_(self, v20, v21, v22);
  v25 = objc_msgSend_decodeBoolForKey_(source, v23, @"positional", v24);
  objc_msgSend_setPositional_(self, v26, v25, v27);
  v30 = objc_msgSend_decodeBoolForKey_(source, v28, @"loops", v29);
  objc_msgSend_setLoops_(self, v31, v30, v32);
  v35 = objc_msgSend_decodeBoolForKey_(source, v33, @"shouldStream", v34);
  objc_msgSend_setShouldStream_(self, v36, v35, v37);

  objc_msgSend_loadIfNeeded(self, v38, v39, v40);
}

- (VFXAudioSource)initWithCoder:(id)coder
{
  v5 = objc_msgSend_init(self, a2, coder, v3);
  v8 = v5;
  if (v5)
  {
    objc_msgSend__customDecodingOfVFXAudioSource_(v5, v6, coder, v7);
  }

  return v8;
}

@end