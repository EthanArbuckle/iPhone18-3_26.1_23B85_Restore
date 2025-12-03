@interface GQDWPLink
- (int)readStyleFromReader:(_xmlTextReader *)reader processor:(id)processor;
- (void)dealloc;
@end

@implementation GQDWPLink

- (void)dealloc
{
  mHref = self->mHref;
  if (mHref)
  {
    CFRelease(mHref);
  }

  v4.receiver = self;
  v4.super_class = GQDWPLink;
  [(GQDWPTextList *)&v4 dealloc];
}

- (int)readStyleFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  AttributeNs = xmlTextReaderGetAttributeNs(reader, "style", *(qword_A35E8 + 16));
  if (!AttributeNs)
  {
    return 1;
  }

  v7 = AttributeNs;
  v8 = [objc_msgSend(objc_msgSend(processor "documentState")];
  if (!v8)
  {
    v8 = [objc_msgSend(processor "documentState")];
  }

  v9 = [v8 styleWithIdentifier:v7];
  self->mCharStyle = v9;
  if (!v9)
  {
    v9 = [v8 styleWithXmlUid:v7];
    self->mCharStyle = v9;
  }

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  v11 = v9;
  free(v7);
  return v10;
}

@end