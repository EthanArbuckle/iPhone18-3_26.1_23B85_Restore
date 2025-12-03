@interface PFMetadataStateBreadcrumb
- (NSString)breadcrumbDescription;
- (PFMetadataStateBreadcrumb)initWithTimeInterval:(double)interval message:(id)message;
@end

@implementation PFMetadataStateBreadcrumb

- (NSString)breadcrumbDescription
{
  v3 = [MEMORY[0x1E69BDD80] stringFromTimestamp:self->_timeInterval];
  qualityOfService = self->_qualityOfService;
  v5 = @"UI";
  v6 = @"UT";
  v7 = @"DF";
  v8 = @"IN";
  if (qualityOfService != 25)
  {
    v8 = @"UI";
  }

  if (qualityOfService != 21)
  {
    v7 = v8;
  }

  if (qualityOfService != 17)
  {
    v6 = v7;
  }

  if (qualityOfService == 9)
  {
    v5 = @"BG";
  }

  if (!qualityOfService)
  {
    v5 = @"UN";
  }

  if (qualityOfService <= 16)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Thread 0x%-8llx QoS %@ %@", v3, self->_threadID, v9, self->_message];

  return v10;
}

- (PFMetadataStateBreadcrumb)initWithTimeInterval:(double)interval message:(id)message
{
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = PFMetadataStateBreadcrumb;
  v7 = [(PFMetadataStateBreadcrumb *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_timeInterval = interval;
    v9 = [messageCopy copy];
    message = v8->_message;
    v8->_message = v9;

    v8->_qualityOfService = qos_class_self();
    pthread_threadid_np(0, &v8->_threadID);
    v11 = v8;
  }

  return v8;
}

@end