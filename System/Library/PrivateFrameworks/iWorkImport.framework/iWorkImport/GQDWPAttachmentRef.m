@interface GQDWPAttachmentRef
- (GQDWPAttachmentRef)initWithUID:(char *)a3 root:(id)a4;
- (id)drawable;
- (void)dealloc;
@end

@implementation GQDWPAttachmentRef

- (GQDWPAttachmentRef)initWithUID:(char *)a3 root:(id)a4
{
  v8.receiver = self;
  v8.super_class = GQDWPAttachmentRef;
  v6 = [(GQDWPAttachmentRef *)&v8 init];
  if (v6)
  {
    v6->mUID = xmlStrdup(a3);
    v6->mRoot = a4;
  }

  return v6;
}

- (void)dealloc
{
  mUID = self->mUID;
  if (mUID)
  {
    free(mUID);
  }

  v4.receiver = self;
  v4.super_class = GQDWPAttachmentRef;
  [(GQDWPAttachment *)&v4 dealloc];
}

- (id)drawable
{
  result = self->super.mDrawable;
  if (!result)
  {
    result = [-[GQDRoot objectWithXmlUid:](self->mRoot objectWithXmlUid:{self->mUID), "drawable"}];
    self->super.mDrawable = result;
  }

  return result;
}

@end