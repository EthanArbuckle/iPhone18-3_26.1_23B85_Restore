@interface TSDGLFrameBuffer
+ (int)currentGLFramebufferWithBindingOption:(int64_t)option;
- (BOOL)p_isCurrentDrawBuffersEqualToDrawbuffers:(unsigned int *)drawbuffers count:(int64_t)count;
- (CGSize)size;
- (CGSize)sizeOfGLTextureNamed:(id)named;
- (NSString)currentGLTextureName;
- (TSDGLFrameBuffer)initWithSize:(CGSize)size textureConfigs:(id)configs;
- (TSDGLFrameBuffer)initWithSize:(CGSize)size textureCount:(unint64_t)count;
- (id)description;
- (id)p_currentTextureLookupInfoAtAttachment:(unsigned int)attachment;
- (int64_t)currentTextureIndexAtAttachment:(unsigned int)attachment;
- (unsigned)GLTextureAtIndex:(unint64_t)index attachment:(unsigned int)attachment;
- (unsigned)GLTextureNamed:(id)named;
- (unsigned)currentGLTexture;
- (unsigned)currentGLTextureAtAttachment:(unsigned int)attachment;
- (void)bindFramebufferWithBindingOption:(int64_t)option;
- (void)dealloc;
- (void)p_setDrawBuffersAndReadBuffer;
- (void)p_setFramebufferTextureAtAttachmentIndex:(int64_t)index bindingOption:(int64_t)option;
- (void)setCurrentTextureIndex:(unint64_t)index atAttachment:(unsigned int)attachment;
- (void)setCurrentTextureNamed:(id)named;
- (void)setCurrentTextureNamed:(id)named atAttachment:(unsigned int)attachment;
- (void)setCurrentTextureToNextAtAttachment:(unsigned int)attachment;
- (void)setupFramebufferIfNecessary;
- (void)teardown;
- (void)unbindFramebufferAndBindGLFramebuffer:(int)framebuffer withBindingOption:(int64_t)option;
@end

@implementation TSDGLFrameBuffer

+ (int)currentGLFramebufferWithBindingOption:(int64_t)option
{
  params = 0;
  glGetIntegerv(0x8CA6u, &params);
  return params;
}

- (TSDGLFrameBuffer)initWithSize:(CGSize)size textureConfigs:(id)configs
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = TSDGLFrameBuffer;
  v7 = [(TSDGLFrameBuffer *)&v9 init];
  if (v7)
  {
    v7->_textureConfigs = configs;
    v7->_frameBufferSize.width = width;
    v7->_frameBufferSize.height = height;
    v7->_shouldDeleteTexturesOnTeardown = 1;
  }

  return v7;
}

- (TSDGLFrameBuffer)initWithSize:(CGSize)size textureCount:(unint64_t)count
{
  countCopy = count;
  height = size.height;
  width = size.width;
  for (i = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, count); countCopy; --countCopy)
  {
    v10 = objc_msgSend_textureConfigWithSize_name_(TSDGLFrameBufferTextureConfig, v8, 0, width, height);
    objc_msgSend_addObject_(i, v11, v10);
  }

  return MEMORY[0x2821F9670](self, sel_initWithSize_textureConfigs_, i);
}

- (void)dealloc
{
  objc_msgSend_teardown(self, a2, v2);

  v4.receiver = self;
  v4.super_class = TSDGLFrameBuffer;
  [(TSDGLFrameBuffer *)&v4 dealloc];
}

- (id)description
{
  if (objc_msgSend_name(self, a2, v2))
  {
    v4 = MEMORY[0x277CCACA8];
    v12.receiver = self;
    v12.super_class = TSDGLFrameBuffer;
    v5 = [(TSDGLFrameBuffer *)&v12 description];
    v8 = objc_msgSend_name(self, v6, v7);
    return objc_msgSend_stringWithFormat_(v4, v9, @"%@:%@", v5, v8);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TSDGLFrameBuffer;
    return [(TSDGLFrameBuffer *)&v11 description];
  }
}

