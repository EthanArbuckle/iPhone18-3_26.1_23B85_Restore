@interface KNRecordingNavigationEvent
- (BOOL)canPrecedeDiscontinuity;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIgnoredWhenSeeking;
- (KNRecordingNavigationEvent)initWithStartTime:(double)a3 targetSlideNode:(id)a4 targetEventIndex:(unint64_t)a5 animationPhase:(int64_t)a6;
- (KNSlideNode)targetSlideNode;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4 parentEventTrack:(id)a5;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation KNRecordingNavigationEvent

- (KNRecordingNavigationEvent)initWithStartTime:(double)a3 targetSlideNode:(id)a4 targetEventIndex:(unint64_t)a5 animationPhase:(int64_t)a6
{
  v10 = a4;
  v23.receiver = self;
  v23.super_class = KNRecordingNavigationEvent;
  v13 = [(KNRecordingEvent *)&v23 initWithStartTime:a3];
  if (v13)
  {
    if (v10)
    {
      v14 = objc_msgSend_context(v10, v11, v12);
      objc_storeWeak(&v13->_targetSlideNodeContextReference, v14);

      v17 = objc_msgSend_objectUUID(v10, v15, v16);
      v20 = objc_msgSend_copy(v17, v18, v19);
      targetSlideNodeUUID = v13->_targetSlideNodeUUID;
      v13->_targetSlideNodeUUID = v20;
    }

    v13->_targetEventIndex = a5;
    v13->_animationPhase = a6;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(KNRecordingNavigationEvent, a2, a3);
  objc_msgSend_startTime(self, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_targetSlideNode(self, v9, v10);
  v14 = objc_msgSend_targetEventIndex(self, v12, v13);
  v17 = objc_msgSend_animationPhase(self, v15, v16);
  started = objc_msgSend_initWithStartTime_targetSlideNode_targetEventIndex_animationPhase_(v4, v18, v11, v14, v17, v8);

  return started;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_startTime(self, v6, v7);
  v9 = v8;
  v12 = objc_msgSend_targetSlideNode(self, v10, v11);
  v15 = objc_msgSend_targetEventIndex(self, v13, v14);
  v18 = objc_msgSend_animationPhase(self, v16, v17);
  v20 = objc_msgSend_stringWithFormat_(v3, v19, @"<%@ %p time=%f targetSlideNode=%@ targetEventIndex=%tu animationPhase=%zd>", v5, self, v9, v12, v15, v18);

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = KNRecordingNavigationEvent;
  if ([(KNRecordingEvent *)&v24 isEqual:v4])
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = objc_msgSend_targetSlideNode(self, v5, v6);
      v13 = objc_msgSend_targetSlideNode(v7, v9, v10);
      if (v8 == v13 && (v14 = objc_msgSend_targetEventIndex(self, v11, v12), v14 == objc_msgSend_targetEventIndex(v7, v15, v16)))
      {
        v19 = objc_msgSend_animationPhase(self, v17, v18);
        v22 = v19 == objc_msgSend_animationPhase(v7, v20, v21);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = KNRecordingNavigationEvent;
  v3 = [(KNRecordingEvent *)&v13 hash];
  v6 = objc_msgSend_hash(self->_targetSlideNodeUUID, v4, v5);
  v9 = v3 ^ objc_msgSend_targetEventIndex(self, v7, v8);
  return v6 ^ v9 ^ objc_msgSend_animationPhase(self, v10, v11);
}

- (KNSlideNode)targetSlideNode
{
  if (self->_targetSlideNodeUUID)
  {
    objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_targetSlideNodeContextReference);
    v5 = objc_msgSend_objectWithUUID_(WeakRetained, v4, self->_targetSlideNodeUUID);
    v6 = TSUCheckedDynamicCast();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isIgnoredWhenSeeking
{
  if (objc_msgSend_animationPhase(self, a2, v2) == 1)
  {
    return 1;
  }

  v7 = objc_msgSend_targetSlideNode(self, v4, v5);
  v6 = v7 == 0;

  return v6;
}

- (BOOL)canPrecedeDiscontinuity
{
  if (objc_msgSend_animationPhase(self, a2, v2) == 1)
  {
    return 0;
  }

  v7 = objc_msgSend_targetSlideNode(self, v4, v5);
  v6 = v7 != 0;

  return v6;
}

- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4 parentEventTrack:(id)a5
{
  v8 = a4;
  v9 = a5;
  v31.receiver = self;
  v31.super_class = KNRecordingNavigationEvent;
  [(KNRecordingEvent *)&v31 loadFromMessage:a3 unarchiver:v8 parentEventTrack:v9];
  if (*(a3 + 3))
  {
    v11 = *(a3 + 3);
  }

  else
  {
    v11 = &qword_2812EB9D8;
  }

  v12 = *(v11 + 4);
  if ((v12 & 2) != 0)
  {
    v17 = objc_msgSend_readWeakObjectUUIDReferenceMessage_(v8, v10, v11[4]);
    v20 = objc_msgSend_copy(v17, v18, v19);
    targetSlideNodeUUID = self->_targetSlideNodeUUID;
    self->_targetSlideNodeUUID = v20;
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

    v13 = v11[3];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_275DC6928;
    v28[3] = &unk_27A698C00;
    v29 = v9;
    v30 = self;
    v14 = v8;
    v15 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v14, v16, v13, v15, 0, v28);

    v17 = v29;
  }

LABEL_9:
  v22 = *(v11 + 11);
  self->_targetEventIndex = *(v11 + 10);
  v23 = v22 == 1;
  if (v22 == 2)
  {
    v23 = 2;
  }

  self->_animationPhase = v23;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_275DC69CC;
  v26[3] = &unk_27A698BD8;
  v26[4] = self;
  v24 = v9;
  v27 = v24;
  objc_msgSend_addFinalizeHandler_(v8, v25, v26);
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v26.receiver = self;
  v26.super_class = KNRecordingNavigationEvent;
  [(KNRecordingEvent *)&v26 saveToMessage:a3 archiver:v6];
  *(a3 + 4) |= 1u;
  v9 = *(a3 + 3);
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = sub_275E20E60(v10);
    *(a3 + 3) = v9;
  }

  targetSlideNodeUUID = self->_targetSlideNodeUUID;
  if (targetSlideNodeUUID)
  {
    *(v9 + 16) |= 2u;
    v12 = *(v9 + 32);
    if (!v12)
    {
      v13 = *(v9 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C8F000](v13);
      *(v9 + 32) = v12;
    }

    objc_msgSend_setWeakReferenceToObjectUUID_message_(v6, v7, targetSlideNodeUUID, v12);
    objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_targetSlideNodeContextReference);
    v16 = objc_msgSend_objectWithUUIDIfAvailableAndLoaded_(WeakRetained, v15, self->_targetSlideNodeUUID);
    v17 = TSUCheckedDynamicCast();

    if (v17)
    {
      *(v9 + 16) |= 1u;
      v19 = *(v9 + 24);
      if (!v19)
      {
        v20 = *(v9 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C8F050](v20);
        *(v9 + 24) = v19;
      }

      objc_msgSend_setWeakReference_message_(v6, v18, v17, v19);
    }
  }

  v21 = objc_msgSend_targetEventIndex(self, v7, v8);
  *(v9 + 16) |= 4u;
  *(v9 + 40) = v21;
  v24 = objc_msgSend_animationPhase(self, v22, v23);
  v25 = v24 == 1;
  if (v24 == 2)
  {
    v25 = 2;
  }

  *(v9 + 16) |= 8u;
  *(v9 + 44) = v25;
}

@end