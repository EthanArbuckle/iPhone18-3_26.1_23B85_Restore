@interface NSTextAttachment(UITextDragGeometry)
+ (id)_imageFromAttachment:()UITextDragGeometry;
+ (uint64_t)_attachmentHasImage:()UITextDragGeometry;
@end

@implementation NSTextAttachment(UITextDragGeometry)

+ (uint64_t)_attachmentHasImage:()UITextDragGeometry
{
  v3 = a3;
  image = [v3 image];

  if (!image)
  {
    fileType = [v3 fileType];
    if (fileType)
    {
      v7 = fileType;
      fileWrapper = [v3 fileWrapper];
      if (!fileWrapper)
      {
LABEL_7:

        goto LABEL_9;
      }

      fileWrapper2 = [v3 fileWrapper];
      isRegularFile = [fileWrapper2 isRegularFile];

      if (isRegularFile)
      {
        v7 = +[UIImage readableTypeIdentifiersForItemProvider];
        fileType2 = [v3 fileType];
        fileWrapper = [v7 containsObject:fileType2];

        goto LABEL_7;
      }
    }

    fileWrapper = 0;
    goto LABEL_9;
  }

  fileWrapper = 1;
LABEL_9:

  return fileWrapper;
}

+ (id)_imageFromAttachment:()UITextDragGeometry
{
  v3 = a3;
  image = [v3 image];

  if (image)
  {
    image2 = [v3 image];
    goto LABEL_11;
  }

  image2 = [v3 fileType];
  if (image2)
  {
    fileWrapper = [v3 fileWrapper];
    if (fileWrapper)
    {
      v7 = fileWrapper;
      fileWrapper2 = [v3 fileWrapper];
      if ([fileWrapper2 isRegularFile])
      {
        v9 = +[UIImage readableTypeIdentifiersForItemProvider];
        fileType = [v3 fileType];
        v11 = [v9 containsObject:fileType];

        if (v11)
        {
          fileWrapper3 = [v3 fileWrapper];
          regularFileContents = [fileWrapper3 regularFileContents];
          image2 = [UIImage imageWithData:regularFileContents];

          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

LABEL_10:
    image2 = 0;
  }

LABEL_11:

  return image2;
}

@end