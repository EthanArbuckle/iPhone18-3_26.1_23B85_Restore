@interface VFXAudioPlayer
+ (id)audioPlayerWithAVAudioNode:(id)node;
+ (id)audioPlayerWithSource:(id)source;
- (VFXAudioPlayer)initWithAVAudioNode:(id)node;
- (VFXAudioPlayer)initWithSource:(id)source;
- (void)dealloc;
- (void)play;
- (void)recycle;
- (void)reset;
- (void)setNodeRef:(__CFXNode *)ref;
@end

@implementation VFXAudioPlayer

- (VFXAudioPlayer)initWithSource:(id)source
{
  v33.receiver = self;
  v33.super_class = VFXAudioPlayer;
  v4 = [(VFXAudioPlayer *)&v33 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E6958458]);
    v4->_audioNode = &v5->super;
    v4->_audioPlayer = v5;
    v4->_customAudioNode = 0;
    sourceCopy = source;
    v4->_audioSource = sourceCopy;
    audioPlayer = v4->_audioPlayer;
    v11 = objc_msgSend_renderingAlgorithm(sourceCopy, v8, v9, v10);
    objc_msgSend_setRenderingAlgorithm_(audioPlayer, v12, v11, v13);
    objc_msgSend_rate(v4->_audioSource, v14, v15, v16);
    objc_msgSend_setRate_(v4->_audioPlayer, v17, v18, v19);
    objc_msgSend_volume(v4->_audioSource, v20, v21, v22);
    objc_msgSend_setVolume_(v4->_audioPlayer, v23, v24, v25);
    objc_msgSend_reverbBlend(v4->_audioSource, v26, v27, v28);
    objc_msgSend_setReverbBlend_(v4->_audioPlayer, v29, v30, v31);
  }

  return v4;
}

- (VFXAudioPlayer)initWithAVAudioNode:(id)node
{
  v7.receiver = self;
  v7.super_class = VFXAudioPlayer;
  v4 = [(VFXAudioPlayer *)&v7 init];
  if (v4)
  {
    nodeCopy = node;
    v4->_customAudioNode = 1;
    v4->_audioPlayer = 0;
    v4->_audioSource = 0;
    v4->_audioNode = nodeCopy;
  }

  return v4;
}

+ (id)audioPlayerWithAVAudioNode:(id)node
{
  v4 = [VFXAudioPlayer alloc];
  result = objc_msgSend_initWithAVAudioNode_(v4, v5, node, v6);
  *(result + 50) = 1;
  return result;
}

- (void)reset
{
  objc_msgSend_setWillStartPlayback_(self, a2, 0, v2);
  objc_msgSend_setDidFinishPlayback_(self, v4, 0, v5);
  self->_nodeRef = 0;
  self->_world = 0;

  self->_audioSource = 0;
}

+ (id)audioPlayerWithSource:(id)source
{
  if (qword_1EB658840 && objc_msgSend_count(qword_1EB658840, a2, source, v3))
  {
    v8 = objc_msgSend_anyObject(qword_1EB658840, v5, v6, v7);
    v9 = v8;
    objc_msgSend_removeObject_(qword_1EB658840, v10, v8, v11);
    sourceCopy = source;
    v8[3] = sourceCopy;
    v13 = v8[2];
    v17 = objc_msgSend_renderingAlgorithm(sourceCopy, v14, v15, v16);
    objc_msgSend_setRenderingAlgorithm_(v13, v18, v17, v19);
    objc_msgSend_rate(v8[3], v20, v21, v22);
    objc_msgSend_setRate_(v8[2], v23, v24, v25);
    objc_msgSend_volume(v8[3], v26, v27, v28);
    objc_msgSend_setVolume_(v8[2], v29, v30, v31);
    objc_msgSend_reverbBlend(v8[3], v32, v33, v34);
    objc_msgSend_setReverbBlend_(v8[2], v35, v36, v37);

    return v8;
  }

  else
  {
    v39 = [VFXAudioPlayer alloc];
    result = objc_msgSend_initWithSource_(v39, v40, source, v41);
    *(result + 50) = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXAudioPlayer;
  [(VFXAudioPlayer *)&v3 dealloc];
}

- (void)setNodeRef:(__CFXNode *)ref
{
  self->_nodeRef = ref;
  if (ref)
  {
    self->_world = sub_1AF1C3FAC(ref);
  }
}

- (void)play
{
  audioSource = self->_audioSource;
  if (!audioSource || self->_customAudioNode)
  {
    return;
  }

  audioPlayer = self->_audioPlayer;
  v7 = objc_msgSend_audioBuffer(audioSource, a2, v2, v3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF29D4B0;
  block[3] = &unk_1E7A7A770;
  block[4] = self;
  objc_msgSend_setCompleted_(self, v8, 0, v9);
  shouldStream = objc_msgSend_shouldStream(self->_audioSource, v10, v11, v12);
  nodeRef = self->_nodeRef;
  if (nodeRef)
  {
    CFRetain(self->_nodeRef);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1AF29D508;
  v28[3] = &unk_1E7A7E4F8;
  v28[6] = block;
  v28[7] = nodeRef;
  v28[4] = self;
  v28[5] = audioPlayer;
  if (v7)
  {
    v18 = objc_msgSend_loops(self->_audioSource, v13, v14, v15);
    objc_msgSend_scheduleBuffer_atTime_options_completionHandler_(audioPlayer, v19, v7, 0, v18, v28);
LABEL_9:
    v22 = 1;
    goto LABEL_10;
  }

  if (shouldStream)
  {
    v20 = objc_msgSend_audioFile(self->_audioSource, v13, v14, v15);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1AF29D634;
    v27[3] = &unk_1E7A7E520;
    v27[4] = self;
    v27[5] = audioPlayer;
    v27[6] = v28;
    v27[7] = nodeRef;
    objc_msgSend_scheduleFile_atTime_completionHandler_(audioPlayer, v21, v20, 0, v27);
    goto LABEL_9;
  }

  v22 = 0;
LABEL_10:
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1AF29D7B4;
  v26[3] = &unk_1E7A7A770;
  v26[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v26);
  if ((v22 & 1) == 0)
  {
    v23 = self->_nodeRef;
    if (v23)
    {
      CFRelease(v23);
    }

    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_msgSend_setCompleted_(self, v24, 1, v25);
  }
}

- (void)recycle
{
  objc_sync_enter(self);
  objc_msgSend_reset(self, v3, v4, v5);
  v9 = qword_1EB658840;
  if (!qword_1EB658840)
  {
    qword_1EB658840 = objc_msgSend_set(MEMORY[0x1E695DFA8], v6, v7, v8);
    v10 = qword_1EB658840;
    v9 = qword_1EB658840;
  }

  objc_msgSend_addObject_(v9, v6, self, v8);

  objc_sync_exit(self);
}

@end