- (void)setupFramebufferIfNecessary
{
  v186 = *MEMORY[0x277D85DE8];
  p_framebuffer = &self->_framebuffer;
  if (!self->_framebuffer)
  {
    v4 = objc_opt_class();
    v7 = objc_msgSend_currentGLFramebuffer(v4, v5, v6);
    glGenFramebuffers(1, p_framebuffer);
    glBindFramebuffer(0x8D40u, self->_framebuffer);
    v169 = objc_opt_new();
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
    objc_msgSend_addObject_(v9, v13, v12);
    v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15);
    v168 = v8;
    objc_msgSend_addObject_(v8, v17, v16);
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    selfCopy = self;
    textureConfigs = self->_textureConfigs;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(textureConfigs, v19, &v179, v185, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v180;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v180 != v24)
          {
            objc_enumerationMutation(textureConfigs);
          }

          v26 = *(*(&v179 + 1) + 8 * i);
          v27 = objc_msgSend_attachment(v26, v21, v22);
          v29 = objc_msgSend_objectAtIndexedSubscript_(v9, v28, (v27 - 36064));
          objc_msgSend_addObject_(v29, v30, v26);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(textureConfigs, v21, &v179, v185, 16);
      }

      while (v23);
    }

    HIDWORD(v165) = v7;
    v31 = objc_msgSend_objectAtIndexedSubscript_(v9, v21, 0);
    if (objc_msgSend_count(v31, v32, v33))
    {
      v35 = 0;
      v167 = v31;
      do
      {
        v36 = objc_msgSend_objectAtIndexedSubscript_(v31, v34, v35);
        v39 = objc_msgSend_target(v36, v37, v38);
        textures = 0;
        glGenTextures(1, &textures);
        glBindTexture(v39, textures);
        v42 = objc_msgSend_name(v36, v40, v41);
        if (objc_msgSend_objectForKeyedSubscript_(v169, v43, v42))
        {
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSDGLFrameBuffer setupFramebufferIfNecessary]");
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
          v52 = objc_msgSend_name(v36, v50, v51);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v53, v47, v49, 572, 0, "More than one texture named %@!", v52);
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
        }

        v56 = textures;
        objc_msgSend_size(v36, v44, v45);
        v58 = v57;
        v60 = v59;
        v63 = objc_msgSend_name(v36, v61, v62);
        v65 = objc_msgSend_textureLookupInfoWithAttachment_indexOnAttachment_textureName_textureSize_name_target_(TSDGLFrameBufferTextureLookupInfo, v64, 36064, v35, v56, v63, v39, v58, v60);
        v68 = objc_msgSend_name(v36, v66, v67);
        objc_msgSend_setObject_forKeyedSubscript_(v169, v69, v65, v68);
        v71 = objc_msgSend_objectAtIndexedSubscript_(v168, v70, 0);
        objc_msgSend_addObject_(v71, v72, v65);
        glTexParameteri(v39, 0x2802u, 33071);
        glTexParameteri(v39, 0x2803u, 33071);
        glTexParameteri(v39, 0x2801u, 9729);
        glTexParameteri(v39, 0x2800u, 9729);
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v75 = objc_msgSend_textureParameters(v36, v73, v74);
        v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v174, v184, 16);
        if (v77)
        {
          v80 = v77;
          v81 = *v175;
          do
          {
            for (j = 0; j != v80; ++j)
            {
              if (*v175 != v81)
              {
                objc_enumerationMutation(v75);
              }

              objc_msgSend_setGLTextureParameter(*(*(&v174 + 1) + 8 * j), v78, v79);
            }

            v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v78, &v174, v184, 16);
          }

          while (v80);
        }

        if (objc_msgSend_backingSurface(v36, v78, v79))
        {
          v85 = objc_msgSend_currentContext(MEMORY[0x277CD9388], v83, v84);
          v88 = objc_msgSend_backingSurface(v36, v86, v87);
          v91 = objc_msgSend_internalFormat(v36, v89, v90);
          objc_msgSend_size(v36, v92, v93);
          v95 = v94;
          objc_msgSend_size(v36, v96, v97);
          v99 = v98;
          v102 = objc_msgSend_GLFormat(v36, v100, v101);
          v105 = objc_msgSend_GLType(v36, v103, v104);
          LODWORD(v165) = 0;
          if ((objc_msgSend_texImageIOSurface_target_internalFormat_width_height_format_type_plane_(v85, v106, v88, v39, v91, v95, v99, v102, v105, v165) & 1) == 0)
          {
            v109 = MEMORY[0x277D81150];
            v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "[TSDGLFrameBuffer setupFramebufferIfNecessary]");
            v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v113, v110, v112, 596, 0, "Unable to attach to the IOSurface.");
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115);
          }
        }

        else
        {
          v116 = objc_msgSend_internalFormat(v36, v83, v84);
          objc_msgSend_size(v36, v117, v118);
          v120 = v119;
          objc_msgSend_size(v36, v121, v122);
          v124 = v123;
          v127 = objc_msgSend_GLFormat(v36, v125, v126);
          v130 = objc_msgSend_GLType(v36, v128, v129);
          glTexImage2D(v39, 0, v116, v120, v124, 0, v127, v130, 0);
        }

        ++v35;
        v31 = v167;
      }

      while (v35 < objc_msgSend_count(v167, v107, v108));
    }

    selfCopy->_namesToTextureDict = v169;
    selfCopy->_textureConfigsByAttachment = v9;

    selfCopy->_textureLookupInfosByAttachment = v168;
    glClearColor(0.0, 0.0, 0.0, 0.0);
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v132 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_textureLookupInfosByAttachment, v131, 0);
    v135 = objc_msgSend_reverseObjectEnumerator(v132, v133, v134);
    v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v135, v136, &v170, v183, 16);
    if (v137)
    {
      v140 = v137;
      v141 = *v171;
      v142 = HIDWORD(v165);
      do
      {
        for (k = 0; k != v140; ++k)
        {
          if (*v171 != v141)
          {
            objc_enumerationMutation(v135);
          }

          v144 = *(*(&v170 + 1) + 8 * k);
          v145 = objc_msgSend_target(v144, v138, v139);
          v148 = objc_msgSend_textureName(v144, v146, v147);
          glFramebufferTexture2D(0x8D40u, 0x8CE0u, v145, v148, 0);
          glClear(0x4000u);
          v151 = objc_msgSend_target(v144, v149, v150);
        }

        v152 = v151;
        v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(v135, v138, &v170, v183, 16);
      }

      while (v140);
    }

    else
    {
      v152 = 3553;
      v142 = HIDWORD(v165);
    }

    glBindTexture(v152, 0);
    glBindFramebuffer(0x8D40u, v142);
    selfCopy->_currentTextureLookupInfoByAttachment = objc_opt_new();
    selfCopy->_desiredTextureLookupInfoByAttachment = objc_opt_new();
    currentTextureLookupInfoByAttachment = selfCopy->_currentTextureLookupInfoByAttachment;
    v156 = objc_msgSend_invalidTextureLookupInfo(TSDGLFrameBufferTextureLookupInfo, v154, v155);
    objc_msgSend_addObject_(currentTextureLookupInfoByAttachment, v157, v156);
    desiredTextureLookupInfoByAttachment = selfCopy->_desiredTextureLookupInfoByAttachment;
    v160 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_textureLookupInfosByAttachment, v159, 0);
    Object = objc_msgSend_firstObject(v160, v161, v162);
    if (!Object)
    {
      Object = objc_msgSend_invalidTextureLookupInfo(TSDGLFrameBufferTextureLookupInfo, v163, 0);
    }

    objc_msgSend_addObject_(desiredTextureLookupInfoByAttachment, v163, Object);
  }
}

