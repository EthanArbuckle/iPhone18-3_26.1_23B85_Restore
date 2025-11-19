@interface GQDWPStorage
- (void)dealloc;
@end

@implementation GQDWPStorage

- (void)dealloc
{
  mBody = self->mBody;
  if (mBody)
  {
    CFRelease(mBody);
  }

  mAttachments = self->mAttachments;
  if (mAttachments)
  {
    CFRelease(mAttachments);
  }

  v5.receiver = self;
  v5.super_class = GQDWPStorage;
  [(GQDWPStorage *)&v5 dealloc];
}

@end