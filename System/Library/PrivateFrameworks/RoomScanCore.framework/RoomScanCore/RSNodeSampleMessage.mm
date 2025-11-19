@interface RSNodeSampleMessage
+ (id)new;
- (NSArray)keyFrames;
- (NSArray)mirrorPoints;
- (NSArray)objects;
- (RSFloorPlan)floorPlan;
- (RSFrame)frame;
- (RSGeometryMeta)geometryMeta;
- (RSNodeSampleMessage)init;
- (RSNodeSampleMessage)initWithFloorPlan:(id)a3;
- (RSNodeSampleMessage)initWithFrame:(id)a3;
- (RSNodeSampleMessage)initWithGeometryMeta:(id)a3;
- (RSNodeSampleMessage)initWithKeyFrames:(id)a3;
- (RSNodeSampleMessage)initWithMirrorPoints:(id)a3;
- (RSNodeSampleMessage)initWithObjects:(id)a3;
- (RSNodeSampleMessage)initWithPointCloud:(id)a3;
- (RSNodeSampleMessage)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 attachments:(id)a4;
- (RSNodeSampleMessage)initWithSemanticImage:(id)a3;
- (RSNodeSampleMessage)initWithTemporalMeta:(id)a3;
- (RSPointCloud)pointCloud;
- (RSSemanticImage)semanticImage;
- (RSTemporalMeta)temporalMeta;
- (void)dealloc;
@end

@implementation RSNodeSampleMessage

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
    self->_sampleBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = RSNodeSampleMessage;
  [(RSNodeSampleMessage *)&v4 dealloc];
}

- (RSNodeSampleMessage)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 attachments:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = RSNodeSampleMessage;
  v9 = [(RSNodeSampleMessage *)&v13 init];
  if (v9)
  {
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    v9->_sampleBuffer = v10;
    if (v6)
    {
      v11 = objc_msgSend_copy(v6, v7, v8);
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v9->_attachments, v11);
    if (v6)
    {
    }
  }

  return v9;
}

- (RSNodeSampleMessage)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (RSNodeSampleMessage)initWithMirrorPoints:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageMirrorPointsAttachmentKey";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithSampleBuffer_attachments_(self, v8, 0, v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSArray)mirrorPoints
{
  v3 = objc_msgSend_attachments(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"_RSNodeSampleMessageMirrorPointsAttachmentKey");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RSNodeSampleMessage)initWithObjects:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageObjectsAttachmentKey";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithSampleBuffer_attachments_(self, v8, 0, v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSArray)objects
{
  v3 = objc_msgSend_attachments(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"_RSNodeSampleMessageObjectsAttachmentKey");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RSNodeSampleMessage)initWithKeyFrames:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageKeyFramesAttachmentKey";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithSampleBuffer_attachments_(self, v8, 0, v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSArray)keyFrames
{
  v3 = objc_msgSend_attachments(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"_RSNodeSampleMessageKeyFramesAttachmentKey");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RSNodeSampleMessage)initWithSemanticImage:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageSemanticImageAttachmentKey";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithSampleBuffer_attachments_(self, v8, 0, v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (RSSemanticImage)semanticImage
{
  v3 = objc_msgSend_attachments(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"_RSNodeSampleMessageSemanticImageAttachmentKey");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RSNodeSampleMessage)initWithGeometryMeta:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageGeometryMetaAttachmentKey";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithSampleBuffer_attachments_(self, v8, 0, v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (RSGeometryMeta)geometryMeta
{
  v3 = objc_msgSend_attachments(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"_RSNodeSampleMessageGeometryMetaAttachmentKey");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RSNodeSampleMessage)initWithTemporalMeta:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageTemporalMetaAttachmentKey";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithSampleBuffer_attachments_(self, v8, 0, v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (RSTemporalMeta)temporalMeta
{
  v3 = objc_msgSend_attachments(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"_RSNodeSampleMessageTemporalMetaAttachmentKey");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RSNodeSampleMessage)initWithFloorPlan:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageFloorPlanAttachmentKey";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithSampleBuffer_attachments_(self, v8, 0, v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (RSFloorPlan)floorPlan
{
  v3 = objc_msgSend_attachments(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"_RSNodeSampleMessageFloorPlanAttachmentKey");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RSNodeSampleMessage)initWithPointCloud:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessagePointCloudAttachmentKey";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithSampleBuffer_attachments_(self, v8, 0, v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (RSPointCloud)pointCloud
{
  v3 = objc_msgSend_attachments(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"_RSNodeSampleMessagePointCloudAttachmentKey");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RSNodeSampleMessage)initWithFrame:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageFrameAttachmentKey";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithSampleBuffer_attachments_(self, v8, 0, v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (RSFrame)frame
{
  v3 = objc_msgSend_attachments(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"_RSNodeSampleMessageFrameAttachmentKey");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end