- (BOOL)p_isCurrentDrawBuffersEqualToDrawbuffers:(unsigned int *)drawbuffers count:(int64_t)count
{
  if (self->_currentDrawBufferCount != count)
  {
    return 0;
  }

  v4 = count - 1;
  if (count < 1)
  {
    return 1;
  }

  currentDrawBuffers = self->_currentDrawBuffers;
  do
  {
    v7 = *currentDrawBuffers++;
    v6 = v7;
    v9 = *drawbuffers++;
    v8 = v9;
    v11 = v4-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

- (void)p_setDrawBuffersAndReadBuffer
{
  currentBindingOption = self->_currentBindingOption;
  v4 = objc_msgSend_objectAtIndexedSubscript_(self->_currentTextureLookupInfoByAttachment, a2, 0);
  isValid = objc_msgSend_isValid(v4, v5, v6);
  v9 = isValid;
  if (isValid)
  {
    v10 = 36064;
  }

  else
  {
    v10 = 0;
  }

  v19 = v10;
  if (currentBindingOption == 1)
  {
    self->_currentDrawBufferCount = 0;
  }

  else
  {
    if ((objc_msgSend_p_isCurrentDrawBuffersEqualToDrawbuffers_count_(self, v8, &v19, isValid) & 1) == 0)
    {
      self->_currentDrawBufferCount = v9;
      if (v9)
      {
        self->_currentDrawBuffers[0] = v19;
      }
    }

    if (currentBindingOption == 2)
    {
      v11 = 0;
      goto LABEL_14;
    }
  }

  if ((v9 & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDGLFrameBuffer p_setDrawBuffersAndReadBuffer]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 710, 0, "More than one texture bound, even though it's for reading!");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v11 = v19;
LABEL_14:
  self->_currentReadBuffer = v11;
}

- (void)p_setFramebufferTextureAtAttachmentIndex:(int64_t)index bindingOption:(int64_t)option
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(self->_currentTextureLookupInfoByAttachment, a2, index);
  if (v7 != objc_msgSend_objectAtIndexedSubscript_(self->_desiredTextureLookupInfoByAttachment, v8, index) && ((v10 = objc_msgSend_objectAtIndexedSubscript_(self->_currentTextureLookupInfoByAttachment, v9, index), (objc_msgSend_isValid(v10, v11, v12) & 1) != 0) || (v13 = objc_msgSend_objectAtIndexedSubscript_(self->_desiredTextureLookupInfoByAttachment, v9, index), (objc_msgSend_isValid(v13, v14, v15) & 1) != 0)) || self->_currentBindingOption != option)
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(self->_currentTextureLookupInfoByAttachment, v9, index);
    isValid = objc_msgSend_isValid(v16, v17, v18);
    v21 = objc_msgSend_objectAtIndexedSubscript_(self->_desiredTextureLookupInfoByAttachment, v20, index);
    objc_msgSend_setObject_atIndexedSubscript_(self->_currentTextureLookupInfoByAttachment, v22, v21, index);
    v24 = objc_msgSend_objectAtIndexedSubscript_(self->_currentTextureLookupInfoByAttachment, v23, index);
    if (objc_msgSend_isValid(v24, v25, v26))
    {
      v29 = objc_msgSend_textureName(v24, v27, v28);
    }

    else
    {
      v29 = 0;
    }

    v30 = objc_msgSend_targetOfPossiblyInvalidInfo(v24, v27, v28);
    glFramebufferTexture2D(0x8D40u, index + 36064, v30, v29, 0);
    if (!(isValid & 1 | !self->_isBound))
    {

      objc_msgSend_p_setDrawBuffersAndReadBuffer(self, v31, v32);
    }
  }
}

