@interface GQDImageBinary
- (CGSize)size;
- (__CFURL)createAbsoluteUrlForState:(id)state;
- (int)readDataAttributesFromReader:(_xmlTextReader *)reader;
- (void)dealloc;
@end

@implementation GQDImageBinary

- (void)dealloc
{
  mPath = self->mPath;
  if (mPath)
  {
    CFRelease(mPath);
  }

  mAbsoluteUrl = self->mAbsoluteUrl;
  if (mAbsoluteUrl)
  {
    CFRelease(mAbsoluteUrl);
  }

  v5.receiver = self;
  v5.super_class = GQDImageBinary;
  [(GQDImageBinary *)&v5 dealloc];
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__CFURL)createAbsoluteUrlForState:(id)state
{
  mAbsoluteUrl = self->mAbsoluteUrl;
  if (!mAbsoluteUrl)
  {
    mPath = self->mPath;
    if (mPath)
    {
      mResourceType = self->mResourceType;
      if (mResourceType == 1)
      {
        mAbsoluteUrl = [state createUrlToAppBundleResource:mPath processorBundle:objc_msgSend(objc_msgSend(state skipCachingPDFAndNoExtentionResources:{"processor"), "bundle"), 0}];
      }

      else
      {
        if (mResourceType)
        {
          return 0;
        }

        mAbsoluteUrl = [state createUriToDocumentBundleResource:self->mPath];
      }

      self->mAbsoluteUrl = mAbsoluteUrl;
      if (mAbsoluteUrl)
      {
        goto LABEL_2;
      }
    }

    return 0;
  }

LABEL_2:

  return CFRetain(mAbsoluteUrl);
}

- (int)readDataAttributesFromReader:(_xmlTextReader *)reader
{
  self->mPath = sub_4294C(reader, qword_A35E8, "path");
  self->mResourceType = sub_42468(reader, qword_A35E8, "resource-type", 0);
  return 1;
}

@end