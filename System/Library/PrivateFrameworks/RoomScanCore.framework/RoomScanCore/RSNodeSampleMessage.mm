@interface RSNodeSampleMessage
+ (id)new;
- (NSArray)keyFrames;
- (NSArray)mirrorPoints;
- (NSArray)objects;
- (RSFloorPlan)floorPlan;
- (RSFrame)frame;
- (RSGeometryMeta)geometryMeta;
- (RSNodeSampleMessage)init;
- (RSNodeSampleMessage)initWithFloorPlan:(id)plan;
- (RSNodeSampleMessage)initWithFrame:(id)frame;
- (RSNodeSampleMessage)initWithGeometryMeta:(id)meta;
- (RSNodeSampleMessage)initWithKeyFrames:(id)frames;
- (RSNodeSampleMessage)initWithMirrorPoints:(id)points;
- (RSNodeSampleMessage)initWithObjects:(id)objects;
- (RSNodeSampleMessage)initWithPointCloud:(id)cloud;
- (RSNodeSampleMessage)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer attachments:(id)attachments;
- (RSNodeSampleMessage)initWithSemanticImage:(id)image;
- (RSNodeSampleMessage)initWithTemporalMeta:(id)meta;
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

- (RSNodeSampleMessage)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer attachments:(id)attachments
{
  attachmentsCopy = attachments;
  v13.receiver = self;
  v13.super_class = RSNodeSampleMessage;
  v9 = [(RSNodeSampleMessage *)&v13 init];
  if (v9)
  {
    if (buffer)
    {
      v10 = CFRetain(buffer);
    }

    else
    {
      v10 = 0;
    }

    v9->_sampleBuffer = v10;
    if (attachmentsCopy)
    {
      v11 = objc_msgSend_copy(attachmentsCopy, v7, v8);
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v9->_attachments, v11);
    if (attachmentsCopy)
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
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (RSNodeSampleMessage)initWithMirrorPoints:(id)points
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageMirrorPointsAttachmentKey";
  v13[0] = points;
  v4 = MEMORY[0x277CBEAC0];
  pointsCopy = points;
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

- (RSNodeSampleMessage)initWithObjects:(id)objects
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageObjectsAttachmentKey";
  v13[0] = objects;
  v4 = MEMORY[0x277CBEAC0];
  objectsCopy = objects;
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

- (RSNodeSampleMessage)initWithKeyFrames:(id)frames
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageKeyFramesAttachmentKey";
  v13[0] = frames;
  v4 = MEMORY[0x277CBEAC0];
  framesCopy = frames;
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

- (RSNodeSampleMessage)initWithSemanticImage:(id)image
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageSemanticImageAttachmentKey";
  v13[0] = image;
  v4 = MEMORY[0x277CBEAC0];
  imageCopy = image;
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

- (RSNodeSampleMessage)initWithGeometryMeta:(id)meta
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageGeometryMetaAttachmentKey";
  v13[0] = meta;
  v4 = MEMORY[0x277CBEAC0];
  metaCopy = meta;
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

- (RSNodeSampleMessage)initWithTemporalMeta:(id)meta
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageTemporalMetaAttachmentKey";
  v13[0] = meta;
  v4 = MEMORY[0x277CBEAC0];
  metaCopy = meta;
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

- (RSNodeSampleMessage)initWithFloorPlan:(id)plan
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageFloorPlanAttachmentKey";
  v13[0] = plan;
  v4 = MEMORY[0x277CBEAC0];
  planCopy = plan;
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

- (RSNodeSampleMessage)initWithPointCloud:(id)cloud
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessagePointCloudAttachmentKey";
  v13[0] = cloud;
  v4 = MEMORY[0x277CBEAC0];
  cloudCopy = cloud;
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

- (RSNodeSampleMessage)initWithFrame:(id)frame
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"_RSNodeSampleMessageFrameAttachmentKey";
  v13[0] = frame;
  v4 = MEMORY[0x277CBEAC0];
  frameCopy = frame;
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