- (void)bindFramebufferWithBindingOption:(int64_t)option
{
  objc_msgSend_setupFramebufferIfNecessary(self, a2, option);
  self->_currentBindingOption = option;
  glBindFramebuffer(0x8D40u, self->_framebuffer);
  objc_msgSend_p_setFramebufferTextureAtAttachmentIndex_bindingOption_(self, v5, 0, option);
  objc_msgSend_p_setDrawBuffersAndReadBuffer(self, v6, v7);
  self->_isBound = 1;
}

- (void)unbindFramebufferAndBindGLFramebuffer:(int)framebuffer withBindingOption:(int64_t)option
{
  if (framebuffer != -1)
  {
    glBindFramebuffer(0x8D40u, framebuffer);
    self->_currentBindingOption = option;
  }

  if (self->_currentDrawBufferCount != 1)
  {
    self->_currentDrawBufferCount = 1;
  }

  self->_isBound = 0;
}

- (int64_t)currentTextureIndexAtAttachment:(unsigned int)attachment
{
  v4 = attachment - 36064;
  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, a2, v4);
  v7 = objc_msgSend_objectAtIndexedSubscript_(self->_currentTextureLookupInfoByAttachment, v6, v4);
  if (!objc_msgSend_isValid(v7, v8, v9))
  {
    return 0;
  }

  return objc_msgSend_indexOfObject_(v5, v10, v7);
}

- (void)setCurrentTextureIndex:(unint64_t)index atAttachment:(unsigned int)attachment
{
  objc_msgSend_setupFramebufferIfNecessary(self, a2, index);
  v7 = attachment - 36064;
  v9 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, v8, v7);
  if (objc_msgSend_count(v9, v10, v11) <= index)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDGLFrameBuffer setCurrentTextureIndex:atAttachment:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    v19 = objc_msgSend_count(v9, v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v14, v16, 835, 0, "Invalid textureIndex (%d) when only %d textures at attachment %d!", index, v19, v7);
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v23 = objc_msgSend_objectAtIndexedSubscript_(v9, v12, index);
  objc_msgSend_setObject_atIndexedSubscript_(self->_desiredTextureLookupInfoByAttachment, v24, v23, v7);
  if (self->_isBound)
  {
    currentBindingOption = self->_currentBindingOption;

    objc_msgSend_p_setFramebufferTextureAtAttachmentIndex_bindingOption_(self, v25, v7, currentBindingOption);
  }
}

- (void)setCurrentTextureNamed:(id)named
{
  namesToTextureDict = self->_namesToTextureDict;
  if (!namesToTextureDict)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGLFrameBuffer setCurrentTextureNamed:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 850, 0, "Name->texture mapping is not set up yet");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    namesToTextureDict = self->_namesToTextureDict;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(namesToTextureDict, a2, named);
  if (!v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDGLFrameBuffer setCurrentTextureNamed:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 853, 0, "Could not find texture named %@!", named);
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v23 = objc_msgSend_indexOnAttachment(v15, v13, v14);
  objc_msgSend_attachment(v15, v24, v25);

  MEMORY[0x2821F9670](self, sel_setCurrentTextureIndex_atAttachment_, v23);
}

- (void)setCurrentTextureNamed:(id)named atAttachment:(unsigned int)attachment
{
  v4 = *&attachment;
  v57 = *MEMORY[0x277D85DE8];
  if (!self->_namesToTextureDict)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGLFrameBuffer setCurrentTextureNamed:atAttachment:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 859, 0, "Name->texture mapping is not set up yet");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = (v4 - 36064);
  if (named)
  {
    v15 = objc_msgSend_objectForKeyedSubscript_(self->_namesToTextureDict, a2, named);
    if (!v15)
    {
      sub_276808CF4(named);
    }

    v18 = v15;
    if (objc_msgSend_attachment(v15, v16, v17) == v4)
    {

      MEMORY[0x2821F9670](self, sel_setCurrentTextureNamed_, named);
    }

    else
    {
      v25 = objc_msgSend_attachment(v18, v19, v20) - 36064;
      v27 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, v26, v25);
      objc_msgSend_removeObject_(v27, v28, v18);
      v30 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, v29, (v4 - 36064));
      objc_msgSend_addObject_(v30, v31, v18);
      objc_msgSend_setObject_atIndexedSubscript_(self->_desiredTextureLookupInfoByAttachment, v32, v18, (v4 - 36064));
      objc_msgSend_setAttachment_(v18, v33, v4);
      v35 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, v34, (v4 - 36064));
      v37 = objc_msgSend_indexOfObject_(v35, v36, v18);
      objc_msgSend_setIndexOnAttachment_(v18, v38, v37);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v40 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, v39, v25, 0);
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v52, v56, 16);
      if (v42)
      {
        v44 = v42;
        v45 = *v53;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v53 != v45)
            {
              objc_enumerationMutation(v40);
            }

            v47 = *(*(&v52 + 1) + 8 * i);
            v48 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, v43, v25);
            v50 = objc_msgSend_indexOfObject_(v48, v49, v47);
            objc_msgSend_setIndexOnAttachment_(v47, v51, v50);
          }

          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v52, v56, 16);
        }

        while (v44);
      }

      if (self->_isBound)
      {
        objc_msgSend_p_setFramebufferTextureAtAttachmentIndex_bindingOption_(self, v43, v14, self->_currentBindingOption);
      }
    }
  }

  else
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(self->_desiredTextureLookupInfoByAttachment, a2, (v4 - 36064));
    objc_msgSend_setValid_(v21, v22, 0);
    if (self->_isBound)
    {
      currentBindingOption = self->_currentBindingOption;

      objc_msgSend_p_setFramebufferTextureAtAttachmentIndex_bindingOption_(self, v23, (v4 - 36064), currentBindingOption);
    }
  }
}

- (void)setCurrentTextureToNextAtAttachment:(unsigned int)attachment
{
  v3 = *&attachment;
  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, a2, attachment - 36064);
  v8 = objc_msgSend_count(v5, v6, v7);
  if (v8)
  {
    v10 = (objc_msgSend_currentTextureIndexAtAttachment_(self, v9, v3) + 1) % v8;

    MEMORY[0x2821F9670](self, sel_setCurrentTextureIndex_atAttachment_, v10);
  }
}

- (unsigned)GLTextureAtIndex:(unint64_t)index attachment:(unsigned int)attachment
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, a2, attachment - 36064);
  if (objc_msgSend_count(v6, v7, v8) <= index)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDGLFrameBuffer GLTextureAtIndex:attachment:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 922, 0, "index out of bounds!");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  if (!self->_textureLookupInfosByAttachment)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDGLFrameBuffer GLTextureAtIndex:attachment:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 923, 0, "Textures are not set up yet");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_objectAtIndexedSubscript_(v6, v9, index);

  return objc_msgSend_textureName(v24, v25, v26);
}

- (unsigned)GLTextureNamed:(id)named
{
  namesToTextureDict = self->_namesToTextureDict;
  if (!namesToTextureDict)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGLFrameBuffer GLTextureNamed:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 935, 0, "Name->Index mapping is not set up yet");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    namesToTextureDict = self->_namesToTextureDict;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(namesToTextureDict, a2, named);
  if (!v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDGLFrameBuffer GLTextureNamed:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 938, 0, "Could not find texture named %@!", named);
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  return objc_msgSend_textureName(v15, v13, v14);
}

- (CGSize)sizeOfGLTextureNamed:(id)named
{
  namesToTextureDict = self->_namesToTextureDict;
  if (!namesToTextureDict)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGLFrameBuffer sizeOfGLTextureNamed:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 944, 0, "Name->Index mapping is not set up yet");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    namesToTextureDict = self->_namesToTextureDict;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(namesToTextureDict, a2, named);
  if (!v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDGLFrameBuffer sizeOfGLTextureNamed:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 947, 0, "Could not find texture named %@!", named);
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  objc_msgSend_textureSize(v15, v13, v14);
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)teardown
{
  v42 = *MEMORY[0x277D85DE8];
  p_framebuffer = &self->_framebuffer;
  if (self->_framebuffer)
  {
    if (objc_msgSend_shouldDeleteTexturesOnTeardown(self, a2, v2))
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *textures = 0u;
      v27 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = objc_msgSend_objectAtIndexedSubscript_(self->_textureLookupInfosByAttachment, v5, 0, 0);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
      if (v8)
      {
        v10 = v8;
        LODWORD(v11) = 0;
        v12 = *v22;
        do
        {
          v13 = 0;
          v11 = v11;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v6);
            }

            textures[v11++] = objc_msgSend_textureName(*(*(&v21 + 1) + 8 * v13++), v5, v9);
          }

          while (v10 != v13);
          v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v5, &v21, v25, 16);
        }

        while (v10);
        if (v11 - 1 >= 0)
        {
          glDeleteTextures(v11, textures);
        }
      }
    }

    if (!*p_framebuffer)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDGLFrameBuffer teardown]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 979, 0, "Framebuffer has been torn down!");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    glDeleteFramebuffers(1, p_framebuffer);
    self->_framebuffer = 0;

    self->_namesToTextureDict = 0;
    self->_textureConfigs = 0;

    self->_textureConfigsByAttachment = 0;
    self->_textureLookupInfosByAttachment = 0;

    self->_currentTextureLookupInfoByAttachment = 0;
    self->_desiredTextureLookupInfoByAttachment = 0;
  }
}

- (id)p_currentTextureLookupInfoAtAttachment:(unsigned int)attachment
{
  currentTextureLookupInfoByAttachment = self->_currentTextureLookupInfoByAttachment;
  if (!currentTextureLookupInfoByAttachment)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGLFrameBuffer p_currentTextureLookupInfoAtAttachment:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 992, 0, "No valid textures!");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    currentTextureLookupInfoByAttachment = self->_currentTextureLookupInfoByAttachment;
  }

  v13 = attachment - 36064;
  v14 = objc_msgSend_objectAtIndexedSubscript_(currentTextureLookupInfoByAttachment, a2, v13);
  if ((objc_msgSend_isValid(v14, v15, v16) & 1) == 0)
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(self->_desiredTextureLookupInfoByAttachment, v17, v13);
  }

  if ((objc_msgSend_isValid(v14, v17, v18) & 1) == 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDGLFrameBuffer p_currentTextureLookupInfoAtAttachment:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 1000, 0, "Couldn't find texture!");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  return v14;
}

- (unsigned)currentGLTextureAtAttachment:(unsigned int)attachment
{
  v3 = objc_msgSend_p_currentTextureLookupInfoAtAttachment_(self, a2, *&attachment);

  return objc_msgSend_textureName(v3, v4, v5);
}

- (unsigned)currentGLTexture
{
  v2 = objc_msgSend_p_currentTextureLookupInfoAtAttachment_(self, a2, 36064);

  return objc_msgSend_textureName(v2, v3, v4);
}

- (NSString)currentGLTextureName
{
  v2 = objc_msgSend_p_currentTextureLookupInfoAtAttachment_(self, a2, 36064);

  return objc_msgSend_name(v2, v3, v4);
}

- (CGSize)size
{
  width = self->_frameBufferSize.width;
  height = self->_frameBufferSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end